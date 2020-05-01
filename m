Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C711C1876
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dXHY9KdFWBWSLQKB+11nc+MyMCSkIEn33kP87owj6lY=; b=bKY6pb/EJJe0L6Rtn2eqek2WO
	0xkP1xI1V+0o7+sRF9UUDqC0Vq3cJvnDQMdql917rQA6EmyMqDI/icoOl0LNvo1DY35YF3fK6yCuB
	y+cZEmdt3UhReYpQ/9gn7gSHJK4NcBWtMsSJa7PeaKf1sYrPWDqbNmekbDjx08CFkCfeeTeGBrWfl
	hWGUBtQ/DEmCQQnD9N7GkCmIg0sVI6QBkVGW4DZfGt1CKGX4kNUWi1IFy9DVz5NfuGXimguPiOa42
	VIKwoxBcjqRCELahiMrv5WBDATSCHt7Hgq4spliWIju6lt0DYVVZcH9aYEoQ2uqBQC2t4la5tx3GG
	e6Pvm5HpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWz6-0005Xy-SC; Fri, 01 May 2020 14:49:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWyl-0005Lz-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:49:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E98881FB;
 Fri,  1 May 2020 07:49:23 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D67B03F68F;
 Fri,  1 May 2020 07:49:22 -0700 (PDT)
Subject: Re: [PATCH 1/5] arm/arm64: smccc: Update link to latest SMCCC
 specification
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-2-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <563cade1-5790-3b4f-4942-adc1ff90eb0f@arm.com>
Date: Fri, 1 May 2020 15:46:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430114814.14116-2-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_074927_257295_8293D981 
X-CRM114-Status: GOOD (  18.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2020 12:48, Sudeep Holla wrote:
> The current link gets redirected to the revision B published in November
> 2016 though it actually points to the original revision A published in
> June 2013.
> 
> Let us update the link to point to the latest version, so that it
> doesn't get stal anytime soon. Currently it points to v1.2 published in

s/stal/stale/

otherwise:

Reviewed-by: Steven Price <steven.price@arm.com>

> March 2020.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   include/linux/arm-smccc.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 59494df0f55b..6c1d1eda3be4 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -10,7 +10,7 @@
>   /*
>    * This file provides common defines for ARM SMC Calling Convention as
>    * specified in
> - * http://infocenter.arm.com/help/topic/com.arm.doc.den0028a/index.html
> + * https://developer.arm.com/docs/den0028/latest
>    */
>   
>   #define ARM_SMCCC_STD_CALL	        _AC(0,U)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
