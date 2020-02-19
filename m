Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91251649FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 17:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZqOaS6FdiPXU1w093Fx3uOVviAL/mJ3Wx1yhz++Nes=; b=I2z+nM5USgi1mc
	rGLYz+vPJzQIMoyonSTsuloL1YgnjdpynN8k/FSkNMX+EWxvQ5YGY7Ww1CE99M4v4BW6/Pg/0HhkV
	razo5KouYS4zOv9ORTJVU9qoO5Yl7Tl8V2j/L/oqAjoJ47UdaS9MyNGcc7QSAE/7Ach4fYVse7qZw
	UVp4QPT7PQntcUkHFsV0AZHV9nBCX/61pUPdMzeW0yckfZ9R7v/496zfQSGgXIup5FUPS0rw8V4a6
	8babkbclTve2dCh0fGaakgLxYPPnft+943L8b9UFYn/p86AEu+XWMfPpRPU+/egG/rz8AxgQJHz+v
	e9WYIA7D0WMSlpAsvOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4S4o-0006ll-4B; Wed, 19 Feb 2020 16:19:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4S4b-0006kh-48
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 16:19:42 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D5CCB80F3;
 Wed, 19 Feb 2020 16:20:19 +0000 (UTC)
Date: Wed, 19 Feb 2020 08:19:32 -0800
From: Tony Lindgren <tony@atomide.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200219161932.GK35972@atomide.com>
References: <20200105183202.GA17784@duo.ucw.cz> <20200106084549.GA14821@dell>
 <20200211172900.GH64767@atomide.com> <20200212201638.GB20085@amd>
 <20200218135219.GC3494@dell> <20200218141452.GF35972@atomide.com>
 <20200218231001.GA28817@amd> <20200219074730.GD3494@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219074730.GD3494@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_081941_204809_4625D656 
X-CRM114-Status: GOOD (  25.97  )
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

* Lee Jones <lee.jones@linaro.org> [200219 07:47]:
> On Wed, 19 Feb 2020, Pavel Machek wrote:
> 
> > Hi!
> > 
> > > > > > > > It would be good to get LED backlight to work in clean way for 5.6
> > > > > > > > kernel.
> > > > > > ...
> > > > > > > > [If you have an idea what else is needed, it would be welcome; it
> > > > > > > > works for me in development tree but not in tree I'd like to
> > > > > > > > upstream.]
> > > > > > > > 
> > > > > > > > Lee, would you be willing to take "backlight: add led-backlight
> > > > > > > > driver"? Would it help if I got "leds: Add managed API to get a LED
> > > > > > > > from a device driver" and "leds: Add of_led_get() and led_put()" into
> > > > > > > > for_next tree of the LED subsystem?
> > > > > > > 
> > > > > > > It looks like you have an open question from Tony on v10.
> > > > > > > 
> > > > > > > Is that patch orthogonal, or are there depend{ants,encies}?
> > > > > > 
> > > > > > Uhh looks like we messed up a bit with integration. Now droid4
> > > > > > LCD backlight can no longer be enabled at all manually in v5.6-rc1
> > > > > > without the "add led-backlight driver" patch.. Should we just
> > > > > > merge it to fix it rather than start scrambling with other
> > > > > > temporary hacks?
> > > > > 
> > > > > We should just merge the "add led-backlight driver". Everything should
> > > > > be ready for it. I'm sorry if I broke something working, I was not
> > > > > aware it worked at all.
> > > > > 
> > > > > Unfortunately, this is backlight code, not LED, so I can't just merge it.
> > > > 
> > > > Please go ahead.  Apply my Acked-by and merge away ASAP.
> > > > 
> > > > Acked-by: Lee Jones <lee.jones@linaro.org>
> > > 
> > > OK best to merge the driver via the LED tree:
> > > 
> > > Acked-by: Tony Lindgren <tony@atomide.com>
> > > Tested-by: Tony Lindgren <tony@atomide.com>
> > 
> > Is the patch below the one both of you are talking about?
> > 
> > Hmm. I should s/default-brightness-level/default-brightness/
> > below.
> > 
> > Lee, I can of course take it (thanks), but won't Kconfig/Makefile
> > pieces cause rejects? It might be still better if you took it. I can
> > hand-edit it and submit it in form for easy application... tommorow.
> 
> My suggestion would be to send it to Linus ASAP.
> 
> Ideally it would get into the -rcs, as it 'fixes' things.

I agree. Pavel, the version of the patch you posted is all space
trashed. Can you please post again so I can verify the related dts
changes against it?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
