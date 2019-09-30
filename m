Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1A9C260A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bXOX6WxZygYaFR4xZw4mSz+9Y9OvOJL1xH5VuOnMMc=; b=K+xS0j67mhhYL8
	iEHxsPYBHUepmWGQzPg4eWO0NvN/Iq3OmC/GGcCkYUtrJwBaLjjETQUdTqBgnZZuIlRPiyRCoWbEq
	YwPRf1hplHlTTDAYXoX1hKV/LKiMjaXmsxPij9ZPTUSOT0rYgF7CLYxmg3Zdvs42NUEnMK7b1/sAh
	tresYHnoUOoyioFBJHDYmATKCAhcmSpfX6vP0Z+ydcGAji/03eNcZAUQ/mMJuvgNDTUS8pk5N7SAJ
	0ZNeR5eNRQboi3SYng7MEnB2BaOTMdiPgQk5e+S0dQKAlZ4DjwI5VQmC2H/IpBsbAcT5Fv2jhwj13
	YDKD4dUP16SfojVPDMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0YH-0004TP-Ha; Mon, 30 Sep 2019 18:37:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0X4-0002vW-AP
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:36:32 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED011224F0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 18:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569868585;
 bh=Ve9EmbsF4R2T7X2AuYWHttWGyO9wXFWxIJj8J5eaoDE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yzJe07xvPb1X/lMsvcEm9s7vhsjgVOtzM9TWeZHjaB6SLT95m7stqvhjKv5aoL7rF
 Au6KFV0YzVNY/d8PPnLGj3ZffNV6bhGsyW4EAI74hjCyGKOggKvZZhxHwI07PtdV04
 xhw2ONm0tks6XUhVlyIWpOQbiYQE0ucMo3m+y1GI=
Received: by mail-qk1-f171.google.com with SMTP id h126so8702882qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 11:36:24 -0700 (PDT)
X-Gm-Message-State: APjAAAVCnuqJzMpydB5ATyABGeR08Ev8mt4jRi7hsWpIOt3ncFS+/U0B
 ezLoox3dJbaGRj/pQdPhAl2G1lG8/N3fz4lqVA==
X-Google-Smtp-Source: APXvYqy2xChitegAmEHzNRbHSSH0nQKcTnaviLTzqyZbMb41lnr9tCCoVkEfo/b9C0IczxPJCD2HaN7s56mcLD1ZT6M=
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr1643941qkl.152.1569868584102; 
 Mon, 30 Sep 2019 11:36:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569851517.git.robin.murphy@arm.com>
 <20e142e236decbed1b890ef455c5a1ddbdb48b9d.1569851517.git.robin.murphy@arm.com>
In-Reply-To: <20e142e236decbed1b890ef455c5a1ddbdb48b9d.1569851517.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 13:36:13 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL3P4MrisYO3394ONJrpBXafR1GFhZJJYKJQ6t28AQ4kw@mail.gmail.com>
Message-ID: <CAL_JsqL3P4MrisYO3394ONJrpBXafR1GFhZJJYKJQ6t28AQ4kw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] iommu/io-pgtable-arm: Support all Mali
 configurations
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113630_402633_FD598684 
X-CRM114-Status: GOOD (  16.17  )
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
> In principle, Midgard GPUs supporting smaller VA sizes should only
> require 3-level pagetables, since level 0 only resolves bits 48:40 of
> the address. However, the kbase driver does not appear to have any
> notion of a variable start level, and empirically T720 and T820 rapidly
> blow up with translation faults unless given a full 4-level table,
> despite only supporting a 33-bit VA size.
>
> The 'real' IAS value is still valuable in terms of validating addresses
> on map/unmap, so tweak the allocator to allow smaller values while still
> forcing the resultant tables to the full 4 levels. As far as I can test,
> this should make all known Midgard variants happy.
>
> Fixes: d08d42de6432 ("iommu: io-pgtable: Add ARM Mali midgard MMU page table format")
> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
