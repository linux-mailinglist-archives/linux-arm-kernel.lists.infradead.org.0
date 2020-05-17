Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E631D6DEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 00:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrTQP3HsejrBrmwybaTzV8FLuzy8lxMYv3KfJf1RjRs=; b=OcAgijLSiy+bXA
	T5FQQBLuLqD/DQmCN03bJLQHHRbN8oagvrR0ohlyicgTaLYPTMZ/ZvG67xT9DB35azo4BqttFhKvK
	Spsu0W9RngFbaDitUGHycN4GPCq6ezzYO3x6sZUda8xWcYsINrFzJZsriVj0LrhtFP8c+do55gVj1
	TdOYKy/gMv7mABEi7/AlCdLgE7frTCYiUvi0kGmOA6j3CSYauOTBRT+W5Q9Ya/sfK0n865krsZ5y/
	bu0DEoLX3sUwqP5gstk0xdsdKsAvIKz4z8WH24/ciaf6k361y8IPryq0jKxehLPVOSCX3tGUBFENG
	2aL4x4j3Adi/1WZ4B7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaSCA-000305-0o; Sun, 17 May 2020 22:55:46 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaSC1-0002yx-JX
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 22:55:39 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id CC413580135;
 Sun, 17 May 2020 18:55:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sun, 17 May 2020 18:55:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=who-t.net; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=Y
 +ufOws1a8u4D45GLH8cH2b31BsgtOeXytbtlxDEocM=; b=aPVWima/CN66WHQAx
 47LyH7yzmfyS/tYoEugzowuOejurfEf25wMuCGi6JZkDr2t44zPE036AZNeuwG0J
 FEQGMVL2y94x1VNUOxsYkeucRKO/RwVF3u5w+B63dA/XmjolvLrEMvBRAH63598X
 o7OZ6VhWVp8mdiBADj+/sipkcIgQRZGwvoZd2vWfazAvq8qFoI8NZ+5aa7LwHI5P
 cc1ps8eBFCtIH/BliSyQU2QQCAqj/uFU+kQlegb97VLuQvHJ+o0kFfUvoNygurl2
 Y47hnCZFEvy3DR32+E/yGESNhmI0wt/lPAWbkSP9e2HVOImbORZR5SEvdS4bvYiJ
 5gQHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=Y+ufOws1a8u4D45GLH8cH2b31BsgtOeXytbtlxDEo
 cM=; b=ZR5j8MZ589WoZH8nR/THxh86gHJSfZA+ze9OIaMEyi+OLO45glLz67cLJ
 jjTjkeY85XmC7WsMkCBiAUAaRse7aSuEDXqfrxsfUDvSqX0BgRO8ordnEczKMgMx
 xmT88P4Le9zx96m2WJDyG20L3XSLxs7IuE0UHR9B3Cw2EDjwrZfE2jCUiH7wahSe
 0zi+By0KB2tia5/d/oV2LrHWQWYOldmid9h75SVJhd5rZwGaMBkZ3FoH/S5fc1Oh
 FtPKfptHAa57rS+Kik2ADBfC+Xb8Ogn/qd7Vy4WVzsXOUjHsi7xEQu+qjnEzmjrE
 ToICGnKu94IAXS077azAzvtuFi2Bg==
X-ME-Sender: <xms:3cDBXjtZRBKleY1vDtazOehQUmWjyppvULxnyhzYK_WMUS0yBMoUzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtgedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthekredttddtudenucfhrhhomheprfgvthgv
 rhcujfhuthhtvghrvghruceophgvthgvrhdrhhhuthhtvghrvghrseifhhhoqdhtrdhnvg
 htqeenucggtffrrghtthgvrhhnpefhgeevfefhkefgudekffegfeekveeuleeuieeutdfg
 jeeiieegkeejudfggfdtkeenucfkphepuddujedrvddtrdejuddruddtleenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehpvghtvghrrdhhuhht
 thgvrhgvrhesfihhohdqthdrnhgvth
X-ME-Proxy: <xmx:3cDBXkccn-PNipkl64wwUbHDk5rDibutmBWNyFiU-2cHnX9gK4nfAg>
 <xmx:3cDBXmws-3jvJV16csSKRSO4K_zD82Ot6irFlUTdpseVs6WPWWZoIw>
 <xmx:3cDBXiNeTg1Zpp6ZrSfytXuMu3q169TdbKy0eVbt1rBZybs3K-op-w>
 <xmx:4MDBXpxeXAoX8iisBna-URpxZMHuVswcVTvIMVC9KWFH54_Mfr9_1Q>
Received: from koala (117-20-71-109.751447.bne.nbn.aussiebb.net
 [117.20.71.109])
 by mail.messagingengine.com (Postfix) with ESMTPA id 050AE328005A;
 Sun, 17 May 2020 18:55:14 -0400 (EDT)
Date: Mon, 18 May 2020 08:55:10 +1000
From: Peter Hutterer <peter.hutterer@who-t.net>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCHv2 0/7] Support inhibiting input devices
Message-ID: <20200517225510.GA205823@koala>
References: <20200506002746.GB89269@dtor-ws>
 <20200515164943.28480-1-andrzej.p@collabora.com>
 <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <842b95bb-8391-5806-fe65-be64b02de122@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_155537_888040_82DBB3BF 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
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

On Fri, May 15, 2020 at 08:19:10PM +0200, Hans de Goede wrote:
> Hi Andrezj,
> =

> On 5/15/20 6:49 PM, Andrzej Pietrasiewicz wrote:
> > Userspace might want to implement a policy to temporarily disregard inp=
ut
> > from certain devices, including not treating them as wakeup sources.
> > =

> > An example use case is a laptop, whose keyboard can be folded under the
> > screen to create tablet-like experience. The user then must hold the la=
ptop
> > in such a way that it is difficult to avoid pressing the keyboard keys.=
 It
> > is therefore desirable to temporarily disregard input from the keyboard,
> > until it is folded back. This obviously is a policy which should be kept
> > out of the kernel, but the kernel must provide suitable means to implem=
ent
> > such a policy.
> =

> Actually libinput already binds together (inside libinput) SW_TABLET_MODE
> generating evdev nodes and e.g. internal keyboards on devices with 360=B0
> hinges for this reason. libinput simply closes the /dev/input/event#
> node when folded and re-opens it when the keyboard should become active
> again. Thus not only suppresses events but allows e.g. touchpads to
> enter runtime suspend mode which saves power. Typically closing the
> /dev/input/event# node will also disable the device as wakeup source.
> =

> So I wonder what this series actually adds for functionality for
> userspace which can not already be achieved this way?

Thanks Hans. To expand on this:
libinput has heuristics to guess which input devices (keyboards, touchpads)
are built-in ones. When the tablet mode switch is on, we disable these
devices internally (this is not visible to callers), and re-enable it again
later when the tablet mode switch is off again.

This is done for keyboards and touchpads atm (and I think pointing sticks)
and where the heuristics fail we have extra quirks in place. For example
the Lenovo Yogas tend to disable the keyboard mechanically in tablet mode
but buttons (e.g. volume keys) around the screen send events through the
same event node. So on those devices we don't disable the keyboard.

We've had this code for a few years now and the only changes to it have been
the various device quirks for devices that must not suspend the keyboard,
it's otherwise working as expected.

If we ever have a device where we need to disable parts of the keyboard
only, we could address this with EVIOCSMASK but so far that hasn't been
necessary.

I agree with Hans, right now I don't see the usefulness of this new sysfs
toggle. For it to be really useful you'd have to guarantee that it's
available for 100% of the devices and that's IMO unlikely to happen.

Cheers,
   Peter

> I also noticed that you keep the device open (do not call the
> input_device's close callback) when inhibited and just throw away
> any events generated. This seems inefficient and may lead to
> the internal state getting out of sync. What if a key is pressed
> while inhibited and then the device is uninhibited while the key
> is still pressed?  Now the press event is lost and userspace
> querying the current state will see the pressed key as being
> released.
> =

> On top of this you add special inhibit and uninhibit callbacks
> and implement those for just a few devices. How do these differ
> from just closing the device and later opening it again ?
> =

> Also using a sysfs property for this is very weird given that the
> rest of the evdev interface is using ioctls for everything...
> =

> So all in all I see a lot of question marks here and I think we
> need to have a detailed discussion about what use-cases this
> series tries to enable before moving forward with this.
> =

> Regards,
> =

> Hans
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
