Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E298716EBDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv5RpEP2q/YpykJeATHgjISJxdzMkwW04Svtxcum5pc=; b=rYMcoLbz2HozIH
	dEdYdEjlJafRyGijDRMiECx9a027HoUMrm5N2DMpVIMrcDJflx1mTzes3YqbRPO8FoekJY5ND8+7n
	h5c0CvskRrw3q5gv/J1kJtMvMrCUT9gL3NjUWtvv8nQZ2Hv1YE4o82JM2b6DOTBWWLvnJSCk7ZVaC
	iRAFmq9LHCPGn/aWpFzrQPrOqw0O+MCJF6+iIJ0Sh1JztrTiJ6W2jaBbd8pw+ZBFLOjfTYlVOUNhw
	0eOplE5MhfWdoR0tID4ZdGHXxnKZhFpNPdDIZfUCVNnd1LHtcAT6FzRI84rBP1TeKvkJQQrSHAwQc
	iUSTmq6Ddekt3eacFY0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dWs-00007K-7x; Tue, 25 Feb 2020 16:57:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dWd-00005G-9S
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:57:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A80ED2082F;
 Tue, 25 Feb 2020 16:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582649858;
 bh=mN+4NXT9hq0vzpcYMZ5Qam3JcNxRlpUxh0JHOicfY4w=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ZJ0guP9ehOqjXHAwvWlQDTXBo2MlpIDbtuVrJdgnfqyavv/g7rjd7z7eW+QVFXljP
 nCrzlj/nBLnU5bCiJ7RYyHvSWuZrzEXLGyo0QllGzDB/f2gviD08/jGvIcou7o4Ovf
 71/d0HzIYzEYBnkR/Vj5Szu51BlFVlVoleKONq5I=
MIME-Version: 1.0
In-Reply-To: <20200217125759.GA3671@dragon>
References: <20200217125759.GA3671@dragon>
Subject: Re: [GIT PULL] i.MX clock fixes for 5.6
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Date: Tue, 25 Feb 2020 08:57:37 -0800
Message-ID: <158264985790.177367.1236565584424790778@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_085739_351618_0D4686F8 
X-CRM114-Status: UNSURE (   7.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-02-17 04:58:01)
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> 
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6
> 
> for you to fetch changes up to 5eb40257047fb11085d582b7b9ccd0bffe900726:
> 
>   clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
