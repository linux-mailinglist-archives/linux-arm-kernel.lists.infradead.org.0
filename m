Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9948AC3467
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IP1lXWDBkFoTD3GVOGXLGkd+O/LvSeJwQqpyvpuLS+o=; b=jTC0dDWnn1YWi5
	6pKDvw0CyB69YM8FBzD4c8N5+qTj0Z8ARqXe9nbtZ0QUyLyXLtZhieeGjrR5dwT4cOnRQuiqEoKPL
	hNZszKTHqOLLA6X686Ti4QVn1Kr1+7/4cHEPQ9ieMyN2L88I4jFl/E7CCpyQO3LBTT4iGWeYCa3T6
	gdougl9EoQWh7U9rpSdeddVNQnhL2lSlR2C9HIIaSUyycMY1/wIa5Q2e77p609oPxx60pUD/ZVk1p
	Z6j4uK7Y9/ZmPNBVJjmX6CsLb2kPNamhKU1ddX9wXTwLh47FTqs4QIcpvrBKxp/IphaFkkkA3a8HJ
	sO9EFB8+DuTeoFODZkmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHPk-0006lX-Dm; Tue, 01 Oct 2019 12:38:00 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHPb-0006l3-8M
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:37:52 +0000
Received: by mail-io1-xd41.google.com with SMTP id b19so19356722iob.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 05:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FhGjmsDKKPD3QinXgHs/uFmvxQ7KlC4IGlI0yWXxnE0=;
 b=SFJhuHSvvW8Erq96m6ImL3eOj9JoDGgxYXzBmaiAeyLFuGPT/wzkJf1l7w5eQ+jZHs
 pHpSDRUEYeKgubAl6P98cKWJIUh4hgv8fL/P3cU0fVvj8EIMqvSVfmDrOg4lj7cz6E5u
 dj5JAk9Aordu1jw3j09N0Zwwd0+qF5LPwXnOtkuolUx2dcstilmeBCk0C9huvDWh0xDx
 n68JOqjX3hVXcABMXPV71RCw8nnZjeIjHNbXw3PClR2TFED+9Xc6iZZCYguJHFPKKD+M
 SlcSv2SQuJHQbYlKeYpvzX+YWhpUoMQ06i35N9jZ1vH534UVPFd/N6JPO2dDh9WznuHA
 1D7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FhGjmsDKKPD3QinXgHs/uFmvxQ7KlC4IGlI0yWXxnE0=;
 b=YvJPHe61awEb8V/CbJLkG+85yBDnD3bz4fvGmzJKB4cmFW2D0ag6xB9FN3eGX2VhRj
 Xi+1Al6jO8VFssz4a61JEbz7LK7kRpJPECBpJihXN8yyC2g+w/SKG6C/K0NmhtaeoJ7j
 WB7ZMNk3sNgHYfYS474EA6wERZHZM386DbIVeGNMSaHzIwJU+30UXBOFUMPmiW8KULnM
 KwKdMkFG35hVDF2WV6JHNR6+hPjZY1ovBLy/DBqmlklmyMv6L/dZeYKGvLSwnyzymKJt
 1F/RgwsjKt4N21Al3hm2I9/pxIXdaDJiK0AHAjFHK3wRm8xesX854m4zv9EzqLGzgBZ2
 6isA==
X-Gm-Message-State: APjAAAVDLqzSDga/M4F+k22Gd11IO1FIKopriR+AOA4CYZqTJC3fXvpA
 0UN2wN8pn9NFH7rjQ5urYbvc7++F+av7X/pgvPa4j/4u
X-Google-Smtp-Source: APXvYqz7VBVXBG+ZMWE3fVk0pO5Y0YXERVtxa+N9juNb16CLwwIaQ6lC3GHyv2uy+2PbeZn7ajoc+Kexz4K/mtji6X8=
X-Received: by 2002:a92:d84d:: with SMTP id h13mr26003328ilq.205.1569933468111; 
 Tue, 01 Oct 2019 05:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
 <9525ffc4-3e1f-9941-8f7b-ba74690add77@emlix.com>
In-Reply-To: <9525ffc4-3e1f-9941-8f7b-ba74690add77@emlix.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 1 Oct 2019 07:37:37 -0500
Message-ID: <CAHCN7xJ7GsnwT3CM7giK1ydGY_9SFNMbhz6U0k2eYvpz_EK9oQ@mail.gmail.com>
Subject: Re: [PATCH] Bluetooth: hci_ll: set operational frequency earlier
To: Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_053751_323920_41FE0FAA 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 2:04 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:
>
> A few times i have seen this here too. The wl1837mod should definitely be able to set
> the operaional frequency before loading the firmware.
> It takes nearly 5 seconds to upload the firmware with 115kbps while only
> 0.2s with 3mbps. So i see a high interest to do it the fast way.
> A problem i have identified may be the power supply. At least on my custom board
> the power supply is controlled via gpio. But the serial bluetooth device has no
> support for a regulator. As it is controlled by wifi driver only. I have prepared a patch
> adding regulator support to hci_ll driver. In a few weeks i may try to get it upstream.

Any change you can share with me what you have?  With 5.4 being the
next LTS and at least two of us with broken boards, I am concerned
that a patch in a few weeks may not make the cut for the final release
of 5.4.

>
> Another problem may be the timings. The timings the driver uses are according the wl1837mod
> datasheets but it may that not all devices of that class or the wiring have the same
> specifications and this causes the trouble.
>
> For the above mentioned performance gain i would like to see the problem really solved.

I agree it would be nice to have it working fast, but for others of
us, we just need to work, so unless there is a clear solution to the
problem, I would advocate reverting the patch until the solution can
be found that doesn't break other boards.

> It may be enough to add some sleep time or small delay or something of that kind in
> ll_setup().
>

I am willing to try something if you want.


adam
> Regards,
> Philipp
>
>
> Am 30.09.19 um 22:10 schrieb Adam Ford:
> > Is anyone else having issues with the hci_ll after  a2e02f38eff8
> > ("Bluetooth: hci_ll: set operational frequency earlier") was applied?
> >
> > I have an i.MX6Q with a WL1837MOD attached to UART2.  After this patch
> > I git a bunch of timeouts when initializing the device using the 5.3
> > and 5.3.1 kernel.   I know a bunch of omap and imx users have done
> > some various tests over the years, so I thought I'd ask.
> >
> > [  195.911836] Bluetooth: hci0: command 0xff36 tx timeout
> > [  206.071837] Bluetooth: hci0: command 0x1001 tx timeout
> > [  214.231862] Bluetooth: hci0: Reading TI version information failed (-110)
> > [  214.238712] Bluetooth: hci0: download firmware failed, retrying...
> > [  216.391834] Bluetooth: hci0: command 0xff36 tx timeout
> > [  226.551843] Bluetooth: hci0: command 0x1001 tx timeout
> > [  234.711856] Bluetooth: hci0: Reading TI version information failed (-110)
> > [  234.718705] Bluetooth: hci0: download firmware failed, retrying...
> > [  236.871832] Bluetooth: hci0: command 0xff36 tx timeout
> > [  247.031837] Bluetooth: hci0: command 0x1001 tx timeout
> > [  255.191852] Bluetooth: hci0: Reading TI version information failed (-110)
> > [  255.198706] Bluetooth: hci0: download firmware failed, retrying...
> > Can't init device hci0: Connection timed out (110)
> >
> > Revering this patch fixes the issue, and subsequent patch proposals
> > form Philipp haven't seemed to fix the issues for me on 5.3
> >
> > adam
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
