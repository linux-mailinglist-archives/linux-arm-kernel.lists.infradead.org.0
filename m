Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7013CBF4B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 16:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUX1+5/rfFaiLCiVly509ZqtMfXnWUkAXUP54D+++mQ=; b=fqQFPgIRpd64NL
	+Zjo2mgITluBO5WnoYK3waB7FNuZCJdGRCgmnXxlysdPQrMnA7M8f+8KOu9XPEybMlvPKMhkEt5Xy
	A0pOc/e9Q0XSK5JqEj38NnDxeLiL2egmTdo6gNukRh/CZYrv6Eok7UcsdEIkMlW8G0W1EXVuoxa6Z
	x7tJuF2g+/TkRqNDs4SjgdarOA/Dl33fr5ZqQfrkn3TvBTYwpkNpQet6XfbI4GWuHOk7O6Wajhx0d
	msQWQY+gQoI+1kM6cseLZ+zSU3Hqc3NRu29UNU5DgYHXip+w8FULXCM8ehWTCNtNNqMwIC7pf6HJi
	/yRVa+/1iOBa2ZkEreUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUSu-0002rz-OR; Thu, 26 Sep 2019 14:09:52 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUSK-0002f7-UV
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 14:09:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CE80420554;
 Thu, 26 Sep 2019 16:09:13 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 2F6002040A;
 Thu, 26 Sep 2019 16:09:13 +0200 (CEST)
Subject: Re: [PATCH 00/11] PCI dma-ranges parsing consolidation
To: Andrew Murray <andrew.murray@arm.com>, Rob Herring <robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
 <036f298c-c65c-7da2-92dc-fc80892672c1@free.fr>
 <CAL_JsqLtYYXCgGN6_t8SuPqPmQwhhRJXaf8+kxnKxLHbRQRaDQ@mail.gmail.com>
 <20190926133849.GF9720@e119886-lin.cambridge.arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <407c0073-3694-6cce-0619-1f0ae3a55ed6@free.fr>
Date: Thu, 26 Sep 2019 16:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926133849.GF9720@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Sep 26 16:09:13 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_070917_127997_08DB2A51 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mans Rullgard <mans@mansr.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <maz@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/09/2019 15:38, Andrew Murray wrote:

> On Thu, Sep 26, 2019 at 08:11:16AM -0500, Rob Herring wrote:
>
>> On Thu, Sep 26, 2019 at 6:20 AM Marc Gonzalez wrote:
>>>
>>> On 26/09/2019 10:49, Andrew Murray wrote:
>>>
>>>> On Tue, Sep 24, 2019 at 04:46:19PM -0500, Rob Herring wrote:
>>>>
>>>>> pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
>>>>> handling as it is still using the old ARM PCI functions. Looks like it
>>>>> is the last one (in drivers/pci/).
>>>>
>>>> It also seems that pcie-tango is using of_pci_dma_range_parser_init
>>>> and so parsing dma-ranges. Though it's using the dma_ranges for a
>>>> slightly different purpose.
>>
>> Seems I missed that as I only grep'ed for for_each_of_pci_range...
>>
>>> The rationale for that code can be found here:
>>>
>>>         https://patchwork.kernel.org/patch/9915469/
>>>
>>> NB: 1) The PCIE_TANGO_SMP8759 Kconfig symbol is marked "depends on BROKEN",
>>> and 2) The driver adds TAINT_CRAP,
>>> and 3) The maker of the tango platform is dead.
> 
> Thanks for the context Marc, much appreciated.
> 
> Is there a path to make this driver not BROKEN? Or is this likely to bit rot?

It is not the device driver that is BROKEN, it is the device being driven ;-)

I don't know how many smp8759 boards exist in the wild. Mans might have one.
I didn't keep mine.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
