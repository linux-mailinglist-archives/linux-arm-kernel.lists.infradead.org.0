Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E3C177307
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2VJv0davshlIg4z7WHm+iqhqrqZPX18HtW/ZpIX2RQ=; b=suTRBjctNrpSu2
	sk4Nbhc8HKCU3bA5kIECxAZHsjcntakOaknFr0Dr2EyCqqzwacX87RjODH2VF+/l0AZKjyD6SkGKs
	aCx+oDqtrhGHcycaTsOmMdIeJBxuAGhJaik8ek56EtCYNpimHtg02nMKMAV7tNB4YVFVpdB6QW7Sm
	xqLFzMD60t6OA4GJgHJJZslKVCLiADuvEKqY1hOLME/OeAqzAPCJPCogsoCC4/5iGK7BRkbsgxOTg
	90aVJX/nPqWQ+UeTU0c9zr3PYcCzreKSgPlYq14rvVvYYEB2MhbwOgdvHEA/iCWLHDIisDqKXACte
	HmExxzcYE2cq+MSaM54A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94Br-0002dg-P0; Tue, 03 Mar 2020 09:50:15 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94Bk-0002CD-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:50:09 +0000
Received: by mail-wr1-f67.google.com with SMTP id r17so3477284wrj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 01:50:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y99FbCmw9OnfxHbqxZIXhqJVIqMSByuY8qfyzjJA6uY=;
 b=IWpkOpZFFOaCJz7DTV+nYBxUjup56kemGPqr95Waz6ZuDjKwIW7aVnPrXivT0/vmDS
 Q4MbLVwSgmttpCoPTH+XF9920OAqQGR81wAY6kISXon3zrs6i3KozjKp6N+urj9L7xkl
 Nn6D2Ugq8s7encH48wcZXKCGHPEyJNfJgOTB8pcRF1+dsCQ97wFUmPOky+5SFF7YRGC+
 RNMoEMs5ht5dmQDv/oTlsnmCRiriSD3oCY0CuIf2NvhBAL8tkFJ89n+WUaRX2iKur/gC
 aAoiHacQGpig2UkhpzqzN36y9Ygv52HKgAobQzTs1nKECpPgG4ytC8eweCu6vUfKD1+7
 WK+A==
X-Gm-Message-State: ANhLgQ0oaKMPGFQwg53/R636m+j/pR+pBkZ2C9W8yKCvHJgtfa4HYr/F
 2+aOFSiDJbAU1mKVsQumeaU=
X-Google-Smtp-Source: ADFU+vuwthCqGkSbyuUa0Z+cIz/BhBDMexJ+IcEdZ4dQctXNHctdxSNdlijFijlYre1w0hRSFX3F9Q==
X-Received: by 2002:a5d:4a10:: with SMTP id m16mr4435706wrq.333.1583229006583; 
 Tue, 03 Mar 2020 01:50:06 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id u8sm3096766wmm.15.2020.03.03.01.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 01:50:05 -0800 (PST)
Date: Tue, 3 Mar 2020 10:50:05 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 1/7] mm/memory_hotplug: Drop the flags field from
 struct mhp_restrictions
Message-ID: <20200303095005.GE4380@dhcp22.suse.cz>
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-2-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221182503.28317-2-logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_015008_684341_5BF420A3 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Eric Badger <ebadger@gigaio.com>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 21-02-20 11:24:57, Logan Gunthorpe wrote:
> This variable is not used anywhere and should therefore be removed
> from the structure.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: David Hildenbrand <david@redhat.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  include/linux/memory_hotplug.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
> index f4d59155f3d4..69ff3037528d 100644
> --- a/include/linux/memory_hotplug.h
> +++ b/include/linux/memory_hotplug.h
> @@ -55,11 +55,9 @@ enum {
>  
>  /*
>   * Restrictions for the memory hotplug:
> - * flags:  MHP_ flags
>   * altmap: alternative allocator for memmap array
>   */
>  struct mhp_restrictions {
> -	unsigned long flags;
>  	struct vmem_altmap *altmap;
>  };
>  
> -- 
> 2.20.1

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
