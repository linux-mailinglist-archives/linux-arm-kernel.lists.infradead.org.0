Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F29BD1AB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 23:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfwroyEDoSnkKfr9e6Fh2vc/sAJEI1BfqGNGGQ6585s=; b=tvNQIi7i42QiFV
	IeWNfQEntyKd9P98JQHsawUdjrBk5C12+JpTx3fSi/Dzh1yC7TjeDwWCDCdHeqMyrcXSME7Qxz4QE
	ZKTlgOdtzEKtJ547I3Sa95+BFQLUwi4EKqfKn2C6kAIwKGTSYfOfrNkpVrGeqSjMi86C/M5qMVP+m
	AK6P2nMrOnB/oNmLBxIHnzoyFJOvtDSGg4f+TLgCwUIOvqVjCri26SDzE9zT/SeOgaqsJLJD9luPS
	XZ2a2MYhQaaHiSQF4BnHN+x1VDLYQAUtBSyKvlja2gxJCoZkPvZDRmDadhsPObuqDJa0IqtUqIW2J
	o0dDLwdPnK9YBQfoKbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJMR-0001sp-LV; Wed, 09 Oct 2019 21:19:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJMI-0001sR-42
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 21:18:59 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C7C420B7C;
 Wed,  9 Oct 2019 21:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570655936;
 bh=J/UoD8TI8r2PBv1hXoDAUnvePVV2cHTJo4SSSOlvQS8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CJOqXT1XwlBfVttI7DYPGvW2Jevkihy44Tves3loSgg+2No5LLHJwR5E2VQLHHex7
 ayk23kjS13Kei0/AcZ6eZn/SKW03QpiTYpeZtE1NPQ4lSiYLuWei96qaa2o4pq9AD7
 vzOEBBXiawhBVDCShGgzDBq1ExUBLHM5C8PDVpts=
Date: Wed, 9 Oct 2019 14:18:55 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v18 01/14] bitops: Introduce the for_each_set_clump8 macro
Message-Id: <20191009141855.310f1fa8bde58df0df27b8f0@linux-foundation.org>
In-Reply-To: <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_141858_183264_19D5B5FD 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 yamada.masahiro@socionext.com, linus.walleij@linaro.org,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 Andy Shevchenko <andy.shevchenko@gmail.com>, lukas@wunner.de,
 geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  9 Oct 2019 13:14:37 -0400 William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
> 
> ...
>  
> +#define for_each_set_clump8(start, clump, bits, size) \
> +	for ((start) = find_first_clump8(&(clump), (bits), (size)); \
> +	     (start) < (size); \
> +	     (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
> +

It wouldn't hurt to give this some documentation.  In kerneldoc form, I
guess.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
