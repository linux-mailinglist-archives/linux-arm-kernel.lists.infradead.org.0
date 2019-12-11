Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA011B9C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eeurZFyA0+SpYbdPrj8PLEZ4tbcfgfXtu1T/UifQ1Q=; b=rc6h2tqy0kLGFI
	IrD9fPd09wGOJlVD5ko1VHiPgKBtrTaq3vLScSSnIlgko/5MzMzNYzE6TbbhxrCEDF7VdmhQiN/kE
	sbZNqjTvJg5suYaZ40XXHVQOZ/ns6GVcP0Cl7+8cguaYZ5eaIuKepchbQ9wonZz1t6aSEkOHxFouy
	kp3AWuHYa9IeS14PjDAiCnObPyTk9w4QHENClrUuIsCGEMpY54OnGa0cKUK8MSqS1Ka6G6QS60iEN
	6L6y0KSposCBXtbsh4IgQOVyqzQU81OvUslhjvkw8KkAbinK1cmLERkqoaaD2Z90nbDotLpHvdM8/
	e9lTUTJI6mcAK6kKCWBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5Xt-0002op-Ey; Wed, 11 Dec 2019 17:13:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5Xk-0002oM-OH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:12:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so24929142wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 09:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=87+nbO7EsRQpe1wmSikO8vry0s4iwAAY074PAWZUn2w=;
 b=HcsFv2I+5GpN8tthV67smYXfufVMlWaYkFgMpkaFzDGdfjp3TGIZLjlMspfT4yePt8
 dFSnPi7iQLJduP3wwTLzsCAM9YhX++2smHKxYvO/dNtL0r/Cfx0wTLsJASTpLU33FaFd
 vV2cmdcUjYag4Yspdav4q6tvir6wnV5/6ZWzOCYOIEzS2dVUKOv+w6eTtgQxfZSIyIeI
 tY8Q3yuYWrKD7iczRVzQMwyU0sz8+NBZyQZj5hcREfBBKevQUlvjvfh2mRKNXC9eaaid
 HtqBvKiHPHM4TD/9eJI85G//q4Q5ANEs2JUVrHz+jwzjo7KLz3C4KxqzjOSCx9RpkIFM
 jWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=87+nbO7EsRQpe1wmSikO8vry0s4iwAAY074PAWZUn2w=;
 b=kGjSZ0+hPItBffOlIZ6YLNQtwy0hoTgMWmxorvOEFD9B5Cousn2Fb8rtuoHhcTpmKK
 BEd1dz8tRe1qBf+vYquieBg1us0VG5ZTdLZKecNdMTRC7VjjdKrs7QEdch1EtmbJAgj/
 +Th9iCchkj8WAWkuTs2s7Mu2wqpcD5HFKMCCGaH8zrz6pgyEHM+/TYglPbFpf/n77ihn
 sXYS4KiRkZhRZuRo/lsZ1ZQE0ivZQNVejkV/npS6+EGtiK5h1NKY/f6Zk5IaRl0hy8Jg
 6BN0gdsiUKfqI/l9c0N6L7JQHuHm0Uf2Cc3A6BQUofTr8iPLygNVucFILSDtqTA+8Jfz
 gG8A==
X-Gm-Message-State: APjAAAXOoYtBwnb3hxiwaqsnI/pKwocbz3W5JAAOcX5NDlIqgwujM4EJ
 ebtPDROgB7cqo3UQ4C5GHdA=
X-Google-Smtp-Source: APXvYqweJn+YpFwyn3LDIvxX4iMjbKa0WcfWqrhUUtEz4LpLSFHJwQKsC27YRGAVas14wLiu98uruA==
X-Received: by 2002:adf:df03:: with SMTP id y3mr996018wrl.260.1576084374686;
 Wed, 11 Dec 2019 09:12:54 -0800 (PST)
Received: from ltop.local ([2a02:a03f:40f6:4600:d98a:4956:14c2:2b5d])
 by smtp.gmail.com with ESMTPSA id 2sm2973189wrq.31.2019.12.11.09.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 09:12:53 -0800 (PST)
Date: Wed, 11 Dec 2019 18:12:52 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v16 13/25] mm: pagewalk: Don't lock PTEs for
 walk_page_range_novma()
Message-ID: <20191211171252.fdbdqn2nrze637gm@ltop.local>
References: <20191206135316.47703-14-steven.price@arm.com>
 <201912101842.KIXI4yCg%lkp@intel.com>
 <e0fd5594-fb4e-9ead-e582-544f47cb1f8b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0fd5594-fb4e-9ead-e582-544f47cb1f8b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_091256_810845_D8DA2C74 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, kbuild test robot <lkp@intel.com>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@lists.01.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:54:06PM +0000, Steven Price wrote:
> On 10/12/2019 11:23, kbuild test robot wrote:
> >>> include/linux/spinlock.h:378:9: sparse: sparse: context imbalance in 'walk_pte_range' - unexpected unlock
> 
> I believe this is a false positive (although the trace here is useless).
> This patch adds a conditional lock/unlock:
> 
> pte = walk->no_vma ? pte_offset_map(pmd, addr) :
> 		     pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
> ...
> if (!walk->no_vma)
> 	spin_unlock(ptl);
> pte_unmap(pte);
> 
> I'm not sure how to match sparse happy about that. Is the only option to
> have two versions of the walk_pte_range() function? One which takes the
> lock and one which doesn't.

Yes.

-- Luc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
