Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D91B9E0B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 15:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EYtqr3rfYe6jYmJ741f1dsEQUPEbDd4rigc88U4DPQA=; b=oQ+qZPuLkddxOwdMwmSjPgPrg
	z5WZlmFbOZv7k1Rl/KncrGV532dUt3AQQCYgxqasHALKCbXKON77KhpQknJ5yZEYpRRd8cSfKUcQz
	YVoEDdHYhdyGG4zidxp9MchReSiyiNZAv/I6xPgbELPSn3KeFI1PYe+XcVBMQrnTvP3J5P7jIGJHX
	io1WWH6nur8ZhBQKM/Gy50quLH9d9Ce1wJT/EcKlobXEbtkse9CdJb4zRn5yEueL3PfgM1q9S17tg
	QAE2EmVp302AIocZHMN2xKGKB0E0x+W6msgWMKwwZSTZH9Ig9JdzH2t5E8MK150kq350JXZpYw1Zd
	WGpOerFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBfJF-0003H8-35; Sat, 21 Sep 2019 13:20:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBfIo-00037l-MP
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 13:19:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id d4so2305529pgd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Sep 2019 06:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=W+8ekTa9bxVsBuWJwU/8AJ+YtRXTgXJvM5aflsiRw9k=;
 b=uV1iPiYQk1e6NbfNJ8We8iK7oluOWL0Hk/ZMhuNR/wjLhXsjJTusXf9UaZmH2Q0smn
 XtW9GB/AJkWCGsk8XFi4goxBDmeexyzPbU8dolM29bc2w10bdNX1OZ8FHmhb83mBoFfr
 cZRPBsw6cFySPnUfGpXU2GXwraRqgtPx9YeG6qXrVCBfVp1rL0kqadMOa83zSH7CnTF5
 kxholiBotGcFAj8yDqBO/onLZEDfdwRjQ+10a+NS2vlPl5xnim4sOyWVZRvzgcxevPxQ
 TJn2z6Ny9m282Ymd9CipIPgk7VvugoclMMFIvSxEH4mRjnNi5qQAHyNSAhmuGzuhpJCN
 me9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=W+8ekTa9bxVsBuWJwU/8AJ+YtRXTgXJvM5aflsiRw9k=;
 b=YoIFQxZiCXBH+sYBC0wU1aL4wnPT0jaM6UENs7Xf/2zd4NHqVEKVSbFFsiRWGcuiGk
 MgHsbFTIXC59mwgcBCQHiOkUmJ+E+WYpKn/U/Cnl6OXdoxE+JJC7AODTxaCeC1A4869r
 cxFYNiEpKU30eoGAcqqBbzf+X0lnRDm1DEIE81qxvenho4ygyoaaSM2xQQkBSl7A/eLm
 22Xp/mr9moMADWJn3LJa/mdwZ6eH9DnlQaM4ye88tHmkhlaVZYvL+heFw6+dRMHFaLNW
 3PB9rHUjvUAO/O84lsGVyQQvOkEof+DdADod611Fi8o43XQwHlllmPraWfdfJNa/fm3S
 Ijsg==
X-Gm-Message-State: APjAAAX42D7HE7rGGiJ4rNX/C6afzzMtaFQOuz2kM434utWi4YgckYda
 g52I8LOe3j71Jsy7Tk6u2x4=
X-Google-Smtp-Source: APXvYqxWEUGpJd2yL4QrtTGoorZe0rFzJ80dXXaylsMldnIkT9DQkSFOhoFFuZ/0b5RKiu4t41Ut7g==
X-Received: by 2002:a17:90a:3387:: with SMTP id
 n7mr10004663pjb.26.1569071993741; 
 Sat, 21 Sep 2019 06:19:53 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id d76sm7941194pfd.185.2019.09.21.06.19.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Sep 2019 06:19:52 -0700 (PDT)
Subject: Re: [PATCH v7 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
To: Matthew Wilcox <willy@infradead.org>, Jia He <justin.he@arm.com>
References: <20190920135437.25622-1-justin.he@arm.com>
 <20190920135437.25622-4-justin.he@arm.com>
 <20190920155300.GC15392@bombadil.infradead.org>
From: Jia He <hejianet@gmail.com>
Message-ID: <dbfc9da4-6650-5c9e-59c6-16e0f234b9c8@gmail.com>
Date: Sat, 21 Sep 2019 21:19:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190920155300.GC15392@bombadil.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_061954_836386_E44F2B0D 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[On behalf of justin.he@arm.com]

Hi Matthew

On 2019/9/20 23:53, Matthew Wilcox wrote:
> On Fri, Sep 20, 2019 at 09:54:37PM +0800, Jia He wrote:
>> -static inline void cow_user_page(struct page *dst, struct page *src, unsigned long va, struct vm_area_struct *vma)
>> +static inline int cow_user_page(struct page *dst, struct page *src,
>> +				struct vm_fault *vmf)
>>   {
> Can we talk about the return type here?
>
>> +			} else {
>> +				/* Other thread has already handled the fault
>> +				 * and we don't need to do anything. If it's
>> +				 * not the case, the fault will be triggered
>> +				 * again on the same address.
>> +				 */
>> +				pte_unmap_unlock(vmf->pte, vmf->ptl);
>> +				return -1;
> ...
>> +	return 0;
>>   }
> So -1 for "try again" and 0 for "succeeded".
>
>> +		if (cow_user_page(new_page, old_page, vmf)) {
> Then we use it like a bool.  But it's kind of backwards from a bool because
> false is success.
>
>> +			/* COW failed, if the fault was solved by other,
>> +			 * it's fine. If not, userspace would re-fault on
>> +			 * the same address and we will handle the fault
>> +			 * from the second attempt.
>> +			 */
>> +			put_page(new_page);
>> +			if (old_page)
>> +				put_page(old_page);
>> +			return 0;
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
> That reads more sensibly for me.  We could also go with returning a
> vm_fault_t, but that would be more complex than needed today, I think.

Ok, will change the return type to bool as you suggested.
Thanks

---
Cheers,
Justin (Jia He)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
