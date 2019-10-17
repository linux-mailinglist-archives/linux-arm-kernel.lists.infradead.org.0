Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C71DAB13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mjh7VFV5qZIkkt95zPzNz1TXawiEouJQEh0oFxD6Iz4=; b=TZ1SIg8rYIKXBD
	RFLrbohRp2CNYWpEj6fvJnlroPksIdZz+xplzZjxn5r82G1UOjpVLJR3DxJKrBEYaT7iW2uY/nUTi
	LU/fF/AT88XINZD+bftTSxcHR1szlRO9xBNfeWvqYMdXaTkmeyNgXiICsDVvEyn9EpascstJoco4Z
	j8q5QcXIZtf906OLRy6k80Mleg3njY6QGmVPb6k4AJY/TBk/UI4Q6Iqa8zMzNquEvfLM1BopNkLLt
	RLQ4nSUd+Elstb9HvGHzLWN8tfeqDGYv+8CwSdEBa6FEPVCf4Z1ZnMKkpnguaxVVcg/wD+mwknuJu
	T7M2ECt9sUrYNwoH/9mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3qm-0000Yv-T0; Thu, 17 Oct 2019 11:21:48 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3qe-0000XF-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:21:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB9501BC0;
 Thu, 17 Oct 2019 04:21:29 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 067923F718; Thu, 17 Oct 2019 04:21:28 -0700 (PDT)
Date: Thu, 17 Oct 2019 12:21:26 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/8] arm64: Optimise and update memcpy,	user copy and
 string routines
Message-ID: <20191017112126.GA3169@arrakis.emea.arm.com>
References: <cover.1571073960.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1571073960.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_042140_423409_542A6A19 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 04:49:55PM +0100, Robin Murphy wrote:
> Robin Murphy (1):
>   arm64: Tidy up _asm_extable_faultaddr usage
> 
> Sam Tebbs (7):
>   arm64: Allow passing fault address to fixup handlers
>   arm64: Import latest Cortex Strings memcpy implementation
>   arm64: Import latest version of Cortex Strings' memcmp
>   arm64: Import latest version of Cortex Strings' memmove
>   arm64: Import latest version of Cortex Strings' strcmp
>   arm64: Import latest version of Cortex Strings' strlen
>   arm64: Import latest version of Cortex Strings' strncmp

Thanks Robin. I merged these patches into the arm64
for-next/cortex-strings branch (and for-next/core) to give them some
exposure in -next. If nothing breaks, I'll push them into 5.5.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
