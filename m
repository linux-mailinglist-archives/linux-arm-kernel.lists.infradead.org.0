Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B4AFFA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 17:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AyYbpmp9HwOLF3/M2hFIv1nbYxBq9QTIBEQgpoOTiK0=; b=ZOtbWZDGwJCo0q
	A1I5j1fLGPP4c4Z+crs7SkoeikIPvMcwcMYmgs+kl3eEK+C99eQrs6e5KGw+p71vPpbN8S1ttfiNA
	7jgkt6Xc5LmgMTnjGUT5OP4YbECBS7H7S/rf3pGUnwt8tPxwqtoRCFrr3jIjjlPCaIwPM4CRnmkP+
	o44c8pEs54XELUuWh+p7xFPbUcB5K4vY//Qhdo9uJjdPn6kZcYDHYqEw6d1HfYNdRbx8z47DwEwhr
	EZ+usJQiexXdG+bwrBSH4AWOfeZns1tUr7qiQL2ioWR451XmMgpspKLoGT9q5aE8DSlq1V2BJOwEp
	oSO6bKqWHEaG9z0IR7vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i84FK-0006Vp-Rn; Wed, 11 Sep 2019 15:09:26 +0000
Received: from iolanthe.rowland.org ([192.131.102.54])
 by bombadil.infradead.org with smtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84F8-0006V4-Km
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 15:09:16 +0000
Received: (qmail 4433 invoked by uid 2102); 11 Sep 2019 11:09:10 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 11 Sep 2019 11:09:10 -0400
Date: Wed, 11 Sep 2019 11:09:10 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH 0/3] USB: host: ohci-at91: tailor power consumption
In-Reply-To: <20190911064154.28633-1-nicolas.ferre@microchip.com>
Message-ID: <Pine.LNX.4.44L0.1909111108460.1483-100000@iolanthe.rowland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_080914_869856_D0093BBC 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris.Krasnovskiy@lairdconnect.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Sep 2019, Nicolas Ferre wrote:

> Following a set of experiments we found areas of improvement for OHCI power
> consumption (and associated USB analog cells).
> This enhances the shutdown of residual power consumption in case of Linux
> suspend/resume and removal of the driver (when compiled as a module).
> 
> Best regards,
>   Nicolas
> 
> Boris Krasnovskiy (2):
>   USB: host: ohci-at91: completely shutdown the controller in
>     at91_stop_hc()
>   USB: host: ohci-at91: resume: balance the clock start call
> 
> Nicolas Ferre (1):
>   USB: host: ohci-at91: suspend: delay needed before to stop clocks
> 
>  drivers/usb/host/ohci-at91.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

For all three patches:

Acked-by: Alan Stern <stern@rowland.harvard.edu>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
