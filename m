Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632937C852
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=263ViqF0C5QWpFe1tw/3dnamUsTkp8BS7z5SvzEqTC0=; b=n78N4/5ADd0cnP
	nLSDlVkQ3gom5PptP1k+++l70Z1G2Nxx6WF+b7pzwMBrtGDHUgX67nB2AoEbW+NIO5QcwXA2pLDzq
	hxUxS6uZIziXLaxjsU+pk67XITppPdHv0OM3ucdDWCVkSWGSMGP4C9tLp9BXiOvJXFVL6keSb2suP
	qeEj3ZotoDzZ8OyijfzEM+NTiqNL/mhQkK7+lHBQjUXKzQhpxSD1fF6ifBswRXHWOXAr1IhkPb4bG
	7icL3fL0qcKM2bs5fkWT9n40Yo6kggwjqB/HKQHHaZPXSHYPEgGaqdTzALMmOAGFBsb4EaI1vBFxY
	+yYs4rKaolN18hMC6xMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrFU-0001NE-QO; Wed, 31 Jul 2019 16:14:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrFL-0001Ms-28
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:14:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52302206A3;
 Wed, 31 Jul 2019 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564589674;
 bh=3nZlk0eBNHY1d+Gv/KlEoYiujgMy0mBOFWsNo7lFoJ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fDBHHkW4nKT2VAx0DNHkH8Hu2aD50O8ZDB/g6v8dRFMQTbrFVS01l4qNhb0mSpgqJ
 JWlcTZnp07CGG1OS8mBPtuPoXwAjpIxAt5VkSwVrSye89pX9hulUjwTCDjkf6VxV7m
 Eg9WZ2BtHA6tCR/KM5LISOtTlXNjUqsNP6jdPWRY=
Date: Wed, 31 Jul 2019 17:14:30 +0100
From: Will Deacon <will@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: Move TIF_* documentation to individual definitions
Message-ID: <20190731161430.e4v5ag3ff5p2i6q6@willie-the-truck>
References: <20190731133520.17939-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731133520.17939-1-geert+renesas@glider.be>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_091435_116288_1EB6BB64 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Andy Lutomirski <luto@amacapital.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 03:35:20PM +0200, Geert Uytterhoeven wrote:
> Some TIF_* flags are documented in the comment block at the top, some
> next to their definitions, some in both places.
> 
> Move all documentation to the individual definitions for consistency,
> and for easy lookup.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> The alternative is to move all of them to the comment block, and using
> linuxdoc style.
> 
>  arch/arm64/include/asm/thread_info.h | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)

Queued for 5.4, with Mark's Ack.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
