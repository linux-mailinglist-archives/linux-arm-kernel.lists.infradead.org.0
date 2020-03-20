Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF71518C7FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 08:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b8Xn/oECRP6XSus04IHZ8UFG262KDzPM+yOA1SaADZ0=; b=QKajf/WMseNfgsqXjgfSVjAsV
	4BKKMF03O6n77rw+PkF3dUjvtQBz4QHmlxeMvCvVyNeheBEttnpVqJJbP+Wu4VANGBMrQjhhKk+eT
	h7onS6nOAfF3/X1pBEGvdaVjBmFewnDg+hCDz7OuNayYICfjVNcwJdFMompqSIkGJkWir9OJUq1w6
	PAE5b15S+4J7rRCs8dyVjyNAizqnySO6LFqP+Tomk+nl1ZNxxlX4WuLIwu995dXwDa8O3hO/D5ahX
	18QcYFuAmPFruOzRpBBkIzKeK+4Mtamjera3cTw5GD2StQ4VETxFqmmBSRoerYzVpVnTFc62tF7Fo
	HDXQvGQeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBk4-0002al-3S; Fri, 20 Mar 2020 07:06:52 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBjr-0002Yv-9V; Fri, 20 Mar 2020 07:06:40 +0000
IronPort-SDR: EDxBMBWmHRY90wGkXvONgoti1/svRqNtzJfu1ML6vtorIQ8kpBpIAKE2zH3pvMVuzMuPuZPz5R
 dTdma0In0dog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 00:06:37 -0700
IronPort-SDR: qQTFLsdf6C7DljdvIuIQN6Y1afZcxjIFlDqm5oREhf3SQKLv3Q8zMsPRwvvsQ2xfMB1iJdT5ye
 7yUiw7Egm94Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,283,1580803200"; d="scan'208";a="356328149"
Received: from sxu27-mobl2.ccr.corp.intel.com (HELO [10.254.214.109])
 ([10.254.214.109])
 by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2020 00:06:26 -0700
Subject: Re: [PATCH 3/8] iommu/vt-d: Remove IOVA handling code from
 non-dma_ops path
To: Tom Murphy <murphyt7@tcd.ie>, iommu@lists.linux-foundation.org
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <20191221150402.13868-4-murphyt7@tcd.ie>
 <CALQxJuuue2MCF+xAAAcWCW=301HHZ9yWBmYV-K-ubCxO4s5eqQ@mail.gmail.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <46bf21e2-bb3e-1c1e-8dae-2c5bd8c5274f@linux.intel.com>
Date: Fri, 20 Mar 2020 15:06:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CALQxJuuue2MCF+xAAAcWCW=301HHZ9yWBmYV-K-ubCxO4s5eqQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_000639_372158_6C283657 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/3/20 14:30, Tom Murphy wrote:
> Could we merge patch 1-3 from this series? it just cleans up weird
> code and merging these patches will cover some of the work needed to
> move the intel iommu driver to the dma-iommu api in the future.

Can you please take a look at this patch series?

https://lkml.org/lkml/2020/3/13/1162

It probably makes this series easier.

Best regards,
baolu

> 
> On Sat, 21 Dec 2019 at 07:04, Tom Murphy<murphyt7@tcd.ie>  wrote:
>> Remove all IOVA handling code from the non-dma_ops path in the intel
>> iommu driver.
>>
>> There's no need for the non-dma_ops path to keep track of IOVAs. The
>> whole point of the non-dma_ops path is that it allows the IOVAs to be
>> handled separately. The IOVA handling code removed in this patch is
>> pointless.
>>
>> Signed-off-by: Tom Murphy<murphyt7@tcd.ie>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
