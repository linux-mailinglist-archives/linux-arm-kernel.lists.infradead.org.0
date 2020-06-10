Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C701F5637
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tGZ+hW9PmChuCi7wLxomCeznvCH2wDfuKaujb9t9KJc=; b=O9yR3wVChcMvHN4tOx4kMZYET
	s2Yl1uSI9UbecEMH+3Kx2ugdd2Mplj91T6XBzuvh2jvTJgl9FSQrZPI12HxLV0uVWFd7mUDLIDa8W
	K5ndEzv9fJbNijklmbcl8sNzGbt5Z5SWl87tCUoVYUXjf2X/xCDvapn/oPzeCABakjz/yKi5fmZsz
	0gDoTvIjrtJ1uybwcxs6dFaZOcGQ04Yz572GSNtZoPU0bjFiuGMy4dOJfJT6DiouyT+LwmJR/cBUd
	m8v7xLVnvU3vmO04JjsV7/bTgFSMrMYLi2LBR8YCw9w+L4L9dKcJLnMC8XQlnjdisG8ucHRDX4URA
	nPeG4N5MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj19b-0000fL-8j; Wed, 10 Jun 2020 13:52:31 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj19S-0000er-1a
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591797140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=;
 b=RNgBmriM4ahFUxcS7Fg9c2XAKyovRc1vbF3yWBevYkrsDtYMZYq+0YkfnznkHE7+87EJiz
 8cG3QCQqdrGNc0n8sVym0ptbpk5JY0AId2TxhStM8tX/tw86bzhGaE0OS+2A4XTehSFOHL
 SbVZ2Gna7dWtJJxjK6K+HwBkthAcMJ4=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-2_wIwCg6NFKGp-BQuPJqTw-1; Wed, 10 Jun 2020 09:52:18 -0400
X-MC-Unique: 2_wIwCg6NFKGp-BQuPJqTw-1
Received: by mail-ej1-f69.google.com with SMTP id hj12so1138123ejb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 06:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YL2CUX+ytcqKztbtjkEaTAotWFK6JYYqCnPu2fBEOuA=;
 b=oSTQ40G3V4I4Z7D6Fm3yEOpkiFGK6eNDfHPCpCHOvHhV9Ey62iiW77w0ddZVHn9iQd
 qoEaU6yFmKaIg+5qgjqYlbzsOCjHrABgcjnYh0Ns6SEjdXrZ27fV5z5J/yzvwN176HGq
 Gh/GdFWKYOCX6VTPxvlA20rQhkca7S+PRWGhfaKYORscOZ1xFswULWBalL+Z+Ix99sxH
 rWXHhMYgViLuF83HVBwZkfk835vz5iHOptXD84Q7kZJHib/WEZm/8aiEJ8DBIMRJcxz/
 bsCdUHdZRJMUmBk9wJa9EHOtPE1cNrQrcYz4eh1wyijEmunH6p83Lg8r8TJ77SPgtHwx
 ktMA==
X-Gm-Message-State: AOAM530Pi0vtpXKgqBHegOkz5gEGc8ok6NfalzGmRo9Ltpojkn+DpYOG
 pOPBlGATrfrQCK1/m7jLeIdoCyvLYz6I30aXPWaY4L8+7Gal1dVOVWS09v1VQT3tsAY4z5nabhB
 mWsuhBEvdhz36ELzxcOjGyk/xzOXYZLLdm+M=
X-Received: by 2002:a50:b2e1:: with SMTP id p88mr2582791edd.198.1591797137515; 
 Wed, 10 Jun 2020 06:52:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEJek1TXZYUkZ6pG2p869jbxR9ODYMKVkeJa1/sT8kaPG7Zk4zmYdct4EtD9GIM7FcH0rbNA==
X-Received: by 2002:a50:b2e1:: with SMTP id p88mr2582761edd.198.1591797137192; 
 Wed, 10 Jun 2020 06:52:17 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id dm1sm16655504ejc.99.2020.06.10.06.52.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 06:52:16 -0700 (PDT)
Subject: Re: [PATCH v4 0/7] Support inhibiting input devices
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <2336e15d-ff4b-bbb6-c701-dbf3aa110fcd@redhat.com>
 <20200608112211.12125-1-andrzej.p@collabora.com>
 <964ca07a-3da5-101f-7edf-64bdeec98a4b@redhat.com>
 <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <cd0dc625-c0bf-8322-fc31-c5eccb4be1cd@redhat.com>
Date: Wed, 10 Jun 2020 15:52:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0hB2ra2K=dd9ZjVyy1V2b1PmFHm79uDO2HtHU1D_4YUbw@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_065222_313128_E6A3D0ED 
X-CRM114-Status: GOOD (  27.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
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
 Vladimir Zapolskiy <vz@mleia.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 patches@opensource.cirrus.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/10/20 12:38 PM, Rafael J. Wysocki wrote:
> On Wed, Jun 10, 2020 at 11:50 AM Hans de Goede <hdegoede@redhat.com> wrote:

<snip>

>> A different, but related issue is how to make devices actually use the
>> new inhibit support on the builtin keyboard + touchpad when say the lid
>> is closed.   Arguably this is an userspace problem, but it is a tricky
>> one. Currently on most modern Linux distributions suspend-on-lid-close
>> is handled by systemd-logind and most modern desktop-environments are
>> happy to have logind handle this for them.
>>
>> But most knowledge about input devices and e.g. heurisitics to decide
>> if a touchpad is internal or external are part of libinput. Now we could
>> have libinput use the new inhibit support (1), but then when the lid
>> closes we get race between whatever process is using libinput trying
>> to inhibit the touchpad (which must be done before to suspend to disable
>> it as wakeup source) and logind trying to suspend the system.
>>
>> One solution here would be to move the setting of the inhibit sysfs
>> attr into logind, but that requires adding a whole bunch of extra
>> knowledge to logind which does not really belong there IMHO.
>>
>> I've been thinking a bit about this and to me it seems that the kernel
>> is in the ideal position to automatically inhibit some devices when
>> some EV_SW transitions from 0->1 (and uninhibit again on 1->0). The
>> issue here is to chose on which devices to enable this. I believe
>> that the auto inhibit on some switches mechanism is best done inside
>> the kernel (disabled by default) and then we can have a sysfs
>> attr called auto_inhibit_ev_sw_mask which can be set to e.g.
>> (1 << SW_LID) to make the kernel auto-inhibit the input-device whenever
>> the lid is closed, or to ((1 << SW_LID) | (1 << SW_TABLET_MODE)) to
>> inhibit both when the lid is closed or when switched to tablet mode.
> 
> I agree that the kernel is the right place to handle this, but it
> requires some extra knowledge about dependencies between devices.
>
> It'd be kind of like power resources in ACPI, so for each state of a
> "master" device (in principle, there may be more states of it than
> just two) there would be a list of "dependent" intput devices that
> need to be inhibited when the "master" device goes into that state.

So a big part of the reason to punt the decision on which input
devices to enable this auto-inhibit is that we don't really have
information about those relationsships / device-links you are
suggesting here.  libinput is already doing inhibiting inside
userspace for e.g. the tablet-mode switch but it relies on heuristics
+ quirk tables to decide which keyboards should be inhibited and which
not.

E.g. for a 360 degree hinges 2-in-1 we want to disable the builtin
keyboard, when folded into in tablet mode, but not any external ones.

Mostly the builtin kbd will be PS2 but I have one such 2-in-1 here
in my home office with a USB kbd ...

In general of the master devices there will be only 1, there will be
only 1 lid switch and only 1 tablet-mode switch. So my idea with the
auto_inhibit_ev_sw_mask, is for it to be a per input-device setting.

So using your terms, all input devices with the (1 << SW_LID) bit
set in their auto_inhibit_ev_sw_mask will be dependents of the
(master) device which actually is reporting the SW_LID bit.

The idea here is for this to work the same as how the rfkill code
from net/rfkill/input.c works, except instead of binding e.g.
KEY_WLAN to toggling the sw-state of rfkill devices with a type
of RFKILL_TYPE_WLAN. This will bind SW_LID to inhibiting input
devices with the SW_LID bit set in their auto_inhibit_ev_sw_mask.

Regards,

Hans


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
