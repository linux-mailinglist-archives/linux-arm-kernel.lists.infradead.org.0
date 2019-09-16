Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFBBB3668
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 10:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WmY5vRTS6ynX+1D0p6qdqfSJUPIK5xyg5/vOLoMEGwo=; b=fAXwJVBcrt7lJ2L0ZKpCXjiTUJ
	DtBGXlwqIkhqltaXhgz1gwD90P78hyKIl2NAhsdxtDfQNucny6ANn04EZOUqKejuc8FP+ZWDCUrFj
	erSwHrfO0/qZHf2/g1ZZSlUUgwIzFHrlxTHetBglVJBrJh70zZr0qSLwzVeQM9Ve+CvXZtp4R0R3U
	Paq3i2khXnvohzQsdZthLsBpW365N60SP3CjhKpcsJB+3VGNbKmuXJ9W195UXvwVWjNWiTyRUhsGG
	zINmD78Jmq1ZJfFVPzxLyJ3X0tmUhaLF/VuXTQqvdIeq5fp+mWqx5bmkiR3A+m+g6t8Ohn4KIQzhE
	tyZPOJzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9mPW-0000BK-KD; Mon, 16 Sep 2019 08:31:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9mP9-000080-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 08:30:41 +0000
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97612206A4;
 Mon, 16 Sep 2019 08:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568622638;
 bh=XysEUYZomF58vi9hp/AbkGFs6hicG76qTwf0LVDpBGM=;
 h=Date:From:To:To:To:Cc:Cc:Subject:In-Reply-To:References:From;
 b=PMtjLVMXSpuUJTcpx68aGmb492UgQ1VmuaWukM/4l9R96e9HXXr9yC5+jTw7IqqHh
 FxiE7w5pCR7IOT+ZPb2FWZuMcCi/wykHpjkIufGcJFYlpQb46X0Ef/BHVF5jXZx/yD
 6/RwnIlSE/GjkNYJfuWCawojk2k8eLrUWlNuLXQ0=
Date: Mon, 16 Sep 2019 08:30:37 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au,
Subject: Re: [PATCH] crypto: sun4i-ss: erase key after use
In-Reply-To: <20190915183536.3835-1-clabbe.montjoie@gmail.com>
References: <20190915183536.3835-1-clabbe.montjoie@gmail.com>
Message-Id: <20190916083038.97612206A4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_013040_132456_230B3A2E 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: , stable@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 6298e948215f crypto: sunxi-ss - Add Allwinner Security System crypto accelerator.

The bot has tested the following trees: v5.2.14, v4.19.72, v4.14.143, v4.9.192, v4.4.192.

v5.2.14: Build OK!
v4.19.72: Failed to apply! Possible dependencies:
    0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")

v4.14.143: Failed to apply! Possible dependencies:
    0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
    249c8d98ea33 ("crypto: crypto4xx - move and refactor dynamic_contents helpers")
    2c95e6d97892 ("crypto: skcipher - remove useless setting of type flags")
    333eb3edda38 ("crypto: crypto4xx - fix type mismatch compiler error")
    40e3b847bff7 ("crypto: crypto4xx - replace crypto4xx_dev's scatter_buffer_size with constant")
    453e3090b9c3 ("crypto: crypto4xx - fix dynamic_sa_ctl's sa_contents declaration")
    4865b122d4af ("crypto: crypto4xx - use the correct LE32 format for IV and key defs")
    5c727f92ea5e ("crypto: crypto4xx - refactor crypto4xx_copy_pkt_to_dst()")
    81065f66dd99 ("crypto: crypto4xx - remove unused definitions and write-only variables")
    886c251fd4ca ("crypto: crypto4xx - remove extern statement before function declaration")
    8ef8d195430c ("crypto: crypto4xx - add backlog queue support")
    9e0a0b3a192a ("crypto: crypto4xx - pointer arithmetic overhaul")
    a0aae821ba3d ("crypto: crypto4xx - prepare for AEAD support")
    a8d79d7bfb14 ("crypto: crypto4xx - performance optimizations")
    cd4dcd6da7a2 ("crypto: crypto4xx - overhaul crypto4xx_build_pd()")
    ce05ffe10457 ("crypto: crypto4xx - convert to skcipher")
    f2a13e7cba9e ("crypto: crypto4xx - enable AES RFC3686, ECB, CFB and OFB offloads")

v4.9.192: Failed to apply! Possible dependencies:
    0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
    249c8d98ea33 ("crypto: crypto4xx - move and refactor dynamic_contents helpers")
    2c95e6d97892 ("crypto: skcipher - remove useless setting of type flags")
    317cbacf720c ("crypto: sun4i-ss - move from ablkcipher to skcipher API")
    333eb3edda38 ("crypto: crypto4xx - fix type mismatch compiler error")
    40e3b847bff7 ("crypto: crypto4xx - replace crypto4xx_dev's scatter_buffer_size with constant")
    453e3090b9c3 ("crypto: crypto4xx - fix dynamic_sa_ctl's sa_contents declaration")
    4865b122d4af ("crypto: crypto4xx - use the correct LE32 format for IV and key defs")
    5c727f92ea5e ("crypto: crypto4xx - refactor crypto4xx_copy_pkt_to_dst()")
    81065f66dd99 ("crypto: crypto4xx - remove unused definitions and write-only variables")
    886c251fd4ca ("crypto: crypto4xx - remove extern statement before function declaration")
    8ef8d195430c ("crypto: crypto4xx - add backlog queue support")
    9e0a0b3a192a ("crypto: crypto4xx - pointer arithmetic overhaul")
    a0aae821ba3d ("crypto: crypto4xx - prepare for AEAD support")
    a595e60a70c0 ("crypto: sun4i-ss - remove conditional checks against 0")
    a8d79d7bfb14 ("crypto: crypto4xx - performance optimizations")
    cd4dcd6da7a2 ("crypto: crypto4xx - overhaul crypto4xx_build_pd()")
    ce05ffe10457 ("crypto: crypto4xx - convert to skcipher")
    f2a13e7cba9e ("crypto: crypto4xx - enable AES RFC3686, ECB, CFB and OFB offloads")

v4.4.192: Failed to apply! Possible dependencies:
    0ae1f46c55f8 ("crypto: sun4i-ss - fallback when length is not multiple of blocksize")
    249c8d98ea33 ("crypto: crypto4xx - move and refactor dynamic_contents helpers")
    2c95e6d97892 ("crypto: skcipher - remove useless setting of type flags")
    317cbacf720c ("crypto: sun4i-ss - move from ablkcipher to skcipher API")
    333eb3edda38 ("crypto: crypto4xx - fix type mismatch compiler error")
    40e3b847bff7 ("crypto: crypto4xx - replace crypto4xx_dev's scatter_buffer_size with constant")
    453e3090b9c3 ("crypto: crypto4xx - fix dynamic_sa_ctl's sa_contents declaration")
    477d9b2e591b ("crypto: sun4i-ss - unify update/final function")
    4865b122d4af ("crypto: crypto4xx - use the correct LE32 format for IV and key defs")
    5343e674f32f ("crypto4xx: integrate ppc4xx-rng into crypto4xx")
    81065f66dd99 ("crypto: crypto4xx - remove unused definitions and write-only variables")
    886c251fd4ca ("crypto: crypto4xx - remove extern statement before function declaration")
    9e0a0b3a192a ("crypto: crypto4xx - pointer arithmetic overhaul")
    a0aae821ba3d ("crypto: crypto4xx - prepare for AEAD support")
    a595e60a70c0 ("crypto: sun4i-ss - remove conditional checks against 0")
    a8d79d7bfb14 ("crypto: crypto4xx - performance optimizations")
    b6ff2fdd429c ("crypto: sun4i-ss - fix indentation of two crypto alg")
    bfb2892018ca ("crypto: sunxi - don't print confusing data")
    cd4dcd6da7a2 ("crypto: crypto4xx - overhaul crypto4xx_build_pd()")
    ce05ffe10457 ("crypto: crypto4xx - convert to skcipher")
    ea1a67414318 ("crypto: sun4i-ss - fix a few signed warning")
    f2a13e7cba9e ("crypto: crypto4xx - enable AES RFC3686, ECB, CFB and OFB offloads")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
