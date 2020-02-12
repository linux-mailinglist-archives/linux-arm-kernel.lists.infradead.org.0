Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806EA15A73A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xhlJRdK7/o0ees+/qx9agXvN7ILeFswHnCqJOKi/TBI=; b=J6BFrAd4RQHR+A
	XuRZ22vNKI3xrwJW+MOiqbkT1KZc41uRvBn1cWAD0c6MhPBiK72EIHDJhoDS1Ht5YZUGWpxDWk6VL
	K3mNdXoZOLJjsJg33CI+u3pWGFr1Rx/y7+odIWq8ZrnmHqd0FfBLfp5+9Z7+ul3jpLGj1WXN/YGRv
	M5uV0hUSHBNWOPVxIU+5ZHkWFg0vJpsJ6E4w0u8imeSwuTuzf5/QnzSMb+9E+MN7+XznIN3zguTXW
	KQguaOoLX3UsV8alKsaaCDF5SyKk4g5loPnJO6VyznubV0mNJ4FywzKcxZScx3tqHl9BS6Qxo0GCt
	qh5WGcIYXMVi4k7u5E7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pkX-0005b5-3m; Wed, 12 Feb 2020 11:00:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pkE-0005af-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:59:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so1698260wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 02:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0WADwYZAFozcjUcaNyh7Kf7qDOuVzzulZ+EPYmgS/ug=;
 b=fuh3dDrYkv830SEwfl+Gn/HIHAW0qEUw/EGHH1awGm4CJl9986LeURUBY95VKJJLkg
 40E0SVzv9Khu2zcvstRjkPG7B5O88LY8+oF1T9SxcoPPIspDntkT9/g5IF7ZqmozZBLf
 V7uPsvEfuJ3ytQwOHMJwH3uVcvpYwwuEto4UV0Y4AzZK9dTKNXrfWnmQWkuftxYd0vvk
 jFZ4ScRxOgXNIvbQzQr66Bhj3PFFBmJ83WgIIwuBNcWmybE5YoGWQSJXrhCGuitSNDQ7
 e4XM1FpP1u2FSNggqhi8EkF1U1bke7Mck+BRsCccEn/dQMghtZ/TDj1hzOuFmpM3n4qE
 YMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=0WADwYZAFozcjUcaNyh7Kf7qDOuVzzulZ+EPYmgS/ug=;
 b=aCRiADSzxM0HkJYCETv/Grf1BcwW6T5EdPkQ2iOUv9X13u6BIl9BOIUXYGpZc72bN0
 l+B4x1gxgRn15VNjhJMLzjeYSJjQl5R+Ulv+EcYq+Jxm0VcsszTh3sXSANi1L6Cugwve
 8+O0CGsmOg+JSL/6xDvvrXVYsFJoBdV1r7QNCSI5+IBjbIE7f6gIw2YGnpQ3PFs/BWTo
 rvSdH3yuL/3v+OqCxdN9lWT7uam4SURCbDAHrvxfaxH88BtHzIWoU8XCKZMlFjGH8Q57
 //+miFlodn7v7dTx1TWuewLUkJCFcfDJ7/oKJHdP8lS6eurDOIPq0sxEFmRx/g7p+QK/
 nagw==
X-Gm-Message-State: APjAAAWOq8tK+HEje7JFKK0rd4+AgaI8Vc+1PppnYDm2YEVIk4OWHqwD
 1mDyY8eQwUBVj4sSr7q0dDQLVA==
X-Google-Smtp-Source: APXvYqwbrMdOWkUnuIhJNtCf0g3LbuxklJ/KJtRqXXubgkOhbjraTmG58tAP8F49wXEmVf1wvP84Tg==
X-Received: by 2002:a5d:43c7:: with SMTP id v7mr14279292wrr.32.1581505189212; 
 Wed, 12 Feb 2020 02:59:49 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id j5sm180760wrb.33.2020.02.12.02.59.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 02:59:48 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH] usb: gadget: udc-xilinx: Fix xudc_stop() kernel-doc format
Date: Wed, 12 Feb 2020 11:59:47 +0100
Message-Id: <c753b529bdcdfdd40a3cf69121527ec8c63775cb.1581505183.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_025950_538788_DD874658 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Felipe Balbi <balbi@ti.com>, Stephen Boyd <swboyd@chromium.org>,
 Peter Chen <peter.chen@freescale.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch removes "driver" parameter which has been removed without
updating kernel-doc format.

Fixes: 22835b807e7c ("usb: gadget: remove unnecessary 'driver' argument")
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 drivers/usb/gadget/udc/udc-xilinx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/udc-xilinx.c b/drivers/usb/gadget/udc/udc-xilinx.c
index 29d8e5f8bb58..b1cfc8279c3d 100644
--- a/drivers/usb/gadget/udc/udc-xilinx.c
+++ b/drivers/usb/gadget/udc/udc-xilinx.c
@@ -1399,7 +1399,6 @@ static int xudc_start(struct usb_gadget *gadget,
 /**
  * xudc_stop - stops the device.
  * @gadget: pointer to the usb gadget structure
- * @driver: pointer to usb gadget driver structure
  *
  * Return: zero always
  */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
