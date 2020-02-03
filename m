Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E068515037C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 10:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBG6rcb3GBpC+dk3/CAlwb4f2Q+CsSEYBSLXhD6xC1M=; b=ZF2BoEnU+qOrcs
	n1QjrH1sCWf5ckgUaLnMhoMKFfEOJPLnE+ABKkrO4RM3qs2AlG9GodzB5QOZtVgHRuC84M/z3c78A
	OvwWOtn94m4ckpt2X4DuCOuRr3JBoXLLcTNsKFJRoNwudwEcf8BtZc3n/ni99hHI8VVlNN0Yzbn1x
	/GrsahFJlHx12vsyrK3vSAcZ3MFGJbhs0DqQGEhyyS2hJDFxJvFhD85whib6a4xdnYgTN3TydSwIf
	9j5c+gDAbIAJPPBXm5YbWhYjPhuwgIlUPSl2i0Uj9TM13RElY7ouVRiITWXLUTUBKGxXfg5Akb9iK
	UpBrbiEik0fVrTdLmQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYEU-0001Jk-WE; Mon, 03 Feb 2020 09:41:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYEM-0001JC-QE
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 09:41:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id g1so14970928wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 01:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ug26zZ8NwNX6MbD6XFC1XGn9DuxiiYnmekD3r0bSHbs=;
 b=EMKBtmenrbdEvZ13+jrPUkndzYHG4j3jJkw0MuFUP8A7i4RJzU7rdZ821A0bv47wTc
 q9jM3YhkiYtqNfBQjeX+btm0e0Z3W+PECcTkdmm6gRMEKjQ6RzbRa1A+WSO+PN4DCwE2
 G7zfQDsQ8lJB5Lleekcd3WscSL3mCHyxqJRJngPscEIaoZPrIg7r3CDGGW+kSgGxSs2j
 zAyIyF4p3tb02R8jDiuRxSUM3XrldR42iXwwbkDee5YWCKgPTS/8nqdAOcXqfy0zTvIC
 YTvo26+sR86NEW53pnCrUJYfjB8Yf7iTvvV8Iw0C7yt0jDbR0l+XOV4ipBzkLcVT8B4R
 UTBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ug26zZ8NwNX6MbD6XFC1XGn9DuxiiYnmekD3r0bSHbs=;
 b=hiDL2ooY1IVkOUR+pPDfOQmAUIgSKiEyirPonRThJfdq1xi5TcTfCRwhOzB911g9SK
 i4nTPG6MOmHrb4G7eVGzgXWG9ux7ZycpL34yV0R1fnhAkUY2PSIwnOFjEqwOBRh/kOE1
 bkxg/l7PJaYwtFcVjIJvvRVuKU6c5VMRBTvazMl0sDApK/9Fq291pOPI+9+4JDZtaNMI
 268mJqYhT0ZqpNKmCDpRMfDQf07+GV7OckIK2lZyX6AIvVH9/Yw5MmBHLxhUncSlRbrG
 DUAM4TZL90xJwM91S5Sxscb2Up779Aa6KzpzPnjeFsjWtgPVRybK6pfdvk8GUnrEoZZt
 UYTQ==
X-Gm-Message-State: APjAAAWu3zfpDySsErM1urBhpr9MQ4SjtYJLKxkMH0+bPiXs3Ttk3fB7
 h6OnLy59JoU9ytT5jklPEj3cmg==
X-Google-Smtp-Source: APXvYqxResj+dGE1o2ECZDHO94QPdR6aP+d0QknNmNfT8VIu6KZRZWZS5O5TIVJGfyQ3c8GkRqFJSA==
X-Received: by 2002:a1c:5445:: with SMTP id p5mr27657789wmi.75.1580722880976; 
 Mon, 03 Feb 2020 01:41:20 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:459c:4174:f0ee:1b26])
 by smtp.gmail.com with ESMTPSA id s8sm20064267wmf.45.2020.02.03.01.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 01:41:20 -0800 (PST)
Date: Mon, 3 Feb 2020 09:41:18 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [PATCH v2 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Message-ID: <20200203094118.GD20189@big-machine>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-3-boqun.feng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203050313.69247-3-boqun.feng@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_014122_850578_5213920D 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, linux-pci@vger.kernel.org,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 01:03:12PM +0800, Boqun Feng wrote:
> Currently, retarget_msi_interrupt and other structures it relys on are
> defined in pci-hyperv.c. However, those structures are actually defined
> in Hypervisor Top-Level Functional Specification [1] and may be
> different in sizes of fields or layout from architecture to
> architecture. Therefore, this patch moves those definitions into x86's

Nit: Rather than 'Therefore, this patch moves ...' - how about 'Let's move
...'?

> tlfs header file to support virtual PCI on non-x86 architectures in the
> future.
> 
> Besides, while I'm at it, rename retarget_msi_interrupt to

Nit: 'Besides, while I'm at it' - this type of wording describes what
*you've* done rather than what the patch is doing. You could replace
that quoted text with 'Additionally, '

> hv_retarget_msi_interrupt for the consistent name convention, also

Nit: s/name/naming

> mirroring the name in TLFS.
> 
> [1]: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs
> 
> Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> ---
>  arch/x86/include/asm/hyperv-tlfs.h  | 31 ++++++++++++++++++++++++++
>  drivers/pci/controller/pci-hyperv.c | 34 ++---------------------------
>  2 files changed, 33 insertions(+), 32 deletions(-)
> 
> diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> index 739bd89226a5..4a76e442481a 100644
> --- a/arch/x86/include/asm/hyperv-tlfs.h
> +++ b/arch/x86/include/asm/hyperv-tlfs.h
> @@ -911,4 +911,35 @@ struct hv_tlb_flush_ex {
>  struct hv_partition_assist_pg {
>  	u32 tlb_lock_count;
>  };
> +
> +struct hv_interrupt_entry {
> +	u32 source;			/* 1 for MSI(-X) */
> +	u32 reserved1;
> +	u32 address;
> +	u32 data;
> +} __packed;

Why have you added __packed here? There is no mention of this change in the
commit log? Is it needed?

> +
> +/*
> + * flags for hv_device_interrupt_target.flags
> + */
> +#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
> +#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
> +
> +struct hv_device_interrupt_target {
> +	u32 vector;
> +	u32 flags;
> +	union {
> +		u64 vp_mask;
> +		struct hv_vpset vp_set;
> +	};
> +} __packed;

Same here.

> +
> +/* HvRetargetDeviceInterrupt hypercall */
> +struct hv_retarget_device_interrupt {
> +	u64 partition_id;

Why drop the 'self' comment?

> +	u64 device_id;
> +	struct hv_interrupt_entry int_entry;
> +	u64 reserved2;
> +	struct hv_device_interrupt_target int_target;
> +} __packed __aligned(8);
>  #endif
> diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> index aacfcc90d929..0d9b74503577 100644
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -406,36 +406,6 @@ struct pci_eject_response {
>  
>  static int pci_ring_size = (4 * PAGE_SIZE);
>  
> -struct hv_interrupt_entry {
> -	u32	source;			/* 1 for MSI(-X) */
> -	u32	reserved1;
> -	u32	address;
> -	u32	data;
> -};
> -
> -/*
> - * flags for hv_device_interrupt_target.flags
> - */
> -#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
> -#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
> -
> -struct hv_device_interrupt_target {
> -	u32	vector;
> -	u32	flags;
> -	union {
> -		u64		 vp_mask;
> -		struct hv_vpset vp_set;
> -	};
> -};
> -
> -struct retarget_msi_interrupt {
> -	u64	partition_id;		/* use "self" */
> -	u64	device_id;
> -	struct hv_interrupt_entry int_entry;
> -	u64	reserved2;
> -	struct hv_device_interrupt_target int_target;
> -} __packed __aligned(8);
> -
>  /*
>   * Driver specific state.
>   */
> @@ -482,7 +452,7 @@ struct hv_pcibus_device {
>  	struct workqueue_struct *wq;
>  
>  	/* hypercall arg, must not cross page boundary */
> -	struct retarget_msi_interrupt retarget_msi_interrupt_params;
> +	struct hv_retarget_device_interrupt retarget_msi_interrupt_params;
>  
>  	/*
>  	 * Don't put anything here: retarget_msi_interrupt_params must be last
> @@ -1178,7 +1148,7 @@ static void hv_irq_unmask(struct irq_data *data)
>  {
>  	struct msi_desc *msi_desc = irq_data_get_msi_desc(data);
>  	struct irq_cfg *cfg = irqd_cfg(data);
> -	struct retarget_msi_interrupt *params;
> +	struct hv_retarget_device_interrupt *params;

pci-hyperv.c also makes use of retarget_msi_interrupt_lock - it's really clear
from this name what it protects, however your rename now makes this more
confusing.

Likewise there is a comment in hv_pci_probe that refers to
retarget_msi_interrupt_params which is now stale.

It may be helpful to rename hv_retarget_device_interrupt for consistency with
the docs - however please make sure you catch all the references - I'd suggest
that the move and the rename are in different patches.

Thanks,

Andrew Murray

>  	struct hv_pcibus_device *hbus;
>  	struct cpumask *dest;
>  	cpumask_var_t tmp;
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
