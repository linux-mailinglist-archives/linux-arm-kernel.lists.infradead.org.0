Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA23B84553
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 09:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/P9Yv/mXbFsifJYzwyyspg8Cb15yck7f8AmfqzDvl3U=; b=sPbEg9rL6wQWOn
	9bHtO8NA5I+OCqyPVK90Z5H2CgowMGJfwnqNNjtkhi4WtMAH8P81xXFOqwI34J9L0Q1V1kShieO0X
	jcYK0F4qfHsQnkmkwF2Arb78aiXU3o0c4Sj3iz8DuJio4GLXX/u6+C9WIcORyl1yLXNhUQwUMNCXr
	wsvMpIPuqSzHic1JEGlGRIQ9VrtykQZPr5v4HSBVmCMiRKR8Q2+HBM/VIu1AuGw+VcuHoNPTEbBuK
	jFGHPmyVb/vO4ClzZABDN9pGxatA43VZovQ9LjnB3wMn440IzHbEohKPT2WqI9Vi/dYRPULap7gz8
	ZuzGNj2cWxAQvObtGqLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvG4D-0007yO-AD; Wed, 07 Aug 2019 07:09:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvG3m-0007yE-Qu; Wed, 07 Aug 2019 07:08:34 +0000
Date: Wed, 7 Aug 2019 00:08:34 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tao Zhou <tao.zhou1@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190807070834.GA24792@infradead.org>
References: <20190807025640.682-1-tao.zhou1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807025640.682-1-tao.zhou1@amd.com>
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
Cc: linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, broonie@kernel.org, linux-next@vger.kernel.org,
 alexander.deucher@amd.com, akpm@linux-foundation.org, christian.koenig@amd.com,
 dennis.li@amd.com, hawking.zhang@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:56:40AM +0800, Tao Zhou wrote:
> readq/writeq are not supported on all architectures

NAK.  You must not use atomic_* on __iomem (MMIO) memory.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
