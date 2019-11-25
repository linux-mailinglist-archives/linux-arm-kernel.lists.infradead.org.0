Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4AB108FA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqPfLtVyX+QFOAPW+/Sb2mM1aPTcFXTs1yhRIMen5/8=; b=JzQEZ061shNLJm
	M7nkSqGuAY6Xn6PlNQLnHhnu8tLBvTUS45mMUnAYuvYWzg7zKvDz5OxluJsVg9Yjok2R1hKC3Ae1W
	dfPZ5RXqywhCHnyDMTAyX252RQf85brj6R4yV69k9MYKRpJU0uJDa5SJzlBle/tF0JQSKZwr1bDqv
	BdgUGlT8Dl5zdKlKRVxICrB7biaooe0EaFu4cAKpquitdwqW5e4yaUIGv9ilrMp2vt+R/Qre4+KGP
	fgcBPCDzgJnBldWxdojiaLqxjGTx6uzsaCf7G4Mv8iHIjCshODFxttwfdJ0/cc8QfPuJGRso8pq2q
	5YuiZzJtc+34XmLq0OAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZF5R-00029W-0q; Mon, 25 Nov 2019 14:11:33 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZF5I-00028P-6o
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:11:26 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id E46E320C1C;
 Mon, 25 Nov 2019 15:11:22 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id CDF0620BCE;
 Mon, 25 Nov 2019 15:11:22 +0100 (CET)
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125530.GP25745@shell.armlinux.org.uk>
 <c7414301-da0d-cd4d-237d-34277f5ee1d2@free.fr>
 <20191125133752.GS25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <21c242a9-3599-3288-79bf-a8889fad2a73@free.fr>
Date: Mon, 25 Nov 2019 15:11:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125133752.GS25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov 25 15:11:22 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_061124_541048_76B7CC2C 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/11/2019 14:37, Russell King - ARM Linux admin wrote:

> On Mon, Nov 25, 2019 at 02:10:21PM +0100, Marc Gonzalez wrote:
>
>> On 25/11/2019 13:55, Russell King - ARM Linux admin wrote:
>>
>>> It's also worth reading https://lore.kernel.org/patchwork/patch/755667/
>>> and considering whether you really are using the clk_prepare() and
>>> clk_enable() APIs correctly.  Wanting these devm functions suggests
>>> you aren't...
>>
>> In that older thread, you wrote:
>>
>>> If you take the view that trying to keep clocks disabled is a good way
>>> to save power, then you'd have the clk_prepare() or maybe
>>> clk_prepare_enable() in your run-time PM resume handler, or maybe even
>>> deeper in the driver... the original design goal of the clk API was to
>>> allow power saving and clock control.
>>>
>>> With that in mind, getting and enabling the clock together in the
>>> probe function didn't make sense.
>>>
>>> I feel that aspect has been somewhat lost, and people now regard much
>>> of the clk API as a bit of a probe-time nuisance.
>>
>> In the few drivers I've written, I call clk_prepare_enable() at probe.
> 
> Right, so the clocks are enabled as soon as the device is probed,
> in other words at boot time. It remains enabled for as long as the
> device is bound to its driver, whether or not the device is actually
> being used. Every switching edge causes heat to be generated. Every
> switching edge causes energy to be wasted.
> 
> That's fine if you have an infinite energy supply. That hasn't been
> discovered yet.
> 
> Given the prevalence of technology, don't you think we should be
> doing as much as we possibly can to reduce the energy consumption
> of the devices we use? It may be peanuts per device, but at scale
> it all adds up.

OK, I'm starting to see the bigger picture.

(To provide some rationale for the patch, I think devm is a huge
improvement for probe error-handling, and I did not understand
why every driver must do manual error-handling when dealing with
clocks in probe.)

I did envision kernel modules being loaded on an as-needed basis,
somewhat side-stepping the energy-waste issue you point out.
But I realize that such a use-case may be uncommon. (Especially
due to module auto-loading.)

A few months ago, I was discussing a similar issue with GKH:
Consider a device with a "START" register. Basically, if we write 0,
the device turns itself off; if we write 1, it runs as configured.

I was trying to start the device only when at least one user had
it "open". So I used reference counting, and started the device
on 0->1 open transitions, and stopped the device on 1->0 close
transitions. GKH told me that was the wrong way to do it, and IIRC
suggested to start the device in probe.

I probably misunderstood Greg's suggestion. Where is the right place
to start/stop a device (or gate its clocks)?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
