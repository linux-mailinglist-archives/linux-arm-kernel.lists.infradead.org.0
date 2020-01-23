Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C1146CE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz1wYiZCJrwOE86jVTQFQWxIMF4jvYwoJhmSlHGETFI=; b=blKH2vKINgx7CI
	jZe1o6KG+DHFBhQi7bvdkTkGLTbBzJiee3B5kTZX22NOk4sJScgD+tVGQmjteTvufmMicoJ0w2Kc7
	t8E8TYwpnMalj+wr/EEUQ19e1hUDGmCgh2MUJvOYzwd7/fojluVa7ILj4wa3Vh9+uMDYKKYmjqxhN
	AHPkf7r5WJyW8TAyENFJWppDWlYC3WyNcTx/8mb4HjuTbMH4W50MXfvXLgvVrzJ9WheIk2hpfcLwq
	UJKQVgfNfeWX2E4vCN/rXTHlAOpiK+jIE5Kc1AjfAne4T7GGmDb3pyLY/MxGlF9dORqrDowjKtsL/
	QHxULsf1kp4LSG/QQL6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iueSP-0002Kr-5x; Thu, 23 Jan 2020 15:31:45 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueSD-0002Jg-N1
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:31:35 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 23CB5218D8;
 Thu, 23 Jan 2020 16:31:28 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 0AFC31FF32;
 Thu, 23 Jan 2020 16:31:28 +0100 (CET)
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
To: Krzysztof Kozlowski <krzk@kernel.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jean Delvare <jdelvare@suse.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 I2C <linux-i2c@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <2ef0dfb9-6f25-29c7-153b-3e4dfa15df8e@free.fr>
Date: Thu, 23 Jan 2020 16:31:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1578384779-15487-1-git-send-email-krzk@kernel.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jan 23 16:31:28 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_073133_901974_19B9B641 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/01/2020 09:12, Krzysztof Kozlowski wrote:

> Some of the I2C bus drivers can be compile tested to increase build
> coverage.  This requires also:
> 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
>    controllers,
> 2. Adding 'if' conditional to 'default y' so they will not get enabled
>    by default on all other architectures,
> 3. Limiting few compile test options to supported architectures (which
>    provide the readsX()/writesX() primitives).
> 
>  config I2C_BCM_KONA
>  	tristate "BCM Kona I2C adapter"
> -	depends on ARCH_BCM_MOBILE
> -	default y
> +	depends on ARCH_BCM_MOBILE || COMPILE_TEST
> +	default y if ARCH_BCM_MOBILE

Why not the simpler:
default ARCH_BCM_MOBILE

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
