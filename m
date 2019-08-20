Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECDF96209
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C2bAf18EJ0qgfF/Wg6wN/KOnRrw4rxt63GZvMBAOj4A=; b=ZdNj5iY7OpwUJXrpz4GYbcfaB
	CAWe0eEGGXmGn/AqaHQZnl9S1/3bGNythQKrCvlsfvttL8L2SC5GxtNuuhKlnFXySc7RxotwdKJum
	+ZB71CYmdQAEQd3nvVLRrPykwE/6Z6r4Y2zGMoypdY8blqJchIIJdl82jB0Vn7m6j9bAeOsD2JTbO
	aeUVG+hrEd1t25ivx/aVkwvjxvJvL9snmrlPiknBkUnIN3qhfvPVRROMsfb/JLO0UM7FgfSsTuZb9
	AbmQKDlV9sYLGSlPLIu1oQaXS3dXndLYip3zSL7tUl4+fPlLp35anFK7pumQo2xXD2w1frMPlyn+P
	a3ZuzyeoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04qF-0001vS-46; Tue, 20 Aug 2019 14:10:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i04pv-0001tR-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:10:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AF7B28;
 Tue, 20 Aug 2019 07:10:10 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 92D003F246;
 Tue, 20 Aug 2019 07:10:08 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
References: <20190404145957.GA25912@fuggles.cambridge.arm.com>
 <4754bcf1-6423-f1fe-64d4-da4a35b164ad@free.fr>
 <20190424115231.GA14829@fuggles.cambridge.arm.com>
 <20190502105912.GA943@ulmo>
 <20190502110821.GD30966@fuggles.cambridge.arm.com>
 <20190502124525.GA3579@ulmo> <94cf6d56-5dcb-051a-06da-5edfacde1655@arm.com>
 <20190819112856.GA28102@ulmo>
 <20190819120917.hysyc6l3ckkwcx25@willie-the-truck>
 <20190819133327.GA23089@ulmo>
 <20190819144827.6h4hm2gytogwepi7@willie-the-truck>
 <ada29112-87c1-e223-aa66-b7871e20a49a@free.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <88c31b09-4dea-a481-1775-cd4bebe13ca5@arm.com>
Date: Tue, 20 Aug 2019 15:10:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ada29112-87c1-e223-aa66-b7871e20a49a@free.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_071011_684218_F79CBF1F 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Douglas Anderson <dianders@chromium.org>, Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 14:55, Marc Gonzalez wrote:
> On 19/08/2019 16:48, Will Deacon wrote:
> 
>> If we can get by with extending the iommu-map entries for the masters,
>> that would certainly be the neatest imo. Sounds like it's worth a quick
>> hack, if nothing else.
> 
> Tangent: I've been meaning to ask about some iommu-map shenanigan.
> 
> My kernel reports:
> 
> 	OF: /soc/pci@1c00000: no iommu-map translation for rid 0x0 on (null)
> 
> Errr... "Is that a problem, doctor?"
> 
> It's a pr_info() message from of_map_rid() in drivers/of/base.c
> I note that it used to be an error before fb709b5e1cca5

It means your host bridge doesn't have a stream ID. Depending on how the 
root complex is wired up to the SMMU that may or may not be technically 
accurate, but either way if your host bridge ever starts doing DMA for 
itself then you should probably be more concerned with tracking down PCI 
SIG's exorcism spec.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
