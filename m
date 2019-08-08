Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934A485A0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 07:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9epFKIneaT8C5ohgXuOYwPypCzCbs0Nr477RvdDGGbM=; b=FtlaeOv7KdSoTI
	7Ve3/GGjxBFMiSKWkLumnJ6L1XCHA3LlUWOy1EDPGRaDMBSGzRRY+4FYofWc2Y88vthegCEDZPRZE
	ukBmpSt8DH+EflN0kCyU3FwayEeXAFDJATFFCTS5a397RBDeECt7BfgfMYiLP0vM2/q243pEbwW0c
	MHkPo/WxNC/UV2MQZsJ3z5fCGWEID+RdMxuUwoLUMK3UfV+UdQh8rZ1Sniq79QW4KHzUdnpZI+7fj
	4dE97zqMIDYg2mTUDQF9BdF9zfWPm7/pdpZKkRZqOzbGFV5SGXzT11wM5MdGjkAx4laCXdkhuobfP
	nZiA8lUkVHV/wHyP6xDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbJ6-00017N-Nm; Thu, 08 Aug 2019 05:49:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbIc-0000xW-4e; Thu, 08 Aug 2019 05:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79E6A28;
 Wed,  7 Aug 2019 22:49:17 -0700 (PDT)
Received: from [10.163.1.243] (unknown [10.163.1.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DCCD3F706;
 Wed,  7 Aug 2019 22:51:22 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: mm: print hexadecimal EC value in
 mem_abort_decode()
To: Miles Chen <miles.chen@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <20190807003336.28040-1-miles.chen@mediatek.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <98bdbcfb-24ed-fcd8-4b2c-f2c78b245dda@arm.com>
Date: Thu, 8 Aug 2019 11:19:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190807003336.28040-1-miles.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_224918_332466_78FA9792 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.rutland@arm.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/07/2019 06:03 AM, Miles Chen wrote:
> This change prints the hexadecimal EC value in mem_abort_decode(),
> which makes it easier to lookup the corresponding EC in
> the ARM Architecture Reference Manual.
> 
> The commit 1f9b8936f36f ("arm64: Decode information from ESR upon mem
> faults") prints useful information when memory abort occurs. It would
> be easier to lookup "0x25" instead of "DABT" in the document. Then we
> can check the corresponding ISS.
> 
> For example:
> Current	info	  	Document
> 		  	EC	Exception class
> "CP15 MCR/MRC"		0x3	"MCR or MRC access to CP15a..."
> "ASIMD"			0x7	"Access to SIMD or floating-point..."
> "DABT (current EL)" 	0x25	"Data Abort taken without..."
> ...
> 
> Before:
> Unable to handle kernel paging request at virtual address 000000000000c000
> Mem abort info:
>   ESR = 0x96000046
>   Exception class = DABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000046
>   CM = 0, WnR = 1
> 
> After:
> Unable to handle kernel paging request at virtual address 000000000000c000
> Mem abort info:
>   ESR = 0x96000046
>   EC = 0x25: DABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000046
>   CM = 0, WnR = 1
> 
> Change since v1:
> print "EC" instead of "Exception class"
> print EC in fixwidth
> 
> Cc: Mark Rutland <Mark.rutland@arm.com>
> Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>

This version implements the suggestion, hence it should have
also contained acked-by tag from Mark from earlier version.

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
