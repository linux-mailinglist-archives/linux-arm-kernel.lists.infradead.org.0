Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762EAC2464
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EILYGdZz3YfBU7IVGD2jEGHL76eRN7Jf2zLHN4aPnR4=; b=NU5oXLp5sJj3Zc
	YjmoAPRt4UZMOYTLestAfJlz/tWij7c08fYDsFzGuccsZ46QYi89Gn1rNvq7QqcmFEQbcU74i/njj
	5PR8XTdOZr+WCw24vo7+s1JxPCCnwa6waQMzTp5GU6BwHFWsMeZxUJROi/EbD/FszXcL9ue/8I4mN
	OhrfnnliigD0GubaVeokg2gDdXyQn//MZCLWciJWJwhCmEG3mPz2vzgDMxr9ANCdloRBXPZ/5N/GM
	/Xm+K1xd5o9/Fv0eeR1rZykulTLvQMbO62+DNXTkMB94wLVdSZcQuiq/trWiaJsktjwxAjQV1d7FT
	oTCgOn8A9YuQlgRfwlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExhW-0007Pn-Vj; Mon, 30 Sep 2019 15:35:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExhC-0007J5-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:34:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5AA120815;
 Mon, 30 Sep 2019 15:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569857682;
 bh=dh8MId5t8DVUeOU3OX/W3m9Vy+7RlrdAA9s6eGZznGs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N0XqWdQTs246eEuhXf6R0AkLtqFzW8Q3jwlTgxIZiMwTYbQRmB7lbT1+mJpEcZHPK
 Q/RrotNDuWGCNKuTmZ7HTn0TBmIOUaf568izduqQPXsLMI5Lo4f/lv2WwzU3flEgyx
 WaVLdCGVNPY1jmzdlQQ1jhzhuMViRq47KKh+27Cw=
Date: Mon, 30 Sep 2019 16:34:37 +0100
From: Will Deacon <will@kernel.org>
To: Candle Sun <candlesea@gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
Message-ID: <20190930153437.ocatny7u4z3oj7k2@willie-the-truck>
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_083443_067212_4C6E5C65 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 Candle Sun <candle.sun@unisoc.com>, linux-kernel@vger.kernel.org,
 Nianfu Bai <nianfu.bai@unisoc.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 03:38:28PM +0800, Candle Sun wrote:
> From: Candle Sun <candle.sun@unisoc.com>
> 
> When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
> arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.
> 
> From ARMv8 specification, different debug architecture versions defined:
> * 0110 ARMv8, v8 Debug architecture.
> * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
> * 1000 ARMv8.2, v8.2 Debug architecture.
> 
> So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
> returns -ENODEV, and arch_hw_breakpoint_init() will fail.
> 
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> ---
>  arch/arm/include/asm/hw_breakpoint.h | 2 ++
>  arch/arm/kernel/hw_breakpoint.c      | 2 ++
>  2 files changed, 4 insertions(+)

How did you test this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
