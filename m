Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E50103634
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 09:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dstGjxsES/AkrwOAHEOzY+e0iSUQuWbOWjTqVTB+rAg=; b=aI3/t9RnZ94xbK
	qlzPRhtNTdDPAQj7N/U/cBh2VXdmZTEMMqWs9X4WltYyPmyZkBnOis2DG5S6YoiuRkpPpbxcGfOUb
	tBY0OKO0RTGu/EgXb9amjbTErQTfBlUTJcLiqKC8BUjhW/ca4YIJJY44+uIyUHkS6ewnCBGBh0QD0
	np8/iOLOn9GOT7ehLgTJ2Lwoa7P7eA1LewmUB3CPq3B/weRcJLHqYYiJ9S9x/kB6jPcfnO16ZKi9c
	Uv05WtDlPios8FW/g0EAOM+zhwv1OSDu9immyEonzgvKf9dGX3lAxe/OoF1MeOi4zwgy2ay8DdZyp
	QufXL0EiEcSKLc9PJ3dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLeZ-0002k0-4O; Wed, 20 Nov 2019 08:47:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLeR-0002jc-Fb
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 08:47:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5348B2235D;
 Wed, 20 Nov 2019 08:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574239670;
 bh=HT77a05SGzBXzjNW3SSpNiDG5j5REw2H7dE6GC1vlqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ttwn80sr1LeO/JKisG3eqvjFBlcAPyy3jeFEd5ZKd5rahRFdeqK8H0MWc75ptXkd4
 eGoAmSpbSK8i3/9CA52Wj/QgozmiPb3I0s/D8vS3t8HWxsAVgIi2E+bduTOZNwqYep
 IRUywIci9tg+K9eZ82tVjNNcVNlXOwgDCMz10lFI=
Date: Wed, 20 Nov 2019 08:47:44 +0000
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
Message-ID: <20191120084743.GA20119@willie-the-truck>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck>
 <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_004751_547431_20AA292D 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, wanghuiqiang <wanghuiqiang@huawei.com>,
 Zhenyu Ye <yezhenyu2@huawei.com>, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 Linuxarm <linuxarm@huawei.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 arm@kernel.org, tangnianyao@huawei.com, Hanjun Guo <guohanjun@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 10:03:34AM +0000, Marc Zyngier wrote:
> On 2019-11-19 01:13, Hanjun Guo wrote:
> > I'm thinking of how to add a firmware description for it, how about
> > this:
> > 
> > Adding a system level flag to indicate the supporting of TIBi by range,
> > which means adding a binding name for example "tlbi-by-range" at system
> > level in the dts file, or a tlbi by range flag in ACPI FADT table, then
> > we use the ID register per-cpu and the system level flag as
> > 
> > if (cpus_have_const_cap(ARM64_HAS_TLBI_BY_RANGE) &&
> > system_level_tlbi_by_range)
> > 	flush_tlb_by_range()
> > else
> > 	flush_tlb_range()
> > 
> > And this seems work for heterogeneous system (olny parts of the CPU
> > support
> > TLBi by range) as well, correct me if anything wrong.
> 
> It could work, but it needs to come with the strongest guarantees that
> all the DVM agents in the system understand this type of invalidation,
> specially as we move into the SVM territory. It may also need to cope
> with non-compliant agents being hot-plugged, or at least discovered late.
> 
> I also wonder if the ARMv8.4-TTL extension (which I have patches for in
> the nested virt series) requires the same kind of treatment (after all,
> it has an implicit range based on the base granule size and level).

It would be good to get confirmation from Arm about this, since the TTL
extension doesn't have the dangerous 'Note' that the range ops do and it
wouldn't be difficult to ignore those bits in hardware where the system
doesn't support the hint for all agents (in comparison to upgrading range
ops to ALL, which may be unpalatable).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
