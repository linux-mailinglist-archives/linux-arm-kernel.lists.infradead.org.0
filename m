Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 794221A4A40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 21:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2CqixLHZbjs8tku17co+fFY1wQXo8Sw5iAfCzGQzl0=; b=jkewPKbDI5ELeI
	t+MWGSubiEVIaxc5GsCx+3F08qTrkUugCq5zgr5KCQbwC77t/F4etD4pQ8FUtpn3xTrvXG1gmZko2
	t1oPMy+mpfkG/Mdp4H1AF/r4jkGSuddM74JmjLbWQRzc715c3SdXfGsNAO0A/4odxG1QdgpXO6QlW
	Xlrk0pxySfnvmZnRBdzHJ40dND12c7Sr/C37MXktcRf+HZWQYU7I3jqWrfiC2ftVqV4lwznW+tMB1
	TfRGkQYt/jQ8FM42zNuDaSul2Az5Cn5hfsDXJAZL6M4zETXHZUb/vNj/iasfDCP2h8Vv5ZQHhkMuv
	3lQs+b6vmE6lGnAFK1wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMz9R-0001db-5U; Fri, 10 Apr 2020 19:17:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMz9J-0001dT-Ie
 for linux-arm-kernel@bombadil.infradead.org; Fri, 10 Apr 2020 19:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Cv7iW9UAPEbptJQ7pxTuJ8mpCyBB8TXm9+xjBE0kLBw=; b=dD5eh5Q3b9cEzELjpbBglt00Qa
 8d/mhr3eOyAGQaY+dEhcx+ZLdoBw4FpLOnX/ZFacuJp72rmx2N6T67ewrAiviMuUCnzx+709PhUsu
 MDL0SEHTTwpyF9cGFetggcFHE+tUsqMC8c5LAU7Vz4eYYPwrVOup8TwRWIu3eND4gly/+RHuZdMmz
 XQZuZUQx8iKXJ9iyWFF6oOq55QkscRbvKn4i46gNttdWngFUivPA70zM0MLKZ9NWoX6HGzo2o9cnv
 z4yYEdK8YQyxdDFUX4uzYbpBZdtQkveXtZNw2+ILHZXYBFP4Ei/oTbYdwhqEshAA9Uy/ftlRftyS8
 nmZd8D0Q==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMz9H-00034y-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 19:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586546182;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cv7iW9UAPEbptJQ7pxTuJ8mpCyBB8TXm9+xjBE0kLBw=;
 b=ZImRXK2eISPkdK2mdP51X077s6DBUxlxRwug1ebb/muNQTrH0h3JQLq/YlM/p4QssytnS7
 rslKjNDaKfH3ZAd9z1TqTmq+iBIOdhTNnZokxcxjIEa/DI5eoGR20tEMbkx/JceWBHQrqg
 18+SZ8Fo+7lAYVQoeW9+v+ShE5+WwdU=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-coHnGXkSOh66C2DhB_E9SQ-1; Fri, 10 Apr 2020 15:16:20 -0400
X-MC-Unique: coHnGXkSOh66C2DhB_E9SQ-1
Received: by mail-qt1-f200.google.com with SMTP id g55so2644573qtk.14
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 12:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mwSL4Svde7cDyREN44P4y94Qc6dx9Sv2bNY13UCrEho=;
 b=PuzMDwONIMLONl1XD8b60l6H4bEk7hrWWVOFFPFwCAS8+jOt264bIh9MQWx9Brt7KU
 DgmAP9ZlPnTwB9EpHu5Ppbi6nfa+uM5U9+VH2v8yu5xeFoL+JZzjRXrBYJ+isBCg1Z3y
 knYM6xnZHiOu/RAoUsURpToitXOLGUUC2dGORqDDVoi5YkFZxbAP9NfG0cYxDLl/y7wJ
 BNM/6CycKHlw1LNjzxsGCHlHrlPmeFf+dvtPVlQswwz570IxgIZnae1ck+EFbjhc/esa
 KUEwA9d7RCwjJCQZxgsahDqX9Fye1jKE16Jd1P8ur1GBk4xFIwgdhTXbns1z5wKD0Zox
 /kew==
X-Gm-Message-State: AGi0PuYsm8IRiU9G0j3Y6XQUEfxP91gkF9JjMJplyoTrFbwVumWhmH7x
 zBl/Ctp5b4Ba5Ymi3ARu55MAua/n0FcZw9vi/fNZ3CvAQfoQWKrhA6CLYh82SZAN1mmaIXfTO8d
 evi9Nc1Oq9oZI60EGWzAV+oXJbVZ5zTHmjYI=
X-Received: by 2002:a05:620a:89d:: with SMTP id
 b29mr5792457qka.329.1586546180326; 
 Fri, 10 Apr 2020 12:16:20 -0700 (PDT)
X-Google-Smtp-Source: APiQypLiuHO8rQfrWs/w6IUs43Srn34pCDFpZie/ieWUpJNT3bX04my6S/Xtwb+5j5ZmCFgzwIqbpg==
X-Received: by 2002:a05:620a:89d:: with SMTP id
 b29mr5792202qka.329.1586546177111; 
 Fri, 10 Apr 2020 12:16:17 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id b13sm1590230qtp.46.2020.04.10.12.16.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 12:16:16 -0700 (PDT)
Date: Fri, 10 Apr 2020 15:16:13 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 1/4] hugetlbfs: add arch_hugetlb_valid_size
Message-ID: <20200410191613.GD3172@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-2-mike.kravetz@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-2-mike.kravetz@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:38:16AM -0700, Mike Kravetz wrote:
> diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
> index 2eb6c234d594..81606223494f 100644
> --- a/arch/arm64/include/asm/hugetlb.h
> +++ b/arch/arm64/include/asm/hugetlb.h
> @@ -59,6 +59,8 @@ extern void huge_pte_clear(struct mm_struct *mm, unsigned long addr,
>  extern void set_huge_swap_pte_at(struct mm_struct *mm, unsigned long addr,
>  				 pte_t *ptep, pte_t pte, unsigned long sz);
>  #define set_huge_swap_pte_at set_huge_swap_pte_at
> +bool __init arch_hugetlb_valid_size(unsigned long size);
> +#define arch_hugetlb_valid_size arch_hugetlb_valid_size

Sorry for chimming in late.

Since we're working on removing arch-dependent codes after all.. I'm
thinking whether we can define arch_hugetlb_valid_size() once in the
common header (e.g. linux/hugetlb.h), then in mm/hugetlb.c:

bool __init __attribute((weak)) arch_hugetlb_valid_size(unsigned long size)
{
	return size == HPAGE_SIZE;
}

We can simply redefine arch_hugetlb_valid_size() in arch specific C
files where we want to override the default.  Would that be slightly
cleaner?

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
