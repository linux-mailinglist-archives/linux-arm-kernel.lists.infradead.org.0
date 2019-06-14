Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CAC4557C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGzRwjw0Xux8KhD2bIxuelfMT/MOkig8RWjpYGAKgXU=; b=hZHy0dcrp22So8
	/GgmOYsMHudWCkoh/LOgEebqrx23q0fKKvh4+IsW6gT8vtBP3H6Qs2hx2ZN5/18Qpgr5+uPWhvmwr
	wgGmEsr2rLX2rtT8VPNz0195d7Uv8qmD5ZP0EpHpag4P9Woo5ApJibriAFkeZDb+rG5uoSe8pYjRQ
	Ir6XZc7txRXFFuZW+YvNopCp/b1mwKJfJmL8sxDzPU4Kq0Efsw5AaGbOoGNLUWo1j3SynLV8F582Q
	17Ce2h02Vgobz0bOZjex7K2Wl/47VlEkqd6USGsFsfOdzwdwW/El46HC9kVNat/lj+uaAMqHLdLA/
	1nxUHUsjHxHx6M6lPvIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgOd-0000zO-V0; Fri, 14 Jun 2019 07:13:12 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hbgOE-0000yO-1z; Fri, 14 Jun 2019 07:12:46 +0000
Date: Fri, 14 Jun 2019 00:12:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 01/10] iommu/exynos: convert to SPDX license tags
Message-ID: <20190614071245.GA2950@infradead.org>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 joro@8bytes.org, will.deacon@arm.com, agross@kernel.org, krzk@kernel.org,
 jonathanh@nvidia.com, david.brown@linaro.org, robdclark@gmail.com,
 kgene@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thomas Gleixner is doing automated SPDX conversion that directly
got to Linux at the moment.  I'd avoid doing more manual ones for
now as it will just create conflicts.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
