Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC2CAAC25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 21:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0V+sAGHK/hgMM6YtdNVIPQ19zfxII/zbfwc00JPR/c=; b=oNX4t9Lk+kL7fK
	ZaPTiLwQno5+tzvXgaGsRyU9YJfE4XFpviU5et6J/TUp+U4b7dPv4seJDi+YP/qxyjMg56oChSO56
	TGhj3Qyqme7SD2+GKD9ofP4grDp6wR49mqzZkQxIuP6uVmqNmHd+3LeN6xIKQ6tA65MIh/oWpqbqK
	BKxqBFJsNN9y6Z+T9ib8a4IiD7AxCHQyw1TyP1rcgC16d8VuRdUf42l7fafHxl7jPLb5OcXgkPw50
	3w7oUmz/IETlPc/ldZOov8bt+fdoTsq6ABcPxfo2IbI7X+OU4jbCnbYZus+3p9ALp3DSXLtoBmK64
	DtMQHXwawwhnW4QFChww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5xf3-0003l4-Ar; Thu, 05 Sep 2019 19:43:17 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5xes-0003kR-Jr
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 19:43:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id 205so2520859pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 12:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3R88/IRJQcHRZWfdzbbMzR1ZVULQNx99NBBwZp8K2ns=;
 b=VXvvRpfhCqUKNncwr4Dey5Mx58h6v8se2x5GT2BI6+dsZ30ptMP268TU5Ukorb1hyu
 SmYCaggQ1jJ6g1g3/X+8akl5EFQKHKvUDk/g76kaLGi9hSOl4PRd2AMR21qC7xgdKDeJ
 WG6ovXaIz7dQUDDlzL/CwyWEoabgr8CpuOue4ldmBJQ3V/WmY9eXOhkXgholvPwI3KSF
 0kgBU9Fq+G/b86qwuWmECrHGTVmDHKDjtxLwPLH9HKVk6jG9tp948w2JzTZTUzhAfxir
 eKOb1Lu/ExJMaP03XgcDXnBYLnfiu2od9jJf/B3oXjsmMwLEDUnriVbxM7dgL6pB9pK1
 z32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3R88/IRJQcHRZWfdzbbMzR1ZVULQNx99NBBwZp8K2ns=;
 b=UkmHqIOhCfDM9xb/KJ2w5lz2FsL+zulQQ8w2MAgcK5aeFfSdq39yMdfARcb6AliX7x
 Trxc/qwuh/Ox/84IXV7FBRMzQ1jy3O1tpRPSf8kafZkK0/E7XMCOSxxvEOn3wd2gkSCK
 3z1YHFpw96UzxRAXRQ0eGGDImEpUicNP8LEfPEmZ69qEsbSfjJ3tu3bKDTnsGm2PcKTJ
 YE/0jdynVq0mLKYllla96FLvyGrgODMddiI+rk6yDTHiKZ7h+MDx4S2CqC9BCV+oXtwi
 botBpD6/gsnTYxG89q7hEmXIZhWoe/sFwy32ld+qjJXZauqX4sdK0qMG0kPnmcLCKzKP
 Tecw==
X-Gm-Message-State: APjAAAVuAQQJZHcvO3dXOuXQzBgBs1N6I2bpEbdF2J7wig/4/DEEQHkv
 7W/eZ8JzxkXT/JUDqzWqc9Codg==
X-Google-Smtp-Source: APXvYqwf8krQaPMriUbEZ8Wdy1D3DRDXRb2n8Bb/CAhfFSa+I1I14VwMuRvI1N/0Lrhr0cbyX5GhOg==
X-Received: by 2002:a17:90a:d981:: with SMTP id
 d1mr5637712pjv.79.1567712585621; 
 Thu, 05 Sep 2019 12:43:05 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w2sm2820837pgc.32.2019.09.05.12.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 12:43:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6 offline,
 1 untried/unknown (next-20190904)
In-Reply-To: <20190905170257.GC31268@arrakis.emea.arm.com>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
 <20190905153938.GB4053@sirena.co.uk>
 <20190905170257.GC31268@arrakis.emea.arm.com>
Date: Thu, 05 Sep 2019 12:43:04 -0700
Message-ID: <7h4l1qsf5j.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_124306_704185_BDEE0ED5 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Steven Liu <steven.liu@mediatek.com>, kernel-build-reports@lists.linaro.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Catalin Marinas <catalin.marinas@arm.com> writes:

> On Thu, Sep 05, 2019 at 04:39:38PM +0100, Mark Brown wrote:
>> On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
>> > [ + Steven Liu who donated this board to my kernelCI lab ]
>> 
>> Also adding Christoph since this was bisected to his commit and Catalin
>> and Will since this was an architecture change.
>
> Thanks.
>
>> > Bisected down to this commit[1], full bisect log here[2].  It didn't
>> > revert cleanly on top of next-20190904, so I didn't get any further.
>> 
>> > [1]
>> > 419e2f1838819e954071dfa1d1f820ab3386ada1 is the first bad commit
>> > commit 419e2f1838819e954071dfa1d1f820ab3386ada1
>> > Author: Christoph Hellwig <hch@lst.de>
>> > Date:   Mon Aug 26 09:03:44 2019 +0200
>
> I stared at this commit and the ones around it for a while but couldn't
> see anything obvious. AFAICT this commit only replaces some macros, no
> functional change.

This is a an arm64 mediatek SoC (MT7622) so hopefully the folks on
linux-mediatek can take a closer look and see what's going on here.

If someone can suggest how I can enable an earlcon on this platform, I'd
be happy to give that a try to see if we can get any kernel output
before it hangs.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
