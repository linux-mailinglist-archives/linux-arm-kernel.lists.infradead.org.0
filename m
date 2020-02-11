Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C242C159625
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG3OwZ+6W2yIMKGHmfjgYMyNysinfqWLBrzBdXS7FgQ=; b=o2XYr3hKDMVjDV
	7JPGpdR+R1OGYO2g+ks/ROrkn2PCnuZ5TTg7+pucaKY4Gn9SCWA00csNK68aRcuSvgHGIRxhFuP/v
	6NnRrUEvhtrJkk5g0vtsw+wXFx/98fXlZF1I966oVJvpNOUFaaqMdqP8PqXuDdQuGnuwadpwkd9Qq
	KGnJOChCOz80kputrGyJ7Qq4bz4hTUYgqpQNUtVSIHWyz79sZh3r8Ra0jSW0Cy5tBbCRRZzgqvX9v
	10Zi5DenEl4yBB8OY2iB8pqTNZ+anm8ZuXttaGzvRF/SRDit3WUHte/EnSgrMbDdRcBLkcrCZhqJc
	7XcOpFukbFvNODMXbPmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZLY-0008RK-GS; Tue, 11 Feb 2020 17:29:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZLT-0008Qc-43
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:29:12 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 861688198;
 Tue, 11 Feb 2020 17:29:47 +0000 (UTC)
Date: Tue, 11 Feb 2020 09:29:00 -0800
From: Tony Lindgren <tony@atomide.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200211172900.GH64767@atomide.com>
References: <20200105183202.GA17784@duo.ucw.cz> <20200106084549.GA14821@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106084549.GA14821@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_092911_201795_8C49FC65 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com,
 Pavel Machek <pavel@ucw.cz>, jjhiblot@ti.com, linux-omap@vger.kernel.org,
 agx@sigxcpu.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Lee Jones <lee.jones@linaro.org> [200106 08:46]:
> On Sun, 05 Jan 2020, Pavel Machek wrote:
> 
> > Hi!
> > 
> > It would be good to get LED backlight to work in clean way for 5.6
> > kernel.
...
> > [If you have an idea what else is needed, it would be welcome; it
> > works for me in development tree but not in tree I'd like to
> > upstream.]
> > 
> > Lee, would you be willing to take "backlight: add led-backlight
> > driver"? Would it help if I got "leds: Add managed API to get a LED
> > from a device driver" and "leds: Add of_led_get() and led_put()" into
> > for_next tree of the LED subsystem?
> 
> It looks like you have an open question from Tony on v10.
> 
> Is that patch orthogonal, or are there depend{ants,encies}?

Uhh looks like we messed up a bit with integration. Now droid4
LCD backlight can no longer be enabled at all manually in v5.6-rc1
without the "add led-backlight driver" patch.. Should we just
merge it to fix it rather than start scrambling with other
temporary hacks?

I don't care if we use "default-brightness", or if we use
"default-brightness-level". The binding merged says now
"default-brightness", so let's go with that one. That's what
other LED drivers are using too.

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
