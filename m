Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617C4B9193
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXNuJT5Ko6aZIkOJbncb5lx/5m8AzC0WbzCVAWdBRoo=; b=Ig7tnDIaS8xmXb
	Ja9gjnd5sJIjxdTzvl3bKUuD463bnNNNHtjZQbbaO0nkBY1sm1IUCUvKAn6+S15bEbTCW4UxYylNq
	glwbCKeyAP5QJXpmQlgdLMRNBK0V6mpD4SzTVZwHpB8/JNVQbSTZmcROTFUgZob091bNqfb07GAUw
	u8sbC56JOEC4WdbdsN5r8auQQvh0MGGKq34aBz60duMz2FrYmdxy3DXaPocbdkAklvwcqzSZ+qaga
	t2T+w+Kkb105xMKyq5byMfoZWZdeMGgjXOvXYQihUmSTvFwbmBDksmTwSFf8imblQHDG74mrvtKvW
	8DMv1jF4CNMou0vTrv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJmk-0002O3-3J; Fri, 20 Sep 2019 14:21:22 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJmd-0002NA-Mr
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:21:17 +0000
Received: by mail-ed1-x541.google.com with SMTP id t3so6554320edw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 07:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BsObysdauMqFxQskSLuaANmrbU7y5OuxMxy3HbJkoH8=;
 b=yLfvnX9xGqCtoBtlknnpzBw2B3alTmNk3CXvDaf3MoBnN9PZaUdqLKOkT9Zzh/n2OZ
 SbD1/4Gj6cP3aQ3iwHLpmUQ2nYoif61BK45NZZpQ4xgYet8vCIJtZZ0g2qNLLsC7NQ8Z
 DjkOXKCNXhfgfNkhIvAiJmmSTB3991s02/L1RlMXWEpQWTyCZBRv0OCy9MJOENQS/bav
 6t/uTMbrBaUhwoSZkv76hO5m1yScZU92EeaOPA4UzOax8JCzIFw23PfzQl3JBdx6KdyI
 hsQ4SUOsTdBkoEC4cbFw3wKzPEQvIhKU7o5rgqrJlGmwI5fBkqR0xZ8bMGc+EnyV6y67
 ZWPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BsObysdauMqFxQskSLuaANmrbU7y5OuxMxy3HbJkoH8=;
 b=sJ/x3sV+6c6Ts92ItkYlqBjAcncgsiVu6K4a5996ELQtFvsf6mvVlW8y1xk05782Jj
 jcTYRWt3cL38SE+Mp8+kFbWfirPVoek/zu1QGt0dOHNVb1I23yl/6/mzMwUiYxOUCC/U
 Itc7JKKs+n6WGaHjznOeK2adBvXFxShPq3j2HvSjtFY10B2enUVGXwVyp67KuHqHnSjJ
 ehntVpRoxpZTVfrtYu7M3gxD97kPl3Mh7hgRd7y3nVR2imj3/WM8+rJqT8oW+y5Hl2ZN
 MB7vYpFuFEqnIsdRVD/vbsaxPb1O6OWqBmJuAJo/diHyShz4wlI0idr6wMas87xfBreu
 l/Ew==
X-Gm-Message-State: APjAAAVSnZsdoO2mBsInypvvHlnQ+9Fokl5JEy+GhF3sPFWhXrMqj+un
 i9XLn974ERKLK4xwndDd1BJVkw==
X-Google-Smtp-Source: APXvYqynqm5TTKBimN51b6OZzEkRrwe+U7oN1i3ygL0xADjoA6jCeUaZdJrdhbRfLIjJwN06Jc3i/Q==
X-Received: by 2002:a17:906:6d95:: with SMTP id
 h21mr19767726ejt.192.1568989273886; 
 Fri, 20 Sep 2019 07:21:13 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id g15sm352149edp.0.2019.09.20.07.21.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 07:21:13 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 6733D101405; Fri, 20 Sep 2019 17:21:13 +0300 (+03)
Date: Fri, 20 Sep 2019 17:21:13 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190920142113.52mdiflo4yghlsmu@box>
References: <20190920135437.25622-1-justin.he@arm.com>
 <20190920135437.25622-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920135437.25622-4-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_072115_752000_58C53FE6 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Sep 20, 2019 at 09:54:37PM +0800, Jia He wrote:
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
