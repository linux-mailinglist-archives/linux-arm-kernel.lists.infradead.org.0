Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E94E128BF5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 00:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt9IV2/yGfuYMZ108ZSDM+u2GitF2IMzBgzVcsKtKlI=; b=eV+6yJc3dfQ+Vn
	1TAkUMvdalrFrjVm8eNeK6WGPZBQlx+985ClC3lHqfwG/Cm2mJ16PfnU9htQdTh9eTU9YgjtinrSt
	ow+oKTBW1QBj+AHhX56RF7LEwjMlQyRgoKssHaPF8YTb8MKrXnWWZTPkMQ6e3uL8EgwylX+Hfp5Ur
	/vx6MyZnmVAs9TIIAtFfIZS/s6RpOIdhn140ntyo+Ddp4Rg2d8pE3jgdCrD1ZLy6+HIVWY1j5Itsn
	zWAi9Im434h+4hyEySQBDgA79+/yMriYIVhL2geOf+bAccGJNGqq32TGhcKoH2gi6ZO4I8lJyG1i7
	DLkNrJie07lsxO/Kxshw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iioST-0007R3-TU; Sat, 21 Dec 2019 23:46:53 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iioSJ-0007QF-MZ; Sat, 21 Dec 2019 23:46:45 +0000
Received: by mail-qv1-xf42.google.com with SMTP id p2so5055134qvo.10;
 Sat, 21 Dec 2019 15:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DZy1sByRbPp81Fc4unsIfUDkM1speXohHbJEFLa+79Y=;
 b=K2F08+kbBOHpEb5GI2snEkwsgZNjaPXWMKDftdpnSDrNjdoFsaU7mJy1E8X+UN6pTF
 CqMGQGTCVzkASTJTbCKGzwmcE+xGW9X9DoBShnHYBHrUjwA2y0thgfSaIDeXsAsxh80K
 Lzsw/9ErY21ZUOic82HoE2snRWWJy1wLWDPwW7IWmh5yvrdgv4rUVX4xVE004OheL+PI
 /8AUmTvOKwGIU5Ku/sIm9m5U0rOim/SPjYy3gzVxef0QWGwTj1JJt9SDEH83TWoChVOq
 wLkEyhYrjgWcWjYym7iQAuL3qcxgGsX3JQNmgv7pU5p9IHVMooy6My1cg5SbonFnCmxX
 Fqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=DZy1sByRbPp81Fc4unsIfUDkM1speXohHbJEFLa+79Y=;
 b=dLr7ME3IHq3n/fTPMPlxwr5ZtqXX/r5S4M4NCv6iVkjedBam9ZOEIrCZNn9bWuJ03u
 eOTAdeKUlqH5yW+Z0C+s1l0SCRYGzlrkc8/X3KTStOUvaIrVlVvOz930g4QbykzESOqG
 /+HRWZ1T/L8xQWAD3ehOwgme8CjZpSQ2yA40W8RXaFng27sroj18zOHm/EbT3iiUf5tA
 7Tclu/X22H0v+ZiRKNW/eDec3zTeGzjhGHd25p6ZNKfy2tTXjCMvFZxOWWaSPzpVTSap
 MCouTOhGPNMA5zzatU74z8bFSRHNFUqoIc2TspWTPl0Gm7ssceo9G9HMrCZXhtVr1H2S
 JA6Q==
X-Gm-Message-State: APjAAAUe6QPm3SW+4cPGW2Csf+QPUAR5ju4DP0Za1TxM1qPoTfj8+YUV
 z7+5wMNa1tysqeSV9cAIk8M=
X-Google-Smtp-Source: APXvYqxZv5pvU+COa+Z57bqd7TVlj3AKMVnWrlNSwtaonBLRwl6oAVA7CbZzWjXYXul1zP2Wc7+ZAQ==
X-Received: by 2002:a05:6214:14b3:: with SMTP id
 bo19mr18216129qvb.93.1576972000657; 
 Sat, 21 Dec 2019 15:46:40 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id b7sm4323472qkh.106.2019.12.21.15.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 15:46:40 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Sat, 21 Dec 2019 18:46:37 -0500
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH 1/8] iommu/vt-d: clean up 32bit si_domain assignment
Message-ID: <20191221234635.GA99623@rani.riverdale.lan>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <20191221150402.13868-2-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191221150402.13868-2-murphyt7@tcd.ie>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_154643_763109_2D4BEAF4 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (niveditas98[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (niveditas98[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 03:03:53PM +0000, Tom Murphy wrote:
> In the intel iommu driver devices which only support 32bit DMA can't be
> direct mapped. The implementation of this is weird. Currently we assign
> it a direct mapped domain and then remove the domain later and replace
> it with a domain of type IOMMU_DOMAIN_IDENTITY. We should just assign it
> a domain of type IOMMU_DOMAIN_IDENTITY from the begging rather than
> needlessly swapping domains.
> 
> Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> ---
>  drivers/iommu/intel-iommu.c | 88 +++++++++++++------------------------
>  1 file changed, 31 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index 0c8d81f56a30..c1ea66467918 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -5640,7 +5609,12 @@ static int intel_iommu_add_device(struct device *dev)
>  	domain = iommu_get_domain_for_dev(dev);
>  	dmar_domain = to_dmar_domain(domain);
>  	if (domain->type == IOMMU_DOMAIN_DMA) {
> -		if (device_def_domain_type(dev) == IOMMU_DOMAIN_IDENTITY) {
> +		/*
> +		 * We check dma_mask >= dma_get_required_mask(dev) because
> +		 * 32 bit DMA falls back to non-identity mapping.
> +		 */
> +		if (device_def_domain_type(dev) == IOMMU_DOMAIN_IDENTITY &&
> +				dma_mask >= dma_get_required_mask(dev)) {
>  			ret = iommu_request_dm_for_dev(dev);
>  			if (ret) {
>  				dmar_remove_one_dev_info(dev);
> -- 
> 2.20.1
> 

Should this be dma_direct_get_required_mask? dma_get_required_mask may
return DMA_BIT_MASK(32) -- it callbacks into intel_get_required_mask,
but I'm not sure what iommu_no_mapping(dev) will do at this point?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
