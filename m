Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5581C5B11
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsuKEYcNoURvm7Mfl2whOIut/RkIn8pDIavWKGUd5Lw=; b=X2OYcMJe2j6pKN
	YdSY4eFSn2DaBO9+KMPU5rrj4whQKzfaurPJD6Rq+ADXh/7KmbTstVWYlVhQPovmK+arD0u8sQw9j
	DPmzc90HrjG9LtqGqT8NPyFLY2tfwHNzPxinS2DOzrQXmVxlWJL3ViTB49cmZndY609doanyvtBKp
	JE40BrSkiR7gP9SMD9wcS2D0mI5sCX0tD3f5FczSgye52auF7JZpOzImAqYDgOrk22UMuLJEwUPad
	epBIv15XXK42lRg1jgWS25hzFH+fcYBxVJOj9OV0SiTOksiuTYstgFW0KRK0qsdmXFFHJZetGNH52
	pZtCi7SC2V/WbalxJlYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzTQ-0008JS-T6; Tue, 05 May 2020 15:27:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzTG-0008Ib-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:27:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so3248693wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zXzR1aUk2ZPbhK+lz+Dt3JwzZZ+Iz4WfBlkdVh6bKZ4=;
 b=D5EdbvAamPv1DrL3nw+DFrCk7yJ0oA0Pk0KLYgu30csT1pr6SXwD2SFPhq9b16Ree2
 ++nyPqcQTRhY6O4Ye2ZkZKT+PA8UYEWVNv+b5qGz096S1/6vAu7jppfCqUeBXoXr8RWO
 7tT1K1i1KFaSNwEvHVV4zEVWWxTxTC6RU4M0UrpLdzS9mv1Ck3AD1JaFPaB6R96xWoUo
 7vbzFotV8dB2owsQUB3g107Y3UnKh3b+dNwJi2k5zB7wZ4dZtkbsPmJXAjeEXX3qKG7C
 qMjHiL1zRDXFin/CH1nE4zNhx93UIfsgjKsB3VPBYiSt0+6KZCaoets0e7sCsJDWqVcP
 LYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zXzR1aUk2ZPbhK+lz+Dt3JwzZZ+Iz4WfBlkdVh6bKZ4=;
 b=YwFPCecErXxOaLEr2xFn/mDXlrU68Todz1saaYAv67PD8XvTtXc5i7NfhT6SMZwnZa
 4udDJlzZiD3svWrnY8Vuab/eMpjDlwP+/8E3GiZ/TkuVUzmTwe4GnQ1WcNpVJ9G2otpK
 6HFcM+iZ4CCh/D+u644M+jMYvOqSU4DYhoUtGtzBsqh3sI1voKnCcEgB6vHRncu82Ru9
 vttmreHlaqdVnvCSWOIoXyuA4FdoDzQS/m1A5y//vJDVvuLWwR8HOn1wAxF75Rh5Vc0l
 uxTcuxH0eiqkSU2dSnUgyLRH6SbTB4IZ/7pOfSxkeWiXastyVXWKaQMjp3ydaK9Pb616
 ORtg==
X-Gm-Message-State: AGi0PubVNrVEeNuxn7F7p1UwTN+V49qfFk3Mn6EHBsCPuAbTtVQq+vDO
 NbqlBoW267v/IFCnW/KZvA0Ehg==
X-Google-Smtp-Source: APiQypI8heCYBzq/jyvWYkJRjjg6bf3eXOCslINaHp7aVsym9o41pg4+cPoZ+kh2dtXuR1lVzqzCkg==
X-Received: by 2002:a5d:51c9:: with SMTP id n9mr4216171wrv.84.1588692414526;
 Tue, 05 May 2020 08:26:54 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id a13sm3733889wrv.67.2020.05.05.08.26.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:26:53 -0700 (PDT)
Date: Tue, 5 May 2020 16:26:48 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
Message-ID: <20200505152648.GA237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-4-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_082658_831955_BCB91742 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Having a go at reviewing. Might turn out to be more useful as a learning
exercise for me rather than useful feedback but we've got to start
somewhere..

> -struct kvm_arch {
> +struct kvm_s2_mmu {
>  	struct kvm_vmid vmid;
>  
> -	/* stage2 entry level table */
> -	pgd_t *pgd;
> -	phys_addr_t pgd_phys;
> -
> -	/* VTCR_EL2 value for this VM */
> -	u64    vtcr;
> +	/*
> +	 * stage2 entry level table
> +	 *
> +	 * Two kvm_s2_mmu structures in the same VM can point to the same pgd
> +	 * here.  This happens when running a non-VHE guest hypervisor which
> +	 * uses the canonical stage 2 page table for both vEL2 and for vEL1/0
> +	 * with vHCR_EL2.VM == 0.
> +	 */
> +	pgd_t		*pgd;
> +	phys_addr_t	pgd_phys;
>  
>  	/* The last vcpu id that ran on each physical CPU */
>  	int __percpu *last_vcpu_ran;
>  
> +	struct kvm *kvm;
> +};
> +
> +struct kvm_arch {
> +	struct kvm_s2_mmu mmu;
> +
> +	/* VTCR_EL2 value for this VM */
> +	u64    vtcr;

VTCR seems quite strongly tied to the MMU config. Is it not controlled
independently for the nested MMUs and so remains in this struct?

> -static void stage2_dissolve_pmd(struct kvm *kvm, phys_addr_t addr, pmd_t *pmd)
> +static void stage2_dissolve_pmd(struct kvm_s2_mmu *mmu, phys_addr_t addr, pmd_t *pmd)

How strictly is the long line style rule enforced? checkpatch has 16
such warnings on this patch.

> -static void stage2_dissolve_pud(struct kvm *kvm, phys_addr_t addr, pud_t *pudp)
> +static void stage2_dissolve_pud(struct kvm_s2_mmu *mmu, phys_addr_t addr, pud_t *pudp)
>  {
> +	struct kvm *kvm __maybe_unused = mmu->kvm;
> +
>  	if (!stage2_pud_huge(kvm, *pudp))
>  		return;

There're a couple places with `__maybe_unused` on variables that are
then used soon after. Can they be dropped in these cases so as not to
hide legitimate warning?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
