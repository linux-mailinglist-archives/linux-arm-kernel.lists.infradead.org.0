Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9341EC09B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 18:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y9OfHHxPlDTUFCcMgdveMcjhhOnU29zY9dfd+ecDN9M=; b=Cu6WI00eHRIJYENnkk0nq/zvg4
	vWJFpZE3PormN3F6LFFsJgShVB+Jo0WRRMd6P0w+QB9sAu9AkqhXNssG5Nu5im5+bTWGipgxlXJZC
	358DDnN/le6qRRu8gr9cX54yDUuTraXi6eXC24w88BggZjyQ02eD3VWPjYW5ybVlv3FhO2xqNLbjg
	vKFXiK3cj1huAuG/fbmjRWMTmQdZldiy53aZnIHzLvIrl0YPG4WhjJ7ES0+rcAaeuJWIQOhdhk13m
	T5MJfBAY4QFwwVt2gt6fQZjolh9b7ydISdTan+sqaVcWfTnCiRv2e2k5sEvMET9YnR+pEiu7Ysa22
	rAB9zcyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtGo-0002NH-GD; Fri, 27 Sep 2019 16:39:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtGb-0002M6-FE
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 16:38:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so3924671wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=H9qpcAXROEOSHATHIODGl5R6XLJmU3Nit6aFPlUl9PY=;
 b=vlJH88ijYnpukf4ZiGFC3tgXvxD1NRCykGaXRu7yCbSTKpcKP3ety0gptHFmz1x+9A
 R/Zij0mk9nhPfjOY+LKUIwqed8VuCJy6QuPiI87ofhmDeo6H6oLRNVsZ5zE71JbcpYs7
 uc7+vzjvAFtQ712pTxhRUUUTQcZwPb4HlY/iTEal88bUJii40H23wDmbW1J9zCSWVHGO
 4dLbPL+BvvZoXBrCGsugMVLtvI/uFbz+gafElcBGJnTW7LkFpuxjK4NBrzMpXkDvwg/i
 zRdsMSnPa1NibDmYOg/w0WIKy76RjgF1OahTmnNR5MoE/6qCzo8Gl5LJSwGSRso85PN5
 DL2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=H9qpcAXROEOSHATHIODGl5R6XLJmU3Nit6aFPlUl9PY=;
 b=IaAu4Sr1wXLuBny/m2c5Vyj3FWne+/0vH3f4cRRQENm6ZRM92ZggM+K6tty8YufUpF
 YMOpGyevDRlUUH/36UHQPdwcxvdzdzv+FJnSrL+IcTXldS4Qt6cvAwkDU+o9PTPFLvkR
 lvkq906t621B4u6Smg4jNKUZpXeQhi4jCCvUk7ct9pR39q5r6859yKbM7NjO9dlCAM/l
 ZF574poLDZUc4OXganuodIiE6PgoHN5ZoXtdY8mb13dtA25UQ1EvHKW8Kwi4fuLcXJJ7
 iQ46cYkOwq0qK1YUodCZh3dhAQRrqKaqA5w3XAPL0SrwJm2bIBuFiW3mmw0yDGr05GhD
 kHeA==
X-Gm-Message-State: APjAAAW4nUwdOd/Ps51aaKUU/eICABgDhrcTrI4swO/bKz18ci3g6BiI
 3r36TMeUsn2dyNA8g4PjgLXb4Q==
X-Google-Smtp-Source: APXvYqyOToIhXgMB3p4wq1eYwswK4+ABcMmXeNT+QmoldWbGpxe9NmpO0SA2ZuMkhyc8J4VZ7vGPAw==
X-Received: by 2002:adf:f547:: with SMTP id j7mr3872939wrp.119.1569602327457; 
 Fri, 27 Sep 2019 09:38:47 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j1sm6587771wrg.24.2019.09.27.09.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 09:38:46 -0700 (PDT)
References: <20190919102518.25126-1-narmstrong@baylibre.com>
 <20190919102518.25126-2-narmstrong@baylibre.com>
 <20190927001425.DFDC7207FF@mail.kernel.org>
 <8486dec0-8aea-ea39-2a52-7347a01c5c40@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH RFC 1/2] clk: introduce clk_invalidate_rate()
In-reply-to: <8486dec0-8aea-ea39-2a52-7347a01c5c40@baylibre.com>
Date: Fri, 27 Sep 2019 18:38:45 +0200
Message-ID: <1jef011yp6.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_093849_546986_DE62D2D6 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 27 Sep 2019 at 08:40, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 27/09/2019 02:14, Stephen Boyd wrote:
>> Quoting Neil Armstrong (2019-09-19 03:25:17)
>>> This introduces the clk_invalidate_rate() call used to recalculate the
>>> rate and parent tree of a particular clock if it's known that the
>>> underlying registers set has been altered by the firmware, like from
>>> a suspend/resume handler running in trusted cpu mode.
>>>
>>> The call refreshes the actual parent and when changed, instructs CCF
>>> the parent has changed. Finally the call will recalculate the rate of
>>> each part of the tree to make sure the CCF cached tree is in sync with
>>> the hardware.
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>> ---
>> 
>> The knee-jerk reaction to these patches is that it shouldn't be a
>> consumer API (i.e. taking a struct clk) but a provider API (i.e. taking
>> a struct clk_hw). I haven't looked in any more detail but just know that
>> it's a non-starter to be a consumer based API because we don't want
>> random consumers out there to be telling the CCF or provider drivers
>> that some clk has lost state and needs to be "refreshed".
>> 
>
> Totally agree, I hesitated and obviously did the wrong choice, but
> this is a nit, the main algorithm is not tied to the API level.
>
> Should I resend it with clk_hw ? the difference will be small and
> the main subject is the resync algorithm.

Independent of the point above (partly a least), I wonder what will
happen in some particular use cases

* If clock is changed while in suspend. This clock can be a parent of
  the clock invalidated but currently is not. What happen, if later,
  it becomes the parent ?

  Since it is not parent on resume it won't be invalidated. CCF might
  still take a decision based on an invalid cached value.

* If a mux is changed while in suspend, the parent is not correct
  anymore. The proposed patch recurse through the parents, it might
  not invalidate what we need/expect ... things are getting a bit
  unpredictable

IOW, this change take a leaf clock and tries to tell CCF that any parent
of this clock should not be trusted, but it might get it wrong in some
cases.

I think we should do it in the opposite way:
 * Mark the "rogue" clock with a flag (CLK_REFRESH ?)
 * Let CCF update the children of these clocks based on the new status

Back to Stephen point, I don't know which API it should be, but I
think the platform (fw driver or power stuff - not only clock provider)
should be able somehow to trigger the mechanism to let CCF know
something sketchy may have happened.

For the parameter, maybe there should not be any (no struct clk or
clk_hw) ? Maybe it would better if we let CCF refresh all the "rogue"
clocks ?

>
> Neil


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
