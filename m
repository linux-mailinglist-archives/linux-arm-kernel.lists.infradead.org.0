Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F14831349
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5veyaow8JNSPzo8rdVZAX6GVbxlUt3lIYkruyXRiMPY=; b=oy4KnlLL9O2pPU
	UsqZTkN9Bi3rkS3UAKL5nykXnqw2y7gnfbfD84o82j4MWQjBCc8+nkKyW1BuQDgGBOMu4gxvkB/Gu
	l4E+2VQ9u+dGiz0o9OZlGzoJFj4OiwoBlVX5otLNIzDGWC65JW5rcVHYM6EyZ8iN5d4psDhe4r84h
	C/yzSmU6IFT4DA0xAOXY6fwWX1MjBlr4f7j7HFR0ilM9/w+LL+MId9cOU5lpYb/uDzqD5+jvpcWwr
	Xrk8y+XtRL3Akv0rMlbZ1FmGuDzE9UOZ2+A8L0fX4uqepTNTsyM+ApE3Ubherb0UK4DFJWtoNmCTe
	P6Bq4jAi73QbC2R9TNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkvv-0007gN-3M; Fri, 31 May 2019 17:03:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkvn-0007fo-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:03:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB004A78;
 Fri, 31 May 2019 10:03:00 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BC933F59C;
 Fri, 31 May 2019 10:02:58 -0700 (PDT)
Date: Fri, 31 May 2019 18:02:53 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 1/9] update_headers.sh: Add missing shell
 quoting
Message-ID: <20190531180253.1ca3f7f6@donnerap.cambridge.arm.com>
In-Reply-To: <1559229194-3036-2-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-2-git-send-email-Dave.Martin@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100303_599650_A5FE04FC 
X-CRM114-Status: GOOD (  14.92  )
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

On Thu, 30 May 2019 16:13:06 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

> update_headers.sh can break if the current working directory has a
> funny name or if something odd is passed for LINUX_ROOT.

Do you actually have spaces in your Linux path? ;-)
 
> In the interest of cleanliness, quote where appropriate.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Looks alright to me:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre.

> ---
>  util/update_headers.sh | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/util/update_headers.sh b/util/update_headers.sh
> index 2d93646..4ba1b9f 100755
> --- a/util/update_headers.sh
> +++ b/util/update_headers.sh
> @@ -11,17 +11,17 @@ if [ "$#" -ge 1 ]
>  then
>  	LINUX_ROOT="$1"
>  else
> -	LINUX_ROOT=/lib/modules/$(uname -r)/source
> +	LINUX_ROOT="/lib/modules/$(uname -r)/source"
>  fi
>  
> -if [ ! -d $LINUX_ROOT/include/uapi/linux ]
> +if [ ! -d "$LINUX_ROOT/include/uapi/linux" ]
>  then
>  	echo "$LINUX_ROOT does not seem to be valid Linux source tree."
>  	echo "usage: $0 [path-to-Linux-source-tree]"
>  	exit 1
>  fi
>  
> -cp $LINUX_ROOT/include/uapi/linux/kvm.h include/linux
> +cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
>  
>  for arch in arm arm64 mips powerpc x86
>  do
> @@ -30,6 +30,6 @@ do
>  		arm64) KVMTOOL_PATH=arm/aarch64 ;;
>  		*) KVMTOOL_PATH=$arch ;;
>  	esac
> -	cp $LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h \
> -		$KVMTOOL_PATH/include/asm
> +	cp -- "$LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h" \
> +		"$KVMTOOL_PATH/include/asm"
>  done


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
