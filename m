Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E2BCDD8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkegrVIVRPPWvz6Jpgl+7BxhiWZAu3VdcWl9/M/BgK0=; b=GDIcwJuNxFE+QL
	GAajyheEDM5OizB9cAWBNnnAVAWw/RALhfJYQ+FMcCSnPXDqzws+lsmc80sm7Z7wd0efGzmCZCiVB
	rPUnIOyxFvdHm2VRrAYQJW73HZXeun451Jaqm6ynXM09I6nYvkX/DOxtIwayRuicp30NivvUbFg6a
	7yDFS47MMXvUkAAqNpCh1n/MjgR4Q6jxLGmW7woeBEkSnqEIh7Cm62mEMJoCDcq4OnXhGXF5dCnWw
	CLkOwUd33f+wwmWtBC0Ct9M7FUbbVDt3SsZ04/2G3oKcY+Ts57Il7QOYW2FuVtfHF3emYyPUJ0Mq7
	/BDLoIYihhsaHKMtfl7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOdG-0006Cg-Ef; Mon, 07 Oct 2019 08:44:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOd9-0006CH-Qp
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:44:37 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 01:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="276727970"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 07 Oct 2019 01:44:31 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iHOd3-0005O0-Rr; Mon, 07 Oct 2019 11:44:29 +0300
Date: Mon, 7 Oct 2019 11:44:29 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v16 11/14] thermal: intel: intel_soc_dts_iosf: Utilize
 for_each_set_clump8 macro
Message-ID: <20191007084429.GN32742@smile.fi.intel.com>
References: <cover.1570374078.git.vilhelm.gray@gmail.com>
 <8e85aa4ccead5c330d7abdbda292f32a0c48902e.1570374078.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e85aa4ccead5c330d7abdbda292f32a0c48902e.1570374078.git.vilhelm.gray@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_014435_911902_DFB56610 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-gpio@vger.kernel.org,
 yamada.masahiro@socionext.com, linus.walleij@linaro.org,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, morten.tiljeset@prevas.dk,
 sean.nyekjaer@prevas.dk, bgolaszewski@baylibre.com, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org, preid@electromag.com.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 11:11:08AM -0400, William Breathitt Gray wrote:
> Utilize for_each_set_clump8 macro, and the bitmap_set_value8 and
> bitmap_get_value8 functions, where appropriate. In addition, remove the
> now unnecessary temp_mask and temp_shift members of the
> intel_soc_dts_sensor_entry structure.

Since it perhaps will be next version, I have few style comments here
(ignore them if you are not going to send a new version by some other reasons).

>  	int status;
>  	u32 temp_out;

> +	unsigned long update_ptps;

I think it's better to put it one line below.

>  	u32 out;
>  	u32 store_ptps;
>  	u32 store_ptmc;

> -	out = (store_ptps & ~(0xFF << (thres_index * 8)));
> -	out |= (temp_out & 0xFF) << (thres_index * 8);
> +	update_ptps = store_ptps;
> +	bitmap_set_value8(&update_ptps, temp_out & 0xFF, thres_index * 8);
> +	out = update_ptps;

+ blank line?

After this change it seems we may drop temp_out and use out instead.

> -	out = (out & dts->temp_mask) >> dts->temp_shift;
> +	temp_raw = out;
> +	out = bitmap_get_value8(&temp_raw, dts->id * 8);

>  	out -= SOC_DTS_TJMAX_ENCODING;
>  	*temp = sensors->tj_max - out * 1000;

We may also join these together, though it's up to you.

>  	char name[10];
>  	int trip_count = 0;

> +	int writable_trip_count = 0;

Perhaps move it after next line, or before previous one.

>  	int trip_mask = 0;
>  	u32 store_ptps;
>  	int ret;

> -	int i;
> +	unsigned long i;

We may skip this change, but if we go with it, better to place before
'int ret;' line.

> +	unsigned long trip;
> +	unsigned long ptps;

I would group each of these with relative group of definitions above.

>  	if (notification_support) {
>  		trip_count = min(SOC_MAX_DTS_TRIPS, trip_cnt);
> +		writable_trip_count = trip_count - read_only_trip_cnt;

Maybe writable_trip_count -> writable_trip_cnt? (in align with r/o one).

> +		trip_mask = GENMASK(writable_trip_count - 1, 0);
>  	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
