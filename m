Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F65425DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOnUKGn2t8VeZxZNpRJc2mJSEPMlOHgoZc6EGwMeKF8=; b=JLWgNL32k6PiBkTtZytCNDfPo
	hsgeXnrnGlJz8NtJWVXTrlOzHX4TlftloAq5rtqONOD3Gg61/J9Fb9URg5pVsLh77ypAvaurYPeBA
	ioz0SxxztmbvYUz14CMG+2KiSGT2xslaQJN9JAxlqWzOJPcuwRfe19zJyCWhrn0f4PHfQrKCS+PCw
	0kj+Xgr5Aou2w5s8lnYJ/XTTskRdj8PblIeu9zj0Tx9oPgky3D66WGq1OTQXXboj4r8teUeikMUBN
	Xilh8QpqvHWIWat45d0TPoDlbIldKf013HIdR1MYcRb+mtBglatZ+RAXXeH8h30g1zvL7qrj2oCuO
	nbwOlhxnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2RT-0003Z8-0H; Wed, 12 Jun 2019 12:33:27 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2RB-0003Qj-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:33:14 +0000
Received: by mail-ed1-f68.google.com with SMTP id w13so25530135eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 05:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/9+BscyBSG8LtxRtL3bsLVsuCvjxfppgNJUSn3pi0BA=;
 b=ZbTuEAocErNhBEI3gAJT6Yfw5pAaBOeYsjX1LWdVVNs1c6NEx6hNcX0C1PizrvqFOY
 rY2+Srn6n8qGrCrzVU7iY3SKRP0otoNLYt8KCTrN8cLrxG0MQJXjwEEovmYjdBHEDTlh
 VO9FNlGS3N9ETk8MR4FiVMGUllPcBeHgM4dIuzzJaLtGq8w1c50HzEChHTZcFy0TRXya
 jyPBxp9n49LoxA8Vr71f8Cj45H1ii0qLlH7LNzUWslyf9nUklDGH1RuGFzhXpa6JnQLP
 qskx0qpqpoYkd6b/yA1Moh+n33iZOqmneXTak/P+41rCFy4anYDkDqrkrfENpLDM9oBT
 9z2g==
X-Gm-Message-State: APjAAAV+bNSdD5iJEF2J8nwfYtmWaxM19xfptgpv+zlYgyHMX0uVQlZg
 0WzQ07n8I+UPtysAXC7+nDo1Xg==
X-Google-Smtp-Source: APXvYqwH+EIsTHqwWN3f9HxFMK99PgTbuqj4T1Pw/EUS2brCmPFSeeUdToS6/AutI5NLtTDk9/MaKw==
X-Received: by 2002:a50:b561:: with SMTP id z30mr32633599edd.87.1560342787019; 
 Wed, 12 Jun 2019 05:33:07 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id c21sm2784931ejk.79.2019.06.12.05.33.05
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:33:06 -0700 (PDT)
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To: "dbasehore ." <dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
 <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
Date: Wed, 12 Jun 2019 14:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_053310_045925_DC0C53E4 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@linux.ie>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12-06-19 02:16, dbasehore . wrote:
> On Tue, Jun 11, 2019 at 1:54 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 11-06-19 10:08, Jani Nikula wrote:
>>> On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
>>>> This removes the orientation quirk detection from the code to add
>>>> an orientation property to a panel. This is used only for legacy x86
>>>> systems, yet we'd like to start using this on devicetree systems where
>>>> quirk detection like this is not needed.
>>>
>>> Not needed, but no harm done either, right?
>>>
>>> I guess I'll defer judgement on this to Hans and Ville (Cc'd).
>>
>> Hmm, I'm not big fan of this change. It adds code duplication and as
>> other models with the same issue using a different driver or panel-type
>> show up we will get more code duplication.
>>
>> Also I'm not convinced that devicetree based platforms will not need
>> this. The whole devicetree as an ABI thing, which means that all
>> devicetree bindings need to be set in stone before things are merged
>> into the mainline, is done solely so that we can get vendors to ship
>> hardware with the dtb files included in the firmware.
> 
> We've posted fixes to the devicetree well after the initial merge into
> mainline before, so I don't see what you mean about the bindings being
> set in stone.

That was just me repeating the official party line about devicetree.

> I also don't really see the point. The devicetree is in
> the kernel. If there's some setting in the devicetree that we want to
> change, it's effectively the same to make the change in the devicetree
> versus some quirk setting. The only difference seems to be that making
> the change in the devicetree is cleaner.

I agree with you that devicetree in practice is easy to update after
shipping. But at least whenever I tried to get new bindings reviewed
I was always told that I was not allowed to count on that.

>> I'm 100% sure that there is e.g. ARM hardware out there which uses
>> non upright mounted LCD panels (I used to have a few Allwinner
>> tablets which did this). And given my experience with the quality
>> of firmware bundled tables like ACPI tables I'm quite sure that
>> if we ever move to firmware included dtb files that we will need
>> quirks for those too.
> 
> Is there a timeline to start using firmware bundled tables?

Nope, as I said "if we ever move to ...".

> Since the
> quirk code only uses DMI, it will need to be changed anyways for
> firmware bundled devicetree files anyways.
> 
> We could consolidate the duplicated code into another function that
> calls drm_get_panel_orientation_quirks too. The only reason it's like
> it is is because I initially only had the call to
> drm_get_panel_orientation_quirk once in the code.

Yes if you can add a new helper for the current callers, then
I'm fine with dropping the quirk handling from
drm_connector_init_panel_orientation_property()

Regards,

Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
