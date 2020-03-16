Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22811186657
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBM0QJ28eXIHvuuEaj3KGK+PEgfthiQ4feUL2IX5uqQ=; b=E6xsWBcTwrFiGo
	uDUV1bpTlzfDEKVAeFDMkpwKlvPEvV4KKYiCNclNqgYbOEDv12/ZWfWooC7Zc++VfeONZshHzeooP
	l5wP9oQUh9pIjBtPK+p/IDpQkA2ql4blbujClsIVVbeJHtGD4rfgQBb6FbHaXuiZ1SQrPWKNCJpKo
	L7ujD68zzOmsCiMQMOZ6wdJQK0Mi5IUMssrJZjQNdr1YrigFlZWKGj1gYTDVGJUAEps5TEO+2KPhV
	dz0cqTjpDZBXXGE7XWje+IwRatXMd7JI97fvjVDZrfA04as8yUiv4x/feG35CbhhN1u6C8qs469LG
	NRa2bMZOxfdP7seI7xiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDl1k-0003PN-LD; Mon, 16 Mar 2020 08:23:12 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDl1b-0003Om-AH
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:23:04 +0000
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MRCBm-1izVOi3Vzg-00NBWu for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:23:01 +0100
Received: by mail-qt1-f173.google.com with SMTP id g16so13366394qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:23:00 -0700 (PDT)
X-Gm-Message-State: ANhLgQ20bwqkU2+sHfqu0QoqPC8JSWp/gHNhYUKNc52QKudNUzZmoAmO
 0Cz0yVOgu+zRCzAEJtwHmLBkH/IFqS2biNJ8GQ4=
X-Google-Smtp-Source: ADFU+vtvCxAlAeHfmkkAPmp7/hL77mUzkuyTzG3N03DevkjajATYqP8pbnWgan39uFZ96E87M222njLjT5t037hM4uU=
X-Received: by 2002:ac8:6f6e:: with SMTP id u14mr3828514qtv.304.1584346979438; 
 Mon, 16 Mar 2020 01:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:22:43 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
Message-ID: <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:l8ciOQlzJn0myZftgwIgv0fHZ+dYYQwjKYTrqxDP6JiX1f+WCRR
 zXGeI7lhgxgoERk1oF4RW4nuNyEGFfOcfPR0bx0DwAb/GJtn6NQGreCmUPFYJp0Vb66QVww
 QjtRqk9UCPWuWxiJn2Il8Zd6bGCAC1OjYj+3x2gSlmV/ndd2vRCNwU2R4ysIiyOqEI/3ye6
 DKMZJIpP0yDVgbFoFgQ6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lN9MwKhLa4k=:7wSA3vb28+wZ0dXiO92eRl
 QHQ04/JHXeX2iRq0OlMMijFA4NAQS4ER0V/isGCaPiF31xSOdgNDs4NmGu5n3bkkeJys5ybKJ
 kFWzwTjg17Om9U8FNg8TXz4VZSwaz+55LMW5rz9Xn3IvzEwFZZJyqDhwvQVPnMqamHG04FQnX
 241QNqrwb8wCEsBDY1iwV4EzU5uwjlu/uv/coaHTzVqvMxvcvxgd8jO0l3ldSmEI2wNuVwAoN
 y7oWmI3ctMdlHk6gr3A/xYWz50uKQGdQcZJc8B/6vhn40s3kK6sDBPsP0wiKITvNc4oe1OpoB
 qSb703WggnuwlYjRLpBO20FjH8Lv+2jHuLQG3/6sr56/cJtOiAWKb3vKv+pkHvjK2w7cXcNJF
 NIgkFJ8mWM1hzgnnE4Y4/aCY5zo+/0gNcmcq7dL9HPZCW+MqtpFl5Lb6AykPk/lL7u/m6p1iA
 y0O1NA7fQJu+wryX0eG1slo5Min/CvKIqwYENCdzl3obJ6bvs9Jl0BIdfsiRwbTYZ9R2E+X2K
 CP/vOoz1tHG4Rc+jcxpDHpZDWy3rCtokjZmSzrwudADxu8+/qFp4AAPgLLYtN2s2OY2ryu0f+
 oDeqKf9KIjYVKnJbmaHH0+yHk3/dD2W8eZcsPfXs0Cr0AmVJFv/iNOHiw3rKkdegjO/0BUJFG
 OFT7HBJHI5AItUzkf9CuverWOvHxrVGecJZdsc1XZTfjtT8E5SoH9Gn8kHWt2GppdC/RCHDVy
 q+Eum8P4/f76FvG9GvWqgacKxCNdAXU/sz8EPNjAbh24wylmIDaE5t19AGS+5wfQnEnqy9aVU
 cQflJA4c8dEtwx+oQvcwnPNZ/e/YAfiUT8FZUXcOb+YmEYQIrc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_012303_648707_5B2BE528 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, sunilmut@microsoft.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 marcelo.cerri@canonical.com, olaf@aepfle.de, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
>  /*
> + * Functions for allocating and freeing memory with size and
> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> + * the guest page size may not be the same as the Hyper-V page
> + * size. We depend upon kmalloc() aligning power-of-two size
> + * allocations to the allocation size boundary, so that the
> + * allocated memory appears to Hyper-V as a page of the size
> + * it expects.
> + *
> + * These functions are used by arm64 specific code as well as
> + * arch independent Hyper-V drivers.
> + */
> +
> +void *hv_alloc_hyperv_page(void)
> +{
> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
> +}
> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);

I don't think there is any guarantee that kmalloc() returns page-aligned
allocations in general. How about using get_free_pages()
to implement this?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
