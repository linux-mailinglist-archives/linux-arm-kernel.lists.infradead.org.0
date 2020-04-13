Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5AE1A6AAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6o6UJZvODv2mDmaZ23dowWqf1Kqx6/TqJtHtK+Z9lM=; b=Ewi19crKh86Lqu
	WtqUrJVdVYpnzB6CUV4E/FsQBh+4GFibm0HfrqX1nkdfm5fOB5pDJaYilyafjTzyluS6+CsGveDO9
	BNxPjFbqJu0T8pxt3Pfdd5nwto6+qxRzgoEZGJjH99cdvkpy6NHLmU4/o0e+akTJ+MmGgfEejcPGe
	JuZ16Df84182UcDvkwLY0rKhpYLVMeWfkIV7a/v7SgcjyEH5u3cEn6hqVhUA8IUuqfjDNqL17Cjuh
	JVk9KmxEqXNfbN7psHCh7Ve3JvBbAdD6VnTUh7ngtGr//NAmz7fL4uQUcl0jbIVqFX+wpauS3i+3z
	CAqB9oKHhGPafU3/BaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2OY-0004SZ-Or; Mon, 13 Apr 2020 16:57:14 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2OJ-0004OZ-S1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:57:01 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id D91CB503FC;
 Mon, 13 Apr 2020 12:56:54 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=TGcSsKqj++2O8decqUO56CacYEk=; b=nhCLzJ
 1YpZeqqDbXce1XOSOfUoP6eHXIN83t6R1k5NZ0e1fdyjZFtD3Bznk8v2nyV+0+Jk
 dfAUZvYC5ozUZYNZ3bq5KGosknJ/L1iC3Q8qfJGgOIK10RbG9i+SW6SesONKrLCR
 VzOK8Xj65UiglbyRuvrxEsA9ophjkLPfFmlGM=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id D192F503FB;
 Mon, 13 Apr 2020 12:56:54 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=IEeITl7XibPFqhGZUnk3n+MC9oMstM+Gdp+FQKlBW4U=;
 b=MZfPi/R+4VrOzRVI9QHR0ywswEhpEJ2rqJfryLQEhtaLWdRKdZqfiNisDKOGkKygGiBgmf8PpVw/aw6gDYM+UPIiYqf+03gT8vORxS6O0XaYvub/zvNjpcF5tNZrW6j59E+GTmaKIEWLheL4PqOH0uZFeptaRCZXzvaLsw8JpQk=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 50E86503F1;
 Mon, 13 Apr 2020 12:56:54 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 35EB32DA0CC1;
 Mon, 13 Apr 2020 12:56:53 -0400 (EDT)
Date: Mon, 13 Apr 2020 12:56:53 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 0/5] ARM: simplify handover from UEFI to
 decompressor
In-Reply-To: <20200413162135.14955-1-ardb@kernel.org>
Message-ID: <nycvar.YSQ.7.76.2004131254180.2671@knanqh.ubzr>
References: <20200413162135.14955-1-ardb@kernel.org>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: C7372624-7DA7-11EA-A44B-D1361DBA3BAF-78420484!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_095700_032281_EA954B63 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-efi@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020, Ard Biesheuvel wrote:

> The EFI stub in the ARM kernel runs in the context of the firmware, which
> means it runs with the caches and MMU on. Currently, we relocate the zImage
> so it appears in the first 128 MiB, disable the MMU and caches and invoke
> the decompressor via its ordinary entry point. However, since we can pass
> the base of DRAM directly, there is no need to relocate the zImage, which
> also means there is no need to disable and re-enable the caches and create
> new page tables etc.
> 
> This simplification is implemented by patch #5. Patches #1 - #4 are
> prerequisite changes to permit the decompressor to execute from the
> offset chosen by the UEFI firmware.
> 
> Note that this applies onto v5.7-rc1 with Geert's patch 'ARM: boot: Obtain
> start of physical memory from DTB' applied [0]

Looks fine to me. As you mentioned, I really like the register liveness 
area reduction.

Reviewed-by: Nicolas Pitre <nico@fluxnic.net>


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
