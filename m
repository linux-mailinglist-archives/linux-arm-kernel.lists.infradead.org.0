Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A09DC0E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pFh6iyMp5M+W/Tl0y9seAHE+klFrMtEVYQUQM/II7cc=; b=Fr0TtNUpxH4tSCVvM7XufyulQ
	doVsm5bHl3wPvOCc5SBX6hhgprDVwmeTTJ70vgArBA8M8Wk6Tyashc7xWpYwJ/soObSuBToDn9d+g
	GOExBTCAQXWE6HJx+OPJkX8CNDlD0fjAOG04sj1IFom9UyurcSwf2xnsCBUoxNBOrD6zy1PMO8PSS
	mmOTZpHfFOhTv1qw5HTxpcSFzLSesB0WVQ5aQfJTQVcVXbiYK89MGZsagAGs5sUdmWk9uZlaaEl1/
	jf8QefOD8E+8jYvERTU8InjSIJqX2qeZ5VfLUMWj83otGJhrrYSZlLhJidhoiHGapL5hQByRzNvKp
	QX8QOc4NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOZ5-0006GT-BO; Fri, 18 Oct 2019 09:28:55 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOYw-0006FP-65
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:28:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04D1D3E8;
 Fri, 18 Oct 2019 02:28:35 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E11B3F718;
 Fri, 18 Oct 2019 02:28:34 -0700 (PDT)
Subject: Re: [PATCH 0/8] arm64: Optimise and update memcpy, user copy and
 string routines
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1571073960.git.robin.murphy@arm.com>
 <20191018075422.GB19734@arrakis.emea.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <574404fa-3c19-e1ce-7cab-6144508d0a76@arm.com>
Date: Fri, 18 Oct 2019 10:28:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191018075422.GB19734@arrakis.emea.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_022846_269435_50A1E2CF 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: sam.tebbs@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-18 8:54 am, Catalin Marinas wrote:
> Hi Robin,
> 
> On Tue, Oct 15, 2019 at 04:49:55PM +0100, Robin Murphy wrote:
>> Robin Murphy (1):
>>    arm64: Tidy up _asm_extable_faultaddr usage
>>
>> Sam Tebbs (7):
>>    arm64: Allow passing fault address to fixup handlers
>>    arm64: Import latest Cortex Strings memcpy implementation
>>    arm64: Import latest version of Cortex Strings' memcmp
>>    arm64: Import latest version of Cortex Strings' memmove
>>    arm64: Import latest version of Cortex Strings' strcmp
>>    arm64: Import latest version of Cortex Strings' strlen
>>    arm64: Import latest version of Cortex Strings' strncmp
> 
> Apart from the kprobes build failure (patch available already), I found
> two more:
> 
> - with CONFIG_KASAN enabled:
> 
> arch/arm64/lib/memmove.o: in function `__pi_memmove':
> arch/arm64/lib/memmove.S:57:(.text+0xc): relocation truncated to fit: R_AARCH64_CONDBR19 against symbol `memcpy' defined in .text section in mm/kasan/common.o
> 
> - big endian (I think kbuild robot also reported this):
> 
> arch/arm64/lib/strcmp.S: Assembler messages:
> arch/arm64/lib/strcmp.S:118: Error: immediate value out of range 0 to 63 at operand 3 -- `lsr x2,x2,#560'
> 
> I'll drop the series for now (already removed it from for-next/core
> yesterday) until the above are addressed.

Thanks Catalin - I've already fixed the big-endian typo locally, and for 
the KASAN thing it seems we probably just overlooked an 
s/memcpy/__memcpy/ conversion, but I'll double-check before resending.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
