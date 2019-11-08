Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB55FF43DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ysT/1z0hnAxO/1GgQVH07yXCjhNnlOEhV/dT5kl6AA=; b=BSZ0UdTqCmsreb
	MZYR0ylrvplVBnTSN15XxSl4gk6/7vpke2hFlXa6N+6fdhPf9O8PODsnwI8V/bJZ6hNBqfX9HLkS/
	jjDtZIaT8DKl++cg9XunNMkJ9cyp+eto+KACm3SeeCBarqHwLNjJ9lppO18To2j2HVmNbFaCypezU
	863WwdTUjU0B95PHmkxu40KhxZT+HuEmLVnrMREDzg/0wPCnEl12rB8XlaI1fcsa/gPEKMQBzdaFt
	OIr/y2iF6HpkR9jjIk3uqt11VfaUe8j54y8jr0wAFbyTLAd16czs4OQaRQS6Q7u+co3FH+0P5R3OC
	Np8yU5LxJ4c6NVra4G9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0tv-0002Mi-NZ; Fri, 08 Nov 2019 09:49:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0tl-0002M7-R7
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:49:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BFAE21D7B;
 Fri,  8 Nov 2019 09:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573206585;
 bh=baKhtly/Ae2n0YsqNF3gwtTyP2+c8dVd/rHtfd1Gpto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KZkx0L0j/6jcIBZVYYAtvwKQ6YWfWDKf1fTMbHrulL0JJgN7i4Nkv+iSewFWjd3Yd
 sRY8XojgJAP+Q8AoZiUPbD8V/aN1NpAHTRg7lTu6q1uyNJyV+EMwiBKYxcV3HazsuB
 y1/vo8fNnRC8r4ccapDtOCSkdQiTBPKqXvVfw/BQ=
Date: Fri, 8 Nov 2019 09:49:40 +0000
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191108094940.GA18838@willie-the-truck>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
 <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
 <20191107121151.GB4948@lakrids.cambridge.arm.com>
 <0ae3e891-87aa-a9ed-05aa-ef96960615b9@huawei.com>
 <20191107130957.GA12929@willie-the-truck>
 <7b588bde-f835-4ead-dff9-1847ea111697@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b588bde-f835-4ead-dff9-1847ea111697@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014945_895643_30AB5E8A 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 09:25:29AM +0800, Shaokun Zhang wrote:
> On 2019/11/7 21:09, Will Deacon wrote:
> > I'll queue Shaokun's patch for now, since I want to get this to Catalin
> 
> Thanks Will.
> 
> > tomorrow for 5.5 after spending the night in -next. We can always simplify
> > the logic later if Mark's patch ends up working out.
> 
> I have checked that it has been in your for-next/perf branch. I will simplify
> it later as Mark's suggestion.
> Or if it is permitted, I can post v2 and simplify this.

Please just send a patch on top, since I don't want to rebase that branch
now.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
