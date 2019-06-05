Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC1C3551C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 04:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02YI+EDk95GGEIDqMQ25LL17jRofB6KWQ5p5bbvzZYY=; b=H/5zg7skUSKuEo
	aSVn/ekbsjK2KfXA4I1Xa81wmy2gfCQeLStYEiG5bErzXjkaJDtjr0KPc8otrFmCrpkxAuVyTSlYu
	lWwWRO8/VrTqkvFr/xd8MR2BMBS14S61VebhDEX8ZQf9ypAZ2Tk+n7Y2aDqLuaTgTpHlaq60ar4dp
	Ro04Q0+aYIXxU36ZBne6dirvBH3TzXWofAI7WtnnZHiP5gw86ayedYAhC6jifiVJSmKc0s2OafUuN
	gmy3C3hPM3RUEOyhDDGVz75CjIcRDiuOVNQR1W4P+B8dDrOVB28BVIDu8UvCjHLTKWmDgfG4JgiN/
	QKyzluwj7pAi2K1YqLhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYLGe-0003ia-4Y; Wed, 05 Jun 2019 02:03:08 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYLGX-0003fe-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 02:03:03 +0000
Received: from DGGEML403-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id C549CAC5FA6598B3CA3A;
 Wed,  5 Jun 2019 10:02:48 +0800 (CST)
Received: from DGGEML421-HUB.china.huawei.com (10.1.199.38) by
 DGGEML403-HUB.china.huawei.com (10.3.17.33) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Jun 2019 10:02:48 +0800
Received: from DGGEML529-MBX.china.huawei.com ([169.254.6.38]) by
 dggeml421-hub.china.huawei.com ([10.1.199.38]) with mapi id 14.03.0439.000;
 Wed, 5 Jun 2019 10:02:40 +0800
From: Duyanlin <duyanlin@huawei.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-imx@nxp.com"
 <linux-imx@nxp.com>
Subject: [PATCH] drivers/usb/host/imx21-hcd.c: fix divide-by-zero in func
 nonisoc_etd_done
Thread-Topic: [PATCH] drivers/usb/host/imx21-hcd.c: fix divide-by-zero in
 func nonisoc_etd_done
Thread-Index: AQHVGgfcZ17K0unPU0i5TlbYCbNWX6aMUaEg
Date: Wed, 5 Jun 2019 02:02:40 +0000
Message-ID: <52727B2E0D7DFC4A945AFC14D2E3E5A92211C6FE@dggeml529-mbx.china.huawei.com>
References: <1559564879-88739-1-git-send-email-duyanlin@huawei.com>
In-Reply-To: <1559564879-88739-1-git-send-email-duyanlin@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.40.37.100]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_190301_569700_959E079F 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zengweilin <zengweilin@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


If the function usb_maxpacket(urb->dev, urb->pipe, usb_pipeout(urb->pipe)) returns 0, that will cause a illegal divide-by-zero operation, unexpected results may occur.
It is best to ensure that the denominator is non-zero before dividing by zero.

Signed-off-by: Yanlin Du <duyanlin@huawei.com>
---
 drivers/usb/host/imx21-hcd.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/imx21-hcd.c b/drivers/usb/host/imx21-hcd.c index 6e3dad1..6a47f78 100644
--- a/drivers/usb/host/imx21-hcd.c
+++ b/drivers/usb/host/imx21-hcd.c
@@ -1038,6 +1038,7 @@ static void nonisoc_etd_done(struct usb_hcd *hcd, int etd_num)
 	int cc;
 	u32 bytes_xfrd;
 	int etd_done;
+	unsigned int maxp;
 
 	disactivate_etd(imx21, etd_num);
 
@@ -1104,13 +1105,13 @@ static void nonisoc_etd_done(struct usb_hcd *hcd, int etd_num)
 		break;
 
 	case PIPE_BULK:
+		maxp = usb_maxpacket(urb->dev, urb->pipe,
+				usb_pipeout(urb->pipe));
 		urb->actual_length += bytes_xfrd;
 		if ((urb_priv->state == US_BULK)
 		    && (urb->transfer_flags & URB_ZERO_PACKET)
 		    && urb->transfer_buffer_length > 0
-		    && ((urb->transfer_buffer_length %
-			 usb_maxpacket(urb->dev, urb->pipe,
-				       usb_pipeout(urb->pipe))) == 0)) {
+		    && maxp && (urb->transfer_buffer_length % maxp == 0)) {
 			/* need a 0-packet */
 			urb_priv->state = US_BULK0;
 		} else {
--
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
