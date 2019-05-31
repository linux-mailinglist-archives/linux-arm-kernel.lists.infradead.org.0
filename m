Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B6D3135F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLfUrYAnr0ZIhrU2dbZu4Lsg0bPECaT3YVfjNJ1D2y4=; b=aHGLJx8mGnivAb
	wTHnKwGJmANZ9NPfzr3W8Qdp+vnuQTTLijozqBL3iyotft1Hor+2QVX3hCBnhKnihuWCuBdO2tWg6
	urdlTxgyll0lNyEChf4blj8CrezZWFDGDdyOsdUSNeApvFU9js5ibTRFpccCt9ndcfOq6EZk/iINC
	f/eXptN3g/tfrkslHX7BMr80rFLZ1MvLBI4jj2hzVptBr0xJtSNTv7OcAOCVjbJR0ds+zvvSLH3eh
	ApNx0OaA00cw7BEUPg/8A1CQtVIla/5SjRyzHzAU5HOrfKLCQ/jUmo4B53n6nXpaOT0z99DGBu99k
	5j0JDqKjkYp0/b+RxDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkxA-0000Y1-UU; Fri, 31 May 2019 17:04:28 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkwT-0008Vw-HZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:03:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CC5515AD;
 Fri, 31 May 2019 10:03:45 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91A723F59C;
 Fri, 31 May 2019 10:03:43 -0700 (PDT)
Date: Fri, 31 May 2019 18:03:40 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 3/9] update_headers.sh: arm64: Copy
 sve_context.h if available
Message-ID: <20190531180340.047189da@donnerap.cambridge.arm.com>
In-Reply-To: <1559229194-3036-4-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-4-git-send-email-Dave.Martin@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100345_855876_92B9140D 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Alex =?UTF-8?B?QmVubsOpZQ==?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 16:13:08 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

> The SVE KVM support for arm64 includes the additional backend
> header <asm/sve_context.h> from <asm/kvm.h>.
> 
> So update this header if it is available.
> 
> To avoid creating a sudden dependency on a specific minimum kernel
> version, ignore the header if the source kernel tree doesn't have
> it.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  util/update_headers.sh | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/util/update_headers.sh b/util/update_headers.sh
> index a7e21b8..90d3ead 100755
> --- a/util/update_headers.sh
> +++ b/util/update_headers.sh
> @@ -25,11 +25,22 @@ fi
>  
>  cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
>  
> +unset KVMTOOL_PATH
> +
> +copy_arm64 () {
> +	local src=$LINUX_ROOT/arch/$arch/include/uapi/asm/sve_context.h

To go with your previous patches, aren't you missing the quotes here?

> +
> +	if [ -e "$src" ]
> +	then
> +		cp -- "$src" "$KVMTOOL_PATH/include/asm"
> +	fi
> +}
> +

Maybe we can make this slightly more generic?
copy_optional_arch() {
	local src="$LINUX_ROOT/arch/$arch/include/uapi/$1"
	[ -r "$src" ] && cp -- "$src" "$KVMTOOL_PATH/include/asm"
}
...
	arm64) KVMTOOL_PATH=arm/aarch64
	       copy_optional_arch asm/sve_context.h
	       ;;

Cheers,
Andre.


>  for arch in arm arm64 mips powerpc x86
>  do
>  	case "$arch" in
>  		arm) KVMTOOL_PATH=arm/aarch32 ;;
> -		arm64) KVMTOOL_PATH=arm/aarch64 ;;
> +		arm64) KVMTOOL_PATH=arm/aarch64; copy_arm64 ;;
>  		*) KVMTOOL_PATH=$arch ;;
>  	esac
>  	cp -- "$LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h" \


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
