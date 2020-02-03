Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15F7150353
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 10:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmwgnWqTZFPxv0Co/PpTnWgkbuzjH69usu1RV8dKRYs=; b=kJkonWLX+5GZ1u
	ushhZ3NtL8dQKDnEvzRRQHVlHB16GyI5iZC6v88h4CqufRTyj23gxNCNj7ZJ/ui7JqWCHqRxfwrbF
	anakTJyUXaoiSmWieCHG86nxz4atdco1qEdmbEMVtSUAq0e9f+zNdu31bAa1Boq101zeYrKLIzvzV
	cpLd0hjNeGot+WcFbWz0NFCfNaYBXUuZhid2vxJiGLH0jt5RlLRq9Z+utXTAjbQYZ4cBM2MNmaI2b
	1zzzoG7MbI+w0um2YgHZeztYRqOdGYKmP9p9YTy2wnSKK9wPBg8Wg+vKtxxITsD5+7TftidHo+B3U
	6nwZziwjH7uDywZ6wC+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXz8-0003kI-No; Mon, 03 Feb 2020 09:25:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXz1-0003jD-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 09:25:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so16970083wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 01:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F9yu2wtiNO9AUs6nrKy2by5yqmhTTOqT7fKPke38AkA=;
 b=IrJckNU3TBy2Ho2bFZT/sDmmNA89gz9uNI1I08zCGhFGKvXfO4vweB2nmJSN5YsKsz
 9/zJJ1M89N6Mvjz0m9hDX3GK2ebobSvAi+TWW/29be5h1rnJrgTH7yy4vAPfdX3fw0nm
 mzz4HtL4SiBvNNpfhiK8hYs9RMM/Z+fK1ne0EPb6sRkkyby4laEWtx9aiL5EhWDncZef
 PtzeS10ymMQlChGaOeTgMZw4sdLkSmSxPnPI4Y+q0cv1GQJs//H6UCIilrAldZSSaCRE
 87nn70bfkP2KB/hg/MAnp/gqTRkrkPLgTts/3thKG2qc1Ms7U5o0stuV6NzswbnVctbu
 lhuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F9yu2wtiNO9AUs6nrKy2by5yqmhTTOqT7fKPke38AkA=;
 b=qozUlbBNI+lWT0MCQL9gNGUyakALrg/3LmcFKx9M1AmMKLYum1du+8/O0Rqvk9FabP
 hGv/r6+lGjPA+F4XZpgjRoH0aaEzdbleeVqUs8vYxh7m8vBAGs1XqAsefiYPfDhkjLm3
 SEpCYDtcEzfBcK3pmFeqOpWZgBpKpBVShgTEoG22ZU8l/WUriPKbQa9c+Mbhcx9SVtZ6
 ehjxAXpMykJ8/uVgGaWc79ayb/xbUIMp8hD2QKZYeaiaM5w+Sr+XR4jV3XRH/yCc6OI1
 3ZtamJ+5F14gaoD/aegsLFcucehDCU4HkDJzRKiDX95rVX1sxmwTud7v0JsWWRdY13fF
 Dz0Q==
X-Gm-Message-State: APjAAAU6PllXWO41G5OPRrPGQU1PIG5E8X4Hiq8ddty52ZEm0+p68EPM
 4n9BiXY7PRkfML4LcJz3G5nIKQ==
X-Google-Smtp-Source: APXvYqxMp3Ck8IjM3P3+ox8B3yR/DSErPTTa6J5xqFm1bMcpTRQZ39Yvj8v9HY3lGBV2CsuW0xEyMw==
X-Received: by 2002:adf:f787:: with SMTP id q7mr11348594wrp.297.1580721928632; 
 Mon, 03 Feb 2020 01:25:28 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:459c:4174:f0ee:1b26])
 by smtp.gmail.com with ESMTPSA id b18sm24549847wru.50.2020.02.03.01.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 01:25:27 -0800 (PST)
Date: Mon, 3 Feb 2020 09:25:25 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Boqun Feng <boqun.feng@gmail.com>
Subject: Re: [PATCH v2 1/3] PCI: hv: Move hypercall related definitions into
 tlfs header
Message-ID: <20200203092525.GC20189@big-machine>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-2-boqun.feng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203050313.69247-2-boqun.feng@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_012531_391006_6BDAA4A6 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
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

On Mon, Feb 03, 2020 at 01:03:11PM +0800, Boqun Feng wrote:
> Currently HVCALL_RETARGET_INTERRUPT and HV_PARTITION_ID_SELF are defined
> in pci-hyperv.c. However, similar to other hypercall related definitions
> , it makes more sense to put them in the tlfs header file.

Nit: please keep the comma attached to the previous word - even if that
means you need to move the word with it to the next line to maintain line
limits.

> 
> Besides, these definitions are arch-dependent, so for the support of
> virtual PCI on non-x86 archs in the future, move them into arch-specific
> tlfs header file.
> 
> Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> ---
>  arch/x86/include/asm/hyperv-tlfs.h  | 3 +++
>  drivers/pci/controller/pci-hyperv.c | 6 ------
>  2 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> index 5f10f7f2098d..739bd89226a5 100644
> --- a/arch/x86/include/asm/hyperv-tlfs.h
> +++ b/arch/x86/include/asm/hyperv-tlfs.h
> @@ -376,6 +376,7 @@ struct hv_tsc_emulation_status {
>  #define HVCALL_SEND_IPI_EX			0x0015
>  #define HVCALL_POST_MESSAGE			0x005c
>  #define HVCALL_SIGNAL_EVENT			0x005d
> +#define HVCALL_RETARGET_INTERRUPT		0x007e
>  #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE 0x00af
>  #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST 0x00b0
>  
> @@ -405,6 +406,8 @@ enum HV_GENERIC_SET_FORMAT {
>  	HV_GENERIC_SET_ALL,
>  };
>  
> +#define HV_PARTITION_ID_SELF                    ((u64)-1)
> +
>  #define HV_HYPERCALL_RESULT_MASK	GENMASK_ULL(15, 0)
>  #define HV_HYPERCALL_FAST_BIT		BIT(16)
>  #define HV_HYPERCALL_VARHEAD_OFFSET	17
> diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> index 9977abff92fc..aacfcc90d929 100644
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -406,12 +406,6 @@ struct pci_eject_response {
>  
>  static int pci_ring_size = (4 * PAGE_SIZE);
>  
> -/*
> - * Definitions or interrupt steering hypercall.
> - */
> -#define HV_PARTITION_ID_SELF		((u64)-1)
> -#define HVCALL_RETARGET_INTERRUPT	0x7e
> -

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

>  struct hv_interrupt_entry {
>  	u32	source;			/* 1 for MSI(-X) */
>  	u32	reserved1;
> -- 
> 2.24.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
