Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98295B9618
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 19:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dre6Yjgo+Eve4tsBRdFKtJ7UsIHw/VV1kkTprky1nxg=; b=l0lCEwlXjfLptx
	TKu59QNN9g1HNgX7kZAd2cavzNJ0fhQZzv50+AZR9kCSuCzeMN0AK/sHh2BA05Pr0M54DXvV/pSxl
	1yKTEgxNFbk+HxqS2I2m1i23hckLVNcWaPrlflBX3PwZfDvSkJU0O8dAXn1aEVklDy6GC8LKQW+14
	qKgvVcEQ/3HyIf+kL87i7Xx8ZRE3elAtfHv6TJQowRc0Gh4C5sN7apSDSPm+bwvEe1KtpcumMdcZX
	0JrwQ7cNjSiZpuE9YPxW3QgVHW1LwnmYvMIygFVzze8smw7bpat/Pz6UP1LvUBdvZtYA2llsU1fS+
	FL1/ync3r4HHsB2GG0zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMGu-0004ts-2G; Fri, 20 Sep 2019 17:00:40 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMGn-0004t4-Cs
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 17:00:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id v8so7177697eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 10:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CoI9aEF1VTiw5Xhyqba7lfuNeKaTTzmcsltHbdSRkHo=;
 b=2OJhJbUbpQmn+x3xQD0IdUL9dWYC/YbYOg+H5Rw3+hLXeib7Fw/NkPDuWjgbqZRyhH
 UhmCvyDveVppNSNLWGUKKRYDph/8hy+GnlI9BVJWv0qh74USl2ktYfyjzTL8u4DiloGy
 HnmblWT8RimK7hpAAi8c6P5HsIihYVZ8Je0xC3YEpMKV9Yetl1W5YiYuZ+6wOC/Uh2Kr
 VZ1PH7IUzV63vSz619E375gvI6LfJ7yVXe1yfFLtVhvs0ek4tvLZGZloHPwyM+S9/UZ9
 gi+hz7IU0w427OYGIpgdEyH0pB9IaeIh59t9zYXHgLMoCPNUG9Oyu/8Emo7f+Ps51Xut
 LF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CoI9aEF1VTiw5Xhyqba7lfuNeKaTTzmcsltHbdSRkHo=;
 b=jsNdGyw7axbMY2rkUDO6EiuoFWmW5KDSxrXnqJ9BdZrr8cAffN/Z84WAFs/O+L3YxM
 wfM6f4lTp9ucTi6jtO17rXvkzjq1Kg4ctgH9AWk0MVByQS8OuIl4Q0Z4IxdI4mP6E3Cx
 yc5/7Q5A2pmK8MQu0SNe8ahO4Fr8lWz3YWifp2jnmKC2Zu87QkZmi8M8fSVd/pKFs5Kx
 +b6Wr6AgqCEFMOQBQcmE0pm6Y7r/emVINw/uPvDpVIncPzPn5Bq53fGQ9ivOE8lYd9Yg
 +yIDy/jEmeQp0HmwS5cWn/Gjkbpt2NJuOMunvfo8V70qOQgW464Q4G3tucUj5m4k88mV
 /VFw==
X-Gm-Message-State: APjAAAVTz77ALBWK4gCkAaR1dCScn4tYDQN6aguctwWlb9KD1Bqm3JKh
 oHmzmsM9row1LzxUnbGvmOgduw==
X-Google-Smtp-Source: APXvYqxVUZ2ch3TYcwVRBpaEIcvJMThHoIdj+VR77186UorLBRy6kohaNp2UxH3nVDesW7lAnd7TZg==
X-Received: by 2002:a17:906:5c49:: with SMTP id
 c9mr20265396ejr.78.1568998831579; 
 Fri, 20 Sep 2019 10:00:31 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id jr18sm285103ejb.89.2019.09.20.10.00.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:00:30 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id DB3CE10140A; Fri, 20 Sep 2019 20:00:30 +0300 (+03)
Date: Fri, 20 Sep 2019 20:00:30 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190920170030.bpse5rlpjodbiv62@box>
References: <20190920135437.25622-1-justin.he@arm.com>
 <20190920135437.25622-4-justin.he@arm.com>
 <20190920155300.GC15392@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920155300.GC15392@bombadil.infradead.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_100033_578126_4D985B20 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
 Alex Van Brunt <avanbrunt@nvidia.com>, Jia He <justin.he@arm.com>,
 Marc Zyngier <maz@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, hejianet@gmail.com,
 Ralph Campbell <rcampbell@nvidia.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
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

On Fri, Sep 20, 2019 at 08:53:00AM -0700, Matthew Wilcox wrote:
> On Fri, Sep 20, 2019 at 09:54:37PM +0800, Jia He wrote:
> > -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
> > +static inline int cow_user_page(struct page *dst, struct page *src,
> > +				struct vm_fault *vmf)
> >  {
> 
> Can we talk about the return type here?
> 
> > +			} else {
> > +				/* Other thread has already handled the fault
> > +				 * and we don't need to do anything. If it's
> > +				 * not the case, the fault will be triggered
> > +				 * again on the same address.
> > +				 */
> > +				pte_unmap_unlock(vmf->pte, vmf->ptl);
> > +				return -1;
> ...
> > +	return 0;
> >  }
> 
> So -1 for "try again" and 0 for "succeeded".
> 
> > +		if (cow_user_page(new_page, old_page, vmf)) {
> 
> Then we use it like a bool.  But it's kind of backwards from a bool because
> false is success.
> 
> > +			/* COW failed, if the fault was solved by other,
> > +			 * it's fine. If not, userspace would re-fault on
> > +			 * the same address and we will handle the fault
> > +			 * from the second attempt.
> > +			 */
> > +			put_page(new_page);
> > +			if (old_page)
> > +				put_page(old_page);
> > +			return 0;
> 
> And we don't use the return value; in fact we invert it.
> 
> Would this make more sense:
> 
> static inline bool cow_user_page(struct page *dst, struct page *src,
> 					struct vm_fault *vmf)
> ...
> 				pte_unmap_unlock(vmf->pte, vmf->ptl);
> 				return false;
> ...
> 	return true;
> ...
> 		if (!cow_user_page(new_page, old_page, vmf)) {
> 
> That reads more sensibly for me.

I like this idea too.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
