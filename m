Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA896E08B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 07:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+23wJByCxvREYe0vIB1aV9EZMef8ZuqkaZj7hT6FDk=; b=NJMomRIIfQDnBs
	Zchnk+fsK+ptgc8aPVPDOpgaqwPeogFtxnvwtgzOL6KSOidkDfcXLsCKFUbCGs3vMi5A67Cgb88Jb
	WZ2RnRTcXb5IAFZ4OYnJRB2U3LAyZgqU5utDotggj2b1T73nA6j50/IjYu5QzV3jB1q8G4VmjghF0
	+G6qF3NOgDEQYoAx4VKndDPPMWHDFNdP92vqwOSSlyCkBAV6GHvy2f56yrpIfxzEPUf/XwlGsF3mK
	zH7GGjN3/2JiDyPvnsp/RTAySHubyOm81tcDvBait4vDNjgUghWudYTiLX22lrPEXRYqlFcWaOfoW
	Z4Wx6AvCHuBge40lsOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoLLb-0005cN-Fq; Fri, 19 Jul 2019 05:22:23 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoLLP-0005c5-LH
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 05:22:13 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D34C8809B;
 Fri, 19 Jul 2019 05:22:33 +0000 (UTC)
Date: Thu, 18 Jul 2019 22:22:05 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@denx.de>
Subject: Re: USB Modem support for Droid 4
Message-ID: <20190719052205.GK5447@atomide.com>
References: <20190718201713.GA25103@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718201713.GA25103@amd>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_222211_741733_DBE92291 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mpartap@gmx.net, gregkh@linuxfoundation.org, merlijn@wizzup.org,
 linux-usb@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com, johan@kernel.org,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Pavel Machek <pavel@denx.de> [190718 20:17]:
> From: Tony Lindgren <tony@atomide.com>
> 
> Droid starts to have useful support in linux-next. Modem is tricky to
> play with, but this is enough to get basic support.

Below is a better patch using option driver adding support for all
the ports. I'll send it out with a proper description after -rc1.

Regards,

Tony

8< ----------------
diff --git a/drivers/usb/serial/option.c b/drivers/usb/serial/option.c
--- a/drivers/usb/serial/option.c
+++ b/drivers/usb/serial/option.c
@@ -83,6 +83,12 @@ static void option_instat_callback(struct urb *urb);
 #define HUAWEI_PRODUCT_K4605			0x14C6
 #define HUAWEI_PRODUCT_E173S6			0x1C07
 
+#define MOTOROLA_VENDOR_ID			0x22b8
+#define MOTOROLA_PRODUCT_MDM6600		0x2a70
+#define MOTOROLA_PRODUCT_MDM9600		0x2e0a
+#define MOTOROLA_PRODUCT_MDM_RAM_DL		0x4281
+#define MOTOROLA_PRODUCT_MDM_QC_DL		0x900e
+
 #define QUANTA_VENDOR_ID			0x0408
 #define QUANTA_PRODUCT_Q101			0xEA02
 #define QUANTA_PRODUCT_Q111			0xEA03
@@ -968,6 +974,10 @@ static const struct usb_device_id option_ids[] = {
 	{ USB_VENDOR_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0xff, 0x06, 0x7B) },
 	{ USB_VENDOR_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0xff, 0x06, 0x7C) },
 
+	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MDM6600, 0xff, 0xff, 0xff) },
+	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MDM9600, 0xff, 0xff, 0xff) },
+	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MDM_RAM_DL, 0x0a, 0x00, 0xfc) },
+	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MDM_QC_DL, 0xff, 0xff, 0xff) },
 
 	{ USB_DEVICE(NOVATELWIRELESS_VENDOR_ID, NOVATELWIRELESS_PRODUCT_V640) },
 	{ USB_DEVICE(NOVATELWIRELESS_VENDOR_ID, NOVATELWIRELESS_PRODUCT_V620) },

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
