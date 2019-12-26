Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A3012AAAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 07:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa7EQhe2u8eVB6ueNBb4tme0GCX2CrP2LkB/BrAovaQ=; b=QsPu5jadp2aRBn
	74MswhXZSlqnWMnYBknCMnZ8/xhL6DMIo3K1JUSRi3U+BXw3I2Emqug3HKXZNEnanWOIzXYhUQTGv
	tlqc/pItHH2qqeCBEmqkQh64hdBnYnrl6lD3xy7XPkeJO5g9HEels3ZC8MzTkWg7qtMjLgjWfnsgW
	61rAsLYFjDy1duCHzZ5n14sjwxCpXAlqdNQ4rLVO7vtznIw4qyX9Ed/UJSailk1yTzDCRDVpoz2zS
	P2N3U16F4OQ2CkMV1vsrmrY5GYrMWTCU/HY/6gNBZFAEqm23hJ7JmuR3iS2c9sZa1oCVWyXZ5JZ9G
	U8UKJ46c5m0Zk0xmMCuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikN1w-00054B-35; Thu, 26 Dec 2019 06:53:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikN1m-00053o-Ps
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 06:53:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE66431B;
 Wed, 25 Dec 2019 22:53:42 -0800 (PST)
Received: from [10.163.1.130] (unknown [10.163.1.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FA4D3F68F;
 Wed, 25 Dec 2019 22:56:54 -0800 (PST)
Subject: Re: [PATCH] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
To: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1576917150-31678-1-git-send-email-pkushwaha@marvell.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <d717351f-df64-19d1-86c5-14de67e5d649@arm.com>
Date: Thu, 26 Dec 2019 12:24:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1576917150-31678-1-git-send-email-pkushwaha@marvell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_225346_886249_71B7B9BB 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kamlakant Patel <kamlakantp@marvell.com>, James Morse <james.morse@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/21/2019 02:02 PM, Prabhakar Kushwaha wrote:
> Linux commit b6e43c0e3129 ("arm64: remove __exception annotations") has
> removed __exception_text_start and __exception_text_end sections.
> 
> So removing reference of __exception_text_start and __exception_text_end
> from from asm/section.h.
> 
> Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> Cc: James Morse <james.morse@arm.com>

Looks good.

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

> ---
>  arch/arm64/include/asm/sections.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/sections.h b/arch/arm64/include/asm/sections.h
> index 25a73aab438f..3994169985ef 100644
> --- a/arch/arm64/include/asm/sections.h
> +++ b/arch/arm64/include/asm/sections.h
> @@ -8,7 +8,6 @@
>  #include <asm-generic/sections.h>
>  
>  extern char __alt_instructions[], __alt_instructions_end[];
> -extern char __exception_text_start[], __exception_text_end[];
>  extern char __hibernate_exit_text_start[], __hibernate_exit_text_end[];
>  extern char __hyp_idmap_text_start[], __hyp_idmap_text_end[];
>  extern char __hyp_text_start[], __hyp_text_end[];
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
