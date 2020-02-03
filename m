Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBA15039D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 10:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjDu9yI1WJX5WYz7qtNlnQFhBpMup1csiGfFy8sbEg0=; b=WVTXaIDUrqj+7n
	BdULuxpVoEdVm+kZeXusFjJqNTFnynHUfWBkoD6wRaHu5opP1I5qem2KXCQKu1vCmVpHBjL0s+zBl
	fAFfF4BkP5K3p8zXjZ5ZNGzbQ8777ZX8G2HUWUQT/TZN11I/SwZr0rGdcGasUm5OTtNLVWRNzbFSQ
	x3H4vgFD9BHxA+gMMzkvLR02L9QUBoV475SFmQxmE5uZXnT3UB8HlS0JTQsjrF47Eafvylg3IEE/3
	NwY/zMgwUJZMpncjD2t8oWeAe6zpKHNZxVIezPPwOid0xV9jco/YPybpRJRJ7ZWthUy9hyqICM/23
	g3WgWNyT4RHBcqynfvvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYOU-0005Ac-JC; Mon, 03 Feb 2020 09:51:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYOO-0005A4-Ik
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 09:51:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so17121257wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 01:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rnDPBSUuVuYgxfTH/LE+fCmpX3/NqS6sW9R93j88kKg=;
 b=CPpgzeMv6frDZeN7Ohf8Ni6aGL9A7BPf33E1PJD2dRObj80331n8Tq2PNB26N3uflb
 v9XTi3vrj3ujEYXIplN6/HZBrorzao1cmnSQi44JxS3QX/7z9dFujRdPvBiGo1NcQXTO
 AHWfYj4HJylTEAucXZWvYAKMaKJfFZWOq14wL5mPKmOZlY86fUtKOyMu8uws9LgHG8Qj
 2EAlBBbFhM1XtHjw0KrqvrlqeQB5+4Iusl/A7bEqPeIvYsmjcYW3Cj3LH6i3v5EJpKMY
 k+JfJnBM/NxsO0ke0m6V+TCXaADzCwbqK4KVb4EU08drZwMQsMJZ/dYnmsfdmAX2rTZu
 VYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rnDPBSUuVuYgxfTH/LE+fCmpX3/NqS6sW9R93j88kKg=;
 b=VyVzrc1cQuYpFcxzEJKeNrwt58n9+LRbABYDV2EsUHur5Chck/6uTHB1VXRGbFDO9e
 nR6E3BorAGPkoxL5VUdnwzGfq6Swas/R78VNm18Otdf+3rPUdZ2fvZxoeeS7QTitDHu/
 cqXH4fYymNVkerQfMvK5s7FSzeb4Yc2OM3c3yadp6madIxNLcSAGAMd9UOupHuAJKfPQ
 DlhnDZT9sDoE9JISoImasjznRP93e3lz1yNMQFdvzEsZGzQM8kxh4oOzW3G481bdhUKT
 iK7QNV/0gQyGSSPEY8XdT4E35ScGAOuOrd1HdWC8RQz/8Wz1WYCLqJm6sZfDHO0twMbv
 CepA==
X-Gm-Message-State: APjAAAWJQCgMNTLEZQYL66xkjOSW8iy2ZJCidhWR52KPzCzSsl9yHNYl
 m8OhkVy+FHDXOl94WwQjE1Hxcg==
X-Google-Smtp-Source: APXvYqw7V7B7iGDd6nFgnka0ziI8dHLkn3HmGFeQJiw3wbFDH3xDp2B94hEuTX3mpEjB0xaTbYrdsA==
X-Received: by 2002:adf:ca07:: with SMTP id o7mr14000110wrh.49.1580723502887; 
 Mon, 03 Feb 2020 01:51:42 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:459c:4174:f0ee:1b26])
 by smtp.gmail.com with ESMTPSA id t1sm23821080wma.43.2020.02.03.01.51.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 01:51:41 -0800 (PST)
Date: Mon, 3 Feb 2020 09:51:40 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [PATCH v2 3/3] PCI: hv: Introduce hv_msi_entry
Message-ID: <20200203095140.GE20189@big-machine>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-4-boqun.feng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203050313.69247-4-boqun.feng@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_015144_619705_0DFCDED6 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Mon, Feb 03, 2020 at 01:03:13PM +0800, Boqun Feng wrote:
> Add a new structure (hv_msi_entry), which is also defined int tlfs, to

s/int/in the/ ?

> describe the msi entry for HVCALL_RETARGET_INTERRUPT. The structure is
> needed because its layout may be different from architecture to
> architecture.
> 
> Also add a new generic interface hv_set_msi_address_from_desc() to allow
> different archs to set the msi address from msi_desc.
> 
> No functional change, only preparation for the future support of virtual
> PCI on non-x86 architectures.
> 
> Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> ---
>  arch/x86/include/asm/hyperv-tlfs.h  | 11 +++++++++--
>  arch/x86/include/asm/mshyperv.h     |  5 +++++
>  drivers/pci/controller/pci-hyperv.c |  4 ++--
>  3 files changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> index 4a76e442481a..953b3ad38746 100644
> --- a/arch/x86/include/asm/hyperv-tlfs.h
> +++ b/arch/x86/include/asm/hyperv-tlfs.h
> @@ -912,11 +912,18 @@ struct hv_partition_assist_pg {
>  	u32 tlb_lock_count;
>  };
>  
> +union hv_msi_entry {
> +	u64 as_uint64;
> +	struct {
> +		u32 address;
> +		u32 data;
> +	} __packed;
> +};
> +
>  struct hv_interrupt_entry {
>  	u32 source;			/* 1 for MSI(-X) */
>  	u32 reserved1;
> -	u32 address;
> -	u32 data;
> +	union hv_msi_entry msi_entry;
>  } __packed;
>  
>  /*
> diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
> index 6b79515abb82..3bdaa3b6e68f 100644
> --- a/arch/x86/include/asm/mshyperv.h
> +++ b/arch/x86/include/asm/mshyperv.h
> @@ -240,6 +240,11 @@ bool hv_vcpu_is_preempted(int vcpu);
>  static inline void hv_apic_init(void) {}
>  #endif
>  
> +#define hv_set_msi_address_from_desc(msi_entry, msi_desc)	\
> +do {								\
> +	(msi_entry)->address = (msi_desc)->msg.address_lo;	\
> +} while (0)

Given that this is a single statement, is there really a need for the do ; while(0) ?


> +
>  #else /* CONFIG_HYPERV */
>  static inline void hyperv_init(void) {}
>  static inline void hyperv_setup_mmu_ops(void) {}
> diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> index 0d9b74503577..2240f2b3643e 100644
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -1170,8 +1170,8 @@ static void hv_irq_unmask(struct irq_data *data)
>  	memset(params, 0, sizeof(*params));
>  	params->partition_id = HV_PARTITION_ID_SELF;
>  	params->int_entry.source = 1; /* MSI(-X) */
> -	params->int_entry.address = msi_desc->msg.address_lo;
> -	params->int_entry.data = msi_desc->msg.data;
> +	hv_set_msi_address_from_desc(&params->int_entry.msi_entry, msi_desc);
> +	params->int_entry.msi_entry.data = msi_desc->msg.data;

If the layout may differ, then don't we also need a wrapper for data?

Thanks,

Andrew Murray

>  	params->device_id = (hbus->hdev->dev_instance.b[5] << 24) |
>  			   (hbus->hdev->dev_instance.b[4] << 16) |
>  			   (hbus->hdev->dev_instance.b[7] << 8) |
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
