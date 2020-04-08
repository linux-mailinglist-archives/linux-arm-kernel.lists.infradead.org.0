Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6601A27D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 19:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zIHB8QPtOGWhSd254pGK7PD82+cIDvyFP7VyLOGEg4=; b=TTyc/jmgWcL5Yx
	A1m3Z0kaSJBV6oHy2OhyG20bgsECpbWrhMnIsykTUuEnwhCCALtzzfl1FzPAMQSgQrPV0lg4khf+i
	xh360gB0vEp5nEHg999C6SkgWGN6Blr/y/n7SG1BkYIlKO3q36TG+ADdRXu1NWFRhz2cTsGoGYz93
	WzT/2VBz5mwDHqpcAHBhImnt8GOHEXBQlzbQ3MRZ+NTYnBQDTxxeTGRztB2dy1CmRZMkJy9lALGE3
	Mm35sxBeGzJB1LxgX4Pv/hKpioGaJdtC9DkQsJTujuabeD4O/WFUEZGEqVZl+TGuTC9pu4YU8KJqI
	kLO1cgL2JoJFKwzO36ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMEKo-0000wm-P3; Wed, 08 Apr 2020 17:17:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEKh-0000va-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 17:17:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20B1031B;
 Wed,  8 Apr 2020 10:17:45 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4929B3F52E;
 Wed,  8 Apr 2020 10:17:44 -0700 (PDT)
Date: Wed, 8 Apr 2020 18:17:41 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Fredrik Strupe <fredrik@strupe.net>
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Fix undef_hook mask for
 thumb setend
Message-ID: <20200408171741.GB2481@gaia>
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia>
 <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
 <0d7b582a-1bd0-9db2-2fdc-04fc887f64c6@strupe.net>
 <20200408090111.GA27331@gaia>
 <9979396e-5d01-0cfe-722f-3a4f6e81dc01@strupe.net>
 <ab77076b-774d-9158-bc0c-3cfdd36b6e37@strupe.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab77076b-774d-9158-bc0c-3cfdd36b6e37@strupe.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_101747_747245_13E38F84 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:29:41PM +0200, Fredrik Strupe wrote:
> For thumb instructions, call_undef_hook() in traps.c first reads a u16,
> and if the u16 indicates a T32 instruction (u16 >= 0xe800), a second
> u16 is read, which then makes up the the lower half-word of a T32
> instruction. For T16 instructions, the second u16 is not read,
> which makes the resulting u32 opcode always have the upper half set to
> 0.
> 
> However, having the upper half of instr_mask in the undef_hook set to 0
> masks out the upper half of all thumb instructions - both T16 and T32.
> This results in trapped T32 instructions with the lower half-word equal
> to the T16 encoding of setend (b650) being matched, even though the upper
> half-word is not 0000 and thus indicates a T32 opcode.
> 
> An example of such a T32 instruction is eaa0b650, which should raise a
> SIGILL since T32 instructions with an eaa prefix are unallocated as per
> Arm ARM, but instead works as a SETEND because the second half-word is set
> to b650.
> 
> This patch fixes the issue by extending instr_mask to include the
> upper u32 half, which will still match T16 instructions where the upper
> half is 0, but not T32 instructions.
> 
> Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Fixes: 2d888f48e056 ("arm64: Emulate SETEND for AArch32 tasks")

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
