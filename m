Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105911E7D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 07:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vL4Rt+DQ9BwhGmfwvgZ7pVuBNY2VC9ZUiZE8uFN9C8o=; b=eu40E9wCDO0Bgg3Vv6hww46Mv
	zdz1i0qM8q0eiyjgO0xGHE6omP3eY0bTwr4VhqiUfFVu2W3vpodmEHD3i+M7aKDeRNt/YJ1qeMMAq
	Zx59+z2EFeFKiQP/Ykcdnpq8T2FrR04xt/sHL4lct35bbpyrFds83NxDakpUijyCt9oFZcxrLhB/W
	RMVR3AF8DEsO7sNtnFT+zq7RbxlPMREsi85LKA04sJidwxYY+OBmGvPIpzEVb0s2M3iA0ys3y05IF
	bOAo5NpjpSVh3cRF01Eseoq6i/I6DtcU+IBeDD8ABtcm0fOcv0/iEJEzNdhBw3KWBkE6Auiyuu02U
	octLUM7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQmHB-0002UP-LJ; Wed, 15 May 2019 05:16:25 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQmH4-0002Tk-B3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 05:16:19 +0000
Received: by mail-pf1-f193.google.com with SMTP id z26so721027pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 22:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CaPoBfwvfHYoUlv6FfiwdTonkmXQ3Vz27zElYB+X6NY=;
 b=fAi7VFsvGUlO7/vKJ8WhnahGi9WxgYiCT86bDbUG5L+BHzHr1hl+7+z+hx6o8ilzje
 8qwt93fd0UE1Vz1sf06Ag/crzRl8+ciLYeDKL7gnfSg4uOwODnQojAtV4j0aBEXlEtCT
 R66slj8d5M8WQX0Gur8tDz9FS6RxySE86TZIYEi7RGGFV6vcr6RrUzGOMjsXJ+2FLm8t
 O6Afg36ddzgoWnadwGUPvXnmj+6ZJbDpZUN/QHKEOBS5mEFigUTXPPEfEGxMYCugum73
 WlWeLzvl18LHcsCMmGs81PHPz3el/HO+w1nq64wARY3QD4wxlWHDOb6Z/4Suda+fAJO7
 xfIw==
X-Gm-Message-State: APjAAAV5BzZfhdK5ApUop/DgYG+Kzri5OudNs4bFoIY4QFI0aJSg4j5a
 pL6jsaUrAkDBprBX6b7NzISJ2w==
X-Google-Smtp-Source: APXvYqy7c4aMXqBtV8RsQz37cPVhnwGAI6b96xSjxoKpUb2R5qSgsCxWAkkxEB8uTYJPawwWOM0xxw==
X-Received: by 2002:a63:d4c:: with SMTP id 12mr28791554pgn.30.1557897374744;
 Tue, 14 May 2019 22:16:14 -0700 (PDT)
Received: from localhost.localdomain ([106.215.121.117])
 by smtp.gmail.com with ESMTPSA id 135sm1321765pfb.97.2019.05.14.22.16.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 22:16:13 -0700 (PDT)
Subject: Re: [PATCH 4/4] kdump: update Documentation about crashkernel on arm64
To: Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, akpm@linux-foundation.org, ard.biesheuvel@linaro.org,
 rppt@linux.ibm.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-5-chenzhou10@huawei.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <de5b827f-5db2-2280-b848-c5c887b9bb58@redhat.com>
Date: Wed, 15 May 2019 10:46:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-5-chenzhou10@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_221618_386861_AAD45C3E 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: wangkefeng.wang@huawei.com, takahiro.akashi@linaro.org,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, horms@verge.net.au,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/07/2019 09:20 AM, Chen Zhou wrote:
> Now we support crashkernel=X,[high,low] on arm64, update the
> Documentation.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>   Documentation/admin-guide/kernel-parameters.txt | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 268b10a..03a08aa 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -705,7 +705,7 @@
>   			memory region [offset, offset + size] for that kernel
>   			image. If '@offset' is omitted, then a suitable offset
>   			is selected automatically.
> -			[KNL, x86_64] select a region under 4G first, and
> +			[KNL, x86_64, arm64] select a region under 4G first, and
>   			fall back to reserve region above 4G when '@offset'
>   			hasn't been specified.
>   			See Documentation/kdump/kdump.txt for further details.
> @@ -718,14 +718,14 @@
>   			Documentation/kdump/kdump.txt for an example.
>   
>   	crashkernel=size[KMG],high
> -			[KNL, x86_64] range could be above 4G. Allow kernel
> +			[KNL, x86_64, arm64] range could be above 4G. Allow kernel
>   			to allocate physical memory region from top, so could
>   			be above 4G if system have more than 4G ram installed.
>   			Otherwise memory region will be allocated below 4G, if
>   			available.
>   			It will be ignored if crashkernel=X is specified.
>   	crashkernel=size[KMG],low
> -			[KNL, x86_64] range under 4G. When crashkernel=X,high
> +			[KNL, x86_64, arm64] range under 4G. When crashkernel=X,high
>   			is passed, kernel could allocate physical memory region
>   			above 4G, that cause second kernel crash on system
>   			that require some amount of low memory, e.g. swiotlb
> 

IMO, it is a good time to update 'Documentation/kdump/kdump.txt' with 
this patchset itself for both x86_64 and arm64, where we still specify 
only the old format for 'crashkernel' boot-argument:

Section: Boot into System Kernel
          =======================

On arm64, use "crashkernel=Y[@X]".  Note that the start address of
the kernel, X if explicitly specified, must be aligned to 2MiB (0x200000).
...

We can update this to add the new crashkernel=size[KMG],low or 
crashkernel=size[KMG],high format as well.

Thanks,
Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
