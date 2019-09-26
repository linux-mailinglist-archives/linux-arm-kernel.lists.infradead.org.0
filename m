Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384ABEF8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzKeZ4DZ3ROZtbCYftmvWCQ3Puw1N+/o1b+vwH/fu2o=; b=j2J2C0iluzwFa5
	6X9nMZROfIlCvIjCEL8dM2Yd29iCBUIjv+JbLHl8jWRupkvrU1IdeBD0ZOS0xAneprH04M8mXNXmj
	COxGT6AeyT1QrZivnX/MWQlNIgdNRquWwvkSZGtedLqPWUFhEjoe8YKKGKHfyDKRXtCa3OUogTcN6
	TAiEQVrpNKAaTp3/MwRxs8bFfaRiFi3FcsZcLcdxd7kGdLuQkQp73w+IJG0tWkReTQPNN92ZeyfJt
	n2lIvn545bDuTp7ncps4iSuJNVCJLI1c6DAKDnijQby6GSDYmE+vQm0mg1uqvHybH2djdg/g4Q4T9
	rYUp+xMxBN4gPuwbgQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQyW-0005jY-UN; Thu, 26 Sep 2019 10:26:17 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQyE-0005dn-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:26:00 +0000
Received: by mail-ed1-x542.google.com with SMTP id f20so1468706edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 03:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sZySFJLySHqAg+L9VV4WCP/n21XzxDuSfHpOa9dXZmk=;
 b=V6fllti1rZHNM40XpXtG1W2Ot4VDBW2UHagEWW0u0MoI0rDFExg7qiEEC4Kx0BkJUO
 N39Zd2scOCpcawHLCt9EgBnxj3aafD0HolLGIy87seuTK4yUMVbDI6o0IMeV8c8kl2q3
 Wf5SnYx+eKbP+/RCIcXsFXduLye95DPO+JQHh/WCLvCUGlPh8nGmH+sogm+pvP4xBNfx
 h4JNIqEgrzXC8r7pu68KwoXWKMGCd2MHljTYxWD05iLCWWxyObBk3ZBW/VCrlMrvtx7F
 z59l19lWm8GhC67PPTck26crrkv0RUiagsUS97uZ2h069vyeKg0ny5eU8/EERwCbbDGs
 R3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sZySFJLySHqAg+L9VV4WCP/n21XzxDuSfHpOa9dXZmk=;
 b=YIKxrUgaIlXHNhcTAqCs4nt5sVquQDoBjEzfGhQZ6Up9AbQf/ChcT2pokvGyIT0SQ5
 bdyr4mVwTOE4UtP7NcdIEuaLacTWdbFFviQIEwjZViFNmUljddmPDMQiBGmj/x+G7CFF
 Nb1fouruF7Z1GXjC45nkLkwV+f+q6jhA33ciTDv2Rktn0RrXiwS3pDdHu7kMoQFOeWFr
 ThrVjEQ4kF04AMpMZRVXnlq06iLAteUlXR1+TcD+k402h8xhrT9Df8IvOpeq/zEVyKaI
 b3N2zPDqu/v3kuM7PwWj+wVMhqRkVV3uJ+Bqx/eSh2E9boxwWMzXP1fE1INp2Jv5eVsf
 j8AA==
X-Gm-Message-State: APjAAAXN7uW1h7sWE6pnRLZvcUYojJ4ToIzUPNMb5ql9ICGm3taVunPZ
 Y87fB2SKN933P5atPsn9Qwqxpg==
X-Google-Smtp-Source: APXvYqys0ai/BvbbRaO+GKiiNYldqfE2MTNlpzGoSrB2YWZd0rbFIaSycO3c42IMKl9185PoXnzMPg==
X-Received: by 2002:a50:cfc7:: with SMTP id i7mr2606367edk.89.1569493556435;
 Thu, 26 Sep 2019 03:25:56 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id ng5sm187555ejb.9.2019.09.26.03.25.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 03:25:55 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 7FBCC1004E0; Thu, 26 Sep 2019 13:25:58 +0300 (+03)
Date: Thu, 26 Sep 2019 13:25:58 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v9 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190926102558.jlessqelf5k3havb@box>
References: <20190925025922.176362-1-justin.he@arm.com>
 <20190925025922.176362-4-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925025922.176362-4-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_032558_826316_032921D6 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Sep 25, 2019 at 10:59:22AM +0800, Jia He wrote:
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
> Signed-off-by: Jia He <justin.he@arm.com>
> Reported-by: Yibo Cai <Yibo.Cai@arm.com>

Acked-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
