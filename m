Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD44BD818
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMAd1RZQ84LttDdJ9nuyvApvdCYBavEtX8SKoHdrF2k=; b=tHDlIvVvpj8wy4
	SEjF9XgTkgotICz99AZDQV67ob+unybusbmM+zioiJlZ6NVIhXbLQryk5oAqXf9fBMmqgbEANcZyU
	E7mm9XqSGzPiCZFE3azQO4+S7Bm5hhjCagIrtbhV3jPioGePf/ktecEWXpAhr4BXOkvPatgBxVZ8E
	GW9lfJB1Vb27+EnYBcVZPSrUaTeACtvC9fT7QGiaPu75NK4ZqFdEe9UTWyhg2l+VuQ01XyaUbus3Z
	nCXkFkcwcGHVLGx/B7g7to/1qt+57CBsG+tjaVZRsVXe3SvkxtlBqT9AW51OKYYm9qOo5CVTIL5+R
	P0bvgqA4OiDkU0QhZadw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0RR-00078W-AC; Wed, 25 Sep 2019 06:06:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0Qo-000767-TF; Wed, 25 Sep 2019 06:05:44 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A88A306F4AE;
 Wed, 25 Sep 2019 06:05:42 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-181.pek2.redhat.com
 [10.72.12.181])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AF1745D9D3;
 Wed, 25 Sep 2019 06:05:36 +0000 (UTC)
Date: Wed, 25 Sep 2019 14:05:33 +0800
From: Dave Young <dyoung@redhat.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v5 13/17] kexec: add machine_kexec_post_load()
Message-ID: <20190925060533.GB30921@dhcp-128-65.nay.redhat.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
 <20190923203427.294286-14-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923203427.294286-14-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 25 Sep 2019 06:05:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_230543_011063_EA104E1A 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, james.morse@arm.com,
 ebiederm@xmission.com, matthias.bgg@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/23/19 at 04:34pm, Pavel Tatashin wrote:
> It is the same as machine_kexec_prepare(), but is called after segments are
> loaded. This way, can do processing work with already loaded relocation
> segments. One such example is arm64: it has to have segments loaded in
> order to create a page table, but it cannot do it during kexec time,
> because at that time allocations won't be possible anymore.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  kernel/kexec.c          | 4 ++++
>  kernel/kexec_core.c     | 6 ++++++
>  kernel/kexec_file.c     | 4 ++++
>  kernel/kexec_internal.h | 2 ++
>  4 files changed, 16 insertions(+)
> 
> diff --git a/kernel/kexec.c b/kernel/kexec.c
> index 1b018f1a6e0d..27b71dc7b35a 100644
> --- a/kernel/kexec.c
> +++ b/kernel/kexec.c
> @@ -159,6 +159,10 @@ static int do_kexec_load(unsigned long entry, unsigned long nr_segments,
>  
>  	kimage_terminate(image);
>  
> +	ret = machine_kexec_post_load(image);
> +	if (ret)
> +		goto out;
> +
>  	/* Install the new kernel and uninstall the old */
>  	image = xchg(dest_image, image);
>  
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index 2c5b72863b7b..8360645d1bbe 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -587,6 +587,12 @@ static void kimage_free_extra_pages(struct kimage *image)
>  	kimage_free_page_list(&image->unusable_pages);
>  
>  }
> +
> +int __weak machine_kexec_post_load(struct kimage *image)
> +{
> +	return 0;
> +}
> +
>  void kimage_terminate(struct kimage *image)
>  {
>  	if (*image->entry != 0)
> diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> index b8cc032d5620..cb531d768114 100644
> --- a/kernel/kexec_file.c
> +++ b/kernel/kexec_file.c
> @@ -391,6 +391,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
>  
>  	kimage_terminate(image);
>  
> +	ret = machine_kexec_post_load(image);
> +	if (ret)
> +		goto out;
> +
>  	/*
>  	 * Free up any temporary buffers allocated which are not needed
>  	 * after image has been loaded
> diff --git a/kernel/kexec_internal.h b/kernel/kexec_internal.h
> index 48aaf2ac0d0d..39d30ccf8d87 100644
> --- a/kernel/kexec_internal.h
> +++ b/kernel/kexec_internal.h
> @@ -13,6 +13,8 @@ void kimage_terminate(struct kimage *image);
>  int kimage_is_destination_range(struct kimage *image,
>  				unsigned long start, unsigned long end);
>  
> +int machine_kexec_post_load(struct kimage *image);
> +
>  extern struct mutex kexec_mutex;
>  
>  #ifdef CONFIG_KEXEC_FILE
> -- 
> 2.23.0
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Acked-by: Dave Young <dyoung@redhat.com>

Thanks
Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
