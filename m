Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8719F124BEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPAhlSfdU6nClA5qEmtxAkZGq8LFjzj4Cum9HWVmAy0=; b=V+Hctsl5H7vIXD
	5KOhq3KJEQYwYxWsTifTGe8WxssuWyrC+a4UlEEm/+Sc0MTeRU4o6HJo/hGGxG2nW6f5iEl1Je18X
	U/n5G/BzMV2xvdYAqCWPRpx7J9mZPFtYwXcwkxBF0YgAuCM344Xk5Aa2FGd0Ln3meF8qPBFNtzv5i
	0frh7Tf9Vd56IAC+ej1fSprKIlsG16LF9+aDosB5VuhgpIDj2L4v2wDi0W34eM2sPXGrq+wXZ0uNm
	tRBz5sDC0J6NWtdmsSWto6qkfCDdmxP/gG98dScwXT8d+uB7Eb23yUv3idp2tYGwO2+cE6wKayv3k
	By26duVlvHGbWWLz59YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbRe-00065G-RE; Wed, 18 Dec 2019 15:41:02 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbR8-0005kY-1P; Wed, 18 Dec 2019 15:40:34 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1A7FE20425;
 Wed, 18 Dec 2019 16:40:23 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id F3C5D202EC;
 Wed, 18 Dec 2019 16:40:22 +0100 (CET)
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
To: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <CY4PR1201MB012059FF6735C3EDB7E1F8E9A1530@CY4PR1201MB0120.namprd12.prod.outlook.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <bff4c4ad-de8f-7229-1d16-7ea67e066f65@free.fr>
Date: Wed, 18 Dec 2019 16:40:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CY4PR1201MB012059FF6735C3EDB7E1F8E9A1530@CY4PR1201MB0120.namprd12.prod.outlook.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Dec 18 16:40:23 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_074030_430535_2E9F5664 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Peter Zijlstra <peterz@infradead.org>, Robin Murphy <robin.murphy@arm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/12/2019 15:20, Alexey Brodkin wrote:

> On 17/12/2019 16:30, Marc Gonzalez wrote:
> 
>> Commit a66d972465d15 ("devres: Align data[] to ARCH_KMALLOC_MINALIGN")
>> increased the alignment of devres.data unconditionally.
>>
>> Some platforms have very strict alignment requirements for DMA-safe
>> addresses, e.g. 128 bytes on arm64. There, struct devres amounts to:
>> 	3 pointers + pad_to_128 + data + pad_to_256
>> i.e. ~220 bytes of padding.
> 
> Could you please elaborate a bit on mentioned paddings?
> I may understand the first one for 128 bytes but where does the
> second one for 256 bytes come from?

Sure thing.

struct devres {
	struct devres_node node;
	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
};

struct devres_node = 3 pointers
kmalloc dishes out memory in multiples of ARCH_KMALLOC_MINALIGN bytes.
On arm64, ARCH_KMALLOC_MINALIGN = 128
(Everything written below assumes ARCH_KMALLOC_MINALIGN = 128)

In alloc_dr() we request sizeof(struct devres) + sizeof(data) from kmalloc.
sizeof(struct devres) = 128 because of the alignment directive.
I.e. the 'data' field is automatically padded to 128 by the compiler.

For most devm allocs (non-devm_kmalloc allocs), data is just 1 or 2 pointers.
So kmalloc(128 + 16) allocates 256 bytes.

>> Let's enforce the alignment only for devm_kmalloc().
> 
> Ok so for devm_kmalloc() we don't change anything, right?
> We still add the same padding before real data array.

(My commit message probably requires improvement & refining.)

Yes, the objective of my patch is to keep the same behavior for
devm_kmalloc() while reverting to the old behavior for all other
uses of struct devres.


>> I had not been aware that dynamic allocation granularity on arm64 was
>> 128 bytes. This means there's a lot of waste on small allocations.
> 
> Now probably I'm missing something but when do you expect to save something?
> If those smaller allocations are done with devm_kmalloc() you aren't
> saving anything.

With my patch, a "non-kmalloc" struct devres would take 128 bytes, instead
of 256.

>> I suppose there's no easy solution, though.
> 
> Right! It took a while till I was able to propose something
> people [almost silently] agreed with.

I meant the wider subject of dynamic allocation granularity.

The 128-byte requirement is only for DMA. Some (most?) uses of kmalloc
are not for DMA. If the user could provide a flag ("this is to be used
for DMA") we could save lots of memory for small non-DMA allocs.


>> +#define DEVM_KMALLOC_PADDING_SIZE \
>> +	(ARCH_KMALLOC_MINALIGN - sizeof(struct devres) % ARCH_KMALLOC_MINALIGN)
> 
> Even given your update with:
> ------------------------------->8--------------------------------
> #define DEVM_KMALLOC_PADDING_SIZE \
>   ((ARCH_KMALLOC_MINALIGN - sizeof(struct devres)) % ARCH_KMALLOC_MINALIGN)
> ------------------------------->8--------------------------------
> I don't think I understand why do you need that "% ARCH_KMALLOC_MINALIGN" part?

To handle the case where sizeof(struct devres) > ARCH_KMALLOC_MINALIGN

e.g ARCH_KMALLOC_MINALIGN = 8 and sizeof(struct devres) = 12


>> +	/* Add enough padding to provide a DMA-safe address */
>> +	size += DEVM_KMALLOC_PADDING_SIZE;
> 
> This implementation gets ugly and potentially will lead to problems later
> when people will start changing code here. Compared to that initially aligned by
> the compiler dr->data looks much more foolproof.

Yes, it's better to let the compiler handle the padding... But, we don't
want any padding in the non-devm_kmalloc use-case.

We could add a pointer to the data field, but arches with small ARCH_KMALLOC_MINALIGN
will have to pay the size increase, which doesn't seem fair to them (x86, amd64).


>> @@ -822,7 +825,7 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>>  	 */
>>  	set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
>>  	devres_add(dev, dr->data);
>> -	return dr->data;
>> +	return dr->data + DEVM_KMALLOC_PADDING_SIZE;
> 
> Ditto. But first I'd like to understand what are you trying to really do
> with your change and then we'll see if there could be any better implementation.

Basically, every call to devres_alloc() or devm_add_action() allocates
256 bytes instead of 128. A typical arm64 system will call these
thousands of times during driver probe.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
