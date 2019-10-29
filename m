Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895D3E8BBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RbbQmQNQHu+gEhiEQSYRCxfV0tdidsbp70KNW4yBmGU=; b=JRM
	ZB+MI13fsUEOxxTannCCAi4hBVtEhEqerSchBIn/dW4WuZTIfQbaGED9qGUoPYgfeE7TLOrROq8QB
	GkLu1iq4PeNju2ly1OimbcncmREw3U9aAj63Ry995NjmsUfiEMb6jhRvM3BVXSRPOsK+QwsVnvs4f
	gEgZzbnm12aWA8xs6gHYObYrHcepGttKLnvDRiEyAVdEJzttBO9eCvpflq1pwWSEb7ydyXYeFc4Xp
	1SXZpVYivEF9NMvVavlC6rlUSggs1sx8NXafuoeTh/psTCGumOJw/tsafe5u62mRci93Xi8S9rprg
	3xZBtLFug0ghCR6bsEchpnu7LlvqWZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTLW-0008Vp-A0; Tue, 29 Oct 2019 15:23:46 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTLL-0008Uv-9h
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:23:36 +0000
Received: by mail-qt1-x833.google.com with SMTP id e14so20806393qto.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 08:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ILsbkWyEUpe5k1jgYQVoQ+1hggPYkj8GB9hKLvJCPIc=;
 b=i7/6oGIK1IVvZDlwqNmM5KfNa/eKF+KMpudhpYFc3yJOBU3DqLsDUJuXzM6wUZtCQE
 VrU5w5OdAM+zLNL4OvhTvPiyYIfTh8ab4SxlwHYp5LJds48aZDT5c+t4KA864uU5FcYd
 jAsdKLfemDG2UWa90Ls4GrIfvAiKGdTs2VVeoPxc/AXOYbYyjF1AmxVUGwR+e8aWlrbH
 XXJgxgLMC0Cm40dqW/n3hDJMq6a2OtsNHgG/3NJem2P24sLMefcEgmhw34pUPvjDjFFT
 3DGeZ2M8U5lthdjQxqTnz4wPHKPLfbfDv/smhxGkQ7wphmll+A7aln2cXRCdY4ZnEtdE
 zKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ILsbkWyEUpe5k1jgYQVoQ+1hggPYkj8GB9hKLvJCPIc=;
 b=HRh4BW9LufMSTobPvM4TOQPF7BvJaQYftk8HxrR3p4JJ/VIS6tOdqe/160/DjMSVlc
 RICJt6npJiRUsCLNU9dPqgPBRPebuDgFWffnxTXp2CmaWLLmKReGx+YbTWvmjFz+/uj6
 HIJJLihw38E/rEtpsoi4cKFWeShT4TapjcfE/dBY8J4Zc6dEytHidNWMFvwBI1jbbT2i
 GM6fOQgMuONYupR82Q9IO3ZCJ1IHTDjaisB+X7aZInF28t/w34kBy8RItijVWfz2Sioz
 E5+j3wzRCMUfYWvY+zXFKcbroiOnYVb6AIv9onTkwnW4Qj73giqgDhNraTKca/R2eO2c
 m68A==
X-Gm-Message-State: APjAAAUnEQIoXeZmPkH8wDeBm4OGMg6vvOQ0XMfwDuOXTZc/CVwXO83d
 g/TyvLJvgH2VQEgBgcDTKdg=
X-Google-Smtp-Source: APXvYqyqBOnHO9tcDybbXpHeJCYwE4lRuvFQvXLB7puoAtYuGU+vUnSY0VD3Pv9rESQiVdLy5a/zbQ==
X-Received: by 2002:aed:27c6:: with SMTP id m6mr4754621qtg.210.1572362613180; 
 Tue, 29 Oct 2019 08:23:33 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id s75sm8775195qke.14.2019.10.29.08.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 08:23:32 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Document i.MX7ULP Embedded
 Artists COM board
Date: Tue, 29 Oct 2019 12:23:36 -0300
Message-Id: <20191029152337.23827-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_082335_339375_C10C4264 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for the Embedded Artists i.MX7ULP COM board.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- None

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b08ae59cc57f..e75f03bf8fbb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -234,6 +234,7 @@ properties:
       - description: i.MX7ULP based Boards
         items:
           - enum:
+              - ea,imx7ulp-com           # i.MX7ULP Embedded Artists COM Board
               - fsl,imx7ulp-evk           # i.MX7ULP Evaluation Kit
           - const: fsl,imx7ulp
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
