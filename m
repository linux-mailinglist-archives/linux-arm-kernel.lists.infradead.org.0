Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41311F5B2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrTwJlLgqBrOUb5xEShclIsOGv3kWQNeKXe5HE+iYx8=; b=CJA5ARWvvYczvi
	sFJPwpq5UtLZ3DZ7ZaNAglQXpkx/nTXWS1QnkM+VM1vZdAifqHxIi9EQthOV6em19F+a+nCPKUZa5
	qexePXSjJ88R+ymwNgxcC7l9ELRWMgUdRYaGg+DILOTZW7m98szQKqsFDAGJDrYL94Ca34Px+aH79
	YtrsNfkqjzGzQJhmv4dV5y0rXcQcTbS526nNMWcrEXdTAmQWZUQc2ElnRKWVEjvRuX9PTCLPP1E8z
	j4XfmdrdWM6yTtrHVpukST3BD7PXzHAa43MfUVQJHv5C/WZrZjmqo4zsoDkNdDvvNu1vhcV2T6/8u
	/EGPjY4Iii+hnmosg5qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5T1-0001TX-Bl; Wed, 10 Jun 2020 18:28:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5St-0001Sl-13
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:28:44 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m2so1238497pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q+iXoivd5hMScfZeurzIUNXkcUnOic8qwUzMxWu7w2U=;
 b=sEaIbR0Cr/eLOEYio7dXQ3e1guSp15xzUraPzd/jVesFJu3tCzIxvK3j0E7MlBsbOM
 gksSkRr+OiiIw0iV3EKo1XZSAEAOSSV9+2SCCntOC0FVA7TEVgYcmbK46vFjQa3Q7wx3
 KlatPS4xMyQiY0JyqxLGuQZI2ImWfgKQKmQDQlrizcfyloEDllejT/biAdoa6kQf43nV
 q6FnxNCxQzJ+XGQdfWV2IyDlbGrKisqeh+U8RW6vO/rDIKOoaeVosl0oXuZTRwKKdKQi
 kRF8mevg8ekryOts47CMXkpzt0CbaxOq2UT9Ck23WREqf7/oUqh8DuBziQRysxuzdy8N
 qEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q+iXoivd5hMScfZeurzIUNXkcUnOic8qwUzMxWu7w2U=;
 b=GHi42Wz9d27t4ziADFnqylTQdsG06/VVP8gxjnz7gvKEwX9Nzlg4O+D7cbkEdQ9WTQ
 1hNeU30IP0OcbKVXTlxT2MHwt++WBn1isMMgytiCeKcca1tQ02pW826LBpqXuq75YRmj
 IdWvbj5iFqugSGhsQmAXYa85L0wp2+NcC5XsEEVPr9GA2ZDz9QyKBWvNCSVOIDFJLQbd
 192//wnbdtkvuoHRNhq4CeCkZtUqOFMzj59fXZOskpmZt0RIyMxcEpCPuWMGLD5J3PMV
 /reLOI6rYE5nPI4FCEaSq6VQHNqKibJTzHT9vO3b+5eZ5MLoPfmQ6/2z3423YdZs3lCY
 Smew==
X-Gm-Message-State: AOAM531idipD3B8W/eoEnTQMjKpVdIv1eb3PxlhNIrHy1c/9osOJGV61
 ZzbSjfQjA9KyHa5DY+C52QI=
X-Google-Smtp-Source: ABdhPJwATkO2n20nNol3mvOSQmdAsq5ulJM1g+IU9cvr25sSyGY/QmEogkwppaZy8z1xiGbG5iD6og==
X-Received: by 2002:a17:90a:6047:: with SMTP id
 h7mr4173081pjm.145.1591813720143; 
 Wed, 10 Jun 2020 11:28:40 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id f14sm463546pgj.62.2020.06.10.11.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 11:28:39 -0700 (PDT)
Date: Wed, 10 Jun 2020 11:28:36 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
Message-ID: <20200610182836.GA248110@dtor-ws>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_112843_089449_0301B26D 
X-CRM114-Status: GOOD (  47.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Collabora Kernel ML <kernel@collabora.com>, Nick Dyer <nick@shmanahar.org>,
 linux-iio@vger.kernel.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Linux Samsung SoC <linux-samsung-soc@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM <linux-pm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 12:38:30PM +0200, Rafael J. Wysocki wrote:
> On Wed, Jun 10, 2020 at 11:50 AM Hans de Goede <hdegoede@redhat.com> wrote:
> >
> > Hi All,
> >
> > On 6/8/20 1:22 PM, Andrzej Pietrasiewicz wrote:
> > > This is a quick respin of v3, with just two small changes, please see
> > > the changelog below.
> > >
> > > Userspace might want to implement a policy to temporarily disregard input
> > > from certain devices.
> > >
> > > An example use case is a convertible laptop, whose keyboard can be folded
> > > under the screen to create tablet-like experience. The user then must hold
> > > the laptop in such a way that it is difficult to avoid pressing the keyboard
> > > keys. It is therefore desirable to temporarily disregard input from the
> > > keyboard, until it is folded back. This obviously is a policy which should
> > > be kept out of the kernel, but the kernel must provide suitable means to
> > > implement such a policy.
> >
> > First of all sorry to start a somewhat new discussion about this
> > while this patch set is also somewhat far along in the review process,
> > but I believe what I discuss below needs to be taken into account.
> >
> > Yesterday I have been looking into why an Asus T101HA would not stay
> > suspended when the LID is closed. The cause is that the USB HID multi-touch
> > touchpad in the base of the device starts sending events when the screen
> > gets close to the touchpad (so when the LID is fully closed) and these
> > events are causing a wakeup from suspend. HID multi-touch devices
> > do have a way to tell them to fully stop sending events, also disabling
> > the USB remote wakeup the device is doing. The question is when to tell
> > it to not send events though ...
> >
> > So now I've been thinking about how to fix this and I believe that there
> > is some interaction between this problem and this patch-set.
> >
> > The problem I'm seeing on the T101HA is about wakeups, so the question
> > which I want to discuss is:
> >
> > 1. How does inhibiting interact with enabling /
> > disabling the device as a wakeup source ?

One should not affect the other.

> >
> > 2. Since we have now made inhibiting equal open/close how does open/close
> > interact with a device being a wakeup source ?

One did not affect another, and it should not.

> >
> > And my own initial (to be discussed) answers to these questions:
> >
> > 1. It seems to me that when a device is inhibited it should not be a
> > wakeup source, so where possible a input-device-driver should disable
> > a device's wakeup capabilities on suspend if inhibited
> 
> If "inhibit" means "do not generate any events going forward", then
> this must also cover wakeup events, so I agree.

Why? These are separate concepts. Do we disable wake on lan when
bringing network interface down? Do we update power/wakeup when device
is inhibited? Do we restore it afterwards? Do we un-inhibit if we
reenable wakeup after device is inhibited? Do we return error? How?

Inhibit works on logical level, i.e. if I have several input interfaces
on the same hardware device, I cam inhibit one leaving others intact.
This does not mean that the device should stop generating wakeup events.
We can't even guarantee this for composite devices.

> 
> > 2. This one is trickier I don't think we have really clearly specified
> > any behavior here. The default behavior of most drivers seems to be
> > using something like this in their suspend callback:
> >
> >          if (device_may_wakeup(dev))
> >                  enable_irq_wake(data->irq);
> >          else if (input->users)
> >                  foo_stop_receiving_events(data);
> >
> > Since this is what most drivers seem to do I believe we should keep
> > this as is and that we should just clearly document that if the
> > input_device has users (has been opened) or not does not matter
> > for its wakeup behavior.
> >
> > Combining these 2 answers leads to this new pseudo code template
> > for an input-device's suspend method:
> >
> >         /*
> >          * If inhibited we have already disabled events and
> >          * we do NOT want to setup the device as wake source.
> >          */
> >         if (input->inhibited)
> >                 return 0;
> >
> >          if (device_may_wakeup(dev))
> >                  enable_irq_wake(data->irq);
> >          else if (input->users)
> >                  foo_stop_receiving_events(data);
> >
> > ###
> 
> Sounds reasonable to me.

However it will not work. For many input devices connected to i2c we
declare interrupt as wakeup interrupt, and the driver does not need to
issue enable_irq_wake() and disable_irq_wake(). The wakeup handling is
happening in driver core, which is not aware of input-specific inhibit
(nor should it be).

I need to ping Mark about the patch adding the similar handling to SPI.

> 
> > A different, but related issue is how to make devices actually use the
> > new inhibit support on the builtin keyboard + touchpad when say the lid
> > is closed.   Arguably this is an userspace problem, but it is a tricky
> > one. Currently on most modern Linux distributions suspend-on-lid-close
> > is handled by systemd-logind and most modern desktop-environments are
> > happy to have logind handle this for them.
> >
> > But most knowledge about input devices and e.g. heurisitics to decide
> > if a touchpad is internal or external are part of libinput. Now we could
> > have libinput use the new inhibit support (1), but then when the lid
> > closes we get race between whatever process is using libinput trying
> > to inhibit the touchpad (which must be done before to suspend to disable
> > it as wakeup source) and logind trying to suspend the system.
> >
> > One solution here would be to move the setting of the inhibit sysfs
> > attr into logind, but that requires adding a whole bunch of extra
> > knowledge to logind which does not really belong there IMHO.

You do not need to push the knowledge into logind, you just need to
communicate to logind what devices can be wakeup sources and which ones
should not. Chrome OS uses udev tags/properties for that.

> >
> > I've been thinking a bit about this and to me it seems that the kernel
> > is in the ideal position to automatically inhibit some devices when
> > some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
> > issue here is to chose on which devices to enable this. I believe
> > that the auto inhibit on some switches mechanism is best done inside
> > the kernel (disabled by default) and then we can have a sysfs
> > attr called auto_inhibit_ev_sw_mask which can be set to e.g.
> > (1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
> > the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
> > inhibit both when the lid is closed or when switched to tablet mode.

This is a policy and should be kept out of the kernel. Yes, we had it
implemented with rfkill input handler, but it caused quite a few issues.
As far as I know it is not being used anymore and we should not try with
SW_LID->inhibit either.

I know it is faster to patch the kernel than to roll out proper
userspace because everyone updates kernel regularly, but it does not
mean it is the right solution.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
