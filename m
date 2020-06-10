Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20571F5E63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Th3DXeggVwVLjMmhOA2coZqLha4uU9fAe4vPqxVWwns=; b=flcZH+ZNH64jc7
	/WivKoRNlsvcfrH9tYsgHrHzbX8Of16rdL2XSztBCR37vr7JYsIAiS2eJZAdI/0YhyPiHFpXZAGbI
	LJCmuiHj26s8IpBKFKReauLNCYYaRdX8hzpGgAcJ/4sDxQeuUHmz5Sx0OiyZx4E2K/Pl+eQvvWN8h
	Z24opLy0h/mGvPZyfuK43RSYK3kYJ2w3mlDC+hYk1B5nZkiELrS+atjT4axJY5p+W11Zlr8qktSHz
	/6Cle91gAi5ImVcvyHIpFEKt9gesRqhdvkrPVPDavogMgSD7fIM8oTyogbfazHnnIY0SYkriPLZI4
	VW32WXejD1FO+SHmtc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj9J4-0004Ya-BN; Wed, 10 Jun 2020 22:34:50 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj9Iu-0004YC-Bz
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:34:41 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y123so2284933vsb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 15:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C9LYQ8aclMkdwfJP4cdhxWD4N8cMJMuN6znPHlB3Rsc=;
 b=UevvpOtsXUfdMcqvIgRfPVVQSDyZs6oXq/Xnj/8uJDFNeQBZ7vzloiU32xzvK6mFCu
 cGGLwNrdnw/Q0on5lLXJlkuu8D4VI6gjZehfPhGO6t/torNaJ6NxHMQ2JuDgO8FwHc4P
 o8FP7KzD9QWU8u7G49I5aLDbEK8X8zhTnPGPK+25pdCKJLn9W7w1iBlkb84D2LADSGpc
 tCqhhzfq26VpCG0se8b1WZwp4CCFSusJSn+larn2+KMSi4aCsCQRQ/S3A4qsfTfUDCpT
 JYfiX91/2CIDQozv8ZBX3SClrislUPBF+zqSWJE7quvH7sEsU2MJoNuxaq5T13FcVb0X
 ExAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C9LYQ8aclMkdwfJP4cdhxWD4N8cMJMuN6znPHlB3Rsc=;
 b=Gf7VRgRQaZ8nhWT0so12On6unt3BKTbhVWGOfDagAFGGEjzt05HWqr6jsMZFg/dYUE
 tQT8oie/Jgf23CpROTYmXblM7miphHdE0IRBICLPbtdBL49BkdmnWgMLo7U7mYbvTRcm
 NaQ1N40+eAZXvqvlOrjyARzKp3YK9ZdIfFSebufPV5x9EiMJ5WHPCGn5Fso6zpxa11gs
 393zB8SYHe4NHF3ZMki7+ReG3S8GJmOUD2eJ4nFWywcPcqxjF39s4yi5ekcH0pTOrQsq
 sBxAxvDKvzMoNcpA8DtRepUWwr/fYuBnA94rcRPqBOvIRYAzjWXYgLbfehBcrBtTrnuM
 5u7Q==
X-Gm-Message-State: AOAM531z/DEvJD7YrNVAKodJpVsVBr6KmFaXo50oQ45ttXF6pDXMUzZg
 b7dcc0gMVOuYtPlcDA2fNFW4lGzZoAD5SdSwHWXuFA==
X-Google-Smtp-Source: ABdhPJzdt1t5lYhNZNFDbxTCIee/fOpBW2dvkZTK5r9pH/LqHC+MVWmHSuu/UxjSaFUQydIW/izqWRJz+CsXZPttueA=
X-Received: by 2002:a67:79ce:: with SMTP id u197mr4725019vsc.17.1591828478904; 
 Wed, 10 Jun 2020 15:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-8-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-8-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 15:34:28 -0700
Message-ID: <CANgfPd9UH01vO1SYJ3vrKq4H_DXcJ3OL_VaeY2TV8_ZH9cR1GQ@mail.gmail.com>
Subject: Re: [PATCH 07/21] KVM: x86/mmu: Topup memory caches after walking
 GVA->GPA
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_153440_425319_C29DDDD6 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Topup memory caches after walking the GVA->GPA translation during a
> shadow page fault, there is no need to ensure the caches are full when
> walking the GVA.  As of commit f5a1e9f89504f ("KVM: MMU: remove call
> to kvm_mmu_pte_write from walk_addr"), the FNAME(walk_addr) flow no
> longer add rmaps via kvm_mmu_pte_write().
>
> This avoids allocating memory in the case that the GVA is unmapped in
> the guest, and also provides a paper trail of why/when the memory caches
> need to be filled.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/paging_tmpl.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
> index 38c576495048..3de32122f601 100644
> --- a/arch/x86/kvm/mmu/paging_tmpl.h
> +++ b/arch/x86/kvm/mmu/paging_tmpl.h
> @@ -791,10 +791,6 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
>
>         pgprintk("%s: addr %lx err %x\n", __func__, addr, error_code);
>
> -       r = mmu_topup_memory_caches(vcpu);
> -       if (r)
> -               return r;
> -
>         /*
>          * If PFEC.RSVD is set, this is a shadow page fault.
>          * The bit needs to be cleared before walking guest page tables.
> @@ -822,6 +818,10 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
>                 return RET_PF_EMULATE;
>         }
>
> +       r = mmu_topup_memory_caches(vcpu);
> +       if (r)
> +               return r;
> +
>         vcpu->arch.write_fault_to_shadow_pgtable = false;
>
>         is_self_change_mapping = FNAME(is_self_change_mapping)(vcpu,
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
