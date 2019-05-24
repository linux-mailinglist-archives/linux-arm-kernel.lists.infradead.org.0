Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9CE29F02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8TXLku5Er4VwZb/hIUrDUPZWA7HC/a5XZCjXLrWi8M=; b=jhbvFUTGSec9ew
	Ootrv5OoVC9oQiG5nMgIVnLW+NYNn0Hee+4v+KygHTHMPloEzyJjfiHG4G+VGPYpyc19ATBKlEbD5
	o6BMQA4JttU/sBVsi2qAML1H7yJrKa+g6y7f/4iOcYzo5/c2YCFdMrMO+z0iUS/7FAY/UfbGvB41G
	GuoCyOPUNWRke7CfITVb7zxW1vk4S/82A7hlcKH001/8Eu/ZvV0gism9wqyHip5mZz2nBOpZxtNIu
	0cV2Eh/Ddfqo7QiXkvI9x894NDhAzKSKuc/Lk5dOSpHxHieZcZzr3B1HW0NYmvzNEGZatI2D4UUCk
	fzR7FKacWCsV2v1Y2UAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFmP-0001jJ-GC; Fri, 24 May 2019 19:23:01 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFmI-0001it-6f
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 19:22:55 +0000
Received: by mail-wr1-f65.google.com with SMTP id s17so11074082wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 12:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ug4Bl3el14wpTnYvRfqXJCkiW+ZQVz0A+SEzks8ca+c=;
 b=JHVtkth+61ZVaOBDni4kXh1UOmIkOpPK6z26YxZgaQ3RfO0zb5DFyNcWslmnbL63Hf
 NBwrEWvamSNtDbEXu3MVpC9lbAVeQ3di7CUfTA4NdBcUmhkNk4x1sSw54FUDNvZ23+Pt
 lmYIKdiExX0R4mh4OsQ0J2x7YK5rGQraFE87thXo3P4rkAiBe35+N6+JiDjpo7ftZsJs
 TyacGPNcqC3vgXd5us11sxXw+IQA1DMJwpVnvfhLXWDCWmDC3cZIOqPttVVucIU+QvqY
 KzSDpKfl1gayZ9fFoPLF9AntwWjwxGl1+TJhnip3brcqNigm9SXke/LegWJKigV8Dac7
 36fA==
X-Gm-Message-State: APjAAAWvGSgWxpxGHj4+awxdhHQeTvPdFCNHjJYTfEtwDdXqG7a1wH5R
 KfgqO4VrHDf732uIdjM1lKVTqA==
X-Google-Smtp-Source: APXvYqxc9I/gqPCwUGGqH4wF3p5c19c142inhBUwCyjvflRF3Erk2N54jSOBP2OotGkbtC4HE70Ugw==
X-Received: by 2002:a5d:4b81:: with SMTP id b1mr39369544wrt.217.1558725772192; 
 Fri, 24 May 2019 12:22:52 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id n5sm4642955wrj.27.2019.05.24.12.22.51
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 12:22:51 -0700 (PDT)
Subject: Re: [PATCH 1/3] MAINTAINERS: KVM: arm/arm64: Remove myself as
 maintainer
To: Christoffer Dall <christoffer.dall@arm.com>
References: <20190524144745.227242-1-marc.zyngier@arm.com>
 <20190524144745.227242-2-marc.zyngier@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <1adc9268-438e-6c24-7883-690960d1c060@redhat.com>
Date: Fri, 24 May 2019 21:22:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524144745.227242-2-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_122254_246093_835FD363 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/05/19 16:47, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> I no longer have time to actively review patches and manage the tree and
> it's time to make that official.

Thanks Christopher for your work, I hope to meet you anyway at KVM Forum!

Paolo

> Huge thanks to the incredible Linux community and all the contributors
> who have put up with me over the past years.
> 
> I also take this opportunity to remove the website link to the Columbia
> web page, as that information is no longer up to date and I don't know
> who manages that anymore.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  MAINTAINERS | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5cfbea4ce575..4ba271a8e0ef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8611,14 +8611,12 @@ F:	arch/x86/include/asm/svm.h
>  F:	arch/x86/kvm/svm.c
>  
>  KERNEL VIRTUAL MACHINE FOR ARM/ARM64 (KVM/arm, KVM/arm64)
> -M:	Christoffer Dall <christoffer.dall@arm.com>
>  M:	Marc Zyngier <marc.zyngier@arm.com>
>  R:	James Morse <james.morse@arm.com>
>  R:	Julien Thierry <julien.thierry@arm.com>
>  R:	Suzuki K Pouloze <suzuki.poulose@arm.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	kvmarm@lists.cs.columbia.edu
> -W:	http://systems.cs.columbia.edu/projects/kvm-arm
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git
>  S:	Maintained
>  F:	arch/arm/include/uapi/asm/kvm*
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
