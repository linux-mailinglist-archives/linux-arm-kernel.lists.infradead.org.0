Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BAEC2606
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CW5ri7NxwYSdNac+Wvr2hEIMPmTKIjzgXFcd94hnUc=; b=DwN47n7J+il+9u
	ZqC6FZlNtUXil9Hdpiap6JPHZ6fSFU80g4xve+NmAEXSNYCiDkCj8gNtYsUSnWQBEQKvg4cc3IRpY
	24vH8uUK833DrWa6acf/HknrxUcKDcI2fB5TSZcDa9vo9PJ7qMaezJwWI5uLhlld9HSY0a2KyV3Bk
	9/YiqHCwjGq/9tQ8erojt27ooNvFfs259xvA6pcINLZDPTQrP2wORc9rQGMQtB/1xllptmbZ7cs3v
	s1GCYEN4RZto15Bg3pOg5/Dilk5jJerriejpifg26xWkwN+lfwO/OMGJszA7jLnZ6CGW0M7sNwyZd
	QJnI/QXpod1+wSKGOqmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0XL-0002dC-CL; Mon, 30 Sep 2019 18:36:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0WZ-0002Dz-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:35:58 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6C2F224D7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569868554;
 bh=Ad/j94Z9dDSgxHErptmrkH1hQQ6UN44H+9rW9TD3BaM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kt2C+zpyCU5QHHTkmX69LUYE3htP53f+lr6SffmWb6Vnmjl3+fm/DXec1/XPFGlb9
 S5eYxPBwrvZcS0huTH82x9t7QSA3L1PkXERWLLahkdULpXJo5vxL3i5sdTU026dkLl
 0Yz2H3BWxjDdKF2rDQhqtErfgnVykztci1K+2bzU=
Received: by mail-qk1-f179.google.com with SMTP id z67so8685258qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 11:35:53 -0700 (PDT)
X-Gm-Message-State: APjAAAXG9F3EuBl7CCWFILOQuTOg+t7dkt6OBRc+IT4ExFNVWDA2YBoq
 3GZLrnPrU56LlGV88BKCW2c1CGzGFUQwTVzXGA==
X-Google-Smtp-Source: APXvYqxwCcb++IDx59O2am9iLB7B24VXmMEw7rKL2+M9MuGAo7hvATTBo/yJCaWV5cXESjbNZkhjl2mMUvmOoAtRWEc=
X-Received: by 2002:a37:be87:: with SMTP id o129mr1647961qkf.254.1569868553147; 
 Mon, 30 Sep 2019 11:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569851517.git.robin.murphy@arm.com>
 <fc6ce3e89ae85c9010b25b9303589be944ba3811.1569851517.git.robin.murphy@arm.com>
In-Reply-To: <fc6ce3e89ae85c9010b25b9303589be944ba3811.1569851517.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 13:35:41 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLDetEBhP71k1TmJN_eCBRRamwLcCwREBWJ+sPs=aA2xw@mail.gmail.com>
Message-ID: <CAL_JsqLDetEBhP71k1TmJN_eCBRRamwLcCwREBWJ+sPs=aA2xw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] iommu/io-pgtable-arm: Correct Mali attributes
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113556_566709_871FF637 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Joerg Roedel <joro@8bytes.org>,
 Steven Price <steven.price@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 9:11 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Whilst Midgard's MEMATTR follows a similar principle to the VMSA MAIR,
> the actual attribute values differ, so although it currently appears to
> work to some degree, we probably shouldn't be using our standard stage 1
> MAIR for that. Instead, generate a reasonable MEMATTR with attribute
> values borrowed from the kbase driver; at this point we'll be overriding
> or ignoring pretty much all of the LPAE config, so just implement these
> Mali details in a dedicated allocator instead of pretending to subclass
> the standard VMSA format.
>
> Fixes: d08d42de6432 ("iommu: io-pgtable: Add ARM Mali midgard MMU page table format")
> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 53 +++++++++++++++++++++++++---------
>  1 file changed, 40 insertions(+), 13 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
