Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773691D6482
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 00:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9fMW6z5W87y2g/oqpIEBOX6PxPznAma1Rh6B4/kwq8=; b=H88KjJWrPRB/G3
	UZnaEy8mpNkE+mbMZDKg9liAZP4xcRTAkrLc8vioCe5wAXPpUr4nliyDXh8ilusN6JWd6S+XHP6I5
	E0kTsfOtojioRbjDPuIKIW544YSQ37ulgWIFc6uQ/7YS3HauUBK1UUyLmT4S22NejQyBq5ekiOMc9
	3AQru5V6RIpp5dpVbnbBTZK76SL8jjcIvfpNBwVKGyt7CqOJcPl8d18krlz0+r/FHl8yamIZOxhH1
	fvSMTe8bLXtSlmfEwmlUNKJ0LeIgFN5L4FYmYHTq0zpA+ei+y0TwmacuDYtRhYgNqnWQInncAIiXI
	d9otVmE1LIngO35otVJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja5Ms-0006ST-K0; Sat, 16 May 2020 22:33:18 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja5Mj-0006Ro-M1; Sat, 16 May 2020 22:33:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nu7so301142pjb.0;
 Sat, 16 May 2020 15:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vj3ZKk5i0HEzrSyFnN96bWdCY5i8K/6dkf5RChzT2ig=;
 b=ZexPATSHr7TALdW5suzyO0HE9DmxJQXNVHQ0JYd3NgIX/IZ0oCHjwnG0InSE40wRkY
 oxyal/oLFc0JhbpQqvIrfCEeGgUpVJV+GGU3iHCGwGRQq+zFWcgiE0onR5j/uJFtYKXu
 f0vU3LvSwcsRbyPK/k35OqSiFkk2ARLROQvkc07gSiGk9q1VqPHncuDmJC3Zz/e5NEBi
 N2RixgwTrQI6Dpk4/oJl0LJJykwxI0dqRNcVy8OxUq388yjIWGHs0NMrVPlJiuk6UECl
 NX9zX08qdEGrKDSrLmDEZrNnRxqqjpaHSDmsxnAMxOdv9+w3HJtGo7DYt/Q8BDDMwjlF
 6vAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=vj3ZKk5i0HEzrSyFnN96bWdCY5i8K/6dkf5RChzT2ig=;
 b=JI16b1RoLh4ex+fhgCQdSjnedyUDIYPZ76OqNLNPwq6WzCRtm797nGeJbuRGHrQvUS
 vpSNxRm1oMdBCVKUV+gq8j5Ae4i09+fP1uHWr095618O7te11MqYcw9w1sAOclIbkdIY
 /enrk8upB0+67bSkjBgLtyLDP7dMDhxghS+SNHjpQmhWC3o7oD5QVOejf5xLbbq9C5PJ
 wFS2oVzcJNPD7YlmJaU2D4dtmErywFcD/5OwUyLdPvDz+clQxblDvPYLW7kWSuOfMHsH
 70AxEifXyDSdbQvENx/WVgVxDozYKhie/yhDUouK/glG2MnReycDGeXq+YsezI4OPdnT
 54XQ==
X-Gm-Message-State: AOAM533pD4ZzNCXi6Ub2J8IFBHrwY6ZEZacc7oKSQi9qZ9LrPL5dq6ZB
 AwMMk4gF1wMDbxjgtON/8uw=
X-Google-Smtp-Source: ABdhPJwpG0/yP7Vs4M/H3HPMY6d7xUvEDfPCG28ANMmHTAEHrZxhJBJVmBjSecSOTX5/ONZsU65JGA==
X-Received: by 2002:a17:902:bc86:: with SMTP id
 bb6mr9492182plb.243.1589668388271; 
 Sat, 16 May 2020 15:33:08 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id dw12sm4633881pjb.31.2020.05.16.15.33.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 16 May 2020 15:33:07 -0700 (PDT)
Date: Sat, 16 May 2020 15:33:06 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: ira.weiny@intel.com
Subject: Re: [PATCH V3 07/15] arch/kunmap_atomic: Consolidate duplicate code
Message-ID: <20200516223306.GA161252@roeck-us.net>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
 <20200507150004.1423069-8-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507150004.1423069-8-ira.weiny@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_153309_770455_0C7D5A36 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:59:55AM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> Every single architecture (including !CONFIG_HIGHMEM) calls...
> 
> 	pagefault_enable();
> 	preempt_enable();
> 
> ... before returning from __kunmap_atomic().  Lift this code into the
> kunmap_atomic() macro.
> 
> While we are at it rename __kunmap_atomic() to kunmap_atomic_high() to
> be consistent.
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>

This patch results in:

Starting init: /bin/sh exists but couldn't execute it (error -14)

when trying to boot microblazeel:petalogix-ml605 in qemu.

Bisect log attached.

Guenter

---
# bad: [bdecf38f228bcca73b31ada98b5b7ba1215eb9c9] Add linux-next specific files for 20200515
# good: [2ef96a5bb12be62ef75b5828c0aab838ebb29cb8] Linux 5.7-rc5
git bisect start 'HEAD' 'v5.7-rc5'
# good: [3674d7aa7a8e61d993886c2fb7c896c5ef85e988] Merge remote-tracking branch 'crypto/master'
git bisect good 3674d7aa7a8e61d993886c2fb7c896c5ef85e988
# good: [87f6f21783522e6d62127cf33ae5e95f50874beb] Merge remote-tracking branch 'spi/for-next'
git bisect good 87f6f21783522e6d62127cf33ae5e95f50874beb
# good: [5c428e8277d5d97c85126387d4e00aa5adde4400] Merge remote-tracking branch 'staging/staging-next'
git bisect good 5c428e8277d5d97c85126387d4e00aa5adde4400
# good: [f68de67ed934e7bdef4799fd7777c86f33f14982] Merge remote-tracking branch 'hyperv/hyperv-next'
git bisect good f68de67ed934e7bdef4799fd7777c86f33f14982
# bad: [54acd2dc52b069da59639eea0d0c92726f32fb01] mm/memblock: fix a typo in comment "implict"->"implicit"
git bisect bad 54acd2dc52b069da59639eea0d0c92726f32fb01
# good: [784a17aa58a529b84f7cc50f351ed4acf3bd11f3] mm: remove the pgprot argument to __vmalloc
git bisect good 784a17aa58a529b84f7cc50f351ed4acf3bd11f3
# good: [6cd8137ff37e9a37aee2d2a8889c8beb8eab192f] khugepaged: replace the usage of system(3) in the test
git bisect good 6cd8137ff37e9a37aee2d2a8889c8beb8eab192f
# bad: [6987da379826ed01b8a1cf046b67cc8cc10117cc] sparc: remove unnecessary includes
git bisect bad 6987da379826ed01b8a1cf046b67cc8cc10117cc
# good: [bc17b545388f64c09e83e367898e28f60277c584] mm/hugetlb: define a generic fallback for is_hugepage_only_range()
git bisect good bc17b545388f64c09e83e367898e28f60277c584
# bad: [9b5aa5b43f957f03a1f4a9aff5f7924e2ebbc011] arch-kmap_atomic-consolidate-duplicate-code-checkpatch-fixes
git bisect bad 9b5aa5b43f957f03a1f4a9aff5f7924e2ebbc011
# good: [0941a38ff0790c1004270f952067a5918a4ba32d] arch/kmap: remove redundant arch specific kmaps
git bisect good 0941a38ff0790c1004270f952067a5918a4ba32d
# good: [56e635a64c2cbfa815c851af10e0f811e809977b] arch-kunmap-remove-duplicate-kunmap-implementations-fix
git bisect good 56e635a64c2cbfa815c851af10e0f811e809977b
# bad: [60f96b2233c790d4f1c49317643051f1670bcb29] arch/kmap_atomic: consolidate duplicate code
git bisect bad 60f96b2233c790d4f1c49317643051f1670bcb29
# good: [7b3708dc3bf72a647243064fe7ddf9a76248ddfd] {x86,powerpc,microblaze}/kmap: move preempt disable
git bisect good 7b3708dc3bf72a647243064fe7ddf9a76248ddfd
# first bad commit: [60f96b2233c790d4f1c49317643051f1670bcb29] arch/kmap_atomic: consolidate duplicate code

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
