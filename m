Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E37C3E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhUEPPsW9fAZW8HCN4E703EbgRUj3969kCoU+srQg0A=; b=bVtHkayXkbi0mD
	xIDmOislrXf+SLzwekKV9VPK8XC6ub11BlxDQqinR3JArc3GjsIw1l8biL+2U5r1f7o6Byx1QaIKC
	rvnwcosp+UkTvjq3Jjkvab9T4AMQZU1+/lOw8zUwNI8L3xTBTZiDlCpg6vrP4KXK/ulGBza4DGEXS
	U0Uheu4SRDg1xj1pxmM4PY0AmeUbOVks19PiRYQLFIMVY3yAjBEk4KHVBx0L3ZRt1LZS/ZIxXa3fA
	nOEMPxKBsYq4EsZTvzz8+s7Ci5HXyEvpuvklarfkGBZQfp9XZ3yHj9ubgM5nNnmSdW8bRa7qxQncg
	tbp6arK5xuAe7PUqp5eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsowN-0002W5-Al; Wed, 31 Jul 2019 13:46:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsowG-0002V7-S0
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:46:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id t132so32030093pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RYIopWVWcpN8sf8fn3WkAJoSebITP0aCuEJMOu9tUgo=;
 b=mBtfxVJW9PnBRKrB+uQBu32BkJW1DpQZK21apuGw6xkdbEf29gIZyyKKBNKsyyZm7T
 Ga8GPsjvU27IBLreAzB7a7JBLV3nGCHxyflt8fC1EwA6VwdBfXDpx/LNS41rsT+kQ8Iy
 zDWh6KkJWPSgwX3Ly9uADX1D/I/alhwGVlE8+MoaV6yis/Nx0NxQzD8Vasx70JUoBQLl
 gFz9JRgRRM3XSE5pOVNr5yNywlr8SvsPxy3La4y8RJkVKMTT6V7kF44Efel3pU/5L+0q
 wvIeY52cfH5D1V9uo9EVXnVAONdv7VVM9tng9EvnE42YXqooX738ht5TCdp+HtDTUlBG
 PDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RYIopWVWcpN8sf8fn3WkAJoSebITP0aCuEJMOu9tUgo=;
 b=dTHrnwDRK9RAFtyRx9gj1wPPeAdwV844JUeai1HnDC1v0WlP4LIIrX4E1GcF+u3H2d
 M/2lvL5y9I8WE6R9+Ws8jiVx+lxZgLiMQlpSVAvgQD5UevxPJZlevkmetyy+W/LTT248
 MPGWsEG8UXGzTXjD70o2YFnPt/z2L6RUIApQqpe9UZHvbNn09oLvepydKtKGjyfvhYP0
 0Gu8+4AUHxdY+vBWGiInxmZsaymvGWMuSJf8DqDFCZQVx6FCMrGCj49I8xP5+W03ntHW
 zCSiPmfv1vxm+kpMaJ0EwxNPILy7O5kqq2bFBxJ3izw1ipDoj6k66HIarItqANETIaAF
 hNtA==
X-Gm-Message-State: APjAAAWNRhwpkNK7Ox8hQBFJ6ht86b0fOcYDLb/O6OilGqVPHnyRYOzR
 E0tHcZYM4zutlY8dRFeLGLE=
X-Google-Smtp-Source: APXvYqyJ632HMr8qTa4ZHPJ7wJMKy+mNNR1MgRTMRnjyHAyoRP9i2yT3EBmczwD7Wk7y+Y9PJWFOLg==
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr38212861pgi.100.1564580801437; 
 Wed, 31 Jul 2019 06:46:41 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id u134sm66894809pfc.19.2019.07.31.06.46.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 06:46:40 -0700 (PDT)
Date: Wed, 31 Jul 2019 06:46:38 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
Message-ID: <20190731134638.GD147138@dtor-ws>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
 <20190731131045.GB147138@dtor-ws>
 <20190731133840.GN23480@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731133840.GN23480@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_064644_910670_4F989493 
X-CRM114-Status: GOOD (  24.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: x86@kernel.org, linux-input@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Darren Hart <dvhart@infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 Richard Gong <richard.gong@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 04:38:40PM +0300, Andy Shevchenko wrote:
> On Wed, Jul 31, 2019 at 06:10:45AM -0700, Dmitry Torokhov wrote:
> > On Wed, Jul 31, 2019 at 02:43:39PM +0200, Greg Kroah-Hartman wrote:
> > > This patch originally started out just as a way for platform drivers to
> > > easily add a sysfs group in a race-free way, but thanks to Dmitry's
> > > patch, this series now is for all drivers in the kernel (hey, a unified
> > > driver model works!!!)
> > > 
> > > I've only converted a few platform drivers here in this series to show
> > > how it works, but other busses can be converted after the first patch
> > > goes into the tree.
> > > 
> > > Here's the original 00 message, for people to get an idea of what is
> > > going on here:
> > > 
> > > If a platform driver wants to add a sysfs group, it has to do so in a
> > > racy way, adding it after the driver is bound.  To resolve this issue,
> > > have the platform driver core do this for the driver, making the
> > > individual drivers logic smaller and simpler, and solving the race at
> > > the same time.
> > > 
> > > All of these patches depend on the first patch.  I'll take the first one
> > > through my driver-core tree, and any subsystem maintainer can either ack
> > > their individul patch and I will be glad to also merge it, or they can
> > > wait until after 5.4-rc1 when the core patch hits Linus's tree and then
> > > take it, it's up to them.
> > 
> > Maybe make an immutable branch off 5.2 with just patch 1/10 so that
> > subsystems (and the driver core tree itself) could pull it in at their
> > leisure into their "*-next" branches and did not have to wait till 5.4
> > or risk merge clashes?
> 
> Isn't cherry-pick enough for one patch?

With cherry-picking you run into potential merge conflicts if Greg
changes more code in the same area. Plus, once everything is merged into
Linus' tree, there will be N git commits adding the same thing.

With immutable branch there is a single git commit, so merges are
guaranteed to be clean, with no conflicts.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
