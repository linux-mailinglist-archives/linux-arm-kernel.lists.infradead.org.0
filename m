Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BBD10A585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 21:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdQ2yevV8J7fA7WGyY1Ln/ie52LGav2WRDdA2Ld18+M=; b=UYStcBNx5ldPZh
	PImu4a67iBolNXddkpxruzq1GjZVRC9m6+aGxCdEz09UY8XsjFUPXbzyq+mLO/j6p972ehrJFq9TF
	JuKOFFrz40JOt65islgnlygty03bC/HvaoymwWR8RKyOEaGB5EV6mBwTwGkL82t0X2MzfXP4UJrx7
	GPXZwWBu8vjVdHeulMRE7cGbFr1K+ZCGHRTar5xErcuntE8hylLNH9rPJVKaxvqovzAQR5IU9uLcd
	8GQW0XOACa4TbGEvEjn708a+qAQinHSl/Z098Yb95OTabHYRPFMxapPSGkW6dXeGrfHe6Jkcpt2Cc
	d/QBpBlNPu1ESwsurc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZhY1-0002Hl-JI; Tue, 26 Nov 2019 20:34:57 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZhXs-0002Gy-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 20:34:49 +0000
Received: by mail-io1-f68.google.com with SMTP id p12so14820999iog.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 12:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eCiyINJIqZQ9+c/j9O3wV96E5XzkXxVGgIEzTJ6ccpU=;
 b=UkffxNSSPWqsNsa+MmjDiuScFu8+Cx+JlCH1oSIxOfCP8vtXGmHwPkDJsZtq/knsqu
 MdynwWIHatk7Q+2cGc5Yw+vR5bjGvuerzv0wNqsVp83CY0BlAEg6+6uDprXWlPZ6X34B
 TxpDCXeCmhXh9nNeSBF+aHrFFE+t9T+e1q3UmG3qjlnJvYy96glmL08Q3MOEsTnhYujM
 +abmWzBeHmPLp0vLtiTPODEi00bJYQBZT9WcODP5q1zE3eUrcvkteAHkW3dxvkV+zc1s
 M9O/S8T6cm9VALOQDvCQK+RR/vAo/bJWtLMNPb2U3Bzl2Bz7w2fiSzE2l+cYzq6Ovx2U
 RoDA==
X-Gm-Message-State: APjAAAWAu1eX3sY8KQ4eleRJmL0xm5fch0iowg4vLA+hqvxSmnf+LoZV
 zqW9VHQhJCFG0xhPZ67AKA==
X-Google-Smtp-Source: APXvYqyNLRbXmRMw2om5THIIvUDL/2IP2aEwIaLwJGNOkUm6TYCHlgggxCi3KYF+cIwCDLGz2FM3sA==
X-Received: by 2002:a6b:f317:: with SMTP id m23mr17361728ioh.303.1574800484514; 
 Tue, 26 Nov 2019 12:34:44 -0800 (PST)
Received: from localhost ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k22sm2923474iot.34.2019.11.26.12.34.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 12:34:43 -0800 (PST)
Date: Tue, 26 Nov 2019 13:34:42 -0700
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v3] libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h
Message-ID: <20191126203442.GA20537@bogus>
References: <20191113071202.11287-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113071202.11287-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_123448_115324_C03499A0 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 04:12:02PM +0900, Masahiro Yamada wrote:
> The DTC v1.5.1 added references to (U)INT32_MAX.
> 
> This is no problem for user-space programs since <stdint.h> defines
> (U)INT32_MAX along with (u)int32_t.
> 
> For the kernel space, libfdt_env.h needs to be adjusted before we
> pull in the changes.
> 
> In the kernel, we usually use s/u32 instead of (u)int32_t for the
> fixed-width types.
> 
> Accordingly, we already have S/U32_MAX for their max values.
> So, we should not add (U)INT32_MAX to <linux/limits.h> any more.
> 
> Instead, add them to the in-kernel libfdt_env.h to compile the
> latest libfdt.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> My initial plan was to change this in a series of 3 patches
> since it is clean, and reduces the code.
> 
> [1/3] https://lore.kernel.org/patchwork/patch/1147095/
> [2/3] https://lore.kernel.org/patchwork/patch/1147096/
> [3/3] https://lore.kernel.org/patchwork/patch/1147097/
> 
> 1/3 is stuck in the license bikeshed.
> 
> For 2/3, I have not been able to get Ack from Russell.
> 
> So, I chose a straight-forward fixup.
> 
> 
> Changes in v3:
>  - Resend as a single patch
> 
>  arch/arm/boot/compressed/libfdt_env.h | 4 +++-
>  arch/powerpc/boot/libfdt_env.h        | 2 ++
>  include/linux/libfdt_env.h            | 3 +++
>  3 files changed, 8 insertions(+), 1 deletion(-)

Applied.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
