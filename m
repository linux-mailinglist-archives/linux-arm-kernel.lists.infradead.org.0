Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659410EA99
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RbbQmQNQHu+gEhiEQSYRCxfV0tdidsbp70KNW4yBmGU=; b=lnY
	6Q/LHcOwyqUYvYdhjl6p4nAmA0ow7HCIxq3oX4oZWZrY408/g6E33ywCpg58PNOJLG675Zem6KD5F
	CToOt2v9Z8+WmcEwsh6CpHk+0a+fRO312RffZ4Y7UCdnLkrbfV72nfZN4Zivk8h3o9ah4bc/f/tir
	LOtxyJk8zPRdJIppy7sXjoQzB7bta5c5jNYqrQRIT6ErxJCj54GFI8gF3lR7FSjjBkazKdVNZqqX2
	BWzxpI0tv9xkIsIv8wxOXh+AnPH4KbaFUhOw5bCUSTie5cfbfcrQqP7ijViaQSjq6Ct1ZuQHcpnPn
	bx55EpVY0JFkeaLN/uABsWhfoE7XtZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblVn-0000l9-Rb; Mon, 02 Dec 2019 13:13:11 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblVh-0000kN-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:13:06 +0000
Received: by mail-qt1-x833.google.com with SMTP id i17so41323100qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ILsbkWyEUpe5k1jgYQVoQ+1hggPYkj8GB9hKLvJCPIc=;
 b=GhTgliPEhfl+lmllKol5KPzzrhoA4qSpUltHr0hCVpna4jzwntn/PAPEsmYa80jqdz
 +3+nzXYOEvMrwSRITrRoju2c3MOwTGTwwm/eldnaLTk3AeHEi5grDZ97VvBYu//Yv9Db
 AjaOBud7RdMBtWoAiSoQ2bk0ADB6Aqli2NGELLxYyTa2zWDv1WV9dcY+NecTmpw4NHpT
 KKrdnsNU+IqAxo9lYggVfhA8VN6C54WEMRet5NqDt6096FgFPqkAxJ4zSVNXi4Jz+V7C
 Va03riVDE22EDT4Z5qiySxyXP2/dWxDrvHUKlsJ8wKOBfNkGqAU8Q1dpQBl0I7j+k3CO
 qfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ILsbkWyEUpe5k1jgYQVoQ+1hggPYkj8GB9hKLvJCPIc=;
 b=s2jgUuDAhRzt69FNZokRQpPROhg5Tv7VSrtewEnTSzFouJ+dmio33fkfqTNa/RnpBM
 MTWcAL4xhwdJerlzvPsa54nE85LLf3AeYmc/0+dPYviJ5he3aioRI1Zc1JxmlfNGwB7G
 cYg2i6Jfo5mS4veAFxGkaR7N4txti083N7egXgKEi3rKEUSUuX2lUIprI+oU5Wh0QJd2
 jzS53BzgUZPZVHuOFby4wDZ90PdkxfsnZq8kWoGiUymlyqRDcBdJQrboiptGPvUKM5Wb
 pz9HLAtlDd0su2XSUwTpvuo4GPj8LmuMvuFCbvcSqfZ3oiFOQ2f0ihyZaSV3uFIGxUFV
 TSfg==
X-Gm-Message-State: APjAAAWLRjZxddaIlvDCOzvjWKdSRKm9eMW5xiIel/nzhEOv/XSUPeji
 xPpBmNo6LvZtqYt+dNos5Cw=
X-Google-Smtp-Source: APXvYqwnkYYxhhPDxgh0V3hGM/8c9gN1A/GxyH0icE0kcTYmssvIYDqsIMGOrjtHsUIMahzTrtmR4g==
X-Received: by 2002:ac8:22c4:: with SMTP id g4mr66408284qta.45.1575292382916; 
 Mon, 02 Dec 2019 05:13:02 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id x8sm14170893qki.60.2019.12.02.05.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 05:13:02 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 RESEND 1/2] dt-bindings: arm: fsl: Document i.MX7ULP
 Embedded Artists COM board
Date: Mon,  2 Dec 2019 10:13:17 -0300
Message-Id: <20191202131318.11404-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_051305_240923_D7BE921C 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
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
