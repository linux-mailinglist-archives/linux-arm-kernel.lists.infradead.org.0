Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F70213AF66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsYe+3bXznq99m8jco3EMHqqZzPzwygKu4mZYO1OJAM=; b=JzO0iRDXDRAsyo
	ZOSbDFIBlbQlb4wVhG01H9yjEKimu04IR1SdseQYtdt2zsTPD7yeJCiFg5bF5cIPMtdn/j3Xrxl+d
	D9JZiMpNlerol+ySMuhKX2+THVjKf+SkPIVt5ecWcltLm5O9OSB9JJ3IWD3CjnG/1FiH5Da89N+bp
	4Bh7f2mWpvKQeX0RQQOdHRS7QK8eTy9w1QaA1u4Lv3r8BptGdorhFmQFgngU6F1EVVKJLq/oTvCto
	Wd917pKDmCDl63e6UE06RxWIxjTYM78iM1N9TFDkGXePT3Dj78/TI+BuU3PAwqh/kNl7WzYsscTD2
	sKaBn+E9Ej2Dzc5qJjeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irP5H-0007L0-Ej; Tue, 14 Jan 2020 16:30:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irP55-0007KJ-OT
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 16:30:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id w5so2687649wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 08:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FxzudKMd6YPzfM/0BCFYKKllAjp2Gts8h1iV+G6imWk=;
 b=s+Iyq+RN5AGDwxAr+7mKSPO+f5dVtM5aGFjxvkHZQBHQwXAqMg2vwzQPELgT1uodlp
 JXy/DuVb0oRdwbqTf/mCxgl+cpu3UILK2AlyUaBXvCpExWHPCFV6DjDsEzNGUIwTZ5yM
 izcUzJzY0MkhGcHsS3VehJ5SVpR5GInPz9A9d6+sBta87TRrKVLGgT/8YECNLDXfV+wN
 deCf8GyzR05dexz2K+saRt/Eaug/UCfoJzH/YhFoJBGXqiTHp5FJxeXIrnqS8DzEb7YA
 xOg8gP/zZKWgb5mblk2brIQs9wCO4ujce8asFWCePfF4zyW1ssuhO8NuuUWvdyKNz3K7
 xxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FxzudKMd6YPzfM/0BCFYKKllAjp2Gts8h1iV+G6imWk=;
 b=JiCJG4peXeGRoo7wXE7T9XU1qjwZ4ZRvIFXDcGAUMYlmMWEZQfWjcUGkQxpOBKgoZ7
 tPzpbGC3hCrNWtNxR4g30YhduZo0tHTlKhr7UvQ0BWQc1M/iU1lu5Z+wkrywonK1xojU
 XVYVuaEGIYABf0NZPn+Ve5FoTVFCU1ZqJvIJMbGnaJxgU9SGj0jVjrIuHqEAp98kkHds
 /6Q8nRRr4MWme3sWoG+tf0CDWo3YX7ahbuczwfB6v4Mell0sG/JOzV/HkyyW5+kT/L9m
 ii4jgG4HAMZ1yJAclZtkskilG+1B9xWnYpKHhRZF2Wh5/X+smNw2v/zMdUKy/uLUi4n8
 F+ow==
X-Gm-Message-State: APjAAAV6nGhkXN7kTAwqjhoN0WjxFY8Pl5WnzWszti3NOmOjGVkxHG0N
 U2nEuT6uqCGmnIgy2mPgwX5ebw==
X-Google-Smtp-Source: APXvYqxmcTGf2eTNhXZGx1ouob2jWFN+Aj7RA5BSt55FfOJCn9ALBt2Ou920JluYTTjGalcW0fwmLw==
X-Received: by 2002:a1c:740b:: with SMTP id p11mr29763542wmc.78.1579019414216; 
 Tue, 14 Jan 2020 08:30:14 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id u18sm19852028wrt.26.2020.01.14.08.30.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 08:30:13 -0800 (PST)
Date: Tue, 14 Jan 2020 17:30:09 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 07/13] iommu/arm-smmu-v3: Add support for Substream IDs
Message-ID: <20200114163009.GA5319@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-8-jean-philippe@linaro.org>
 <20200114123819.GC29222@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114123819.GC29222@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_083015_811389_8318F0E2 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Tue, Jan 14, 2020 at 12:38:19PM +0000, Will Deacon wrote:
> > +static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
> > +			     int ssid, bool leaf)
> > +{
> > +	size_t i;
> > +	unsigned long flags;
> > +	struct arm_smmu_master *master;
> > +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> > +	struct arm_smmu_cmdq_ent cmd = {
> > +		.opcode	= CMDQ_OP_CFGI_CD,
> > +		.cfgi	= {
> > +			.ssid	= ssid,
> > +			.leaf	= leaf,
> > +		},
> > +	};
> > +
> > +	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
> > +	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
> > +		for (i = 0; i < master->num_sids; i++) {
> > +			cmd.cfgi.sid = master->sids[i];
> > +			arm_smmu_cmdq_issue_cmd(smmu, &cmd);
> > +		}
> > +	}
> > +	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
> > +
> > +	arm_smmu_cmdq_issue_sync(smmu);
> 
> Can you send a follow-up patch converting this to batch submission, please?

Ok

> > +}
> > +
> >  static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> >  					struct arm_smmu_cd_table *table,
> >  					size_t num_entries)
> > @@ -1498,34 +1541,65 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
> >  	return val;
> >  }
> >  
> > -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
> > -				    struct arm_smmu_s1_cfg *cfg)
> > +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
> > +				   int ssid, struct arm_smmu_ctx_desc *cd)
> >  {
> > -	u64 val;
> > -	__le64 *cdptr = cfg->table.ptr;
> > -
> >  	/*
> > -	 * We don't need to issue any invalidation here, as we'll invalidate
> > -	 * the STE when installing the new entry anyway.
> > +	 * This function handles the following cases:
> > +	 *
> > +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
> > +	 * (2) Install a secondary CD, for SID+SSID traffic.
> > +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
> > +	 *     CD, then invalidate the old entry and mappings.
> > +	 * (4) Remove a secondary CD.
> >  	 */
> > -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
> > -#ifdef __BIG_ENDIAN
> > -	      CTXDESC_CD_0_ENDI |
> > -#endif
> > -	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> > -	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
> > -	      CTXDESC_CD_0_V;
> > +	u64 val;
> > +	bool cd_live;
> > +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> > +	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
> > +			CTXDESC_CD_DWORDS;
> >  
> > -	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> > -	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> > -		val |= CTXDESC_CD_0_S;
> > +	val = le64_to_cpu(cdptr[0]);
> > +	cd_live = !!(val & CTXDESC_CD_0_V);
> >  
> > -	cdptr[0] = cpu_to_le64(val);
> > +	if (!cd) { /* (4) */
> > +		val = 0;
> > +	} else if (cd_live) { /* (3) */
> > +		val &= ~CTXDESC_CD_0_ASID;
> > +		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
> > +		/*
> > +		 * Until CD+TLB invalidation, both ASIDs may be used for tagging
> > +		 * this substream's traffic
> > +		 */
> 
> I don't think you need to change anything here, but I do find it a little
> scary that we can modify live CDs like this. However, given that the
> hardware is permitted to cache the structures regardless of validity, it
> appears to be the only option. Terrifying!
> 
> > +	} else { /* (1) and (2) */
> > +		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
> 
> Can you use FIELD_PREP here too?

No, FIELD_PREP will shift ttbr left by 4 bits

> > +		cdptr[2] = 0;
> > +		cdptr[3] = cpu_to_le64(cd->mair);
> > +
> > +		/*
> > +		 * STE is live, and the SMMU might read dwords of this CD in any
> > +		 * order. Ensure that it observes valid values before reading
> > +		 * V=1.
> > +		 */
> > +		arm_smmu_sync_cd(smmu_domain, ssid, true);
> >  
> > -	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
> > -	cdptr[1] = cpu_to_le64(val);
> > +		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
> > +#ifdef __BIG_ENDIAN
> > +			CTXDESC_CD_0_ENDI |
> > +#endif
> > +			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> > +			CTXDESC_CD_0_AA64 |
> > +			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
> > +			CTXDESC_CD_0_V;
> >  
> > -	cdptr[3] = cpu_to_le64(cfg->cd.mair);
> > +		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> > +		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> > +			val |= CTXDESC_CD_0_S;
> > +	}
> > +
> > +	WRITE_ONCE(cdptr[0], cpu_to_le64(val));
> 
> Can you add a comment here citing 3.21.3 ("Configuration structures and
> configuration invalidation completion") please? Specifically, the note that
> states:
> 
>   | The size of single-copy atomic reads made by the SMMU is IMPLEMENTATION
>   | DEFINED but must be at least 64 bits.
> 
> Because that's really crucial to the WRITE_ONCE() above!
> 
> Shouldn't we also do the same thing for the STE side of things? I think so,
> and you can just comment of them with the quote and cite the comment from
> the other callsite.

Yes, makes sense

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
