Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EDA8597E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTbCDdCBMGQTZt1X6b1QpNGe2cStYO97rVwlaQJ7RtM=; b=QWpxcqjIXs5XPH
	DCFlwOIzEoUW3tcuziRxZYwQprkZJXMsJdttdhRDABTxyCiKE2p4FGZZbLqfN41R0EUmyvwIBwN6l
	9wRdrpdX7bezQ+AG4VnYWagniGRbzAoVBBKyDUc90gRznirvsu/7eDywTjqNAo3/Fzm5IdesDRUxZ
	6GnHPAK7ftWOYvmc1r/Cf2n1HbqFp0U1JzQhqi9Q86e7hoXqPHSLz1oeO+pxQ/r3YbRFrcQI6DLYS
	BF2RC4gNNrb94pgM0BDa1CGsy1XWTjd9EIn29SSYOnPPBcw7HBmDg/9mxAL5T8oPP9h/1MdUqYqQC
	84PewMLXZhufrKYqV4fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvaO0-0007Z4-Dm; Thu, 08 Aug 2019 04:50:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvaNl-0007YE-CG
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 04:50:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so993309wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 21:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=c2ctl4XAji46HwbaOhdkmf4zUAn2rV12GD6HMJfhhu0=;
 b=EnK2WRFCo2HUJXN26DDv3YeH1cdtPs78djtjZutI4oJDd6kAR7L+cBMTApuNBZJlAl
 EpA23bP8D5uElbDt0/Ac1AMatfMdb0pzwqof7AZehQl4T1OBlle9qLAjuM/lkqt7SxPB
 E44Rnf5Ou2h5TqHcewh4p5YllNwZpAA/zyQKFjEXFgV6PdGnMwrtvNIS6PA6ArUre5bk
 +Y2nj+0oIDqPEzPU5hIRUEyUYYIZQTNLWzv52Grs+N+kmJRjiHeXbkke5uxxBZ/WuooY
 rUzdU50fx13CU0iXSKbZ4GOozYjrKYQz0QTy6Ovgiv/rq3PnNvJ+1d2RySmOVgXVPDOx
 hYPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c2ctl4XAji46HwbaOhdkmf4zUAn2rV12GD6HMJfhhu0=;
 b=FdKTfVq6ekyJV6gdC8OCoRLWKAxGdtKqd1O6mRpCUbta7LEKL0QoZMjjiS2GPoITTC
 bO0i7FNefpGP6NYpZu2ttxP6SajPbNGhnhQe6cIvWbF/l9mFZZCeoyW8ZC+lpKY6FW24
 rF+BFYKG8PFdYPxwFF1f3JeTult85E8CHesZGFAosPLbqr9gF5VK66Jkg9UWalFFA4QR
 lpIn2DN7Pq64lKVjif+dBHAyYCyHLUpgB4whsMfZE8i4FR2isboZTvYfkArdUDUvd5Im
 gROOyEU+UFeQyvKLxHDJOmPE1hrtfEs23TXAvavnlKhDQX2bS9ZqytRiDuvOWZ8meBel
 cgwg==
X-Gm-Message-State: APjAAAWPPHZlDgSK56pngslOok0SjveRKMrNKZnWd+yEhTwewMN1W9gF
 xTi3wPLslsl7aSlnU5aPRRI=
X-Google-Smtp-Source: APXvYqzmVvFk9Dv5wtqWGfmpt4Ku8O6izZqJSqYGCnAp0dXDc8Alq0JXGsAIxvYE6kRL99pKbFZg6Q==
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr1823749wml.124.1565239829705; 
 Wed, 07 Aug 2019 21:50:29 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id 2sm136472106wrn.29.2019.08.07.21.50.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 21:50:29 -0700 (PDT)
Date: Wed, 7 Aug 2019 21:50:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808045027.GA34150@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808032916.879-1-cai@lca.pw>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_215033_423545_9A09308B 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC (and
> Clang) with -Winitializer-overrides),
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VIPT]  = "VIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_PIPT]  = "PIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                          ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice. Since
> arm64 developers are keen to keep the style of initializing a static
> array with a non-zero pattern first, just disable those warnings for
> both GCC and Clang of this file.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>

It's a shame we can't just use one cc-disable-warning statement but
-Woverride-init wasn't added for GCC compatibility until clang 8.0.0
and we don't have an established minimum clang version.

With that said, I applied your patch and I don't see with warning with
W=1 anymore and I see both options get added to the clang command line
with V=1.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
