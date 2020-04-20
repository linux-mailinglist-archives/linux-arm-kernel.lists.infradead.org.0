Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F21B1140
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gE8NmbquJ248Tjv6u8PhpPLKgMujte9bhlutGW5CWyA=; b=LAf/Lh+HPUzuzOLn7GGBOPzbB
	665HQpI3ObS+UzfjrWGI3pcghnOPgYcJCv2fOnHq+VUGRAY7oPjxHUESExZdKRJX6uXZ9WLVmQcTV
	2m8LPk5KHFECSYhxUAqYH1qttfUNCIVaob4LaNuypKzMmwdE9Ewet1+Yq7W6RNzymNA6dodszoMsP
	RwWc1A06yc6dE9o+T8sAbr74vu227dlSQVnoiSS49fKkrRDTFF/wptHKgfZ79J51E7DR0hBaQXsOR
	DjLk9Fv9gikKarqf5PqbjRWxFpIqmdAP1UiAPuLWEc/RDyxn3awZng108FZ6ASr3kUnDx3RzP1HcL
	oyA/DJUkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZ6F-0000W8-Pd; Mon, 20 Apr 2020 16:16:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZ67-0000Ro-BI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:16:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6440C31B;
 Mon, 20 Apr 2020 09:16:38 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C420E3F73D;
 Mon, 20 Apr 2020 09:16:36 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] iommu: Add Allwinner H6 IOMMU driver
To: Maxime Ripard <maxime@cerno.tech>, Joerg Roedel <joro@8bytes.org>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
 <6864f0f28825bb7a2ec1c0d811a4aacdecf5f945.1582222496.git-series.maxime@cerno.tech>
 <20200302153606.GB6540@8bytes.org>
 <20200401114710.doioefzmjhte7jwu@gilmour.lan>
 <20200408140649.GI3103@8bytes.org>
 <20200420143958.rdn3j27tu3umtkrh@gilmour.lan>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <af745738-9e0f-40b6-9a20-19c233a7e52a@arm.com>
Date: Mon, 20 Apr 2020 17:16:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420143958.rdn3j27tu3umtkrh@gilmour.lan>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_091639_432908_AEE5EC64 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-20 3:39 pm, Maxime Ripard wrote:
> Hi,
> 
> On Wed, Apr 08, 2020 at 04:06:49PM +0200, Joerg Roedel wrote:
>> On Wed, Apr 01, 2020 at 01:47:10PM +0200, Maxime Ripard wrote:
>>> As far as I understand it, the page table can be accessed concurrently
>>> since the framework doesn't seem to provide any serialization /
>>> locking, shouldn't we have some locks to prevent concurrent access?
>>
>> The dma-iommu code makes sure that there are no concurrent accesses to
>> the same address-range of the page-table, but there can (and will) be
>> concurrent accesses to the same page-table, just for different parts of
>> the address space.
>>
>> Making this lock-less usually involves updating non-leaf page-table
>> entries using atomic compare-exchange instructions.
> 
> That makes sense, thanks!
> 
> I'm not sure what I should compare with though, do you want to compare with 0 to
> check if there's already a page table assigned to that DTE? If so, then we
> should also allocate the possible page table before the fact so that we have
> something to swap with, and deallocate it if we already had one?

Indeed, for an example see arm_v7s_install_table() and how 
__arm_v7s_map() calls it. The LPAE version in io-pgtable-arm.c does the 
same too, but with some extra software-bit handshaking to track the 
cache maintenance state as an optimisation, which you can probably do 
without trying to make sense of ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
