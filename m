Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9571922C1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNgZ9XshOe7qRnOSi1UOxN5aQUimtOFsJpRQu2hpaSM=; b=AjiY2vf7LjhvmY
	x84hcH47poy+36gJvkW40f9FxHa6AP/88mLjPy2Cu12MFicmfaEN9E6VsOMoRbYV0I1ZqyxPbv8zK
	eBYZvS5zKrWhe71IoXmNThDx/8NjJy25BORiasSO1/d81Q19xnx/VCrs9Mrq9ny2TqwpeUnBQuFWe
	B/E/QjzdT2f0mO+9ENTSYkBRYA6eaVccv35dK75BaGVeBdl1sBpsFnk7IR/CK47MeIJMys5AwDoPH
	or+h3PtdDEFpM+0aO8PDvipxwN4Md0Ap+K/ey5OaZkzao7JyLZ9Q20PftqIPHP6eEmz3NlQCkyMDY
	6ptcnLbl/DG1yha5MuWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbri-0005vR-OK; Mon, 20 May 2019 06:33:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbra-0005uz-NC
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 06:33:36 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DEA2206B6;
 Mon, 20 May 2019 06:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558334014;
 bh=QRKYgLNzDZOhAn3LHJcZN2xR9Hu+AIL+I/Vtp5mmIME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SBVaXPLrUn3UyIT7oDINmTX9zltWSxVAo/QDBoofDh2yNPXYBXsPmNL/FBWWtjlgY
 NqD3Bv9Nf9mLSqaqmi5ApY8mP5ivyuIWRKWNzLI5qsA/D6IEO/6nKJ88/ymq0Bw1fE
 3zAm38KkwaMLc3r4oYBisNl1koNsujGEbJGCf7Z8=
Date: Mon, 20 May 2019 14:32:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2] ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO
 increase to i.MX6SX
Message-ID: <20190520063244.GR15856@dragon>
References: <20190513031531.7879-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513031531.7879-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_233334_783727_8F41A3B0 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: cniedermaier@dh-electronics.com, anson.huang@nxp.com,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 12:15:31AM -0300, Fabio Estevam wrote:
> Since commit 1e434b703248 ("ARM: imx: update the cpu power up timing
> setting on i.mx6sx") some characters loss is noticed on i.MX6ULL UART
> as reported by Christoph Niedermaier.
> =

> The intention of such commit was to increase the SW2ISO field for i.MX6SX
> only, but since cpuidle-imx6sx is also used on i.MX6UL/i.MX6ULL this caus=
ed
> unintended side effects on other SoCs.
> =

> Fix this problem by keeping the original SW2ISO value for i.MX6UL/i.MX6ULL
> and only increase SW2ISO in the i.MX6SX case.
> =

> Cc: stable@vger.kernel.org
> Fixes: 1e434b703248 ("ARM: imx: update the cpu power up timing setting on=
 i.mx6sx")
> Reported-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Tested-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> Tested-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
