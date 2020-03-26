Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE4C193CDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRm6WxjVcdfooGxcF7mqd5AuNWdQpf+NpwfIiLvfT6g=; b=DPNXUSLsxQ0oGX
	PTENrlRpu4SvetJss2EERpM33WWKvet6P8aqkVxdyEqEW3ViCrU3B5Owco520Lp6m/AHdSOv1L73p
	8C0lERfmCjXuIKEcqt0fZYg09LsQ90C7oHPgiiTQcIkXAWR5vyvZUylvBP9+qJkv04zDWB5iOwYun
	mabU0FLlYKh1JNZ11xuJq6MHkMOw9pfbHGP29Anxv6QHocvzhjIJE2EqboaAZJOprUCBtSWfAb1vm
	iPEguj+4ykYDLUOdHxtKxscdcr6/4MUa3MMcCL9igo2/2caGsFCDL0Je5zinjSTxeGYXfbBpB5SLm
	XWuFqzTzThzdfBh8k/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPaQ-0005Ru-He; Thu, 26 Mar 2020 10:18:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPaG-0005Qf-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:17:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id u10so6999850wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UfJd8ZmzjrF5pKc68uc6PImNDV9eCz7+cwylT0iK8ts=;
 b=JliWM1wRQBiU1WaxBOnbX9r9308kU10VLlDFX+c6Vs25LyF0yKjG7goxEoufVMmakc
 Mj9RKrbTLuEH9Y1EledRjVwlPdhc9hUtkacV8R/wdQwQ0J8Syb6gDlyBi/x6KSaXYfCb
 N7GvunUb7+SYEOy24EIclq9R/1WN4fab+iN6rM1ab/qlMgXCZKhdN7uyoJUbinhVchK0
 TniWliY4kjeDAqmGViGAuy3rR5oA6hINMq2QTT+1cCYQC4rURY7HiWgpWEKGEmQrkaNS
 z8+QW1f74x2aeFMaFfZL4MB2PRCxS5LUbB1w/d5JrvI/bkPvHOk3FCEyoHuWwax1WvYW
 YdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UfJd8ZmzjrF5pKc68uc6PImNDV9eCz7+cwylT0iK8ts=;
 b=GL9gwhm8cLLNpKxLQHiI+j7BQVxlwxZG3n3UudvPNYElUQr3Qwfeun4GrT8s8DGqF0
 g7NU1KofYl4qUUTG06mgkeUMCijGYRSk5R6DjRc+6arW3ybUEHpBmzCszOJHPAvDpOu2
 steXnZgBFsWVnHURBC3VKL+/MAIwm53D5MGWT/EwhoDKOwtQ0Ml6XwBkrzi4KqO3nY1G
 cg6rJuBte5BoFVXIUZXnxaW20eIJDKAhe8SpUoTilL5IYUa5AnuF3YFEO1JjT/b8y0Ij
 Z1kUYDXBZwIRDV5fPUUDkmnQNDEzlxePaGDuNoDlE3fTHEK9m+2If/f0VWKC4mlDvUuw
 B6KQ==
X-Gm-Message-State: ANhLgQ0qpC52rQeG3pV/L7iRFPD/bKbUD1JGXQ0p5B92kR1pK8xReBVO
 hwkoLKI30eJm9yF0U4pgccPsJS/z/e0=
X-Google-Smtp-Source: ADFU+vtYgdqu1iFA3EFU13wqSJRUhSE1RdRkdpnCijLZr09pmk1V43wx1G/9puarDu1bz5EjTdYlbQ==
X-Received: by 2002:adf:fac7:: with SMTP id a7mr8803665wrs.191.1585217872055; 
 Thu, 26 Mar 2020 03:17:52 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id g7sm2997217wrq.21.2020.03.26.03.17.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 03:17:51 -0700 (PDT)
Date: Thu, 26 Mar 2020 10:17:48 +0000
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 0/7] Removing support for 32bit KVM/arm host
Message-ID: <20200326101748.GA126150@google.com>
References: <20200324103350.138077-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324103350.138077-1-maz@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_031757_056135_BE1E16FF 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Yoshi <takashi@yoshi.email>,
 Daniel Golle <daniel@makrotopia.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Marek Szyprowski <m.szyprowski@samsung.com>,
 Russell King <linux@arm.linux.org.uk>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Stefan Agner <stefan@agner.ch>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Olof Johansson <olof@lixom.net>, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Tuesday 24 Mar 2020 at 10:33:43 (+0000), Marc Zyngier wrote:
> Marc Zyngier (7):
>   arm: Unplug KVM from the build system
>   arm: Remove KVM from config files
>   arm: Remove 32bit KVM host support
>   arm: Remove HYP/Stage-2 page-table support
>   arm: Remove GICv3 vgic compatibility macros
>   arm: Remove the ability to set HYP vectors outside of the decompressor
>   MAINTAINERS: RIP KVM/arm

I've been staring at these patches for some time now and all looks good
to me. So, for the entire series:

Reviewed-by: Quentin Perret <qperret@google.com>

FWIW, as mentioned in a previous thread, I'm currently working with Will
on an extension of KVM to support guest isolation, and the arm32 port
was unfortunately making it really hard to do intrusive changes, so this
is much appreciated!

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
