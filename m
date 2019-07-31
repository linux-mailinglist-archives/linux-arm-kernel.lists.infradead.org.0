Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822E17BB11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V74YtVAliKTlf5GN7bwlwztzx+7rGJ6t5oCKGXDwX0U=; b=IlLvo08AWd55FO
	9KPupXkSfHHzoWV2xPl9ae0IrQfYDN19fFR2ss4PPp/D+TMYOp31SofcHlI0kHhvAYY5itDNy+mtH
	jsZhhPvjT24IfYH7x/dnsRVdPmcOoaFBR12QbBPO/DMSokJ8dTu3YOT/K0w+DWYDuwRDXf8ciI5ik
	aUXPGkP85D+q16TfwVdr5elqRCeRJVJFZ66MNedKb6UpJxsrr7TrSY3z36NCNMqlnIxEFxcLiPYvK
	krMfNwxKHLHWkMKCucvw2ZErdx+ZAkwrsazojOoLNmjvCRMCJjNpN8xlbB83VxJwQjIKDRQgqWKyz
	/BRmBXdnQf1QpZvQuMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjYY-0005Y6-TS; Wed, 31 Jul 2019 08:01:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjX4-0005WF-07
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:00:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so58881765wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rYgcjT+9Tm6c8Cyu83F4EFPkgLKy3QCi9/CS9cVFipk=;
 b=0lvHjmqrSykuJ+Jw5bafEE/25tA3kTWNwJtg2zPXKrMBI+7E6iywm86cLH4wkEYY7c
 0AX1FQWCaPNechKRb7VfWhJlkNR0SqtoQvIxcezlXqTFuLOVLP+s57+WvjijcL60urRJ
 rIv8/eyGkZbrwTfi+wOCVkIBUmB3NbjIpAhTNYMJCQsHrU+hQZqbk9PZ9YjWi4/milhU
 Eye4QmniBbi4MMdSzYZKyvB9MUxucqjfAWEql8hWffejDtzkIXSqAbBufp+2d4RnUoqY
 0/l1E/EsWAV3NCCSp1KEOfHsW8A0amkvEEzgunu7m80I/LXAXHjvs4UIovmY3C7KC6ss
 sDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rYgcjT+9Tm6c8Cyu83F4EFPkgLKy3QCi9/CS9cVFipk=;
 b=XBRqHjBfVH/fRjF6jEMiiz1NhOgl1CzKk3aFDfaNQRYhbZQgK1N3RDTeTnFuH4U1R8
 lm6vqpaHIFdCWW/4/F2rAYRbBEzFX7NwKtwwiCxpmXP+wVSG1R1Dc2jP5zVTzTW6BaPv
 sbklDEL1wyFOGT8E9JVo87yxk0aZTsQGU7lDhowOPO6iK44ONl+XsnGuejybEh+33ZC1
 b7fPPCeQds3+SpVAy2omfyVi6ZKbbCHVxrzyoVYeAkOA7E6pdzufaL0/v2edJYPo9D2W
 7dhoofU87PFL+kidBhoUmXHt6hRVB+3witbsj3EVUDQdGqO0ed31lhAMGyA6eNg321EJ
 TQKA==
X-Gm-Message-State: APjAAAU2wT1UGNkrUez1hpJvxoQvMg2MEWHDGyOlnsn32g0ozHdKkJsv
 yEnBhxa33bPb48m7dxJjeoEZlQ==
X-Google-Smtp-Source: APXvYqxG2jOdodqsWQ5mwtCs76XPGe47ZZXt6Cm+uvj2FaxskGuJ65ytWrAcZXkUELPsNrxYldD21w==
X-Received: by 2002:a1c:20c3:: with SMTP id g186mr96553204wmg.15.1564560017072; 
 Wed, 31 Jul 2019 01:00:17 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g25sm48012719wmk.39.2019.07.31.01.00.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 01:00:16 -0700 (PDT)
Subject: Re: Review required [Was: Associate ddc adapters with connectors]
To: Sam Ravnborg <sam@ravnborg.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190726183520.GA22572@ravnborg.org> <20190726185538.GD14981@ravnborg.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <6560f93c-a48f-2a8c-afeb-d5e8e200480d@baylibre.com>
Date: Wed, 31 Jul 2019 10:00:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726185538.GD14981@ravnborg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_010024_437468_5565DC3A 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On 26/07/2019 20:55, Sam Ravnborg wrote:
> Hi all.
> 
> Andrzej have done a good job following up on feedback and this series is
> now ready.
> 
> We need ack on the patches touching the individual drivers before we can
> proceed.
> Please check your drivers and get back.

I can apply all core and maintainer-acked patches for now :
1, 2, 7, 10, 11, 16, 17, 18, 19, 20, 21, 22, 23

and Andrzej can resend not applied patches with Yours and Emil's Reviewed-by,
so we can wait a few more days to apply them.

Neil

> 
> 	Sam
> 
>> Hi Andezej.
>>
>> On Fri, Jul 26, 2019 at 07:22:54PM +0200, Andrzej Pietrasiewicz wrote:
>>> It is difficult for a user to know which of the i2c adapters is for which
>>> drm connector. This series addresses this problem.
>>>
>>> The idea is to have a symbolic link in connector's sysfs directory, e.g.:
>>>
>>> ls -l /sys/class/drm/card0-HDMI-A-1/ddc
>>> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
>>> 	-> ../../../../soc/13880000.i2c/i2c-2
>>>
>>> The user then knows that their card0-HDMI-A-1 uses i2c-2 and can e.g. run
>>> ddcutil:
>>>
>>> ddcutil -b 2 getvcp 0x10
>>> VCP code 0x10 (Brightness): current value =    90, max value =   100
>>>
>>> The first patch in the series adds struct i2c_adapter pointer to struct
>>> drm_connector. If the field is used by a particular driver, then an
>>> appropriate symbolic link is created by the generic code, which is also added
>>> by this patch.
>>>
>>> Patch 2 adds a new variant of drm_connector_init(), see the changelog
>>> below.
>>>
>>> Patches 3..24 are examples of how to convert a driver to this new scheme.
>>>
>> ...
>>>
>>> v5..v6:
>>>
>>> - improved subject line of patch 1
>>> - added kernel-doc for drm_connector_init_with_ddc()
>>> - improved kernel-doc for the ddc field of struct drm_connector
>>> - added Reviewed-by in patches 17 and 18
>>> - added Acked-by in patch 2
>>> - made the ownership of ddc i2c_adapter explicit in all patches,
>>> this made the affected patches much simpler
>>
>> Looks good now.
>> Patch 1 and 2 are:
>> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>>
>> The remaining patches are:
>> Acked-by: Sam Ravnborg <sam@ravnborg.org>
>>
>> 	Sam
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
