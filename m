Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912FB7A427
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4hMyW8OVMY5zRYB2k71ng2Qd4FvDvdQhsrDH9xTP5EA=; b=YeCMEl/G4Uf6upRo52EcAODbU
	TwdnE6lW8RDFlQb/Vi/GDVt0RTgrmVRVQ7MJPZKJx6n4934dDEJG1HkHUyJ3DoWwc/Ml+LyoMeVsf
	6iHgNQuTZdubRHzqMWL4+x/68Q+m6f82vk0tyA4mGGVVPZHJNDNRG603UOpiQjo4YspvMQEgmEuU6
	mrBW1pz8CEIPHMF2Hmk/bppDVROds4fuK1SXsg8gjKTVd1ZE1zqgsYXqE0sMHATe5Tzm7pwfz6JV0
	mGR1wEosbkJia63+uW6JPC8M95ULCQQKIyrTozKe8plR23eFpvsWAw2CciClNDj9OwFYlWW4BD5he
	USPK2zKcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsORh-0003Y2-K1; Tue, 30 Jul 2019 09:29:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsORR-0003XK-2l
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:29:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id y4so64969864wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UmQHozqmoGA+uJhmvpcriqzT5s1toP44XHjvDTiLyKs=;
 b=DIxPinmnjAMczFCQWHoJQzmDZAzd08ESNxxV8hlwQh4GOZNlXwdWnz2/RVJ4GI71qM
 Mx3d+B082zk3iVOm915XlYVI0Xi3Xow6TOUy5zVsnGex4tq+Ng3B2eOidnmt+UA2g0Vl
 2cC5yuUsY4akIbir0tgfir8xROfBbuxYQb2DUtYYYteu0/uMIGWwJrhHXRX+ucK2BxOe
 bIsKijGD/O5VVjp3SIOKBvxUzS1yO8QXb4zGjhFfD5rTypu05vRIVgspvL4Uw3eL3THf
 dH5NtsMVpO+bhM5khhwn8e4TzMH5vl0OtBZ8qkk5PCMz7UGk/RQBDTSkKeG6tGgAHiBj
 cqow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UmQHozqmoGA+uJhmvpcriqzT5s1toP44XHjvDTiLyKs=;
 b=UEh5xWp+WX+YOTlP/oXvqrH6lwt4fMUFeeo/J0CHibUHzcu2nJcEZ5ZIFXIndwRU75
 3MVLM1oVfy5TMgCCv4bPscPw8DowZC9nYrWk5mEJONwCW1uhwLTEyh8/eMJsunfnLDGI
 ar49ag6cjdEfr8Kr8wCFBGUtdvRLzUso9VlBVY3QiClGzuXRn996MvCihyDEM3H+uszi
 iEwGeWHQWtfQsip0aE0LLkyZjydBq2KsNfCTuqCapFNgvEobR6m2As6KXQo8MPzEDq2l
 RShTs+R/bMBZmhnWBcLyAgCciSNwowweBE9XFT0MA4VUbgXJ9DLi32aU8etdElC9HBpP
 zRcQ==
X-Gm-Message-State: APjAAAUYo6nsW3JUP9tn1uKC6LaoeXSMT41w3O5MPHtUvt/75R9iDXCn
 RcIB0LjLEDq3eTQ+CFW+3PNWug==
X-Google-Smtp-Source: APXvYqzObPqZtjGj+O64oCgvOTtRaaQliiCCg3j7iOoEJrUTUSi6lKuRd/cBNOAgtnVG9INnbmKUgA==
X-Received: by 2002:adf:ce05:: with SMTP id p5mr89483972wrn.197.1564478947785; 
 Tue, 30 Jul 2019 02:29:07 -0700 (PDT)
Received: from ?IPv6:2a00:23c4:f78c:d00:1570:f96d:dab8:76ae?
 ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id g131sm46129472wmf.37.2019.07.30.02.29.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:29:07 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
To: Jerome Brunet <jbrunet@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-2-ccaione@baylibre.com>
 <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
From: Carlo Caione <ccaione@baylibre.com>
Message-ID: <5b6825f9-22dc-1656-b5f8-4f785103f827@baylibre.com>
Date: Tue, 30 Jul 2019 10:29:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022909_118301_9145528F 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com, khilman@baylibre.com,
 robh+dt@kernel.org, srinivas.kandagatla@linaro.org,
 linux-amlogic@lists.infradead.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/07/2019 10:04, Jerome Brunet wrote:
> On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

/cut
>> +struct meson_efuse {
>> +	struct nvmem_device *nvmem;
>> +	struct nvmem_config config;
>> +	struct clk *clk;
> 
> since this driver uses devm_add_action_or_reset, I don't think you need
> to keep the clk pointer around, unless you plan to do something with it
> later on ?

Good point about the clk pointer.

> It is kind of the same the other structure members, do we need to keep
> them around ? We could just let devm deal with it ?
> 
> If you have a plan, could you share it ?

No plan. In the PATCH 4/5 I was going to add struct meson_sm_firmware to 
the bundle and to me it's a bit more elegant to have all the auxiliary 
structs together in a single container.

For the sake of keeping the diff size low I'm going to rework this in V2.

--
Carlo Caione


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
