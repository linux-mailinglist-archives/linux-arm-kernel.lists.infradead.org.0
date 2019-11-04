Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B050ED845
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 05:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5B9+jV6aLVvlFndpYOm8dy7PDr45YtOWNHpL/5BP5ZY=; b=G1NO7pyepHEIFX
	IXrPi7NKDIv3nq8wQw+stpk/P9bJ/A294m3uiLrUzhi7+0IpMexH/5rRIt5FzhXIdZZtqdWVEMoqh
	i6G3xvLc1qGXOkHRDiBVoRqPwSHUQlqspkC4GlUYrnuTCz5UUR2bnVniId7z6DqP6Q0WU1QThR3+e
	x5D8aq1cV0p0coxRU5VlCW//UbjeT3TEPqJEMGyUg9xnaKvbqZFbNSvT9dLYTOJNcvDuwv6XxfS1j
	eXpvRcXdu2Ul8bsT7yS60cHdPRddv0x76V6YyaJbmgSWe4G/ciJvt4GKM8dSr3g+kMguAYYeT0dts
	/iwp0bn66ncathhFHKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRU6n-0005fg-6A; Mon, 04 Nov 2019 04:36:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRU6g-0005fB-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 04:36:48 +0000
Received: by mail-qk1-x743.google.com with SMTP id e187so3641134qkf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 20:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZLgZcvhJjOGhGgB5eDSXNRDxozk3YfD0qt93J2vZH8Q=;
 b=h/ngSt/0LguupexOPjOpR1IsHkLhqh/uhz7IJ7kkP69D0Ry4IbALAnIZy93ZlbN7Ir
 8N/3Ntc3RVStDGwyKm27ruyMqfzDWOt1PcOdu9KEo1I9h9AbnHIYAJFGiNZY9wpmjkDV
 I8LKjdGllvdxbwFKUpR+w0qfp6LOorKmG8vTY0zg8rLhYd3e54nkAAKyDsn8Yff4oLpW
 uSzNSAVrSRT3qWnFAKl5pdY6FDt0UkMVvrXywTG3jQNbYKY7xep2LuM36LtPVAKgsevS
 4LZr8ecfgjn3m37mbcF1XUIk2W82UzViMzpAh+9KLLmC6wR1dCQmxo9NuJRpxdzcmNC1
 5Pyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZLgZcvhJjOGhGgB5eDSXNRDxozk3YfD0qt93J2vZH8Q=;
 b=arx7CtE/JFBl5cUTuMza0tg+sWLMHR/zotGbGgMwcKqpT8fP043u91IcBUiotXKtCQ
 JpH96ZvzjCaj+f+hCZZ2NrjSOiB3riqp2wElIMFniqSjwuMhgx1D11vbIvgdzBoG8Ikm
 OEWbMB73/GNvUZ/I80GscOJ+8NV/BbfCX4KAHqfptMQtY1Q7OU+YCUoKjjYGqdrDT2os
 bjz3lOcy+iDEX5u7aA590necrp7mn4Panc1KP1wXFKH1jfAmv0tReNWjk3Kq80Y4g9RV
 95FE1yl0NDHQVQehjGbXzD/If9FMO976f1dZXonj5JLXmjWdKKOfOuB1X6SvgKjVHAFB
 nTAA==
X-Gm-Message-State: APjAAAWv4q+pOldok8cI+xFfspsDZH6I3j8KXZu2QuuF8KS1Y8EMEajV
 NQJKhRD6P2Nzg5+CVP63DXM=
X-Google-Smtp-Source: APXvYqw62+FgpfqqLbgeJmlLh9WhBZMHM6GXrpIjwHJQU6NAC1YX55ZF7qvIig8Pz+13znFnzFNZgA==
X-Received: by 2002:ae9:d60f:: with SMTP id r15mr20937232qkk.207.1572842205086; 
 Sun, 03 Nov 2019 20:36:45 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id t20sm2275746qtq.55.2019.11.03.20.36.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Nov 2019 20:36:44 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 4E47721903;
 Sun,  3 Nov 2019 23:36:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 03 Nov 2019 23:36:43 -0500
X-ME-Sender: <xms:2aq_Xa9yFKGdUA5zRabXV2-8wVSTaGzKdUQFa_MEvNrnbcEHQM7WDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudduvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepuehoqhhu
 nhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucfkphepud
 eijedrvddvtddrvdehhedrvdeknecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhn
 odhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejje
 ekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhn
 rghmvgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:2aq_XSVq7OPhkzzt9dsP_OrhV1cZDcmc0EC82s8iLbn1hX51Ai6dQw>
 <xmx:2aq_Xdpqi_GI_vch_O4HyO8Wr4hBKXMjgre8gTDpxh3PFqAsQPExgQ>
 <xmx:2aq_XckY4TpXzl9iRM-V8EA9BIN9qc78w8bRBqZ9WqzUVnLP3M7D7w>
 <xmx:26q_XV_T1Rzff5BsIYIdOt0V2A0YOJsXGxlaqXZzbgsKyL3Z06QJVWuYi0Y>
Received: from localhost (unknown [167.220.255.28])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F92D3060057;
 Sun,  3 Nov 2019 23:36:40 -0500 (EST)
Date: Mon, 4 Nov 2019 12:36:32 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Message-ID: <20191104043632.GB182@boqun-laptop.fareast.corp.microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_203646_707168_EEF23B90 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, KY Srinivasan <kys@microsoft.com>,
 "will@kernel.org" <will@kernel.org>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

On Thu, Oct 03, 2019 at 07:03:19PM +0000, Michael Kelley wrote:
> Add ARM64-specific code to make Hyper-V hypercalls and to
> access virtual processor synthetic registers via hypercalls.
> Hypercalls use a Hyper-V specific calling sequence with a non-zero
> immediate value per Section 2.9 of the SMC Calling Convention
> spec.
> 
> This code is architecture dependent and is mostly driven by
> architecture independent code in the VMbus driver and the
> Hyper-V timer clocksource driver.
> 
> This code is built only when CONFIG_HYPERV is enabled.
> 
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  MAINTAINERS                 |   1 +
>  arch/arm64/Kbuild           |   1 +
>  arch/arm64/hyperv/Makefile  |   2 +
>  arch/arm64/hyperv/hv_hvc.S  |  44 +++++++++++++++
>  arch/arm64/hyperv/hv_init.c | 133 ++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 181 insertions(+)
>  create mode 100644 arch/arm64/hyperv/Makefile
>  create mode 100644 arch/arm64/hyperv/hv_hvc.S
>  create mode 100644 arch/arm64/hyperv/hv_init.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d464067..84f76f9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7566,6 +7566,7 @@ F:	arch/x86/kernel/cpu/mshyperv.c
>  F:	arch/x86/hyperv
>  F:	arch/arm64/include/asm/hyperv-tlfs.h
>  F:	arch/arm64/include/asm/mshyperv.h
> +F:	arch/arm64/hyperv
>  F:	drivers/clocksource/hyperv_timer.c
>  F:	drivers/hid/hid-hyperv.c
>  F:	drivers/hv/
> diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
> index d646582..2469421 100644
> --- a/arch/arm64/Kbuild
> +++ b/arch/arm64/Kbuild
> @@ -3,4 +3,5 @@ obj-y			+= kernel/ mm/
>  obj-$(CONFIG_NET)	+= net/
>  obj-$(CONFIG_KVM)	+= kvm/
>  obj-$(CONFIG_XEN)	+= xen/
> +obj-$(CONFIG_HYPERV)	+= hyperv/

I did a kernel built with CONFIG_HYPERV=m today, and found out this line
should be (similar to x86):

	+obj-$(subst m,y,$(CONFIG_HYPERV))      += hyperv/

, otherwise, when CONFIG_HYPERV=m, files in arch/arm64/hyperv/ will be
compiled as obj-m, and symbols defined in those files cannot be
used by kernel builtin, e.g. hyperv_timer (since CONFIG_HYPERV_TIMER=y
in this case).

A compile/link error I hit today is:

| /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98: undefined reference to `hv_set_vpreg'
| aarch64-linux-gnu-ld: /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98: undefined reference to `hv_set_vpreg'

[...]

Besides, another problem I hit when compiled with CONFIG_HYPERV=m is:

| ERROR: "screen_info" [drivers/hv/hv_vmbus.ko] undefined!

, which can be fixed by the following change.

Regards,
Boqun

---------------->8
diff --git a/arch/arm64/kernel/efi.c b/arch/arm64/kernel/efi.c
index d0cf596db82c..8ff557ae5cc6 100644
--- a/arch/arm64/kernel/efi.c
+++ b/arch/arm64/kernel/efi.c

@@ -55,6 +55,7 @@ static __init pteval_t create_mapping_protection(efi_memory_desc_t *md)

 /* we will fill this structure from the stub, so don't put it in .bss */
 struct screen_info screen_info __section(.data);
+EXPORT_SYMBOL(screen_info);

 int __init efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md)
 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
