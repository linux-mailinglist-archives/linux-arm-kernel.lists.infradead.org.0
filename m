Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B033A1DA735
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5BA2VRfZcHN72ysFJIEXmYSPvWTqYzEvQ96fq4UmOk=; b=htf4lkxPpZImm9
	VXoJkEBlzpEbLcObDMyvvVQ2zC/z6BN62SJsU/9rCMhFIlAPPxR/PrKHqLmmMm9dDBTUrIdKodNJ2
	OGyvjEd/Kg9BsjQtiKOUcMxAyK6aqPej8T+2XMYr1EYKZJ9mdpE0zQDaIVrlE/ZxIsVz6JS5iPHI/
	8OGLyNVtPVdtkJwOpUkN6sKCYXmKl44A8C++ZbMpedV3TBr4Nz7soS1YxQY2pnV8UONp5HD/xGGc9
	h32btjJYf+Lip+jvYKqLF6ixarWIEjI08fYGD8i8/t7404CCZrDxJeGJMOE3fj7wOb4gPTjJ3nB+4
	d5f5mRwnOGuq9yR4WHsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDYV-00047z-1S; Wed, 20 May 2020 01:29:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDYK-00047P-Pa
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:29:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83E78207C4;
 Wed, 20 May 2020 01:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589938188;
 bh=LL7OWjzsQ/VdGe08gSDVgyPGonsCBCoHm37y5v591OM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fkLrh1FwV3EEx9dUkxvjBnW0iuIEaHgFfG4hqn2wPx8x0OVHuqSLgz4//h1I14kF0
 QhFYbMGHLC/OMPuoLdX9YKNrkkd9wg8Ep8vMamB47MJKa2V13O79D1Pq+j1LZ6KT/O
 yOa/Upp+wL8tt1fNmRJf9mz4bWFp92OB917O4Xyg=
Date: Wed, 20 May 2020 09:29:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family
 support
Message-ID: <20200520012942.GK11739@dragon>
References: <20200507204339.31253-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507204339.31253-1-andreas@kemnade.info>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_182948_850567_6CFF84EF 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, oleksandr.suvorov@toradex.com, linux-imx@nxp.com,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de, aford173@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 10:43:39PM +0200, Andreas Kemnade wrote:
> There are new drivers for functionality of that family
> (RTC and ADC), so enable them, since they are used by
> various i.MX6 boards.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
