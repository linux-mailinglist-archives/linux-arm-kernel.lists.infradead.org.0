Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799AE8A8BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azvwOiXqWRaSwXlVfVK8YIOcpllBJzfo6uAUA01E0OU=; b=ew1x9X/K5+IFPm
	+oZDmLMOR/dE4vSKNd2uvH11AVio2jWVDO5ZRr7anm5iDwg5t/WAc+iP1CY5vD0u8xDqyXxEArOuO
	w2hjt73Jxc2H+xQ4cHKUYZfDV0j3RRs0sVY7WTLyQuCGOokQMRjLoobopvxCagITADbmXBa/iQgI1
	DGWD0monS7yfRWRoqfRK174LEM6QxG0/xYlTjZ5ng/hpPwmHe6D8hxG3IKt3va17CBwjIxWczLhya
	q2uAoJBHx00b+0qiQYBkCpccfv4fVTv67c09Vp1z0++AVgrhaX7RFqqUfdrcxpRy9DaORXGhg4cvB
	kCDJGj+xeIYj9oal34PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHOG-0007Du-Re; Mon, 12 Aug 2019 20:58:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHNz-0007C5-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 20:57:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so50085601pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 13:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=SP/9CzjkRvY0IAQnRlslEa5+7OIaKNdwjFiyaogAY4o=;
 b=koihRlA8DkC1jPEjiuBto/yHr73waYw8INi81cjQ8wYgQvncxRWlxOnqf3LquySrVR
 cfJm2VSGHuP2gNoWHpQyi/yr2rQLoe7A9hocNYNrDTJG70pDaV3nLUpD9wt99mW/miM4
 jIwBHs1dKOU+mVfLoaLkekb1jiGrypYtGT3buec3jV8kl8/xY5+zpSP4o25OXv0vNQsV
 DrEbo+i+OGkpzC3cssC2o1MDNX3z3h2dUCZ0OlCwSGaouGSVVumgfSQq0cFQDdTXDweu
 WnN/xwplCeQSuZ3XMqfsetYgX+QlUUwFyLqe/R0SE2ueJg4hVmjE7uBmovCYVaLtN1RW
 foug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=SP/9CzjkRvY0IAQnRlslEa5+7OIaKNdwjFiyaogAY4o=;
 b=DzxCaCrxmA+QNwpOi2JQVLYdG6pn4nrtE0/El+c6AM82okM003zOkn/tkSqnEg3yPN
 /sZqi4dChktg1kfTuHH/6E1pH10488KPC+U6iGlMoeUW62rMqn7KTPRDt1YK4RTboOzg
 GJFss3iPub7NRPJoKPHixPjwRw+qQnVb+No33cAgJT4hGyHTj8LwufCYJMQ+WX4q//Og
 eWRlREqt1erizlqpw3YfTVSMELVyFFxoPp8pSdaNN2giOI/4fA4LmA05GQv7NuI2B/CP
 SyMP36Yp6dMsvjzbuoBHLN4qFz1VeQiy11fpIoStEgizEkKoX8RjWWvxvWX1QyC6Qc/u
 UZPA==
X-Gm-Message-State: APjAAAV1iQeZPhkgZnoeIBwIfIj3zkYlGAC6juR8cDHEpvWMYL4dosvz
 JReHYl0bKXNVOp/SRAAFt+iNig==
X-Google-Smtp-Source: APXvYqy5zQMAbf6dfIFvVZ18Z29/TOUHQy1GHM+YU4DdeyuN/HLmGdxiI8MOSOYzdFXUuKm9K0FFuQ==
X-Received: by 2002:aa7:92d2:: with SMTP id k18mr37367965pfa.153.1565643466826; 
 Mon, 12 Aug 2019 13:57:46 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id i17sm12125252pfo.28.2019.08.12.13.57.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 13:57:46 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: cpufeature: Don't treat granule sizes as strict
In-Reply-To: <20190812150225.25386-1-will@kernel.org>
References: <20190812150225.25386-1-will@kernel.org>
Date: Mon, 12 Aug 2019 13:57:45 -0700
Message-ID: <7himr214qe.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_135747_443206_32BE7C16 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-amlogic@lists.infradead.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon <will@kernel.org> writes:

> If a CPU doesn't support the page size for which the kernel is
> configured, then we will complain and refuse to bring it online. For
> secondary CPUs (and the boot CPU on a system booting with EFI), we will
> also print an error identifying the mismatch.
>
> Consequently, the only time that the cpufeature code can detect a
> granule size mismatch is for a granule other than the one that is
> currently being used. Although we would rather such systems didn't
> exist, we've unfortunately lost that battle and Kevin reports that
> on his amlogic S922X (odroid-n2 board) we end up warning and taining
> with defconfig because 16k pages are not supported by all of the CPUs.
>
> In such a situation, we don't actually care about the feature mismatch,
> particularly now that KVM only exposes the sanitised view of the CPU
> registers. Treat the granule fields as non-strict and let Kevin run
> without a tainted kernel.
>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Tested-by: Kevin Hilman <khilman@baylibre.com>

Thanks for the fix Will!

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
