Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236E65E41D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsudnKhRpOK85qWhaIwasF6e5RuU63E65F2M/vCx80M=; b=eqlBeNk8gAqint
	vlh4tH9pWZ25Il4m5fyHZPKyxT2EchI5QwrgfjxWHpmRPQtVq4DBB4PYWbJfB1eJdGY20WDX4ny8m
	mevZfxeq70j6e3kfx9rKZIexveT2B4plmMmMnIqnjgAErfpR2goHUK2PVdGcfhkbynTEFEb6nSy+A
	a++93rBFGiBabuvZpOIJqAlNpqjj1ZKzzY9isx5suV7DYQVy/wuoipdGfrr7yG0ck9hkdiRw60rLK
	lE01cRYvHJ3oLe4lNt9WkijJWWPsEIvdUD35/GQOiSTQH0p9jNl2MsIz/BGsEYWHP2wz/z7u9IbrY
	qtwWAZH5LTuyBvXNSN2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hieZa-0000t5-5V; Wed, 03 Jul 2019 12:41:18 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieZI-0000qs-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:41:02 +0000
Received: by mail-wm1-x329.google.com with SMTP id x15so2054965wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=REnOeEN5yGA6DyLHYZUXObOyZCyVPJqos2PFAeloT7k=;
 b=tozxBVBj8Zx3/S4JOAkF4a5m+vhqYKE2FZcfa+qH6ELSArafWHyGRNUtG6pNYT7Ovt
 R3w4RriHSl55srSSXoSz60ResDvaxdxcBnlkj77F1MXPQ82WER6328sXmSyr5Z/EMTin
 kAZt+LVQ3GpKa9SEdo5HpNqtgLpy66dR5K8Djxhcrqms6IOr5yD+bp93WooNpo0sBFbv
 TGgkW76J/K7eDePQ7M63uxp8HWfr5Jom2D9uQA5KFDp+H3ySKnVMtExmwcvKwU1UfH8C
 bPoMr/V3aIqJ9xwS5Nyy04U+/UEKh5x/GE1NtHu/xl/qRUSD744fvS0ieYvdzSYsxMnV
 HdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=REnOeEN5yGA6DyLHYZUXObOyZCyVPJqos2PFAeloT7k=;
 b=IsTeGlO+2fhD9FLQNKPokAdJKpSQK1Sf20GOuLqMvlR2SlYopM0SvHduEV+w0bn5jh
 7VUpy74LqxD6TOTe4tmWgvAtRfHyctFp2zz/uk2KCXwLHNajTJdvCG2tbXlRKsNlIXPp
 YGZYhqp4JUzccFctkADxpL5SKGET77nuKiZwQOF1OQvvcEPMMeWtbPl5eQ3QrTH9DQa1
 WN0XkC8i6WI/ExjTW/5nU3bfTwsAFkLuaEwp2+PcHLURoQovEm6OQql24CDpu2nOk821
 IJKBAlc+Ll5RPI4vvJ9zL9xwKlkkK8STVnC1IX4q+LrQ7TDA7+p0vxXCd/NYM/B4CsGH
 MerQ==
X-Gm-Message-State: APjAAAXMmAeRQJX9OblNUMF0ehJPKnXB4vCNP0Ziyo6sGhw0Ia7ZM18k
 BfqqL6yGje7ghnXsaYMl2KOU3A==
X-Google-Smtp-Source: APXvYqzv39vxjEOuFXIZd2izLbkL+W+voUSFY7XUgtQYBiXS3oC/SBtBaMlJedbypMkeWFSaJyc9mQ==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr2879582wml.97.1562157657223; 
 Wed, 03 Jul 2019 05:40:57 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c65sm2327372wma.44.2019.07.03.05.40.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 05:40:56 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
In-Reply-To: <301695b6-52ba-92b1-ca1a-d4d587b33eeb@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
 <CAFBinCA1gUUbEj=++1rGcFQ1RdyxSheofAo=TKw3-UaenFAcug@mail.gmail.com>
 <301695b6-52ba-92b1-ca1a-d4d587b33eeb@baylibre.com>
Date: Wed, 03 Jul 2019 14:40:55 +0200
Message-ID: <1jo92b70ko.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054100_877053_B3EF6207 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: amergnat@baylibre.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 03 Jul 2019 at 13:45, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 03/07/2019 01:16, Martin Blumenstingl wrote:
>> +Cc Alexandre Mergnat
>> 
>> On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>> Add a setup() callback in the eeclk structure, to call an optional
>>> call() function at end of eeclk probe to setup clocks.
>>>
>>> It's used for the G12A clock controller to setup the CPU clock notifiers.
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> this will probably work fine, but I want do double check first
>> 
>> are we planning to get rid of meson-eeclk (mid-term)?
>
> AFAIK no, but maybe I'm not aware of it !
>
> Neil
>
>> Alex has some patches to get rid of all these IN_PREFIX logic.

The prefix logic will go away with Alex's rework, so are the input clock
But meson-eeclk, which is just a common probe function do avoid
repeating the same things over and over, will stay

>> I'm asking because if we want to get rid of meson-eeclk it may be the

May I ask why ?

>> time to do so now to have less logic to migrate later on
>> 
>> 
>> Martin
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
