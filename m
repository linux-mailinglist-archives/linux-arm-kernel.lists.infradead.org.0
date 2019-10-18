Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBC9DD082
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKyK+gDlB6mOdq93Bugo7GnZbfKKttyCFuVB3oRQmO0=; b=kais0Q0Q/l414E
	Csv4gmk697r1IZ9k3JLzgZ5Ldpk+JkpsMf2Iyen3NnTf+51AyL+XM0kp7Zx/WD4hjReWqKyR6eHFt
	jWQRvHvm3njHzdbmjbfSg+mIlKGTGVQeBPjwVZOvHllICk77XSAuveNeIk7+Ozb4ZabVvGtfMndks
	aHxG1Vl8Sw214sXExYLsJU34VmqEQ0AHUyHvbN8KbvZrE8b77RYq6/+H5YFC6OG6gq0TZCkx2h+ge
	WUhaClq6U3iTEMUoQIAGNmCGQOTYFml2tcMFiK363gW+K4BNY6cpd6ifjGwD16jGuRzJBXCJWdyMG
	OXZ+USLhpoTaeWR7cHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZ1p-000452-2Y; Fri, 18 Oct 2019 20:39:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZ1e-00043j-4w
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:39:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id s17so3388985plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 13:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sA9QYMiGhI7MttA/PLlqrtMzG0s83akjTEVC2Hk0Y0Y=;
 b=DN5MEvFgVMu4M4/XCLw9BRIhFBFz5/fxRslD8rf+iBz/h2hn6x8mBLdHOrnXuEO4cf
 vCZZ3UVlc1wh7a40ehAmlIXKkUx76Z/vfG+pIworaMVo9p1R2FuXCucWWS84hmof1jfX
 hBEPTm5IBCXfvNU9ZsmPS3MVRpbXxmym8TAwhZ7tHD9vtpbt99ui/Qb+DwxKB69ExLRQ
 S8dDorBNDNK51e8KQpVTnyU1cXa/9sijPaH20LMzhui9CVrfHwVpiDXjMsMciohHfbMu
 eHVms76z/2lQhmX9raIBDs5TQGc1rIGb2eMvJS1W8RDwF9Oe8fWetD//OkFfRZ9eV/2E
 boRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sA9QYMiGhI7MttA/PLlqrtMzG0s83akjTEVC2Hk0Y0Y=;
 b=abpA+yyy6xxJAPNjE0VJJfJ0wFcACVfIWdiUhpiaC2UVi9tXzIFtOpdvpeAQFYcXgy
 Y8ogqFyuEk0OA5xJcupX5FYIr9VsU68lQ5Ko7iZVPijMi4xI6Ycu+idxK88BoDaRbTND
 P5NDG9ewH41QTFRxUJEgb2I04KGsvnZuQezvaUdTKn7YBwjoJaikvjdEnPz7dyXcDajc
 uaWELwegWfvm6clPhAxgtcQ664V5MmTAZhJ2Q6rQrXwMNANhbIF9d3cWvSeobtPgXpH+
 wKVQ8tNa1HMq19PxyhcAWmmA7ixygcx4XTvzl9wPjs38hzWWdvr99CIUkfWAjzE10C3X
 Om4Q==
X-Gm-Message-State: APjAAAW2AvvgpFHcV7MTPnKBxdCu1HhwTCxYWMEpK9BHi0fUQIc3U84a
 abNoAuWQBx48Ro9zzECKZxE=
X-Google-Smtp-Source: APXvYqyIxdE8kbIPAupy1VRv2Z5sSpuL6L3+Lx1OQzb/YVFns+e38GVIZHMuR66stuh9mPN8FKSWQA==
X-Received: by 2002:a17:902:ff14:: with SMTP id
 f20mr1803901plj.216.1571431145094; 
 Fri, 18 Oct 2019 13:39:05 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 196sm7859249pfz.99.2019.10.18.13.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 13:39:04 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:39:02 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Fwd: [PATCH 29/46] Input: touchscreen: use wrapper for pxa2xx
 ac97 registers
Message-ID: <20191018203902.GQ35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-29-arnd@arndb.de>
 <20191018184815.GP35946@dtor-ws>
 <CAK8P3a27==9TeS-RWEvrpnxh+6McqRF-xeb8WPj9pHOn+0zbOQ@mail.gmail.com>
 <CAK8P3a0AP8q9Hk1DB+E=xFGV5RqXnkjkcZRobgU1NRDFMH00AA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0AP8q9Hk1DB+E=xFGV5RqXnkjkcZRobgU1NRDFMH00AA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_133906_188459_75FF8FA7 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 09:39:31PM +0200, Arnd Bergmann wrote:
> On Fri, Oct 18, 2019 at 8:48 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 05:41:44PM +0200, Arnd Bergmann wrote:
> > > To avoid a dependency on the pxa platform header files with
> > > hardcoded registers, change the driver to call a wrapper
> > > in the pxa2xx-ac97-lib that encapsulates all the other
> > > ac97 stuff.
> >
> > Not supper happy about adding module dependencies. Can we include
> > mach/regs-ac97.h from include/sound/pxa2xx-lib.h and use static inlines?
> > Someone needs to include mach/regs-ac97.h in the end...
> >
> > Or there is something later in the series that needs it?
> 
> One of the goals of the series is to completely remove all mach/*.h headers
> and place them somewhere else, ideally inaccessible to device drivers.
> 
> In case of mach/regs-ac97.h, the later patch "ASoC: pxa: ac97: use normal
> MMIO accessors" passes the physical register base address as a platform
> device resource that gets ioremapped in the ac97 driver, rather than
> hardcoding the virtual address in a global header.
> 
> I agree that the exported function is still ugly, but I hope it's enough of
> an improvement over the previous state that we can do it anyway.
> 
> If you have any better ideas though, I can give that a try, too.
> One possibility would be a higher-level interface exported on top
> of 'struct snd_ac97', but I could not figure out how to do this.

No, I do mot really have better ideas given your stated goals and I
guess there is not really much benefit on spending too much effort
polishing essentially one driver.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
