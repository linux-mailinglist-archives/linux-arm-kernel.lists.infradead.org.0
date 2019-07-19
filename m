Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C32C6E481
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xy6QHdZsdVwVGGWUtNDg7skwM2sg31mA1/6T8Bb7lLk=; b=SmPxogzEp2Mvbc8FGYejPdjShI
	a6zaOFc7dVS+/HLrxVAKhrP6nKw+0W/L8CpMiH5DW2kCmerPutqp90EgvC11d0xd4wEtVteH0aBr8
	dBVDx2BIm6S+xpj61cSU75jrYgAPTWOcCjb8vUo1U2nd3SZ10SaLouXGwPNsb142XcqVtrLtdqBlv
	jO/bFUeA9IollzqIuhlrvUQl78escOBCawJhnDrlK/QEyPB9gSRSiGAx44UYUmE2yXEE3WmTZq+7R
	F+n/hunfnZyA8MKWOda+jRVAbDsU/qBM02aWcNiiB4xMJceCMj/IS2nM9VHpjVQgWQrMNSpLNSfqw
	8iZSnWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQRV-00031A-9N; Fri, 19 Jul 2019 10:48:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQRD-0002z7-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:48:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so31761930wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 03:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F6zESjJw5gi9GyaRx05z2263B816bds++z6rEjY7GBY=;
 b=l6j+mJCAz/Hq7txaixfW57z5tP/Fjc3rd3mO+HrlOcYTMDonZ85id2k6kJjdWEOWDj
 Kpb2d7VxiHEcMwMpvJb5vgs2hYS7JzF8Nl6Hsteai5V7OF30pYbhNCq1oqguV1Bs2XNu
 88a0qlj9n7B4i7lIGNilgCfjSMzpwEcphxzI+F+g/3EKKxZZDdBkD6R+IxYTDK8hBKOY
 awKcvk01K2XSn2BaPubU6LVOFbpjIgvRT4dl3VmJRd5XOu8crMv4R51+xRX9teO9K2jU
 8rfylWxESifRldvD8ntYAvZ7VGciXThd1at09LoMdAF3JcMgrLXPpwfAKBuiVI0GdwLC
 98UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F6zESjJw5gi9GyaRx05z2263B816bds++z6rEjY7GBY=;
 b=WkDOxHUaj88VgpAdooVChg0rjoYM/Lox+N6QqGwatm/qwL1m90uNBExsyOry25385o
 WrehYlXBundMgK7jZ15FAc8ZaNROIZd5sg0bftpjy742V2m9IODC5Wc2KNPueV7RFGkw
 dYWnqGuvH/GLAdsSfStg2Q0w4Tavt6XJgnmCTqNzgTTpvQO0ZJWSsh9iLKeOnxo3UUsH
 3hUEBVL0Axqkd+I95sWTAbC3IudhWMTFGi1KaqVcPEqPXlJ1LtfZk6pCm71tIEyBsPP1
 6iUVW7lF4aPKMyvItyccH81I5yzs47oQ5IgA6uBVXlguOrfjRAl8UUEkpjCPzvmlkX+B
 msHA==
X-Gm-Message-State: APjAAAXfWRVKmhUyvw0gpSSmgkjxM1hQyHEcOPPoO/rnnbResDTGTjUh
 7szw0bJZ8AiwcXk2WRmcKss=
X-Google-Smtp-Source: APXvYqwm3q+6YT5lTT4nSCebmWLhcqNDHTsIASkXoH/IBVw+8AisfnaQieVklfWjF0xDcdQlrvzj5w==
X-Received: by 2002:adf:8364:: with SMTP id 91mr55545015wrd.13.1563533309849; 
 Fri, 19 Jul 2019 03:48:29 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id j17sm39635565wrb.35.2019.07.19.03.48.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 03:48:29 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v4 2/2] dt-bindings: arm: fsl: Add the pico-pi-imx8m board
Date: Fri, 19 Jul 2019 13:48:02 +0300
Message-Id: <20190719104802.18070-3-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190719104802.18070-1-andradanciu1997@gmail.com>
References: <20190719104802.18070-1-andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_034831_530438_78FAD354 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 angus@akkea.ca, manivannan.sadhasivam@linaro.org, sriram.dash@nxp.com,
 festevam@gmail.com, richard.hu@technexion.com, andrew.smirnov@gmail.com,
 pankaj.bansal@nxp.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
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
