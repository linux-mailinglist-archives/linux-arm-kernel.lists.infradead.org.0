Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D7C1D6F0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQFULiWpxPBFf+QjEg6gV00TWils+dhD7kl78vWwYsA=; b=KrzQbspFLJ5SBa
	qWq4Q1Yle/aQWrCTWH9jOxjM4SqSpfYvNOsiggroEjCvnAM2lKRPmve7JGq/IvyP9YlULZfzj+Mg5
	nchTgAf/AckDK6ejbT5LxunPAlQfLGYIaQVlCiszdi75+w1cwjRvxzOSNkLzSYT688b1OdjeYVC6H
	NjpEKvwbV8SGB94LFKHvgj/GGpmMjStCm9fha3zr5t7WNaRSAW7222KPYoQI343I7edyLbI25VhN8
	/uO/g4xT6SqbHsiTSM0EvMg68UXXQEBgb8skcGWsUtjlpXRqNxoODl63e9QSMfgsDtQkY1h4ymncZ
	dpG5xpZW8hMg2k2NcDgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVhv-0005ZR-12; Mon, 18 May 2020 02:40:47 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVhn-0005Yy-2M
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 02:40:40 +0000
Received: by mail-pl1-x634.google.com with SMTP id u22so3598956plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 19:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BSi1j3B+LKlZ+pND+2uv+E9eGj8LmHGTLONT1ZbFAyQ=;
 b=ZsX2V0MmYF50na3aWBoR7eEKTHYC85N+iEUm9lY7ZV2vIPvM4qWwRf72zMRcVvvsRh
 6FZFoXlSmY2r/n9X2BPIIwfLai6WxwMqr1OTVRNfAemUrnsa37Ybe/vhnmPCoaQBQzTF
 a8Urn+gvx4DtjuIDJ3qdIKQUzBrMQmUhk1KoD/DEIqbij9VU0XuKgoxtLfhptHBgejsN
 VltvFqKeFPpM4dsoexRUH7OCeEUyXPEJyh3/264sXr7MGmGARRE7BhQ8+dkbTZC82gOY
 V70cYtMgKVHywicpO1khfY8YK+4DAG+HcqiCgEbQKrwloC6qalMginFFw9T53WbDXm/W
 cuow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BSi1j3B+LKlZ+pND+2uv+E9eGj8LmHGTLONT1ZbFAyQ=;
 b=CkQ8z7F4qZEgOAue/94I1YpsZTjs/TgKHea3u1hz8IZN6ecfeBwsUEfBblON7pC5ov
 ePRNzQ5KVa+x/E/KJ9kymULLPUpDdbu+5tzyJnKP22QuhcR9QJsZCAQlyZX2MQk5n/CR
 VkqN8CnQuOFi6JjOdEL4JazeF+yC18b0p+7m4pC0P55MKTEPZEDMe0Nlxc5MlqP8L7ao
 9DBxMToQ/ZAN+L0lOqxEndcU4r1he5tn0IMYxMFWva+XgxRPlu5LlP10M5qUvxAkkKlH
 sZTTiF++yGFnKxNzfbN+5Ntx1i98lYe8lkifjwwtvk9B2Qs6DINJZz4KcUC3Ia0Dxvwf
 JlvQ==
X-Gm-Message-State: AOAM530dfc345+1A2n69qZsssMS8z63op3+g1nXxGwtUhRD3Q4tZMnyc
 IKpx0q4EIZZrvUvsYZ98KbQ=
X-Google-Smtp-Source: ABdhPJw6+D0pVLHENKQEm5RucsG1mrNeCZaFYuYqbZFDLGhDKldJppMOzBpLcQebfqpE8BGs2bUiSg==
X-Received: by 2002:a17:90b:3d4:: with SMTP id
 go20mr10710415pjb.208.1589769637579; 
 Sun, 17 May 2020 19:40:37 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id a2sm7218540pfl.28.2020.05.17.19.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 19:40:36 -0700 (PDT)
Date: Sun, 17 May 2020 19:40:34 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Peter Hutterer <peter.hutterer@who-t.net>
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
Message-ID: <20200518024034.GL89269@dtor-ws>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
 <20200517225510.GA205823@koala>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517225510.GA205823@koala>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_194039_129682_EDC3FF7B 
X-CRM114-Status: GOOD (  30.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Dyer <nick@shmanahar.org>, linux-iio@vger.kernel.org,
 Benjamin Tissoires <btissoir@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-acpi@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Len Brown <lenb@kernel.org>, Peter Hutterer <peter.hutterer@redhat.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, patches@opensource.cirrus.com,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans, Peter,

On Mon, May 18, 2020 at 08:55:10AM +1000, Peter Hutterer wrote:
> On Fri, May 15, 2020 at 08:19:10PM +0200, Hans de Goede wrote:
> > Hi Andrezj,
> > =

> > On 5/15/20 6:49 PM, Andrzej Pietrasiewicz wrote:
> > > Userspace might want to implement a policy to temporarily disregard i=
nput
> > > from certain devices, including not treating them as wakeup sources.
> > > =

> > > An example use case is a laptop, whose keyboard can be folded under t=
he
> > > screen to create tablet-like experience. The user then must hold the =
laptop
> > > in such a way that it is difficult to avoid pressing the keyboard key=
s. It
> > > is therefore desirable to temporarily disregard input from the keyboa=
rd,
> > > until it is folded back. This obviously is a policy which should be k=
ept
> > > out of the kernel, but the kernel must provide suitable means to impl=
ement
> > > such a policy.
> > =

> > Actually libinput already binds together (inside libinput) SW_TABLET_MO=
DE
> > generating evdev nodes and e.g. internal keyboards on devices with 360=
=B0
> > hinges for this reason. libinput simply closes the /dev/input/event#
> > node when folded and re-opens it when the keyboard should become active
> > again. Thus not only suppresses events but allows e.g. touchpads to
> > enter runtime suspend mode which saves power. Typically closing the
> > /dev/input/event# node will also disable the device as wakeup source.
> > =

> > So I wonder what this series actually adds for functionality for
> > userspace which can not already be achieved this way?
> =

> Thanks Hans. To expand on this:
> libinput has heuristics to guess which input devices (keyboards, touchpad=
s)
> are built-in ones. When the tablet mode switch is on, we disable these
> devices internally (this is not visible to callers), and re-enable it aga=
in
> later when the tablet mode switch is off again.

I think that is great that libinput has tried solving this for the
tablet mode, but unfortunately libinput only works for users of
libinput, leaving cases such as:

1. In-kernel input handlers, such as SysRq, VT and others
2. Systems that do not rely on libinput for userspace handing (Android,
Chrome OS)
3. Systems with policies that are more complex than tablet mode only.

Because of libinput's inability to affect the kernel, and the presence
of "always on" input handlers (sysrq, VT keyboard, potentially others),
while libinput may control whether consumers receive events from certain
input devices, it will not allow power savings that an explicit
"inhibit" allows when coming from dedicated power policy manager.

I think pushing policy decisions into a library, and trying to have all
clients agree with it, is much harder and leaks unnecessary knowledge
into quite a few layers. A dedicated power policy manager, that is not
only responsible for input device, but power state of the system as a
whole, is a very viable architecture.

> =

> This is done for keyboards and touchpads atm (and I think pointing sticks)
> and where the heuristics fail we have extra quirks in place. For example
> the Lenovo Yogas tend to disable the keyboard mechanically in tablet mode
> but buttons (e.g. volume keys) around the screen send events through the
> same event node. So on those devices we don't disable the keyboard.
> =

> We've had this code for a few years now and the only changes to it have b=
een
> the various device quirks for devices that must not suspend the keyboard,
> it's otherwise working as expected.
> =

> If we ever have a device where we need to disable parts of the keyboard
> only, we could address this with EVIOCSMASK but so far that hasn't been
> necessary.
> =

> I agree with Hans, right now I don't see the usefulness of this new sysfs
> toggle. For it to be really useful you'd have to guarantee that it's
> available for 100% of the devices and that's IMO unlikely to happen.

The inhibiting of the events works for 100% of input devices, the power
savings work for the ones that implement it. It is responsibility of
folds shipping the systems to make sure drivers they use support inhibit
if they believe it will help their battery life.

> =

> Cheers,
>    Peter
> =

> > I also noticed that you keep the device open (do not call the
> > input_device's close callback) when inhibited and just throw away
> > any events generated. This seems inefficient and may lead to
> > the internal state getting out of sync. What if a key is pressed
> > while inhibited and then the device is uninhibited while the key
> > is still pressed?  Now the press event is lost and userspace
> > querying the current state will see the pressed key as being
> > released.

This is a good point. We should look into signalling that some events
have been dropped (via EV_SYN/SYN_DROPPED) so that clients are aware of
it.

> > =

> > On top of this you add special inhibit and uninhibit callbacks
> > and implement those for just a few devices. How do these differ
> > from just closing the device and later opening it again ?

I believe majority will simply reuse open/close callbacks. In Chrome OS
we have dedicated inhibit/uninhibit, but I would like to allow using
open/close as alternatives.

> > =

> > Also using a sysfs property for this is very weird given that the
> > rest of the evdev interface is using ioctls for everything...

This is not evdev interface, it is at the level above evdev (so that it
can affect all handlers, not only evdev). As such it is not bound by
evdev interface.

Thanks.

-- =

Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
