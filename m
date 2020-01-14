Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D46913A8B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3M4X6iALCXKuXBrIVxjQS7VQ130iYEnGmU5sBKBdMpY=; b=UEuZNrBYy/5Q0f
	S0W+Ntv0xGaSpw+Bu8PzoTAUbsYCgJqZdfqMzOM1gjADr9FkMro1bR5wgYlc87D3Fk5K+61cYUsJf
	gQDCWgIcAnmH31+PFLgGV9jHvjBzs32qDlnbbt793UHJ5agg33PLsVFy3yvSfpFGWjeD2/KKy3bJv
	faK26+RGPY21p+cWsWd8V9PQpSFHnEu+eHnrCjIfsV174W/uqvenB6a0bDKQtoCW1KncCoiWG+7GF
	8r1LpwNlM64MFkcQrb4pd7i+fyhegWMW36ygJktKBQRc0aXizn94Fgi1DHJLhqtwwbYsCfkC0hIXk
	UJVYbucazOSCRsjsiNLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKkc-0000Td-3t; Tue, 14 Jan 2020 11:52:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKkP-0000Sc-Nv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:52:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so11877089wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 03:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IzwdNUfwlcqLxXSve6wb9StsyrN71lEbIfR41dllFLE=;
 b=nHwWTsMXEiHgMlLp3rhEKjlY4oFiFN8uVx7EJmL5HpoMLn17G6GskriKC2J4FFqDUf
 D5PQSR5bGBe2KBkkR2zFboV/+9i2TmSPBkL7OTbNdNiHX7nk7ICkuK4+TDYSmsObTwlN
 OiLPLpXLq1/M83nG9MZ4HV3/E8nkRsHlO+3UGguEfdmsc46vGQLVsOn5TDTpRV54ob4n
 pfPb5QzbcX59Yso+X81V+w/rj0PdB4UueRJp1lnyRPXgrA9EDAaNr1NIgCRHQnNRf4Px
 4jf1EDSskOFU/ovVyTUDM3aMNE2/F5yIbTVFheDVn7pktx7l7R1XqxTCuWrnDyXVGPM4
 Ul9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IzwdNUfwlcqLxXSve6wb9StsyrN71lEbIfR41dllFLE=;
 b=iK3rnJoscTetUiNutZ/p+8y/izZ3RxaF7UesEdSdivYL3J2CEpZWzItJ9Nj/kbM5u6
 hcrWtwNQ1JzV6bR3BhBLHewoS8bzZ0B27NZRe9dklI8Sp9DJAudBnYDrgkesbqcei+DN
 75nlzGmUyMhQej8iaLvoRWxQaaGRCzPCnianflQTayj7QzXIoK0dAuYCAxZD1dfOf0RS
 pcqf/dZAjuZh6gWdSOA06r/2vEBcdZ/PPnuh9+1Ekss4sON8T21c5D2B7+ompE4L63Da
 j86EDjTdAVR0cODQGMkU3cUsRUC7a5/fu/C3OeYXL3Wepad5seSZJtB3jhIDnMn/Tq6g
 tZnQ==
X-Gm-Message-State: APjAAAV5CTpd8ld3gRAFlG5jVugAsbSoqtIKgqblmeqxS7Um7g0R4BeY
 kxoA7KdZrlCbKfbOIuCueTa2Tw==
X-Google-Smtp-Source: APXvYqz9ANL4J4N9FkoeCEsa+reFmsBRsdemTWxAkjYGsn5VOn30+AuMczjNSCVZhAF6FpG81uDvcw==
X-Received: by 2002:a5d:4d4a:: with SMTP id a10mr24916169wru.220.1579002755460; 
 Tue, 14 Jan 2020 03:52:35 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id v22sm18105022wml.11.2020.01.14.03.52.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 03:52:34 -0800 (PST)
Date: Tue, 14 Jan 2020 12:52:30 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 06/13] iommu/arm-smmu-v3: Add context descriptor
 tables allocators
Message-ID: <20200114115230.GA1799@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-7-jean-philippe@linaro.org>
 <20200114110651.GA29222@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114110651.GA29222@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_035237_811901_FA014783 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Tue, Jan 14, 2020 at 11:06:52AM +0000, Will Deacon wrote:
> >  /* Context descriptor manipulation functions */
> > +static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> > +					struct arm_smmu_cd_table *table,
> > +					size_t num_entries)
> > +{
> > +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> > +
> > +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> > +					 GFP_KERNEL);
> > +	if (!table->ptr) {
> > +		dev_warn(smmu->dev,
> > +			 "failed to allocate context descriptor table\n");
> > +		return -ENOMEM;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
> > +					struct arm_smmu_cd_table *table,
> > +					size_t num_entries)
> > +{
> > +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> > +
> > +	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
> > +}
> 
> I think we'd be better off taking the 'arm_smmu_s1_cfg' as a parameter here
> instead of the table pointer and a num_entries value, since the code above
> implies that we support partial freeing of the context descriptors.
> 
> I can do that as a follow-up patch if you agree. Thoughts?

Do you mean only changing the arguments of arm_smmu_free_cd_leaf_table(),
or arm_smmu_alloc_cd_leaf_table() as well? For free() I agree, for alloc()
I'm not sure it would look better.

For my tests I have a debug patch that allocates PASIDs randomly which
quickly consumes DMA for leaf tables. So I do have to free the leaves
individually when they aren't used, but it will be easy for me to update.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
