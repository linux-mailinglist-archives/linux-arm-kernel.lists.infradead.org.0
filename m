Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5C11F5184
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JTjVkC0AyrRy2mrpJ0PppCW8mrJkDhOdFfnTrM78U6s=; b=j46e5/RMVvZoVTncUmVyRY7ig
	mCVfmQkkna+9eYuXwdrWFd34Inpz4bp1sIlF7CO3UQeIHRBmwJa5WmuK7UB3+AcGs4ZsM+4lOrECa
	ZRbi+/HaU1PYvkxxZuOGXzOiwHqyRL5NHOf1vmwGHr67ocnYI3ToeZIWbuYJEcgbrjzyZ7fMndWXV
	1feSWOSWgC0nmQuiskuCBFnd/3WE0JzNRvvsduuOMyZ+lphvg8MfmCjf4KcLGdh90ZT9/xxjbLcUP
	SUEcmdEVXGUiGlydFw/a3npEkH2Kl1bNJ4mzt2bAP7cjDoPjHwnF/7qEG8MeKKwyZijCinmJaqLL/
	+ccSHUqvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixNE-0007CY-Nb; Wed, 10 Jun 2020 09:50:20 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixMz-0005Zk-VL
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591782603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=;
 b=CgpRQ1FiUqlYRvXACf7GsQf0U+oluBhAkz0VKlt9XX/YZiTa6dhwN1YB81rH7vkJyxzbUR
 xuvTPPmOEEG953f1A7XBYzpDH7p5Q9LaO0hPRV6WHmcG8WZA4XPH+s+mllqoqwsoRu20BG
 6lAP34PhsUlfjt4n9Zlb1gVntK9RzRw=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-D75trqUYO06nt06ybP_nGQ-1; Wed, 10 Jun 2020 05:49:58 -0400
X-MC-Unique: D75trqUYO06nt06ybP_nGQ-1
Received: by mail-ej1-f69.google.com with SMTP id t4so834116ejj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=botNO1nlLUjRUQbw+XWbs23AWcnqLx8AKm8BEyvzIAg=;
 b=n5pGvmNhvxhZUJ4UAm3hKPqBE1uwZQoN9uN3I0x+O3V9T1N6VFav8OBg0QJ63aOinw
 AEB6hFhckqpsufRnKIgT76MRUmmBFY3ZvHD5IBPwjLTPe7gDYeOXnZG3hP5gggPRUC2t
 zyCKelXo4Q7D5b35FH0D985lN8Tkzgx0SlO/lQGzx6IRg6kBEnvCcz8zQ5LZbXwFrsOV
 gbzrfKFTO0wQw3rWJwtGwxHzdnU5aiZB/27RUiV0G7AvGXu2Cha1uj8/y0ZZiFV50x+T
 X/OkjvK0IojDvC9XNFs2P9a2HZXnVLP4MLIv0fUaXCLixF6mAYBVdYkhONa+bzx9lLf0
 G5OQ==
X-Gm-Message-State: AOAM533ZgLiIn/29T78cB1pEk4H+2pHAF/I2WIdCV7KXwQI095ocwNzH
 LLdJE4NgEpSryJ8mjyxqhUkbzAm4RfMYatwxgV8tNqcSo7fEyUFI/ZQ/cE+Fu9M+MA26US5RMQq
 g8/BhfOJNrmUr4f92mQpwYDVjV0Yv+SzjTwc=
X-Received: by 2002:a17:906:e247:: with SMTP id
 gq7mr2477440ejb.107.1591782597471; 
 Wed, 10 Jun 2020 02:49:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLuKTyRnDOzIwu58NCqlAlNV6D3hehW65EK1iqNwj/QcEksd5YROS78o3t4aQe67v9IROeVQ==
X-Received: by 2002:a17:906:e247:: with SMTP id
 gq7mr2477395ejb.107.1591782597158; 
 Wed, 10 Jun 2020 02:49:57 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id f19sm16656165edq.14.2020.06.10.02.49.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 02:49:56 -0700 (PDT)
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
Date: Wed, 10 Jun 2020 11:49:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608112211.12125-1-andrzej.p@collabora.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_025006_093241_96833BD2 
X-CRM114-Status: GOOD (  33.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Barry Song <baohua@kernel.org>,
 Ferruh Yigit <fery@cypress.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

On 6/8/20 1:22 PM, Andrzej Pietrasiewicz wrote:
> This is a quick respin of v3, with just two small changes, please see
> the changelog below.
> 
> Userspace might want to implement a policy to temporarily disregard input
> from certain devices.
> 
> An example use case is a convertible laptop, whose keyboard can be folded
> under the screen to create tablet-like experience. The user then must hold
> the laptop in such a way that it is difficult to avoid pressing the keyboard
> keys. It is therefore desirable to temporarily disregard input from the
> keyboard, until it is folded back. This obviously is a policy which should
> be kept out of the kernel, but the kernel must provide suitable means to
> implement such a policy.

First of all sorry to start a somewhat new discussion about this
while this patch set is also somewhat far along in the review process,
but I believe what I discuss below needs to be taken into account.

Yesterday I have been looking into why an Asus T101HA would not stay
suspended when the LID is closed. The cause is that the USB HID multi-touch
touchpad in the base of the device starts sending events when the screen
gets close to the touchpad (so when the LID is fully closed) and these
events are causing a wakeup from suspend. HID multi-touch devices
do have a way to tell them to fully stop sending events, also disabling
the USB remote wakeup the device is doing. The question is when to tell
it to not send events though ...

So now I've been thinking about how to fix this and I believe that there
is some interaction between this problem and this patch-set.

The problem I'm seeing on the T101HA is about wakeups, so the question
which I want to discuss is:

1. How does inhibiting interact with enabling /
disabling the device as a wakeup source ?

2. Since we have now made inhibiting equal open/close how does open/close
interact with a device being a wakeup source ?

And my own initial (to be discussed) answers to these questions:

1. It seems to me that when a device is inhibited it should not be a
wakeup source, so where possible a input-device-driver should disable
a device's wakeup capabilities on suspend if inhibited

2. This one is trickier I don't think we have really clearly specified
any behavior here. The default behavior of most drivers seems to be
using something like this in their suspend callback:

         if (device_may_wakeup(dev))
                 enable_irq_wake(data->irq);
         else if (input->users)
                 foo_stop_receiving_events(data);

Since this is what most drivers seem to do I believe we should keep
this as is and that we should just clearly document that if the
input_device has users (has been opened) or not does not matter
for its wakeup behavior.

Combining these 2 answers leads to this new pseudo code template
for an input-device's suspend method:

	/*
	 * If inhibited we have already disabled events and
	 * we do NOT want to setup the device as wake source.
	 */
	if (input->inhibited)
		return 0;

         if (device_may_wakeup(dev))
                 enable_irq_wake(data->irq);
         else if (input->users)
                 foo_stop_receiving_events(data);

###

A different, but related issue is how to make devices actually use the
new inhibit support on the builtin keyboard + touchpad when say the lid
is closed.   Arguably this is an userspace problem, but it is a tricky
one. Currently on most modern Linux distributions suspend-on-lid-close
is handled by systemd-logind and most modern desktop-environments are
happy to have logind handle this for them.

But most knowledge about input devices and e.g. heurisitics to decide
if a touchpad is internal or external are part of libinput. Now we could
have libinput use the new inhibit support (1), but then when the lid
closes we get race between whatever process is using libinput trying
to inhibit the touchpad (which must be done before to suspend to disable
it as wakeup source) and logind trying to suspend the system.

One solution here would be to move the setting of the inhibit sysfs
attr into logind, but that requires adding a whole bunch of extra
knowledge to logind which does not really belong there IMHO.

I've been thinking a bit about this and to me it seems that the kernel
is in the ideal position to automatically inhibit some devices when
some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
issue here is to chose on which devices to enable this. I believe
that the auto inhibit on some switches mechanism is best done inside
the kernel (disabled by default) and then we can have a sysfs
attr called auto_inhibit_ev_sw_mask which can be set to e.g.
(1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
inhibit both when the lid is closed or when switched to tablet mode.

This could then be combined with a userspace utility run from an
udev rule which makes the actual decision what auto_inhibit_ev_sw_mask
should be set for a given input device.

This will put the mechanism for what we want inside the kernel and
leaves the policy on which switches we want this for out of the
kernel.

Note adding this new auto_inhibit_ev_sw_mask sysfs attr falls
somewhat outside the context of this patchset and could be done
as a follow up to this patch-set. But I do believe that we need to
figure out how (non ChromeOS) userspace can / will use the new inhibit
interface before merging it.

Regards,

Hans




1) There are issues here with libinput not running as root and this
being a root only sysfs interface but lets ignore those for now,
note that the auto_inhibit_ev_sw_mask also neatly solves this
problem



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
