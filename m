Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBE215D02B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZoiyY5xkRJ4WjouCvCt7lIc9DGeX+z0yXstRaW0gnA=; b=VzekROPpdqDRo9
	Sn3oDns79UxrZiMEqW94HxS7I0UBaSPD3hwVDkP6/JXcme3M+DdUf4oxLaqaZq8nR3parJnB3DZyN
	cQQMvK3sheIolaFyVobFlkZWQSbzUk4JHY2uUv0ITvG6VH0z9cDxDKg9VgPLc5uw1qH7iBe4PDiIr
	LeaTyX+Lf18DAZSDDTvOETd+xpGkwwpRXDNDyRdL59nNLSNZAOb2/brpLI3SMzUOhVxPxBqunVUEt
	hmXjxi3TZ0SXFF571RCzrmf/NHi1tuwaGNK8v5ECu3UsRscg6aKztBQvc0V7dR7VHY3nQlei8b+ix
	f3pjV0KEb4Vt1HhusHig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QzW-0005ji-FO; Fri, 14 Feb 2020 02:46:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QzP-0005jL-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:46:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93FBE20848;
 Fri, 14 Feb 2020 02:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581648358;
 bh=b6eY0omPiK9NtrDQWKKdHLgqQLvFeuFG7e+VjpYfmrc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nukh9AKV6wEXxVK6H+l10mFvYMjf6GGkB2ynajqXnbkx2yXoNbi5ZxwzHvg8DEv0Q
 hlKd6UQmGDQyMt2ZBscja0ilDIQZc737/b0bWbZ81uhcm6SCdq82bOyQKTj0s8Y+UF
 7FFyj1N4gwTM8VBNqpohwLcW86iHvrpmTY04CNBQ=
Date: Fri, 14 Feb 2020 10:45:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
Subject: Re: [PATCH 0/2] Add more power domains
Message-ID: <20200214024551.GH22842@dragon>
References: <20200127142717.27570-1-daniel.baluta@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127142717.27570-1-daniel.baluta@oss.nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_184559_298366_BEFCDF2D 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Sebastien Fagard <sebastien.fagard@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 02:27:30PM +0000, Daniel Baluta (OSS) wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> This patch series adds some missing audio PD domain and enlarges
> the power domain range for MU side B.
> 
> Daniel Baluta (1):
>   firmware: imx: scu-pd: Add missing audio PD ranges
> 
> Sebastien Fagard (1):
>   firmware: imx: scu-pd: enlarge PD range for mu_b

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
