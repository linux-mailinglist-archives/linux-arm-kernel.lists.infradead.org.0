Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094A2961AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pt8Y47tDxYyKoanGSWXsKp75soeY1rd8G3vSG7G3jw=; b=r5ERpeUiiEVO3+
	sK3ZlaqKn1uvdv95e+8I5T07hZKJHPOJEe6AyPYNuC0AMOiMSVghLAkgKg1vtGSKBxt+PEMEGDBQ7
	l4gH8C7nJKg31g/S6OxPxINM49V3pS+BNsdztnMeKx08eFPIj9XU++6KjrycjRIecljeqgVrGOaD6
	AYPrUQRKo+AaWHQj3hF9PJSEY/IdevpbhHRq7e5NrZneeX20jev5R8/k1u646oFkT4qx7Dc1OZlxg
	XO6s2Nak+DtIL/qAF9nzG1wnMb+vxG3mpVIH+B6XOQdPgZ5z6gGHHWePwuEEbQIZv0tROEBJiN3bO
	1FXSRjW5c95BLcuH8Q1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04bk-0002EW-CL; Tue, 20 Aug 2019 13:55:32 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04bX-0002E7-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:55:20 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id D45DE21491;
 Tue, 20 Aug 2019 15:55:11 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 3AABD213EC;
 Tue, 20 Aug 2019 15:55:11 +0200 (CEST)
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Will Deacon <will@kernel.org>,
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
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <ada29112-87c1-e223-aa66-b7871e20a49a@free.fr>
Date: Tue, 20 Aug 2019 15:55:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819144827.6h4hm2gytogwepi7@willie-the-truck>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Aug 20 15:55:11 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_065519_401942_621413E0 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Thierry Reding <thierry.reding@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 16:48, Will Deacon wrote:

> If we can get by with extending the iommu-map entries for the masters,
> that would certainly be the neatest imo. Sounds like it's worth a quick
> hack, if nothing else.

Tangent: I've been meaning to ask about some iommu-map shenanigan.

My kernel reports:

	OF: /soc/pci@1c00000: no iommu-map translation for rid 0x0 on (null)

Errr... "Is that a problem, doctor?"

It's a pr_info() message from of_map_rid() in drivers/of/base.c
I note that it used to be an error before fb709b5e1cca5

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
