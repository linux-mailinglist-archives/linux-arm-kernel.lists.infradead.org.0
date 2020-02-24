Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4E169CAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 04:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR/HmkwZ6GRZUgKsp2fjx97CRF9HcVilAcVDhAGW4u0=; b=GkzCHHCPFfzXBV
	O2AnKBguwFIOTML1y31oaQqpzbikXvzpv2TNBvT5Q8GOlyWgdJo96R40/F0BnQWglhkpoQu8FrPpz
	BMlchs9y60SE5aTCZR5XpVavXEtiOQRN79hSNiP/A5wi1VfLtouP7u193ySeFG364iHUh/XdJ0fAH
	EA6gdlZanmbrNezDoU+QMIBmvMb+AWmi+bbfoK1Td3x3WZx4US0L4mp4yd4k/xfOg7fRX9//qZxWw
	HqQ30H9JtALEY6Nu4qFjFV5AFLTyBSEmgQIhy+ohNjP9m3qlgtAkpgv5E1NdxiCRz9JgQvhivDzwU
	emKJZyYp7/3x/Q+WcOiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j64aj-0000FR-6I; Mon, 24 Feb 2020 03:39:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j64aZ-0000Ex-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 03:39:24 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8711620658;
 Mon, 24 Feb 2020 03:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582515562;
 bh=JkrEc2MaNepQNF9f/dnwBAADKS3nNGfp1NS3WsPz978=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hRRB/vVqLw+c4mdGgtuPTPGB088ciHEohbGC1mZe9LVWhf5auaqrw0Yw9DLW+eVNY
 azTqZg+KuarjySjwk3i8iVbDsApgXZNFWanZ2ISkdUfTdCEOSOPsT1cR1zd6O6FuLK
 hh9ISC3IqCMHsrWn+E+2dmI+qjOMk2TCgXgLMkog=
Date: Mon, 24 Feb 2020 11:39:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH RESEND v3 0/4] clk: imx: imx8m: fix a53 cpu clock
Message-ID: <20200224033911.GH27688@dragon>
References: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_193923_210268_09146D9A 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, anson.huang@nxp.com,
 sboyd@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 06:17:05PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V3:
>  Rebased to Shawn's for-next branch
>  Typo fix
> 
> V2:
>  Fix i.MX8MP build
>  Update cover letter, i.MX7D not have this issue 
> 
> The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
> signoff timing is 1Ghz, however the A53 core which sources from CCM
> root could run above 1GHz which voilates the CCM.
> 
> There is a CORE_SEL slice before A53 core, we need configure the
> CORE_SEL slice source from ARM PLL, not A53 CCM clk root.
> 
> The A53 CCM clk root should only be used when need to change ARM PLL
> frequency.
> 
> Peng Fan (4):
>   clk: imx: imx8mq: fix a53 cpu clock
>   clk: imx: imx8mm: fix a53 cpu clock
>   clk: imx: imx8mn: fix a53 cpu clock
>   clk: imx: imx8mp: fix a53 cpu clock

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
