Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA9B1C9442
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCwGlWm/hZ2HFIB9JxPZLPrFQp/+UYE8uP/4Q/gDo7s=; b=QXsHB0cJ4WR2Fs
	cxjtEuhNxg24vkXXrnLDqoEbyuay/JQS+OQccvt/4/KLlba/28JyhMoOLizObNxhcpmZUJahSYQcn
	lDDKwlSuapZdR2/KFQwkhurTyTpab/1lNhoT/RJIw2A/M1I4If+6l2PmrGmuQhFMdH9RWmI9LmQ+u
	T4RL1XZTYr/nlsRYfzktQTCrtoYOYhRdx+qMLk/wdDdzhvMIWuEU9uG4vEiURfBz2hi4F+dobwsdA
	WX/HpfFBMQZoGCmKW5DgE9mKYqZk8fTqye0aLprtpioIqLCjy9a3tdOgkm9aMealr0b3Mg9lRSIt7
	CVfNJg5+v22WYTCVrABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiDX-00015Y-Q5; Thu, 07 May 2020 15:13:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiDI-00012H-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:13:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id i15so6411595wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 08:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=S2uo98FwAjVg5CWP5Av+uIlNFRj0bTJ/Soj3by7c/U4=;
 b=KTP/UuKnmFq2SPCo2FGyvoGogXVtgtFTX5B4pJ8o/uSdf2i17qIMcFtyhsPPurcepl
 TbE5Rgj3LKq1EPMC9Co4rtvTM66GKJ56TWPuka3aSQqzUCOVcYjbiDExz6JDELbOQDAG
 wSB2FwSYtEWaFVYj6juw+K/c+6PgofSbKHcoRnalTJBpuFTSlfwRcSjqHzZbRpKqboFw
 tMOt470dTW4GQir+16tCiljhjjBZt3GqcbkmGJGPM2qE2G50yC2baZINqrYNUQCpWGYq
 CLuFbuEi3wSxnL0lNFoOAgCyVRtv1Fr1W/+sFw0ohgtjSiGprk1+wysg1+kwJ37SpF32
 Ocaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S2uo98FwAjVg5CWP5Av+uIlNFRj0bTJ/Soj3by7c/U4=;
 b=aXdBEjiomi2/+Lg7cAwAU2OfW1Iyes5dgboqGmvTu+r5S/OgrcnrJIEyWBapQ6fyEJ
 k6bW/2K5YGWgJ/aDZYmcX4t8liet/irE69q7VxjHkE2JewR3FJAtCnNN+oFqujqK7ohW
 ZY6ofbbRb2/RlTElzMDvBrm4ybNYjSG+f8TmS/JOfhnBoH2agKwa21+neWJ3lttjyVap
 HE1HROMXUkZt7rXUiw2RgjWzH4simXodZwT5UnbVyPgpE9X6f99JHZ7nvyS2jzpT/oEt
 Eu28jVHbUzahbZC+1v4hOW/Adlvqj6qETaY61rBzVVcg8UvuDT+dwE7TDb1Lkqvk36/Y
 E6Jw==
X-Gm-Message-State: AGi0PuaGlzGFG6pOrrYY5cU6DHIN+9FqfNeU9/TLx2dK0jGiB0Y2A/7w
 ph4cJFpPRqi/XAHa0obep+k4/Q==
X-Google-Smtp-Source: APiQypLNfmFFEmEkdVcn8CcdE0QmpbeyzViDZ82NLnSF0CRXgetg8FYsnaOyp6ozrpX3U1nd3rIVtg==
X-Received: by 2002:a5d:6705:: with SMTP id o5mr9808907wru.426.1588864406980; 
 Thu, 07 May 2020 08:13:26 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id t16sm8235479wmi.27.2020.05.07.08.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 08:13:26 -0700 (PDT)
Date: Thu, 7 May 2020 16:13:21 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 08/26] KVM: arm64: Use TTL hint in when invalidating
 stage-2 translations
Message-ID: <20200507151321.GH237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-9-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-9-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081328_873345_FEE84F51 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> @@ -176,7 +177,7 @@ static void clear_stage2_pud_entry(struct kvm_s2_mmu *mmu, pud_t *pud, phys_addr
>  	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
>  	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
>  	stage2_pud_clear(kvm, pud);
> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>  	stage2_pmd_free(kvm, pmd_table);
>  	put_page(virt_to_page(pud));
>  }
> @@ -186,7 +187,7 @@ static void clear_stage2_pmd_entry(struct kvm_s2_mmu *mmu, pmd_t *pmd, phys_addr
>  	pte_t *pte_table = pte_offset_kernel(pmd, 0);
>  	VM_BUG_ON(pmd_thp_or_huge(*pmd));
>  	pmd_clear(pmd);
> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
>  	free_page((unsigned long)pte_table);
>  	put_page(virt_to_page(pmd));
>  }

Going by the names, is it possible to give a better level hint for these
cases?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
