Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E62172E9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:10:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+I1MSbIUJ7Ask/jb2L7Go+dXsthsk0/HUeP9D2jZeyk=; b=FKF66hBNOMRXZTaU8QW5bbeXem
	X/6EHZjojsKaYQ/m2WZQm+x/o/AHBWz345ALmEbCpIcaSxh5mF5Ebgd/SYnaLWkxqJCFQFCljRUl1
	4jIW2mNNEN3IZvayPPHTyjprWqshqSlcgSyFZ2PYpYWKSiejVmKCz1zOSnJI7UFMdRvEUOGeOZNHu
	7uIy2y1QpBMCdqoKafQE/LrGzU7Tuw+nUsjLl6eTSrGBRO3rYRY9o2ZXhU7FPhLtUe9MIfy9hnu8q
	MyiwSyGALzYXF8V1QPHURuwpPdXDU/8FUGbxHECb4wdiwMsCNiNQH7+kIubegi5VTeaZ4nR7pYsu4
	1l0RyD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7V6F-0004w3-AV; Fri, 28 Feb 2020 02:09:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7V4b-0003dk-44
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:08:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id 15so848020pfo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S4kJGuEJfAjfPYh/Ew20Fs75jjdr/lDPxEC7XvHdiQ4=;
 b=UZutASD0HqaUsmZQ28/j4nBb0ea4qnMjWg42ddLNpUQYkPvicXpWWaj+s0HbQjY6UE
 rcOytnas6HACXzfJ5qU6ObxXqRQdL4vZJPEIQDJlMXPh+LU6m2g3a1iL2d26ImThm4dn
 V9pDMYHqNXEWA7T7Lm+c3vITxW0NmH0bUckrlby8M4g2CZY3uwbLeyJfqQFZhMWHwXa+
 ZiMNMP/6oZd7iVbJd8WKby+deNCmiz/TqUzsw79RXaWJ5k4dVQhcp4skiqJXB2AOyANz
 cM7IopAYZcZxoAY9bFG9vt/ENAhgu70gjFRm7ILiD8A5xlaPqo3BGudTld5x6mE9Lg4f
 INLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S4kJGuEJfAjfPYh/Ew20Fs75jjdr/lDPxEC7XvHdiQ4=;
 b=TTAMjpllUoCPid6t+nI3DCNHXma+QFInQ7YiLhLFZxycux4SmkV5YMj/KP4xPtwysx
 hA4WG8VPvORExWiHpQtVTbPvzkcnTctiL320PHAa0qpdR2GQFgieyFQsnemlUPjHRdnb
 WHLmIaNXIjYpnPRSfYdgFuqn4T+7x6ix9nlcUF/OCuMqYAuxMjw+KLNKL9S38Arj+Lhn
 1N7mfP61NEFZ83mQ5pyISaSlHR30QjYyYXp9o83Ef1x5tDYxVlClQ5iOj0NXrNVNbqWQ
 q7JghMa3uqpdToYf/8qbt1KCVywjUB9FKoV1nw/QLhL704bN+QuCX86PVv4WbjUJsbQj
 Jv+A==
X-Gm-Message-State: APjAAAX0y527b7IcbEvO/xfDv0ULY0w7WhWhQbrowsVigOXKOLCkuvUk
 2YjV6mBGmHUv7hfwYWf3XgA=
X-Google-Smtp-Source: APXvYqyyuwzFsaoesPovGGYPfNjv0U27sfwo1cNSj3VSdjUokF67ekm0yo1YUh2GET9uSjk0VZpl5w==
X-Received: by 2002:a62:f251:: with SMTP id y17mr2111805pfl.204.1582855695286; 
 Thu, 27 Feb 2020 18:08:15 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id k24sm4931972pgm.61.2020.02.27.18.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 18:08:14 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v6 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Thu, 27 Feb 2020 18:07:55 -0800
Message-Id: <20200228020757.10513-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228020757.10513-1-rentao.bupt@gmail.com>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_180817_190293_C20F9D69 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-endpoints"
properties to describe supported number of vhub ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v2/v3/v4/v5/v6.
   - It's given v6 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index ebec0fa8baa7..f12ec04d3cbc 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -195,6 +195,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2ad_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
