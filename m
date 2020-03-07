Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B152517CA32
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 02:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhBCfq0kNAeqS6vlgeQYsYS0+iV5M0aL8PYXpqrMTV4=; b=iKaYP/5jR9z8J8
	InnwFb9rVGURORPIi3g29/9ytxHRdI6rY9COuX7xYYD+Lb8ciFlMumY/w8kTQtZroI+T5+Hxcx/Ei
	bzPdW+aaIWd9yBGRF/mG2FQP9UJti7EN3cYV+nUPDqBXJ/fGgcijTNlGnWR+kBJn8RfofctPGX8uY
	lFIeNii8usKoA/0NytE1LLIwMhf8uwQwBYSw3LrhmM+L45nHwTyu94m3h3YBI12m5csmRUnIGTRdX
	kioQ3NqKDI00YvMNkHzMJad8+/z/nrTlV9Cy87ydVaQpCgDuYtDQuXJm+Gc2aks/gVFSFf2an2YQX
	jqsQTTc28H/HPvwOIaKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANzl-0001KC-4g; Sat, 07 Mar 2020 01:11:13 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANzU-0001H4-V2
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 01:10:59 +0000
Received: by mail-qv1-xf41.google.com with SMTP id u10so1869152qvi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 17:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EgkVlU+1chmZAdNkyF5q9aYrIAuysLZZez5WmPdEesQ=;
 b=EGv7Xx0mZhZufvegZpMUc+XHUkn93SE5ZYbqMRcl5l03s/x6c5RGn1Ma2qadFUAf7S
 mDQMjSqV0IMWb0LKZbXtHgPTizxmZGQTJdUUxxDOzRNaQofngetBXfwNZBmrbUir4STy
 e3xaR5vaUH0X/eG5wGlkW6iyRZ9+AVrlHBQUd8rTQK2YW8J6Zd2RLf0s/Z6jQ5Xya9vu
 aeJUNlgp7kS5lPRKKgCNzhDAIzhO4wqNELMKCmK5Pf7jkprIcuqhfAVWcp5Z+XuxcskU
 0FpMxIT78jjgIVAOm8sfqI2jqD5aX8zFE6cx/mP42YiyM5KNoK8iovEJATfquaQSZhHz
 6eAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EgkVlU+1chmZAdNkyF5q9aYrIAuysLZZez5WmPdEesQ=;
 b=FXTtBwd8H7aJZ5AZmYXMutmAwKB6jKs5BBBU4h4TeAZPKtl7NzdJGzTHetvBgwydVG
 HJLsGA+FDAC206EsxZiitCDwlUXJeLwitXLT5zdVMNkQYXuFGWABUrKrz6Z1wkbCjEQY
 vkrN9vrWSnHrn4t76Chbk6lQrtwSSQMHydGkC/QLziLqnWRgWopC4qInVW6Erpdit8X1
 5V4XONFJQO7EROBKuX7ShmpMBW8TnXQkJ1lWq/XzvS+jZH/2dR8kO8+rVujprT2LuLLZ
 8iekHp+hpFA6o11DApRn75zJfDqTfZr2TJuz87DmkWe8luEP0Oyqd0HfJVjxfbjufZu+
 NvdA==
X-Gm-Message-State: ANhLgQ25ZvWh5PoehbiQ6MLL5/QdxLlXbPcST0wqWNIBz7ay8jpRTurN
 slmrymk2HEb1SMTq+B8D3nhCKA==
X-Google-Smtp-Source: ADFU+vsw52nux5Uc1WpPZ0fNtyFcwSVbVBgSYAhgVo8M+FINwP2UYIzF3QTk5i6KnfgTnuq5ecGdaA==
X-Received: by 2002:a0c:e401:: with SMTP id o1mr5556949qvl.19.1583543455511;
 Fri, 06 Mar 2020 17:10:55 -0800 (PST)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id d35sm17605260qtc.21.2020.03.06.17.10.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 17:10:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
In-Reply-To: <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
Date: Fri, 6 Mar 2020 20:10:52 -0500
Message-Id: <C65A91AB-3F70-4120-893D-2751601C0F25@lca.pw>
References: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
 <CEEAD95E-D468-4C58-A65B-7E8AED91168A@lca.pw>
 <a45834bc-e6f2-ac21-de9e-1aff67d12797@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_171056_995887_610F154B 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Mar 6, 2020, at 7:56 PM, Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
> 
> 
> On 03/07/2020 06:04 AM, Qian Cai wrote:
>> 
>> 
>>> On Mar 6, 2020, at 7:03 PM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
>>> 
>>> Hmm, set_pte_at() function is not preferred here for these tests. The idea
>>> is to avoid or atleast minimize TLB/cache flushes triggered from these sort
>>> of 'static' tests. set_pte_at() is platform provided and could/might trigger
>>> these flushes or some other platform specific synchronization stuff. Just
>> 
>> Why is that important for this debugging option?
> 
> Primarily reason is to avoid TLB/cache flush instructions on the system
> during these tests that only involve transforming different page table
> level entries through helpers. Unless really necessary, why should it
> emit any TLB/cache flush instructions ?
> 
>> 
>>> wondering is there specific reason with respect to the soft lock up problem
>>> making it necessary to use set_pte_at() rather than a simple WRITE_ONCE() ?
>> 
>> Looks at the s390 version of set_pte_at(), it has this comment,
>> vmaddr);
>> 
>> /*
>> * Certain architectures need to do special things when PTEs
>> * within a page table are directly modified.  Thus, the following
>> * hook is made available.
>> */
>> 
>> I can only guess that powerpc  could be the same here.
> 
> This comment is present in multiple platforms while defining set_pte_at().
> Is not 'barrier()' here alone good enough ? Else what exactly set_pte_at()

No, barrier() is not enough.

> does as compared to WRITE_ONCE() that avoids the soft lock up, just trying
> to understand.

I surely can spend hours to figure which exact things in set_pte_at() is necessary for
pte_clear() not to stuck, and then propose a solution and possible need to retest on
multiple arches. I am not sure if that is a good use of my time just to saving
a few TLB/cache flush on a debug kernel?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
