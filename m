Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6C8CF264
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 08:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykqQzlInSKaeWQJ/RQYr2KV99ZXidFcJTJjIwXyTyt0=; b=se7zFjQ0XvTLmO
	3JCP860Llz73W9SVSrQW5bb+K77/Z05pRP/I7UrKap3gSQucxvx38OGbdkKoqLoPpm3H+k613BTSo
	smY1Y2HJRP/UXtCjQcFIOmy4pGjwjbPrOZ5PGy1lTcGVt+E/m8Rbo43PmI0Q9I97o5S7K0AU2Ipj+
	oIG0HQb0kMdOxTnV76LRiXdMGIsZauhZGLv8xHYnTRN7xbnNquwEnBxCS5As075caT/jKdxGhhV0G
	huyINyn+NQdjh4A3A0Vkz7LL6/MGArF21tyZQ9uJ1N1C4d8qo4agaQtYd5Hwe3TtK68bFIsrJLd48
	pplzFAKfuXC3VztbSlng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHict-0003yL-4h; Tue, 08 Oct 2019 06:05:39 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHicl-0003xa-OM; Tue, 08 Oct 2019 06:05:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 23:05:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="206577319"
Received: from wpross-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.86])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2019 23:05:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Alex Deucher <alexdeucher@gmail.com>
Subject: Re: [PATCH TRIVIAL v2] gpu: Fix Kconfig indentation
In-Reply-To: <CAJKOXPeVFeSDpxPv-rDywCafWbN3mivtcM3UQX_+wZkyPcZwPQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191004144549.3567-1-krzk@kernel.org> <87sgo4hjii.fsf@intel.com>
 <CADnq5_MqGehpWwOAxYg0T2x3qXisqmae2uGG5dijQX+Aa4NsoQ@mail.gmail.com>
 <CAJKOXPeVFeSDpxPv-rDywCafWbN3mivtcM3UQX_+wZkyPcZwPQ@mail.gmail.com>
Date: Tue, 08 Oct 2019 09:05:49 +0300
Message-ID: <87v9szdb5u.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_230531_802795_7719DD4A 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jiri Kosina <trivial@kernel.org>, lima@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, nouveau <nouveau@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 07 Oct 2019, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Mon, 7 Oct 2019 at 18:09, Alex Deucher <alexdeucher@gmail.com> wrote:
>>
>> On Mon, Oct 7, 2019 at 7:39 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> >
>> > On Fri, 04 Oct 2019, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>> > >  drivers/gpu/drm/i915/Kconfig             |  12 +-
>> > >  drivers/gpu/drm/i915/Kconfig.debug       | 144 +++++++++++------------
>> >
>> > Please split these out to a separate patch. Can't speak for others, but
>> > the patch looks like it'll be conflicts galore and a problem to manage
>> > if merged in one big lump.
>>
>> Yes, it would be nice to have the amd patch separate as well.
>
> I'll split the AMD and i915 although I am not sure if it is sense to
> split such trivial patch per each driver.

Thanks.

See MAINTAINERS, many of the drivers are maintained in the same drm-misc
repo, and it makes no difference to split those.

In general it's, well, trivial to split up patches like this per driver
or repo, but not splitting it up generates extra busywork in managing
conflicts until some common merge/backmerge happens. We just want to
apply the patch and forget about it, instead of dealing with a trivial
whitespace cleanup many times over.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
