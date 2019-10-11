Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A31D3C24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ydZmbHtR4HDa00wJsha8cgj0Ez2dShsY2w2/dsd34A=; b=FQ4gVz7/fkbLjd
	leTO4UxHWPa4a8W/qJoq4I1bd/2qNIQlWaQdZx9ZobwZmMu/TQw2dvddw0VgWL0Ic4eCwc51l6qXs
	+PXhpagUjB948ILqqLmWyfot6xqBr7UWoeOlP3Bn7fhd9h9N1OO+vcBuSctbt7IM45qFoLrFkdC9i
	4dOAcbjhVR74lfcQ0hePDFut24UIrN2/7HaIGjh2tj0HJUHACxHEaeOpynDZcPyA1jBLzfM90ZU8G
	xS2Ip2EprH7OQfhZQPFUV3/7WH7e9wR6Ak1Nu9wp3NfpqyAimghTyMiaABdxLZDkoVAFmPWoX7O0n
	JuHhDFafO0MRWYV3zrlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIr5U-00038I-FI; Fri, 11 Oct 2019 09:19:52 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIr5H-00037T-93
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:19:40 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2CEE92058F;
 Fri, 11 Oct 2019 11:19:34 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 15A5A204C8;
 Fri, 11 Oct 2019 11:19:34 +0200 (CEST)
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <7ef16e2a-b35c-0807-67be-c56dadb6fa66@free.fr>
Date: Fri, 11 Oct 2019 11:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Oct 11 11:19:34 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021939_472354_083C92E5 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/10/2019 07:49, Sai Prakash Ranjan wrote:

> diff --git a/arch/arm64/kernel/cpufeature.c 
> b/arch/arm64/kernel/cpufeature.c
> index cabebf1a7976..207197692caa 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -164,8 +164,8 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] 
> = {
>          S_ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_FP_SHIFT, 4, ID_AA64PFR0_FP_NI),
>          /* Linux doesn't care about the EL3 */
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL3_SHIFT, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL2_SHIFT, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL2_SHIFT, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 
> ID_AA64PFR0_EL0_SHIFT, 4, ID_AA64PFR0_EL0_64BIT_ONLY),
>          ARM64_FTR_END,
>   };
> @@ -345,10 +345,10 @@ static const struct arm64_ftr_bits 
> ftr_generic_32bits[] = {
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 24, 4, 
> 0),
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 20, 4, 
> 0),
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 16, 4, 
> 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 
> 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 12, 4, 
> 0),
>          ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 0, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 4, 4, 
> 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 0, 4, 
> 0),
>          ARM64_FTR_END,
>   };

Hello Sai,

Could you configure your webmail client to not wrap "long" lines?

Wrapping might break the patch, and the kernel logs would look better
in their original form.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
