Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1F176E08
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 05:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQJrBgRhbkZ4+PIKU6Vm0kB1NnuLqpucU+r8WpEbVMk=; b=aR0s8ggtzyEv+p
	36ZK4yyIseCIfSH7hOn6i3p/GAuUqroXIg9hzM1xu2400oDHCGOu/XQc4VW7hVVb6WXygBpg61EDB
	Vf7WQB88mnevPxlglx5WXJfiSOR3NptkDrmAIy/5bFGml6GQdMZmuJ5kPaVHW2xn9xfvgp48aPtNT
	w2f9I88yzQL8RkTbmF58WF1VC2cS5ca7NkQQQbOSSNQQFLIoCgHWtmlfhk7mhP6xv5TCzKYthHuMb
	y/2wbR309g8JQ+MT0uAQafSsmv0zL45g0xs3IOSYLcCFI6+io3sUdW2cwBVZPsfFQ2FYsawlCr/Jc
	koa51U1+lBWDmJ24gGUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8zDP-0003WD-9A; Tue, 03 Mar 2020 04:31:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8zDG-0003Vl-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 04:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583209880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G7PTv7USExYEn8kuZRYNfAsmaeP7hh+IuVMoTsdTys0=;
 b=ahEAdKcnMHkGH11QnZTaSfNBRr/JoM03zLqYdsaB3ncFyDWbjnIy3EJPoLOKBKdaxRwmFH
 djXNj85iLTgKSbBPuDoeS3XTnjjshHqRbA1ZrkpI+TjqnfXv14ZTw8+a/Lp7TOsyoxA0Fi
 bC0shsNVu08KIzuQM5VRI7SiaK1Lm74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-ATO5EeQENWy1aM7HvrAlrw-1; Mon, 02 Mar 2020 23:31:19 -0500
X-MC-Unique: ATO5EeQENWy1aM7HvrAlrw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98B7D8017DF;
 Tue,  3 Mar 2020 04:31:17 +0000 (UTC)
Received: from t490s (ovpn-116-88.phx2.redhat.com [10.3.116.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 301501001B2C;
 Tue,  3 Mar 2020 04:31:16 +0000 (UTC)
Date: Mon, 2 Mar 2020 23:31:13 -0500
From: Rafael Aquini <aquini@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 2/3] arm64: select CPUMASK_OFFSTACK if NUMA
Message-ID: <20200303043113.GB94763@t490s>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-3-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192520.20808-3-aarcange@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_203122_336566_3D05CB1E 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 02:25:19PM -0500, Andrea Arcangeli wrote:
> It's unclear why normally CPUMASK_OFFSTACK can only be manually
> configured "if DEBUG_PER_CPU_MAPS" which is not an option meant to be
> enabled on enterprise arm64 kernels.
> 
> The default enterprise kernels NR_CPUS is 4096 which is fairly large.
> So it'll save some RAM and it'll increase reliability to select
> CPUMASK_OFFSET at least when NUMA is selected and a large NR_CPUS is
> to be expected.
> 
> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> ---
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 0b30e884e088..882887e65394 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -955,6 +955,7 @@ config NUMA
>  	bool "Numa Memory Allocation and Scheduler Support"
>  	select ACPI_NUMA if ACPI
>  	select OF_NUMA
> +	select CPUMASK_OFFSTACK
>  	help
>  	  Enable NUMA (Non Uniform Memory Access) support.
> 

Acked-by: Rafael Aquini <aquini@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
