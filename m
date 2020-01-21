Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F81143F7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmC8zrduXsCgLs/A1TbqG6yGsa0CQTXwi1oxqDWKI+Q=; b=MbrkjRggXyQNdw
	rNlpxEFGC9czRpuSLKTRRFBK4moxMREthqpNMUrJIDYfuJ/KbfDtsYxnxIwUq02YL02CmdYg0TzVV
	rAfmDeUSsdvrH1TTnSljUtr5K0/iqLP88T7W2/HwtWaOT0NapzmaAKz8DisEbWs61Ic8e6cTditrL
	iNlodPyRe+F1xu3GVW9j3LLrX7eMAyXJlJ/ZJMI7P9pu/J9xmITvMPD1PDT587HmLk8rdLjqOlwC5
	8QtOi9G2w1cunlK3JWb13n01FPC1RapwOHVWOHMmO/QC/u5dHU+5aBrw8Vk/7wf3Hsjwy4041QtT3
	TM9IiYTPQIzf69lZ6KtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituUT-00024b-Vo; Tue, 21 Jan 2020 14:26:49 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituUE-00023O-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 14:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579616792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wB7oBUxPFMMo41Dhy/A6/q8IlRImdTJH/qsnmSwn8s8=;
 b=WqoFpARTASpKWwDltI26olZfK954Dhqg7w1nvh3sv/tjEpn6+ZwC3nE90oumkazBfQxjTo
 6JvuX5aYebd9JY55nMz3kJF0ndOl8Jhk3aI8D2V6Mp/1FyLn96sgR75gpIOn/prbPt06mW
 RhD5T4a+Lswq7meOzMPvGz5W3sLQtFg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-CbVFb_xUOEW9RQwzKmwgyQ-1; Tue, 21 Jan 2020 09:26:31 -0500
Received: by mail-wr1-f72.google.com with SMTP id b13so1359580wrx.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 06:26:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wB7oBUxPFMMo41Dhy/A6/q8IlRImdTJH/qsnmSwn8s8=;
 b=hJ18VaUeTh/84S9HG3on4xqkOZpt19PFSOsKgXO8y36ws4UfklaUMqvaeqFkBVmr+D
 igQ+rTbhuU+zSfJqW8LapRNAud+W+t3vY2C4pR/TuWYRjl0gNtSdf1w4XvRUmdh5u7e5
 UgxuzDFGRl2gk2Get9IkRFt+tMz1JzuhwuaZMjpu/lU9RpzVg4H5/6Hst6HmUD3fnqC7
 1x/z+OBjknk/zJQu7zHwFqR6gxGoj6M5cDnk4WtgLJfkINzGzVtHvyHdRU1D+sMzIiTX
 fF84a0ewjQTXqXEVJ1vy8NhPuu8eUGNmjYPAh/Y3IhgEOQ+hAkbnpfQRH4PicLMLolxU
 EoKw==
X-Gm-Message-State: APjAAAU73gvCAA7NzLNg6IaUskchSDWAfQBZUXrdklsDlOts8GtiJY8G
 T7mtgZdP06JVeRKhx6/fs+aPF1eekL5TxJCuF2guEoqsCgpBji0s2qY171E372ewJofir1XJyv+
 OTToJPG5PeKphb/8kYatm/vulEtLoCTnSl4c=
X-Received: by 2002:a5d:6089:: with SMTP id w9mr5614959wrt.228.1579616790218; 
 Tue, 21 Jan 2020 06:26:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxWjz4Oe+H/gSHDnoSQ5o2pah30WIinDPbt454AQ/QK4v/OQZOFatnXxkc9zEh4soAyNb9f2w==
X-Received: by 2002:a5d:6089:: with SMTP id w9mr5614921wrt.228.1579616789896; 
 Tue, 21 Jan 2020 06:26:29 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:b509:fc01:ee8a:ca8a?
 ([2001:b07:6468:f312:b509:fc01:ee8a:ca8a])
 by smtp.gmail.com with ESMTPSA id q68sm4727432wme.14.2020.01.21.06.26.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 06:26:29 -0800 (PST)
Subject: Re: [PATCH 05/14] x86/mm: Introduce lookup_address_in_mm()
To: Thomas Gleixner <tglx@linutronix.de>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
 <20200108202448.9669-6-sean.j.christopherson@intel.com>
 <871rs8batm.fsf@nanos.tec.linutronix.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <175cef39-1e0e-d1b7-69bc-95a3a2a651a7@redhat.com>
Date: Tue, 21 Jan 2020 15:26:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <871rs8batm.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-MC-Unique: CbVFb_xUOEW9RQwzKmwgyQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_062634_258241_742DB42D 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Barret Rhoden <brho@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, Liran Alon <liran.alon@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Jason Zeng <jason.zeng@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/20 22:04, Thomas Gleixner wrote:
> Sean Christopherson <sean.j.christopherson@intel.com> writes:
> 
>> diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
>> index b5e49e6bac63..400ac8da75e8 100644
>> --- a/arch/x86/include/asm/pgtable_types.h
>> +++ b/arch/x86/include/asm/pgtable_types.h
>> @@ -561,6 +561,10 @@ static inline void update_page_count(int level, unsigned long pages) { }
>>  extern pte_t *lookup_address(unsigned long address, unsigned int *level);
>>  extern pte_t *lookup_address_in_pgd(pgd_t *pgd, unsigned long address,
>>  				    unsigned int *level);
>> +
>> +struct mm_struct;
>> +pte_t *lookup_address_in_mm(struct mm_struct *mm, unsigned long address,
>> +			    unsigned int *level);
> 
> Please keep the file consistent and use extern even if not required.
> 
> Other than that:
> 
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> 

Adjusted, thanks for the review.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
