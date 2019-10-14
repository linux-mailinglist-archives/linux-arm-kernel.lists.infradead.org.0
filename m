Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B18D5FE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIQGBPEniOVbP2tGe4a887HIQsRCctTJIGsnnc3DTrw=; b=eU/F47048C+v+n
	HqAKUEku7lSE/Xlt1vNOrJukPTmAc+wwC9TVd12I04MIktvab6AUHlMwkGmqh8CaKqqNwgJVW4lRt
	fUYqvpHjBuKC0CnjI9Qy8B9i7h9X8l8fQbImsgqSOxLejSDTCNwbfOiSTppSPMn/OJsAar4ErP0a1
	lrEBJH3IpXN4qf+MzW8QNqCAGwZTrB/QYU74DnHdrLATxI/o7kT+cLmOKlg6E0d4p43qBmwjfjt5j
	E0p+ed6oDV0x/pnMaZWeddzWVJfiajfIF1NPXzKtg/vVT0+SdWd4qRFsZrh2ogjoUerhC2CVuYIyr
	j5SWQoESLmDJlesGH0eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxPG-0008Fs-6X; Mon, 14 Oct 2019 10:16:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxP5-0008Ek-O5
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:16:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47578337;
 Mon, 14 Oct 2019 03:16:37 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43F333F718;
 Mon, 14 Oct 2019 03:16:36 -0700 (PDT)
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
To: Marek Szyprowski <m.szyprowski@samsung.com>
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
 <20191011100521.GA5122@bogus> <7655fb41-cd13-0bc4-e656-040e0875bab8@arm.com>
 <2bf88cd2-9c4f-11dc-4b70-f717de891cff@samsung.com>
 <20191011131058.GA26061@bogus>
 <0b02b15f-38be-7a63-14cc-eabd288782eb@samsung.com>
 <20191011134354.GA31516@bogus> <20191011144233.GA2438@bogus>
 <7ef07169-4335-0a73-8bce-229433ef96f5@samsung.com>
From: James Morse <james.morse@arm.com>
Message-ID: <957bdc52-8eb1-8704-0a39-cad11e86c3d0@arm.com>
Date: Mon, 14 Oct 2019 11:16:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7ef07169-4335-0a73-8bce-229433ef96f5@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_031639_823672_14EC04B8 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 14/10/2019 10:02, Marek Szyprowski wrote:
> On 11.10.2019 16:42, Sudeep Holla wrote:
>> On Fri, Oct 11, 2019 at 02:43:54PM +0100, Sudeep Holla wrote:
>>> On Fri, Oct 11, 2019 at 03:15:32PM +0200, Marek Szyprowski wrote:
>>>> On 11.10.2019 15:10, Sudeep Holla wrote:
>>>>> On Fri, Oct 11, 2019 at 03:02:42PM +0200, Marek Szyprowski wrote:
>>>>>> On 11.10.2019 12:38, James Morse wrote:
>>>>>>> On 11/10/2019 11:05, Sudeep Holla wrote:
>>>>>>>> On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
>>>>>>>>> Recently I've got access to ARM Juno R1 board and did some tests with
>>>>>>>>> current mainline kernel on it. I'm a bit surprised that enabling
>>>>>>>>> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
>>>>>>>>> this Kconfig option, I get no single message from the kernel, although I
>>>>>>>>> have earlycon enabled.

>>>> my bootcmd is:
>>>>
>>>> tftp ${fdt_addr} juno/Image.gz; unzip ${fdt_addr} ${kernel_addr}; tftp
>>>> ${fdt_addr} juno/juno-r1.dtb; booti ${kernel_addr} - ${fdt_addr};
>>>>
>> If your ${kernel_addr}=0x80000000 or within first 32MB, then it will override
>> DTB with the image size I had(35MB). Even if kernel fits 32MB, there is a
>> chance that .bss lies beyond 32MB and it will be cleared during boot resulting
>> in DTB corruption(Andre P reminded me this)
>>
>> Can you try setting $${fdt_addr} to 0x84000000 to begin with ?
> 
> Right, my fault. Changing fdt_addr to something higher than the default 
> 0x82000000 fixed the boot issue. I wonder how I missed that, as I was 
> convinced that there is enough space for the kernel image. Sorry for the 
> noise...

Is it possible for uboot's booti command to print a warning in this case?
The size of the BSS is in the header as the 'effective size' of the kernel'.

(it must have taken a while to bisect this, and it just happened to pick a believable
commit that modified start_kernel()...)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
