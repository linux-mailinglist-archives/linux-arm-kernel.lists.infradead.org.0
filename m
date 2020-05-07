Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA4E1C93BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFxYrtV4t3XzMAPTluZ6fS2dCjm7tTi/C5CaF1eYPR8=; b=UBT4QDt+YXiJUJ
	JmjxSiebYpzkTNlrcoMMtTyZnWGQOTMv3c5sIIXB4SDYtd8A0EJ2Z5/9dKnDQc1QOBxisxyiQT1lr
	6wHbHETRhNQBu+UMiVMKbUeXEwnaM+Fp5KEOURLgcdBG9U40xSwlpxUovLvzgmvNBezPDdoMbqjLb
	wW01RqKxVmJ8Kd6QZpj0qFe1Z0bvMddBHOP0hwW8PLAoVj0xRPaKeAfwZdeTHYUo76Sc7VV3ix5WA
	q6qdQQckzpALmOfdRItx/7DuBKLxr+IDPpn37UlHcQo0iN+i+i6tR5mo1C/nLNVcVFf3MZ/AuRsLt
	UCuNlovNVzXGzmbbR+IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi91-00055Y-IN; Thu, 07 May 2020 15:09:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi8s-00054M-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:08:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id j5so6827819wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 08:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TQa81UcYxl76b0HSzt9euhUmUepcpv3Z6r/LM6Ln5KE=;
 b=QLPKtMifAlPpfvwJKFqGd26kBFWPILMeiCXFGFuEBE548R8w7lgb/0jsPh1bu3DHka
 breNdX586T44AB8m87A/JFIhSjk18lq8Ve/dJA8HOPPUdvxMajShm3p9OrMioRH7BjNk
 OtO/C7ZoIrq3QXqeHbPkDtJj/UCSnMPHzfmtbcFPKku/qJ3SLGEvDZfQNIGTDQOHihp2
 RZUnfXmJAg5LekkpLJLHtjTC60tVDp/QS+HCO4fpBcJAltENqV7gK5zsOYx3ba2n1ytG
 Gid9G0dnaQqFzt1Mv4dH7ozS4PPRWrE3NnI+YiPyf0hsTtLfCKlYI43SN/29CxJTkK6U
 Irsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TQa81UcYxl76b0HSzt9euhUmUepcpv3Z6r/LM6Ln5KE=;
 b=lf9Oalqf9zTSX4PpUxV3wxcLQu/X6paIgAcLYfdSm91RAnU5jfSfwDtuesb6fDkpNu
 xjohPU8qA/79VW+xRUNlRVyGzqSqoErUGft5Mj/9j7kvTV9dNAE/D6xAXlpEHk+FbmI0
 d5Cv0WP+/NyeKeB8T9WkQl5GVUraZ8hS+6isEsq9EAXwdSzZcztkEKW3aexNXFaf29hI
 ajnxoka62x+lF6DHGdA11bvDaUtadu9EAgBVuz+ImaGEy2Ulc+d/xqOZ9EYlLpXf4fQh
 7fBHv9QzvDkaEEdLQGJckQeiywlqlmGJiVKgruhTIcMaLheZLQD0ziRXpR9KeH8xx+Ke
 KWeA==
X-Gm-Message-State: AGi0PuYZOy1YVJ+sENp+q3v27UoIKxtzlqsArGGbu1CPogQ5H6Jrcnt3
 qUfZl6eFs0YoowVJoMHt24+qDw==
X-Google-Smtp-Source: APiQypIHxYj17NVfmcnSuGrpk40/cA1y0gsCzWWQg9AehmmC7nw/0HsXW/bsHDdO/dPr7ICzSJ0SUQ==
X-Received: by 2002:a5d:5445:: with SMTP id w5mr15635148wrv.422.1588864130021; 
 Thu, 07 May 2020 08:08:50 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id u2sm10491869wrd.40.2020.05.07.08.08.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 08:08:49 -0700 (PDT)
Date: Thu, 7 May 2020 16:08:43 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 07/26] KVM: arm64: Add a level hint to
 __kvm_tlb_flush_vmid_ipa
Message-ID: <20200507150843.GG237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-8-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-8-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080854_681787_561F31FA 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

> -void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
> +void __hyp_text __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu,
> +					 phys_addr_t ipa, int level)

The level feels like a good opportunity for an enum to add some
documentation from the type.

>  static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
>  {
> -	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa);
> +	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, 0);

With the constants from the next patch brought forward, the magic 0 can
be given a name, although it's very temporary so..

Otherwise, looks good.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
