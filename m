Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147F1C2EF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD5E50AymI38J5yHMvqDvb2s3vyoZLrHUPO8mkFXEZM=; b=UOEhQDQi3YBl36
	liftOtukCJVLKb6Pjdjj1dSVHXkf+XuVH0DThjQiN+6/MRE/rfhtV3dmJLLGqF9gFj8R4wHtQJVm/
	d7SwXjVdJ05O2R+4Z5szPB8I+m3VnXhqG8oSfiAPjK5KXmwUEIT3fNPCKWarRTKB4DawoyrYfaeur
	0+Gq9CNCWS9WI0lec+ay8IA6ICwQlZqyCe495l4QTLEZXEaK4QjPpRr/+/YDoDkexg8rVfamB87bb
	qMtUayY2vjgkGFAvsuB8vvse3BTvAKy9Mp8FyQxFU4hD/Picg3ud76yuj2wUAeefGi4WeFhh1W9QC
	A3M/LS09loY5JmPgmINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDcN-0001FX-TR; Tue, 01 Oct 2019 08:34:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDcF-0001ES-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:34:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6F6FFAF27;
 Tue,  1 Oct 2019 08:34:36 +0000 (UTC)
Subject: Re: [Xen-devel] [PATCH] xen/efi: have a common runtime setup function
To: Juergen Gross <jgross@suse.com>
References: <20191001082534.12067-1-jgross@suse.com>
From: Jan Beulich <jbeulich@suse.com>
Message-ID: <c8ff366c-dd2c-b4b3-1832-8b93d11d1181@suse.com>
Date: Tue, 1 Oct 2019 10:34:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001082534.12067-1-jgross@suse.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_013441_300132_CBD62207 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01.10.2019 10:25, Juergen Gross wrote:
> @@ -281,4 +270,26 @@ void xen_efi_reset_system(int reset_type, efi_status_t status,
>  		BUG();
>  	}
>  }
> -EXPORT_SYMBOL_GPL(xen_efi_reset_system);
> +
> +/*
> + * Set XEN EFI runtime services function pointers. Other fields of struct efi,
> + * e.g. efi.systab, will be set like normal EFI.
> + */
> +void __init xen_efi_runtime_setup(void)
> +{
> +	efi.get_time			= xen_efi_get_time;
> +	efi.set_time			= xen_efi_set_time;
> +	efi.get_wakeup_time		= xen_efi_get_wakeup_time;
> +	efi.set_wakeup_time		= xen_efi_set_wakeup_time;
> +	efi.get_variable		= xen_efi_get_variable;
> +	efi.get_next_variable		= xen_efi_get_next_variable;
> +	efi.set_variable		= xen_efi_set_variable;
> +	efi.set_variable_nonblocking	= xen_efi_set_variable;
> +	efi.query_variable_info		= xen_efi_query_variable_info;
> +	efi.query_variable_info_nonblocking = xen_efi_query_variable_info;
> +	efi.update_capsule		= xen_efi_update_capsule;
> +	efi.query_capsule_caps		= xen_efi_query_capsule_caps;
> +	efi.get_next_high_mono_count	= xen_efi_get_next_high_mono_count;
> +	efi.reset_system		= xen_efi_reset_system;
> +}
> +EXPORT_SYMBOL_GPL(xen_efi_runtime_setup);

I don't think exporting an __init function is a good idea, and I also
don't see why the function would need exporting had it had the __init
dropped. With the line dropped
Reviewed-by: Jan Beulich <jbeulich@suse.com>

Jan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
