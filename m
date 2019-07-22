Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B656FDC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHBnVblLX7hCU0RJiVuHjuROnqqZURye/iN5C6Nam/0=; b=WdHfRd/YKEOV0Wn9wbbJAM6aOO
	NFm6EIwObs8qaiVrnxAbmyG6zY1k7qF1zRESKoNHaQ8XwvwbPxB382w4VBWlyHz0W8O/ZTCqnfvIc
	p7JsIpMe8RR6UoxeOBZzYhhMjNM84L7gn/+qD2/oX3M07KKNaeeBeNXMgH3HxciUfipa6/SnU/F6Q
	90LiaVZyMmcvgghZ7rmuJiV9CRivPSKH4vkXej0X7PvoD08FuJTAo5u4v7OfYyM2nqzrl81WO4GOa
	hmYNXlZdVesxJGNjfek+OLJurtraIvAcVP+imQL5rbGgQEzgoYjRTWNJiIeY46WtkrwGwN+I/LL1b
	6LQIbjNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVYn-00009H-5o; Mon, 22 Jul 2019 10:28:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVY1-00085m-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:28:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so34778704wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 03:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KlMITGUupMUS+z7cYFJpkuySI0G3DrjFsP62Lu6OHIQ=;
 b=nQZobyBxiZE42wghcJ4bHW7Gffd+ZlaEhHifNH/8x9rGQvmboMIohsKMQOxZqrbelF
 D+OH0k+jHbJ7O+Ha2Ozlc9DECX2713tWbF+vb6OEoeLqG8j3s+DIsyzqfgjzIHrNWLTJ
 cCOyLFUy8wdc7NfaAcHsYnSFFAdIXmS+mXmDxJE1mCLgD3duRvl0BN0oY7D4dMNIrK61
 8lm2hMiWXGz9tJD5qAVEEfw1i6mpR6Vcqr0ihAEYmt+iUDd0Ort0IAyKLi1MsSUkShqk
 bQJ5wQMXismOmS3/V4ep/5TO8mHo7Htpmnm9mb5j5TjTmAy2AKROSikcATpYllOEfBZl
 v6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KlMITGUupMUS+z7cYFJpkuySI0G3DrjFsP62Lu6OHIQ=;
 b=OFouuvopvOhb7dbVKuAg7GOy0N1CauksKevQ9WIeLsSrY9OL9PtxnL89LgrBEDhvuJ
 2dJKoiWoPK2t1ZRjyteqXz1CiXEiEHzW+S9CW3LLo57wNHxLXmu94RgbcZQvDUOlil2V
 djTttsN5mQriL7btkvgKZCTuPnZOP8k2Z6qsV5PxueXThn15gIpEtAhRu9Q1Nm9XWgFw
 f8nKrY5Q5FIsUTSQ8F6/14M+DorlgZHqiVlGrRuDAwhLJyD92WzEdyw7UANACyFi5mMM
 TWD9IAWdgu6QceZeAb+RQEbUGE1mmpGP3x4hMJwbI+3sPdxxlQmvmz8h1z3Zwj5kf5ob
 IHtw==
X-Gm-Message-State: APjAAAXZd2No//id1WD/PfGhYJORAaAESKitPXQpSE8psQxNtvWyqVRA
 xc93FxKfid/yyGHtapIUmBY=
X-Google-Smtp-Source: APXvYqyCbpEyLuMrWq0ggNzOSPn1qsyScrquvPzvhxrzrIh0BwX9iIXoOo4TuaH8a49JuVmdGLV2lw==
X-Received: by 2002:a7b:cae2:: with SMTP id t2mr62407969wml.157.1563791280183; 
 Mon, 22 Jul 2019 03:28:00 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id o7sm34515181wmf.43.2019.07.22.03.27.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 03:27:59 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v6 2/2] dt-bindings: arm: fsl: Add the pico-pi-imx8m board
Date: Mon, 22 Jul 2019 13:27:30 +0300
Message-Id: <20190722102730.15763-3-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190722102730.15763-1-andradanciu1997@gmail.com>
References: <20190722102730.15763-1-andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_032801_661119_645CDE2D 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 angus@akkea.ca, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, pankaj.bansal@nxp.com,
 linux-imx@nxp.com, u.kleine-koenig@pengutronix.de, devicetree@vger.kernel.org,
 andradanciu1997@gmail.com, Michal.Vokac@ysoft.com, pramod.kumar_1@nxp.com,
 s.hauer@pengutronix.de, robh+dt@kernel.org, vabhav.sharma@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andra Danciu <andradanciu1997@gmail.com>

Add an entry for TechNexion PICO-PI-IMX8M board based on i.MX8MQ SoC
Datasheet can be found at:
https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf

Cc: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..54c094341121 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -219,6 +219,7 @@ properties:
           - enum:
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
+              - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
           - const: fsl,imx8mq
 
       - description: i.MX8QXP based Boards
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
