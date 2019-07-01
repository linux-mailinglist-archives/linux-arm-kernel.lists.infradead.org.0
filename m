Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCA85BEB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 16:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20HS2JFMj+4k1TUy/pQo0OZPwcaUiyg91SY+3dvspPM=; b=Y7cW39Te8lHZI+
	FnahFdpXqwquxUeFQbUxpB8ic4V9XSh1VYaTAZH5cqEeqWoeVIWDDEx+WsibDQ6PJafuS7p6hsQxm
	IKZ7N0NVraBObLeuEhQsH6hfRc2Y+ZdycvW/ICswlJ8sJe5JhuqNuRuAZOWCRZAICDJCS3AuMQXwh
	pF6Grz3x1MeRkBsOcN03OIgkOnvj2n1UYSxjbGI/igxYaN4NtyFT9QrDiBGFlovAp/OrzYP7DkMSi
	wb3uGg6iivUWYJ4e05RSy5RlcKTd/zWSusyJORpzIXnSiINTHy9E6ZeRMWsalpFE51JCN1vJ3dDLY
	LRzrfoC8LrlPFbiR7MVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxeI-00085N-2S; Mon, 01 Jul 2019 14:51:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxe8-00084w-NO
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 14:51:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D8A4344;
 Mon,  1 Jul 2019 07:51:08 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0B3D73F246; Mon,  1 Jul 2019 07:51:06 -0700 (PDT)
Date: Mon, 1 Jul 2019 15:51:04 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC V3 11/18] arm64: alternative: Mark .altinstr_replacement as
 containing executable instructions
Message-ID: <20190701145104.GE21774@arrakis.emea.arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
 <20190624095548.8578-12-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624095548.8578-12-raphael.gault@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_075108_814951_DDED1108 
X-CRM114-Status: GOOD (  14.37  )
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
Cc: julien.thierry@arm.com, peterz@infradead.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:55:41AM +0100, Raphael Gault wrote:
> Until now, the section .altinstr_replacement wasn't marked as containing
> executable instructions on arm64. This patch changes that so that it is
> coherent with what is done on x86.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/include/asm/alternative.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9..e9e6b81e3eb4 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -71,7 +71,7 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>  	ALTINSTR_ENTRY(feature,cb)					\
>  	".popsection\n"							\
>  	" .if " __stringify(cb) " == 0\n"				\
> -	".pushsection .altinstr_replacement, \"a\"\n"			\
> +	".pushsection .altinstr_replacement, \"ax\"\n"			\
>  	"663:\n\t"							\
>  	newinstr "\n"							\
>  	"664:\n\t"							\

I guess that's an inconsistency we missed since the asm macro has "ax".

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
