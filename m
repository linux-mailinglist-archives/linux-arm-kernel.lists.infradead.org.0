Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2C148F60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sfqEcgXKP6eFV6OZmutXP0hRUPn5ykj15EChnc7Oevg=; b=X4CYSlHhU5vGXd3JNS+AQPNud
	bnMqM3Fq5zUcUZnRnpbY+NuSaVOc6RxErMF2+MyN+rAs8bE1z+WDQMPU+4l5ck9eMiKTgQn5t7noh
	aHxpTbVdY6qjT+P5a3mWlbFXv44Qt7biole0YCDxjzBKu/t2YfwkyN4g4/VoAlu0y+na/wmupeGAT
	XWKJyrODB3guLUvlNN3plQrPz1hC/JJXz/RwbYGGl26b4qhyq+9xspW7tks8e1CXPs1GYo0XoLySt
	UnILQkhrr5tPkQJr3DWnMwHTR8W5Ch38IRQtqhOcoPnKsbpQSeTKb+zvfKaSaMUH9ccKM0+Ol6BqB
	oSHlaZ/5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5a7-00055V-3S; Fri, 24 Jan 2020 20:29:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5Zv-000556-Pm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:29:20 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22D7D2072C;
 Fri, 24 Jan 2020 20:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579897759;
 bh=F90xNfUKvOUf2TUGknbgCQUyvynq64EpI75k+l0dmfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yI/jzlDhjyDiy+RVAtgnDZBV+QQG7xN523HkaCfjRn/esAhwjMsYmny4VGRPuJJnH
 FCupkgTKE5EWoMbbta1nqGJ4EDxd3/Oud4h9zPl9tj5gAz/ZP0vlKW8owqg5ZjPahS
 3jEuqgDRFBjJyAdXsJ8wE6TyJOoLeka9N7XUB1QI=
Date: Fri, 24 Jan 2020 15:29:17 -0500
From: Sasha Levin <sashal@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH AUTOSEL 4.19 05/11] ARM: config: aspeed-g5: Enable
 8250_DW quirks
Message-ID: <20200124202917.GI1706@sasha-vm>
References: <20200124011747.18575-1-sashal@kernel.org>
 <20200124011747.18575-5-sashal@kernel.org>
 <CACPK8XeGLW6cm9UV7gqrOF18BzsRBppzLQLY6G=Y2MDj2Yrnhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XeGLW6cm9UV7gqrOF18BzsRBppzLQLY6G=Y2MDj2Yrnhw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_122919_856256_36213D9F 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, =?iso-8859-1?Q?C=E9dric?= Le Goater <clg@kaod.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 01:21:40AM +0000, Joel Stanley wrote:
>HI Sasha,
>
>On Fri, 24 Jan 2020 at 01:17, Sasha Levin <sashal@kernel.org> wrote:
>>
>> From: Joel Stanley <joel@jms.id.au>
>>
>> [ Upstream commit a5331a7a87ec81d5228b7421acf831b2d0c0de26 ]
>>
>> This driver option is used by the AST2600 A0 boards to work around a
>> hardware issue.
>
>This hardware was only supported from 5.4+, so I think we can drop this patch.

I'll drop it for 4.19 and older, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
