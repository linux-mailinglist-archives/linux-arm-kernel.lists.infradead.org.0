Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7761145274
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NatUD5HZU8bes5qXUAHRNrL+LSqIeR1XV1jFCMY3Yk8=; b=bEXs+8/bBkqPa3
	Db8XI4uJcV+Yn/SluPGVTqy2zBoLqm2TRTO8jCQni1lfeeb14HzloLbrXp2k7aGlr4YoXs8o0sP7r
	m492uddX9owyRFcs7pHpHntUZSJ3wbZM2fgyHqqTZBVZSymrbvE9r6dUb4Ar40XM1nDUk+PwN1fIQ
	187UO7Xtr4ySpskcweTW7LQIAa/xq7JIFW+KHUlkORs+neDAxeJx7kyTURw1Dyb6KTS0AgusnOdIl
	aWNnRH+pVU8bTmKJVJIThoo9wGOFQi56oH9aEEPqdRSJmnJ5TYmmO2aDaSYrDcl4qjCJMpo8e0DGJ
	LJRDChPZLlRXs76qp9yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuD8v-0003Di-JX; Wed, 22 Jan 2020 10:21:49 +0000
Received: from smtpout.aon.at ([195.3.96.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuD8l-0003DE-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:21:41 +0000
Received: (qmail 9442 invoked from network); 22 Jan 2020 10:21:37 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL503.highway.telekom.at
X-Spam-Level: 
Received: from 91-114-188-72.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([91.114.188.72]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub86.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Jan 2020 10:21:36 -0000
X-A1Mail-Track-Id: 1579688496:9390:smarthub86:91.114.188.72:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: <linux-arm-kernel@lists.infradead.org>
References: <001a01d5d0fb$5f85ca70$1e915f50$@at>
 <20200122092221.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20200122092221.GL25745@shell.armlinux.org.uk>
Subject: RE: StrongARM SA-1110 / SA-1111 and Kernel 4.9.210 (Jornada 720)
Date: Wed, 22 Jan 2020 11:21:36 +0100
Message-ID: <000601d5d10d$ba6292e0$2f27b8a0$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: de-at
Thread-Index: AdXRBY24kRNn5XiaRIu2iAsI59uYTwAB2PUw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_022139_939795_5005A3BC 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.3.96.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan-lehner[at]aon.at]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.3.96.117 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: 'Russell King - ARM Linux admin' <linux@armlinux.org.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, Jan 22, 2020 at 09:10:13AM +0100, Stefan Lehner wrote:
> Hi!
> I like to get a newer Linux Kernel running on my Jornada 720. It has a
> StrongArm SA-1110 CPU and the SA-1111 companion chip. =

> I patched the kernel source with the BX emulation to run a newer Debian
> userland. The kernel compiled fine. =

> It starts to boot on the Jornada with the linexec bootloader. But it seems
> that it doesnt detect any CF or PCMCIA card. I managed to get the
> jornada720_pcmcia_configure_socket() running and it detects the card and
> powers it up with the correct voltage (3V for the CF card in socket 1).

>> What was required for that?

I had to comment out: =

# CONFIG_PCMCIA_SA1100 is not set
and activate:
CONFIG_PCMCIA_SA1111=3Dy
in the kernel .config.


> But
> thats all. No CF card is being recognized and so the IDE driver cannot
load
> the card. The same thing happens if i insert a PCMCIA card into socket 0,
> jornada720_pcmcia_configure_socket() powers it up with the correct voltage
> but the card itself is not recognized. =A0I hope that somebody can help me
or
> give me a hint to solve this!

>> Have you tried "rootdelay=3D2" on the kernel command line, just in case
>> it needs a bit of time to run other threads to probe the card?

You sir, are a genius! That was it. Now i can move on.
Thank you very much.

Bye
Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
