Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD15E7355
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gi/9KNee8Yic5RADOatTsM/gBCyT5uTq6kBb5gNccsY=; b=DKBBjRWce82RgcOP4FmwmiYcpT
	1dlmxcktzGNxfuuSoAvcY8Kh2/xgRQIy8bOVQ+8qC2g/9K61zp+yA7tgrFeiMaMU70aRCpu7mJ5oW
	regL4t9Wugz1P7ANO2Rc5yhE3M+XUZBtiXgxV3erGEKti2ql/WL2dqf8VJcGE9rjL9NLzOxj5KD4E
	l8PnuHLflXEYK4GBpDMB/xMg+GHGim9BZzSeQWozd8ZVa7vqI4KmYTollTYS5L0JdxeY10bKQcza8
	z305y42dqB1m8AXwPc7NVewdaxgHb5Airx9XcTxPnpd0feZf0hHYiDcbp+HsvjxO1mkUEDqES5x/q
	98oz9/Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5fN-0006a7-Hs; Mon, 28 Oct 2019 14:06:41 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5eZ-0004s7-Lp
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:05:53 +0000
Received: by mail-qt1-x841.google.com with SMTP id u22so14647920qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 07:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PM4dE9r7yIr6C7Ua6H79vObX7BbYT9gaHWkcZNU+kUk=;
 b=R8p5hviv6Tr+ZtM+Cyc50piYXg5v1tYeKAWMmq/s4K05WgUdQ2K5FUfhPIxL5frhSD
 NKE+S2XVcliist6vHTAti3rLr7MBrUADyoAgBnsE91V6GjPSJuEjvfQ/V9ruIoGOuhWK
 CgHN4d8lgwPFx2H+lMRlBOvbeqB6b0uzba0u2zLjeUW4X71M/I+p8c8XcMGZrUmrEBLI
 6HrzSyD6yCVlSb8NlyC5VAwrrt73LKjrY5GEoIpsskidImcCRxmAYzPdwa/pxrTKf8Kj
 n2FUXVaji52ukOH8rXfaelXJM4vDrOdkYbBruIXsVLsZ7KmnDXA9o2/RJa+tUKwSbHDA
 JlOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PM4dE9r7yIr6C7Ua6H79vObX7BbYT9gaHWkcZNU+kUk=;
 b=Zo5lF+D8SacBgcVkh4QEWuc2uzOIpjI9FwxyGt3loQftwMu4d+ecoogR4RC/1dJOXE
 pWDmoElhrKZdjIkOfTmcADHbDM2bN+hRZcJrLeaMad4Kid8o/Ma5kQCcfJqH8+63Xt+w
 pZ7YgtWWL/Nd8lCF1rRL4FAkDafRPAWQJsmpWbo350/5qHJ9ZfICg5635AZmj2njbYMW
 VaVCE2014vMarqgsubPNLmC694YpsWi0khm3rTHE7Undpw7IUB3+yJGoqreM5ZSVNhp8
 Hhe9xJSdOQotU5zPMxPyitcnzAZf0X9HZBPsz1p6PuhyF2jFDoNNhS0ia+AHzywBAvV5
 lriw==
X-Gm-Message-State: APjAAAXEfAmjaSt3Ns/h/i7YKI1LfYKbJEdX9FoNkx8pZtdizsOe8Bhf
 tPjAZQDY5/YPEkRtqmzbn3g=
X-Google-Smtp-Source: APXvYqwmEHqHyD6Lok08vyMW+/izQCCkleX4SFbKUiGdjvUdcJXC4sWtgso8QdTjcM5bf0kMeCnrtA==
X-Received: by 2002:aed:35f4:: with SMTP id d49mr17121909qte.20.1572271546010; 
 Mon, 28 Oct 2019 07:05:46 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id b185sm7000854qkg.45.2019.10.28.07.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 07:05:45 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] ARM: dts: imx53: Adjust CPU operating points
Date: Mon, 28 Oct 2019 11:05:45 -0300
Message-Id: <20191028140545.10218-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028140545.10218-1-festevam@gmail.com>
References: <20191028140545.10218-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_070551_768240_FA4482C2 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org, cphealy@gmail.com,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust the CPU operating points as per the characterized settings from
the vendor BSP at:

https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm/mach-mx5/mx53_wp.c?h=imx_2.6.35_caf#n120

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx53.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index ed341cfd9d09..eb2ec28a8d1d 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -58,10 +58,10 @@
 			voltage-tolerance = <5>;
 			operating-points = <
 				/* kHz */
-				 166666  850000
-				 400000  900000
-				 800000 1050000
-				1000000 1200000
+				 160000  950000
+				 400000  950000
+				 800000 1100000
+				1000000 1250000
 				1200000 1300000
 			>;
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
