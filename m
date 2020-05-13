Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ADF1D0B7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXAT+s1lWqlgnGbcahckR0I6+wbgn9ku4mBuiD1jyDA=; b=Rk3bX61toD/ftS
	8r4cLC7gzqbguOTSYdPf6Fqjv5wjOCrTDygGFkmOaF3u083u0ELtXs57UBLQIFsW9VyVtlvHXy+vA
	nCmgodDSAgKO1AqnlomfDu2iQY+nelHvXrF6gZvxLSUBCf7W4qncH93CK3HYCkJP+4CP05YNHbs8Y
	bwqMJsIzwBpkEz5NmwoE4S1pabAhbNeV4OaklSGBf5XIgfUF338mq0jD3JsRV6QGTT49Z3l8Zfn/U
	oyRoX6BabwsgukefPeUSc0LRasNLtbkyawHXYRacLKeMW+myhA3ZAeMKrCwBxc4rdjZuVIGuyEe2q
	EPZKZaQm/fOv1OULKLcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnM4-0008G0-O2; Wed, 13 May 2020 09:07:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnLu-0008FF-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:06:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id 50so19364129wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 02:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sAz22Qf5FRJKdunB6aL5p2mmvJR5GBHWvdnGZkiVqTA=;
 b=NSVYfRzXzR7uUhwc5wpgdH4cy/nHDWl6Ycsvjllye+7k2RoNJaAbfSrhysBV3nQRFR
 Vv4hrCsx4XjIKsglu2ZKqe3WGYeQaI5yNPPde4hZU2ifJH4BlNEgtApcgN4fF8H4/jSQ
 a9LrjX5AAQFngrJM2YsZ79hofUuj3XXNEgAq+8wy+3WTfxSi+cByUp+9Bb6lGiq6kMZq
 E+tc9ZgM3iV6L9DmlObACm3hAUWvXh6ZQismk2m8LLAEX5OtD6Vqj4thsx+AWW+QXD4t
 Ot0diSIBEoeSy8j8NW+A2nDtCSWBGN/uPZM4o5K6GjnS8sZ0zcCbWseZ8BV1wW3VeztU
 0XnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sAz22Qf5FRJKdunB6aL5p2mmvJR5GBHWvdnGZkiVqTA=;
 b=ajF1Gd0jADd1PzODI8cS7R1vyy8OK3BlrOfpuZyhmhoUvezv0r92lMWnded5+jvGSF
 bQQP2z6PdHoD7cVjpff/uPrKb0al5xheUrquB1p4uKhsm+Rqk3zWc7FLudNHj28qRwqA
 g0zpMFh27k5VpEAEyhDESXXXthejEeCzIusgsObUcqPzC1URCPf6NodUE2wfag4FonNW
 5b4p+ZxzIDb0HCuWi/tLsJJWfz2RbcVTZrdJ4p8XSm3inE/NZnc0OOcvg2rJg/xrg5ky
 uOF1IE38LFQZ277f/RW1qmtOpBKX+1udaeTJOYVMsRgf8YP64D4Qk4NNBBB2J3KtZ06l
 uu+w==
X-Gm-Message-State: AGi0PuYcJmWZBKmXxDtRBj5/ggvL+alKtdaT0xr8nUg0PQ6mFZoKYELa
 eVpfmY6baAP0Uo9vnGOhnfWPWA==
X-Google-Smtp-Source: APiQypIIFOViZHe/I++TwFOrfnuWl7zhlP4ZWLO5ZAjebaUXaOhLLT0nrmxPGsJEtdQd9W5w4E+DNQ==
X-Received: by 2002:a5d:4dc9:: with SMTP id f9mr20206671wru.407.1589360813739; 
 Wed, 13 May 2020 02:06:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id w18sm27011053wro.33.2020.05.13.02.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 02:06:53 -0700 (PDT)
Date: Wed, 13 May 2020 10:06:48 +0100
From: Andrew Scull <ascull@google.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 08/26] KVM: arm64: Use TTL hint in when invalidating
 stage-2 translations
Message-ID: <20200513090648.GA193035@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-9-maz@kernel.org>
 <20200507151321.GH237572@google.com>
 <63e16fdd-fe1b-07d3-23b7-cd99170fdd59@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63e16fdd-fe1b-07d3-23b7-cd99170fdd59@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_020658_322207_4CBCB275 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvm@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 01:04:31PM +0100, James Morse wrote:
> Hi Andrew,
> 
> On 07/05/2020 16:13, Andrew Scull wrote:
> >> @@ -176,7 +177,7 @@ static void clear_stage2_pud_entry(struct kvm_s2_mmu *mmu, pud_t *pud, phys_addr
> >>  	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
> >>  	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
> >>  	stage2_pud_clear(kvm, pud);
> >> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
> >> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
> >>  	stage2_pmd_free(kvm, pmd_table);
> >>  	put_page(virt_to_page(pud));
> >>  }
> >> @@ -186,7 +187,7 @@ static void clear_stage2_pmd_entry(struct kvm_s2_mmu *mmu, pmd_t *pmd, phys_addr
> >>  	pte_t *pte_table = pte_offset_kernel(pmd, 0);
> >>  	VM_BUG_ON(pmd_thp_or_huge(*pmd));
> >>  	pmd_clear(pmd);
> >> -	kvm_tlb_flush_vmid_ipa(mmu, addr);
> >> +	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
> >>  	free_page((unsigned long)pte_table);
> >>  	put_page(virt_to_page(pmd));
> >>  }
> > 
> > Going by the names, is it possible to give a better level hint for these
> > cases?
> 
> There is no leaf entry being invalidated here. After clearing the range, we found we'd
> emptied (and invalidated) a whole page of mappings:
> |	if (stage2_pmd_table_empty(kvm, start_pmd))
> |		clear_stage2_pud_entry(mmu, pud, start_addr);
> 
> Now we want to remove the link to the empty page so we can free it. We are changing the
> structure of the tables, not what gets mapped.
> 
> I think this is why we need the un-hinted behaviour, to invalidate "any level of the
> translation table walk required to translate the specified IPA". Otherwise the hardware
> can look for a leaf at the indicated level, find none, and do nothing.
> 
> 
> This is sufficiently horrible, its possible I've got it completely wrong! (does it make
> sense?)

Ok. `addr` is an IPA, that IPA is now omitted from the map so doesn't
appear in any entry of the table, least of all a leaf entry. That makes
sense.

Is there a convention to distinguish IPA and PA similar to the
distinction for VA or does kvmarm just use phys_addr_t all round?

It seems like the TTL patches are failry self contained if it would be
easier to serparate them out from these larger series?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
