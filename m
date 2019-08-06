Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EFC8316B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NG0T+7QTjOOCJGhxHOluYaoDsCke90cMKI93xE1TDC0=; b=oUaazV+JWwurws
	t68EiLVitjM81wljo7UxYKxB8i602vDkvDiHJlEcHBgBCS5PlcXnbIJx+n+LXg90TIi2OFO0cmvKN
	FnlxP1ScPL3qfAze4BSJYkFW3hPCBESmqpN1aPMCKgdmhspzcQzGk30xLKcS6b9rqlF/RLiUNjWzo
	ql+uxV1cikIvROiUseQPQoHV0i1JJrZPiMRtppjiPc6UDkrsM9TIjrMfclnRScQ0HVM0mZ3b5ZzEg
	gjUN9REnvyLx+KrURmKWIJp//uLrJs5DlnN1WDuUhQ/iXhnqskZChUiMohZ40/o6y0SxcWjNUDgN6
	P654cLtoJw4SwsxS4pJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huygH-0002Ri-3T; Tue, 06 Aug 2019 12:35:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huyg2-0002Qv-Rm; Tue, 06 Aug 2019 12:34:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2361A28;
 Tue,  6 Aug 2019 05:34:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC1073F694;
 Tue,  6 Aug 2019 05:34:52 -0700 (PDT)
Date: Tue, 6 Aug 2019 13:34:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH] arm64: mm: print hexadecimal EC value in
 mem_abort_decode()
Message-ID: <20190806123450.GE475@lakrids.cambridge.arm.com>
References: <20190806112948.4357-1-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806112948.4357-1-miles.chen@mediatek.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_053454_941932_28464540 
X-CRM114-Status: GOOD (  16.33  )
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
Cc: wsd_upstream@mediatek.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 07:29:48PM +0800, Miles Chen wrote:
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
>   EC = 0x25, Exception class = DABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000046
>   CM = 0, WnR = 1
> 
> Cc: Mark Rutland <Mark.rutland@arm.com>
> Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> ---
>  arch/arm64/mm/fault.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index cfd65b63f36f..afb6041e25e6 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -86,8 +86,8 @@ static void mem_abort_decode(unsigned int esr)
>  	pr_alert("Mem abort info:\n");
>  
>  	pr_alert("  ESR = 0x%08x\n", esr);
> -	pr_alert("  Exception class = %s, IL = %u bits\n",
> -		 esr_get_class_string(esr),
> +	pr_alert("  EC = 0x%lx, Exception class = %s, IL = %u bits\n",
> +		 ESR_ELx_EC(esr), esr_get_class_string(esr),

Could we make this:

	pr_alert("  EC = 0x%02lx: %s, IL = %u bits\n",
		 ESR_ELx_EC(esr), esr_get_class_string(esr));

We don't need to spell out "Exception Class" if we say "EC", and we
should print the EC hex value with a consistent width as we do for the
ISS.

With that:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
