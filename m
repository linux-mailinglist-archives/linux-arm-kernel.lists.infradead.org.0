Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A0417631A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq1SFU3F+4UxVVVdvA+PANZxt1BHFrSqEHd++vnFx9A=; b=QCQQVdCu1FEPJ6
	5chiSlkRS5RSRTs+SXZiItfx47b+66DZ/dC2yBU6bnzBgI+AWSGUJ5A1EDcqtc7sgdzumOIqG2+sG
	oAhNR7Ctb+9c73zcmAtcbl8DjtG8VGGmHfxB/zT6a+crEbXk7gOssnH9n6N/9URzl/JLb42vpLM3I
	lSWTCennSHlaV5H8AWFVhkUmFughjaNZrewBdFDwiSIVYC4M7/akTMZHtA1CW6H4HczzsxLfNMSm7
	DQI5RWOu6QXIIEaX7T9wGpe8HmhWeQV0cONNJ0cbYvKzLOyeZh7vWfiaa+q+BOkHLRvH/7ZjmZ0+g
	5V7EzFczvRfxnw2Wr7FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8q6H-0003pk-06; Mon, 02 Mar 2020 18:47:33 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8q67-0003p2-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 18:47:24 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1j8q54-0005pv-89; Mon, 02 Mar 2020 11:46:19 -0700
To: Dan Williams <dan.j.williams@intel.com>
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-5-logang@deltatee.com>
 <CAPcyv4j=bZ5KBPp6PbViERdDe+HZpV_W6qbSJupTNAzyfiK6xg@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <1be997b0-e17a-5d48-efad-a01d84d5e496@deltatee.com>
Date: Mon, 2 Mar 2020 11:46:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPcyv4j=bZ5KBPp6PbViERdDe+HZpV_W6qbSJupTNAzyfiK6xg@mail.gmail.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: x86@kernel.org, hpa@zytor.com, ebadger@gigaio.com,
 peterz@infradead.org, luto@kernel.org, dave.hansen@linux.intel.com,
 bp@alien8.de, mingo@redhat.com, tglx@linutronix.de, benh@kernel.crashing.org,
 will@kernel.org, catalin.marinas@arm.com, hch@lst.de,
 akpm@linux-foundation.org, david@redhat.com, mhocko@kernel.org,
 linux-mm@kvack.org, platform-driver-x86@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-ia64@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dan.j.williams@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 SURBL_BLOCKED,URIBL_BLOCKED autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v3 4/7] x86/mm: Introduce _set_memory_prot()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_104723_057178_D98DADA3 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: X86 ML <x86@kernel.org>, linux-ia64@vger.kernel.org,
 Linux-sh <linux-sh@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-s390 <linux-s390@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020-02-29 3:33 p.m., Dan Williams wrote:
> On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>>
>> For use in the 32bit arch_add_memory() to set the pgprot type of the
>> memory to add.
>>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Borislav Petkov <bp@alien8.de>
>> Cc: "H. Peter Anvin" <hpa@zytor.com>
>> Cc: x86@kernel.org
>> Cc: Dave Hansen <dave.hansen@linux.intel.com>
>> Cc: Andy Lutomirski <luto@kernel.org>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>  arch/x86/include/asm/set_memory.h | 1 +
>>  arch/x86/mm/pat/set_memory.c      | 7 +++++++
>>  2 files changed, 8 insertions(+)
>>
>> diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
>> index 64c3dce374e5..0aca959cf9a4 100644
>> --- a/arch/x86/include/asm/set_memory.h
>> +++ b/arch/x86/include/asm/set_memory.h
>> @@ -34,6 +34,7 @@
>>   * The caller is required to take care of these.
>>   */
>>
>> +int _set_memory_prot(unsigned long addr, int numpages, pgprot_t prot);
> 
> I wonder if this should be separated from the naming convention of the
> other routines because this is only an internal helper for code paths
> where the prot was established by an upper layer. For example, I
> expect that the kernel does not want new usages to make the mistake of
> calling:
> 
>    _set_memory_prot(..., pgprot_writecombine(pgprot))
> 
> ...instead of
> 
>     _set_memory_wc()
> 
> I'm thinking just a double underscore rename (__set_memory_prot) and a
> kerneldoc comment for that  pointing people to use the direct
> _set_memory_<cachemode> helpers.

Thanks! Will do. Note, though, that even _set_memory_wc() is an internal
x86-specific function. But the extra comment and underscore still make
sense.

> With that you can add:
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
