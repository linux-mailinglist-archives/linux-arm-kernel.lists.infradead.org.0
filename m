Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE16F142255
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 05:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B0XjZyH3k/txFudcf0QcB+MHLRIbOvf67aWOGbS+8t4=; b=MCNVSChYoYfPCo
	EwJUUEIWGAymLuEVIUCzODqIoCwlo76z/OraWUGwONmhbvT0yqoeyiqMPBR+3yrSeUshbLG7gQQnf
	L2sJMDymRUSfA6BI/hApo+/MwWBP9307AF8GauEsmeB2fE+H9lcdO8j1b7ifZFgEFW/aIEq6oOr1g
	GURiIFd03DAOC8yFrgLnNtUld2Mgo3X0eXFqJ1gfRKh2kJXUxWYEN6KGsEs0vyqcHqD0McW891ucb
	+1E6zqwYjVIWmcgP6btKsv7GDrdW88bjB+0ZuPbAVczX60aGXJK74vdktH0v6Uen3+w4z6+GcCKE3
	O5sM4rGi4SlnQf5LJcdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itOWM-0008Ng-I7; Mon, 20 Jan 2020 04:18:38 +0000
Received: from sender4-of-o51.zoho.com ([136.143.188.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itOWC-0008Mk-Py; Mon, 20 Jan 2020 04:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1579493901; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=stViw/vZBTTKFHulxgqF7UGf9elupV/iKpDOvA31W08=;
 b=ABZX5WmdD1rtnsD7ma5/aoYcPqlJTkoaH6ppekhzsVYQNDnr9Opn+O+SL61R1iRr
 eZh/7q+1MNG9vDcIIPycmU+XcPTY5DsoN0CIEb4uoctxYw3FyM5z2YzBF1sW3NHQ+c7
 iv0LOkzXPNRYqx5Yx1pr2xTY8KdEpy1JyxkR7zN0=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1579493895817813.4788828872422;
 Sun, 19 Jan 2020 20:18:15 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Message-ID: <20200120041740.193485-1-stephen@brennan.io>
Subject: [PATCH] ARM: dts: bcm2711: Use bcm2711 compatible for sdhci
Date: Sun, 19 Jan 2020 20:17:40 -0800
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_201828_962279_E5D85551 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Brennan <stephen@brennan.io>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting Raspberry Pi 4B using a micro SDHC UHS class 1 card, the SD
card partitions never appear in /dev.  According to the device tree
bindings for Broadcom IPROC SDHCI controller, we should use
"brcm,bcm2711-emmc2" compatible string on BCM2711. Set this compatible
string, which allows these cards to be mounted.

Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 arch/arm/boot/dts/bcm2711.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index b64865ad5a41..48e3b0162bda 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -853,6 +853,7 @@ &mailbox {
 };
 
 &sdhci {
+	compatible = "brcm,bcm2711-emmc2";
 	interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
 };
 
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
