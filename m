Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EC2144229
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxgOjLK99cILsg9jYZ0OqP2mzSfNSVb2i7ytIjlyROg=; b=ohONNBIen23J1F
	6LASdqGxjdpaUcDNYZ0hZUPu5Ocj2DKBtZ/1t3+yXACrYPnTeoK/9CHPNP55aAM7ZRLPngRr3NMvQ
	W9Koi+U3xw9AuQb4kFAF6ON2NWQHDz+1EleSgarQbDMgT6tQfFmqx++Ak3ZZaeD5xbsp2kaZVrfOI
	kD5PAm0Hx6OIjGlDtn8rJb3dHSRam05UNJK1ikvRtR9daA9bX33EcZCzPjx2SUvkVy9tpFNDG8ZHq
	edj5GUvLGdohm4cceEsOp1gBRaFQL60GBXyn1rcNkkxDhiUUTzzuhujGQKDGlEqn3hLn/nbVHPjwo
	lm9e4pyq8TDr0LZqUYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwOA-0004ZF-Ij; Tue, 21 Jan 2020 16:28:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwNy-0004Nf-RR
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:28:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C974F2253D;
 Tue, 21 Jan 2020 16:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579624092;
 bh=4UzYHa5pCOLLzLuPE1hryDQE3ptPI+2K4hzDi4WMV8I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nbuen1xxYtJQ5ZQ+shM1vR4MWtLxWW0evvSoj9FtIWiafJ0Fggop0gK0zzej8goLk
 K+Du1bkTw7AenIcCgjxoOO1DjmeCVy2/ax/2nIcO8y8godcKmeasCNY4Hq068joF2i
 3+yMuFEdwJBXOa26meWZDeAD9P8nqTihrjwi29Rc=
Date: Tue, 21 Jan 2020 16:28:07 +0000
From: Will Deacon <will@kernel.org>
To: Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: Re: [PATCH v2] arm64: kbuild: remove compressed images on 'make
 ARCH=arm64 (dist)clean'
Message-ID: <20200121162806.GA13501@willie-the-truck>
References: <20200121155439.1061-1-erosca@de.adit-jv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121155439.1061-1-erosca@de.adit-jv.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_082814_912066_AC9AAAA2 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 04:54:39PM +0100, Eugeniu Rosca wrote:
> From: Dirk Behme <dirk.behme@de.bosch.com>
> 
> Since v4.3-rc1 commit 0723c05fb75e44 ("arm64: enable more compressed
> Image formats"), it is possible to build Image.{bz2,lz4,lzma,lzo}
> AArch64 images. However, the commit missed adding support for removing
> those images on 'make ARCH=arm64 (dist)clean'.
> 
> Fix this by adding them to the target list.
> Make sure to match the order of the recipes in the makefile.
> 
> Cc: stable@vger.kernel.org # v4.3+
> Fixes: 0723c05fb75e44 ("arm64: enable more compressed Image formats")
> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
> Signed-off-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> 
> ---
> v2:
>  - Added 'Fixes:', 'Cc: stable' and 'Reviewed-by' tags
> ---
>  arch/arm64/boot/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks, I'll pick this up.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
