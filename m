Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9872113AF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi0bqUNPNKlTi27OzCZ2OhZzCckRhPZ6bHOjneK5G/s=; b=PDFnfbvARkZA87
	/SUV0y6Oop+UHV0mt4fcM726GClLPcFeAxk4+Mij66VbQYEzOIm8AY4b6dfiqrMrUKbtyB26Z7Wlq
	ZSA1k+FHxEle59Wn7QtDrXaQjTwUEmUtJlHRDR7G6JwpMxBdHIdIbzZaDCuAtp8GBL0Ioa6S30MXx
	Isb42wT77bsH6QSnN/VjdWbepbpY0TIP4P/8Z6am9ANYALOD0nr+FWyfakf8sQ6CXBngLxWYsRyNk
	YWkrWmFu2LVhwKB5FLAhxdnmrT9qZnHJ/8CPsD+0vsixC8uIoA+FMMlmKedxcmZYmnvNoHC+zIwPi
	P59MzYvHNshafbKgKG2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irP6B-0007cy-HL; Tue, 14 Jan 2020 16:31:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irP5v-0007bw-SM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 16:31:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so12819139wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 08:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nIBJ+W2XCD+RKINYx9xkIa8YvUMMciM9OXCElPBSqto=;
 b=M0rGSjX9nhYA7xN6pq7nhN6GCQ/pfDUlb4rdJCSHj6D+yjeHRwNaicItFWdsW8JbyT
 0r2ZOLTPD4PiLhKBQP+gQi3RfUVO8CPvNNeGmJYcQZsBNoaUF+rmB9LeAdDXtYoTAs3z
 /M1wPatIKp5y/+wVTpYms7hkx+ApHpcYj3Ty2BCTxMnBE26KXcbIZuRLQWJKDUism3aC
 xcmD0s0/v47kD/d6AfPrCR3HWlQ6APhaS4fwC4dlUmgTCHyCQHB83AVLmEbcEqm7Cwlb
 WeokJ+UT1R5DNUZMf2Ox/rwDuSmxPny71TIZNSbBI/CKjU78aXO6zyLB4mt0lwBIkwBK
 Kv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nIBJ+W2XCD+RKINYx9xkIa8YvUMMciM9OXCElPBSqto=;
 b=oINKSa6wvRe6XzCLhIl1icICPZztfUp87AIITlT9d2xTAPCrXv+TjpvPp0MuP4CrWI
 PU3wioeWypyp79sGCSLiqX08HEdvjTHuPnuoFsDR0fzLHy/1LQNTrsuy+QNQ0V4GJJ9p
 b5nCkZ4zTFNpNAFUK98G7/dzvGhTrBezeXLV1lxeWqA6tIxiwuQhtfxEkpwnArWjYtuS
 YqRhDBSAzplhvEIYfJxzGeSh6l9ITvWw5veG88yAskmjJTt5WqExCP4t2/ik2HESk396
 i0L862SP4kr8TQMTSKYDuuXREYCwQWAt4g5aKpzbFTMiOQTwNbru7Ib5dcVkPgGLkPUi
 hB0g==
X-Gm-Message-State: APjAAAUxWCn5Tggz2IrbRNY8oJRYMyT3vHl17f/5VRmyvqFnxk8zMJ6C
 7PWvTl51b+qac9YbFXQ926f1MA==
X-Google-Smtp-Source: APXvYqw0/eegQ0zcb+toj+yn2h4NywBCJ2IMJC+LicnhxZZ6kzhHXcoqIC9Hr1rNQ6HwLknQccYolQ==
X-Received: by 2002:adf:dd46:: with SMTP id u6mr26754664wrm.13.1579019466232; 
 Tue, 14 Jan 2020 08:31:06 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id a16sm20643732wrt.37.2020.01.14.08.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 08:31:05 -0800 (PST)
Date: Tue, 14 Jan 2020 17:31:01 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 09/13] iommu/arm-smmu-v3: Prepare for handling
 arm_smmu_write_ctx_desc() failure
Message-ID: <20200114163101.GB5319@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-10-jean-philippe@linaro.org>
 <20200114124247.GD29222@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114124247.GD29222@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_083112_834499_B51F185E 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 12:42:47PM +0000, Will Deacon wrote:
> On Thu, Dec 19, 2019 at 05:30:29PM +0100, Jean-Philippe Brucker wrote:
> > Second-level context descriptor tables will be allocated lazily in
> > arm_smmu_write_ctx_desc(). Help with handling allocation failure by
> > moving the CD write into arm_smmu_domain_finalise_s1().
> > 
> > Reviewed-by: Eric Auger <eric.auger@redhat.com>
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index e147087198ef..b825a5639afc 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -2301,8 +2301,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> >  	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> >  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
> >  	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
> > +
> > +	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
> 
> Hmm. This ends up calling arm_smmu_sync_cd() but I think that happens before
> we've added the master to the devices list of the domain. Does that mean we
> miss the new SSID during the invalidation?

Yes, the arm_smmu_sync_cd() isn't useful in this case, it's only needed
when the STE is live and arm_smmu_write_ctx_desc() is called for a
ssid!=0. On this path, the CD cache is invalidated by a CFGI_STE executed
later, when arm_smmu_attach_dev() installs the STE. I didn't want to add a
special case that avoids the sync when ssid==0 in because a spurious sync
probably doesn't impact performance here and arm_smmu_write_ctx_desc() is
quite fiddly already.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
