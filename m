Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE6ABAF85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iiK/9kI2zx9fuuoMZSiBY/SAxF30pPIPbB2nlsARPM=; b=CNdhkCKAvBWAd+
	ZV26PHDUEqg2CcyH5hnOSrQDanCqhS2IfoJaTkOC0I++85d37eIWaVrs3fFBNQtmZtKjuGpcRQJUS
	WguiqR1mvJh18Ibz5x/qWuxaM/jrS1rjKMZBqxOxcNOSZhf+zqN1Y0VVMfZZNf1gFGjVhb2rI9nfT
	KVH+oNhBsGf4oGwv9/u7jFyZc9i70PudX9R9DnDJPRstkF9cbbyCsRUgFYdPHxlAK4xZr+fWhGbnD
	RpzC0Tuam8Dm6Si4Xnmo1dmhjqoT8hMQNCl3CcuX3F1GUbj/HejE23iymFo1WN8w54kPjkTUcWyan
	nzMb3SQOzOD3iEDfteHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJi1-0004gY-L1; Mon, 23 Sep 2019 08:28:37 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJhm-0004fl-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:28:23 +0000
Received: by mail-ed1-x542.google.com with SMTP id v38so11992999edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PlnBoWmdR1wZQMraBmo6UgPzJr5syvfhEvHIy2QrtUI=;
 b=MRarh6C+fRkbT4z71nShZ5RGSLrhCQuv4OxuhLwgBY7hB93FNgsWEjVMJQCZuuZnJb
 ZelgdeAdc8ux6Wr5QUoCRBpK54PWXEMcHyOfBqvphLEqxjATNZ/hl/jiXP1cJSqafbah
 pR5BwnE4qsBhkeBWrH5F3js8hfxLP8KmkWqgz8iEYMzjws+DK1dpV/gF5TYAe3u+srTB
 BmDQf2All+JfFBFPaFheCx6ymlYs7iSaC26BaCqk2w6vnif4cImxCv977Yfn/Ax3PsRL
 Stccz4j52X0tOsjoC/zjjznjFZZSsw4RNY/prA9YXi9Y3xuiHV+VclcUhRXWsHUOYDFa
 MsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PlnBoWmdR1wZQMraBmo6UgPzJr5syvfhEvHIy2QrtUI=;
 b=gXpu0uDamW6aSrMDfCVtq7NjQkVuBRHAh8ybnAetJuIrWld3UqR/fTqkVMkihoBUjI
 7hPXIMBmgDQ6XYEVh1JZQJKDRJ6jbWaWGM+yHMVcBiJtoNDZ7CSurLmWbzUjIbpZvsQx
 fXdPMKL3EisfhE8AEAYPkagMwasFLmOKeVs+6mgf4zK5APNTquRC8vLgBnFIidT03j8p
 J43BYuvzkDFdGdTk5VDLbaQiRru+5gEGskAVgXeztsQlw1uTdLpJIlMKIiFY9z5xBPH0
 pfdBorRu2fp4X+Qq8124d+6yATmAMSjnLW1Hae2kn9YhaPchLV4PYq4WMjW0BYTH+0qE
 unKg==
X-Gm-Message-State: APjAAAUydC6imXuB3JWNBI4lbMcKHp6ajGiVjvDcXRrOID6+luTEDUbs
 7KCOt5PvZcwQYhsiGdMOM5YQdA==
X-Google-Smtp-Source: APXvYqwfyMaWGIIWiECsmd3xkv/IOhdkWbJ1QV+G2FTfarkpzctYceNAbojdiMfoTKCmghIr0fi8Bw==
X-Received: by 2002:aa7:df16:: with SMTP id c22mr26499511edy.22.1569227300141; 
 Mon, 23 Sep 2019 01:28:20 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id v8sm2229345edi.49.2019.09.23.01.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 01:28:19 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id F11101012F5; Mon, 23 Sep 2019 11:28:19 +0300 (+03)
Date: Mon, 23 Sep 2019 11:28:19 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190923082819.k62npejhjudemsxv@box.shutemov.name>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190921135054.142360-4-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_012822_498811_E39D11ED 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mm@kvack.org,
 Punit Agrawal <punitagrawal@gmail.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Matthew Wilcox <willy@infradead.org>, Kaly Xin <Kaly.Xin@arm.com>,
 hejianet@gmail.com, Ralph Campbell <rcampbell@nvidia.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 09:50:54PM +0800, Jia He wrote:
> When we tested pmdk unit test [1] vmmalloc_fork TEST1 in arm64 guest, there
> will be a double page fault in __copy_from_user_inatomic of cow_user_page.
> 
> Below call trace is from arm64 do_page_fault for debugging purpose
> [  110.016195] Call trace:
> [  110.016826]  do_page_fault+0x5a4/0x690
> [  110.017812]  do_mem_abort+0x50/0xb0
> [  110.018726]  el1_da+0x20/0xc4
> [  110.019492]  __arch_copy_from_user+0x180/0x280
> [  110.020646]  do_wp_page+0xb0/0x860
> [  110.021517]  __handle_mm_fault+0x994/0x1338
> [  110.022606]  handle_mm_fault+0xe8/0x180
> [  110.023584]  do_page_fault+0x240/0x690
> [  110.024535]  do_mem_abort+0x50/0xb0
> [  110.025423]  el0_da+0x20/0x24
> 
> The pte info before __copy_from_user_inatomic is (PTE_AF is cleared):
> [ffff9b007000] pgd=000000023d4f8003, pud=000000023da9b003, pmd=000000023d4b3003, pte=360000298607bd3
> 
> As told by Catalin: "On arm64 without hardware Access Flag, copying from
> user will fail because the pte is old and cannot be marked young. So we
> always end up with zeroed page after fork() + CoW for pfn mappings. we
> don't always have a hardware-managed access flag on arm64."
> 
> This patch fix it by calling pte_mkyoung. Also, the parameter is
> changed because vmf should be passed to cow_user_page()
> 
> Add a WARN_ON_ONCE when __copy_from_user_inatomic() returns error
> in case there can be some obscure use-case.(by Kirill)
> 
> [1] https://github.com/pmem/pmdk/tree/master/src/test/vmmalloc_fork
> 
> Reported-by: Yibo Cai <Yibo.Cai@arm.com>
> Signed-off-by: Jia He <justin.he@arm.com>

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
