Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2390E109
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZfyOQEeSDqZaYdU1cj52xbJyaH0NtORVKRatjN/FZU=; b=NTh61pst4nhB5v
	nooxYDmnq5ccWQpiyH6YZEqGunRck5GX+bRidw3cVRNByPODE+Jf2G8LzAB0DclaGWQZKJaDp63M3
	BkMLhaD0ZGA81y8/9ALA1BmUHcFRq+DbBTlf7avPBVrSzysjzr0jpnH1PBojWfGHV2WMLVerZVLYt
	xOCD8bvp3dFCEXi3qwVt7e42dLlx8Zf/vcp2ZWPvxzyIRdz/zw6pSF6AjyFmyv58UWnDuCnKYMloj
	AU9U4VuVLp0xvn26p5711uLmqM4Mk5I6RhK4YIuwZCyOIaYIqbFRy3QYNxOqBh+m1To1h3YYBsRm2
	qUGdo/yk6gd1IElgb7QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL47Y-0000VQ-IA; Mon, 29 Apr 2019 11:06:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL47S-0000V2-1d
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:06:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02F9F80D;
 Mon, 29 Apr 2019 04:06:43 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47FA03F5AF;
 Mon, 29 Apr 2019 04:06:41 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:06:36 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 2/2] arm64: cacheinfo: Update cache_line_size detected
 from PPTT
Message-ID: <20190429110453.GA23929@e107155-lin>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
 <8d9b4fcd-23be-be06-6afa-8cabb1e889c2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d9b4fcd-23be-be06-6afa-8cabb1e889c2@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_040646_089671_A670EA1F 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 Will Deacon <will.deacon@arm.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 qiuzhenfa@hisilicon.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 12:18:33PM -0500, Jeremy Linton wrote:
> Hi,
>
> On 4/25/19 8:40 PM, Shaokun Zhang wrote:
> > cache_line_size is derived from CTR_EL0.CWG field and is called mostly
> > for I/O device drivers. For HiSilicon certain plantform, like the
>
> But there are core users too? Thinkgs like blk-mq, the trace ring buffer,
> iommu/iova, slub/slab. And a quick look seems to indicate a number of those
> users are going to be checking the cache line size before the cachinfo is
> populated (it happens fairly late via device_initcall() and a hp notifier).
> Is it going to be a problem if the value changes?
>

Yes, I agree with that and share the same concern. If the users of these
can't get updated with the new value once cacheinfo is populated, then
we need to figure to solve this differently(I mean still from PPTT or
firmware info as we don't have anything more reliable).

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
