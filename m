Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC793BE646
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 22:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUVZ/5VOaoW8RxH6H7FT/7qFPZ+gCvOrcmyiD/iVODo=; b=ssmONuaoh7o9ew
	HJHKNDo5DoH1CBap9OThdHTutLVNrIySDFWZn4WM7DmAzW6VQko6N1jWw6G46C6HRlatg16rX4eKI
	+jtIB/IrOYzid4Fv3QH9azPb/o00GUZv0198dv8SIynGSyvioJwUIfPpyEb22O5xJ8Jd0I55eVU0C
	VQvF64U7IiJx0dSVWQs1bU7RueNMgUnjiG/UWkYtSdW0KOUtKy1k30M44lzOI03A3Mlh3M5eWikVZ
	2f0D5YvAAgsSuEAfrJw18Y9Wd3e4XSwkqEzhipIYPa9oZVW7j8nt3Y9AdeIrWLnuRRhywZDa8gD32
	26Zh3d1siVjS2cod2wUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDDoA-0000Zi-R1; Wed, 25 Sep 2019 20:22:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDDnv-0000Z0-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 20:22:28 +0000
Received: from localhost (unknown [12.206.46.62])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0323221D7A;
 Wed, 25 Sep 2019 20:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569442946;
 bh=FeWdANdyaCOkftp2qJmI4f+6S0li6x65GitPCqwsNBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jfeUw/WsvDm+BMsG27ObR5RZMSSduonTDjxMfHph/YRMtzfJTTohGixtshD3r5I15
 iDPw8kS11ruB0nku9cocJjspIabC2AC0EnW7rrd+1fQPgrLdLb7xJWzFI/G4rb1/Vf
 PGK7gCK0o/YnRcdxl4U7iIlng+WCjaRkkPBDdO4I=
Date: Wed, 25 Sep 2019 13:21:25 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dmaengine: uniphier-mdmac: use
 devm_platform_ioremap_resource()
Message-ID: <20190925202125.GI3824@vkoul-mobl>
References: <20190905034133.29514-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905034133.29514-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_132227_516613_EDDB6858 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-09-19, 12:41, Masahiro Yamada wrote:
> Replace the chain of platform_get_resource() and devm_ioremap_resource()
> with devm_platform_ioremap_resource().
> 
> This allows to remove the local variable for (struct resource *), and
> have one function call less.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
