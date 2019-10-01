Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADE4C2DAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fBnkgGg+3LNIICSPcpoe+9LSUSaBPc63JudJ95Nd/8Y=; b=SU7wabGsJ45i11zWhIYiaelyQ9
	po2+EY3zWDzPWHXLhlmis+fuQ87BZAw/qjzgcb9DJfHOEzsleYgkRmB7n+x0n6e/xEf4e5pXLCPbz
	FFRqzMk/pUyBsDpPL/bvHALd1xnO3WpiBOceXhX6n7sBpWS5GW+l0+dZbdD6VlPxeidsT5eNIT8Nn
	ubAhUTUsONo9nHNBngKDQ8r3JBoLtqPSTHuMjFXk7phXTzEVViVfT9vawXmq4QtHVnJq5zFzA79vx
	tyzW8ft4xpxqrOvC5c/mEUvvbIStxp20ZtjazEao29vPc6PqaZ1gQlLVNSz9HX8pFtDtj1GpiEwdO
	FTEkzOyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCD8-0003Y3-Vs; Tue, 01 Oct 2019 07:04:38 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCD1-0003XA-EP
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 07:04:33 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id A6EB25FCC9;
 Tue,  1 Oct 2019 09:04:26 +0200 (CEST)
Subject: Re: [PATCH] Bluetooth: hci_ll: set operational frequency earlier
To: Adam Ford <aford173@gmail.com>, Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>
References: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <9525ffc4-3e1f-9941-8f7b-ba74690add77@emlix.com>
Date: Tue, 1 Oct 2019 09:04:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_000431_633779_C071855E 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A few times i have seen this here too. The wl1837mod should definitely be able to set
the operaional frequency before loading the firmware.
It takes nearly 5 seconds to upload the firmware with 115kbps while only
0.2s with 3mbps. So i see a high interest to do it the fast way.
A problem i have identified may be the power supply. At least on my custom board
the power supply is controlled via gpio. But the serial bluetooth device has no
support for a regulator. As it is controlled by wifi driver only. I have prepared a patch
adding regulator support to hci_ll driver. In a few weeks i may try to get it upstream.

Another problem may be the timings. The timings the driver uses are according the wl1837mod
datasheets but it may that not all devices of that class or the wiring have the same
specifications and this causes the trouble.

For the above mentioned performance gain i would like to see the problem really solved.
It may be enough to add some sleep time or small delay or something of that kind in
ll_setup().

Regards,
Philipp


Am 30.09.19 um 22:10 schrieb Adam Ford:
> Is anyone else having issues with the hci_ll after  a2e02f38eff8
> ("Bluetooth: hci_ll: set operational frequency earlier") was applied?
> 
> I have an i.MX6Q with a WL1837MOD attached to UART2.  After this patch
> I git a bunch of timeouts when initializing the device using the 5.3
> and 5.3.1 kernel.   I know a bunch of omap and imx users have done
> some various tests over the years, so I thought I'd ask.
> 
> [  195.911836] Bluetooth: hci0: command 0xff36 tx timeout
> [  206.071837] Bluetooth: hci0: command 0x1001 tx timeout
> [  214.231862] Bluetooth: hci0: Reading TI version information failed (-110)
> [  214.238712] Bluetooth: hci0: download firmware failed, retrying...
> [  216.391834] Bluetooth: hci0: command 0xff36 tx timeout
> [  226.551843] Bluetooth: hci0: command 0x1001 tx timeout
> [  234.711856] Bluetooth: hci0: Reading TI version information failed (-110)
> [  234.718705] Bluetooth: hci0: download firmware failed, retrying...
> [  236.871832] Bluetooth: hci0: command 0xff36 tx timeout
> [  247.031837] Bluetooth: hci0: command 0x1001 tx timeout
> [  255.191852] Bluetooth: hci0: Reading TI version information failed (-110)
> [  255.198706] Bluetooth: hci0: download firmware failed, retrying...
> Can't init device hci0: Connection timed out (110)
> 
> Revering this patch fixes the issue, and subsequent patch proposals
> form Philipp haven't seemed to fix the issues for me on 5.3
> 
> adam
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
