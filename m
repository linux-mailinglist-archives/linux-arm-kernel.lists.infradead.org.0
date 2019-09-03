Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD483A76A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuWF/mmy5r6TscplebbtyBD7gUcI7IRpsMSUV/JnPNk=; b=jhkb2KylLUKJnl
	m36rffbvt6OLu6hPIdVWjYoF7Wq+2e1VkdVaeOiHlSX8TU7PpdO6Irr02dvO+1TIo4SjscLpgJ9uU
	Pnu+Epxc2WiSUdmsUjCH/6b2t0CVSArTGaV8032ZrbmmoRrdbji3jNTTXVqedOYLy7wzmsxVV2Khv
	EE1Am7YsbrxwuVcahyRL5iu29XVFx6IEeYFfcB6Tz+erUze17/HPHixXzBQypD9HDj1m1sDoHfBON
	abx4/fOHz3vI1ZT4ycf1qNoItjnT8dbJga0UCrYhTInLvTWGrqlgczadeNmNbzc6timfQVkAFJ/cM
	Vl74lop1UO7bD8q8q2BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Grj-0003vv-Du; Tue, 03 Sep 2019 22:01:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5GrO-0003tb-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:01:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id w22so3310379pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=J2n5WaaTL54/rFZLKGGh9tzxeFO4kiIUE0UdYkV6TDY=;
 b=DnjYb9YgdsBJx9uO26j7T9uZFuqzZGpQWVzIOqXvXGsbmMJfslSaFHsnCiitkx9CY0
 MY22m1RGIfXOdcayxWRR93Xi2CqF/Ppmy0scqFi0FT7JWsF3uhaX+fOHzmYTITZTaBdn
 5mtl/Ca+FnmRv9f1fzPj2go5V+WA1WROGo5YZjCg+tZCMAH6rIVDFdtx3woVwfQT04dE
 JfePI61SwyJWifYbS7xYYsimLx02Oyqs0h0RpRLkKLqmBcCUcz9NztSijUti+sogl+JQ
 BmiMpefyPca6dBxNoeOAZNUaCZjQPrv6KpUIpOAmly3MrbGIJ2X1DzGbfB7+8ZXBDJJ2
 s2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=J2n5WaaTL54/rFZLKGGh9tzxeFO4kiIUE0UdYkV6TDY=;
 b=DFCf+LrUnnAsmpShN+O++DllepWz88YnZJfSHTXVJp0flNSInEaT5sl7fp9SsHautQ
 G+/H1aNqUq5N4k/Q4NhQY8CfuyAryfU77+atMpmHscG5ed/0ZJaQyv9uIlVFx94ltppX
 DYf08mT3BuArFW9HA/f9NZzZeTq3EvO9Fw1tndZhGQe3ZhnLXnRSZl65oB5ILhXGFx3v
 2NFZU3pUBDWWUmYQ5inVcUj/fn6E+Nnax8V3FQlejrJ3HJji+QofvqEpxyy4uwI8kd+d
 XeWKGioyGAxWMB4YaU8K+Q/rSxELQoHCxjVS5hxLfjPK6/vm+0SpQQy0zpvCr/VYzgqT
 m5pA==
X-Gm-Message-State: APjAAAVHDKteaK6B0zB6eV9YXlN9c/KynnRA2vb/6VVnNS61p7C6L5NU
 5rM2kr0gXDX4bqRG8UJvRZm06g==
X-Google-Smtp-Source: APXvYqxNDrTxDv0Q0qLNo2jLxjkedLDi+bNzYxHBpg9CdGO4n6KYv7fBWOvF072F4TqfiWhDl2f5NQ==
X-Received: by 2002:a65:5003:: with SMTP id f3mr32414212pgo.335.1567548069351; 
 Tue, 03 Sep 2019 15:01:09 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id s186sm24287884pfb.126.2019.09.03.15.01.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Sep 2019 15:01:08 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] soc: amlogic: updates for v5.4 (round 2)
In-Reply-To: <CAK8P3a0_HEhvVk8Onk-9MBhnaBQT9B39+t6AGA3FRrH-_yMqVg@mail.gmail.com>
References: <7ho907rfsf.fsf@baylibre.com> <7h5zmfo8au.fsf@baylibre.com>
 <CAK8P3a0_HEhvVk8Onk-9MBhnaBQT9B39+t6AGA3FRrH-_yMqVg@mail.gmail.com>
Date: Tue, 03 Sep 2019 15:01:08 -0700
Message-ID: <7hpnkhm44b.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_150111_045530_93F40548 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> On Fri, Aug 30, 2019 at 1:34 AM Kevin Hilman <khilman@baylibre.com> wrote:
>>
>> OK, here's the respin (round 2.1)
>>
>> The previous version was missing the bindings for the new driver, which
>> I had mistakenly put in the DT branch instead of here.  Without the
>> bindings and associated headers, this branch did not build stanalone
>> (found by kbuild robot.)
>>
>> All that is fixed by this branch.
>>
>> As a result, I also needed to respin the DT64 pull.  Since I moved the
>> bindings/header patche here, the respin of the DT64 pull will now have a
>> dependency merge of this branch.
>
> I've pulled round 2.1 into arm/drivers, but it seems that the
> patchwork integration
> failed to deal with the way this was sent:
>
> - https://patchwork.kernel.org/patch/11122205/ shows both the original
>   pull request, and the updated one. It was meant to detect both pull
>   requests as the same thing and mark the old one as superseded, but that
>   did not happen.
>
> - Using pwclient to get the pull request only shows the original one
>
> - I actually tried pulling that after looking at it with pwclient instead of
>   the email client. Thankfully, you had removed the original tag, so that
>   failed and I took a closer look.
>
> I suspect it would have worked the way it did for
> https://patchwork.kernel.org/patch/11119171/ if you had specified
> the subject as
>
> [GIT PULL, v2] soc: amlogic: updates for v5.4 (round 2)
>
> i.e. kept the subject the same but the version inside of the [].

Ah, ok.  Good to know.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
