Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2EF15A246
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvOplrvbaBMqqMwjfDOuu/1ZQ7Re0diIKJFn7rFC/1g=; b=gxz+tCfKZYxyR4
	neJjDpx1CFRDEwGGDPP5xxcWTSYeYhKDCD5dzMtFVXW9V/kuqCu5AoruyJsTzh0obNpPtzTpLTmmD
	Z40O2X+rwjw+gWBVvd1cVNJRb/Wp3hImmlTkrVJnl5NeLNKh/0nOeq+/QyZ2N1DvmLouW+pO47duH
	du9nT7dYXC0UUIp1AHN0NKB4c4MFObgLa5KKxvOEU6wizvyZASJoih+Kkm2LxkNj1oon53U7qhVih
	H+aVMTaDxDErKCudEqQ/75rwR55cEqlTAgoZ3f+sYz9XCq7LfNNmIjR1VrXFf12UA22xpc499Nj6G
	6LMhtD0p+l47HFlh1OEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1meA-0008BF-MU; Wed, 12 Feb 2020 07:41:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1me3-0008Ay-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 07:41:16 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 963A620714;
 Wed, 12 Feb 2020 07:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581493274;
 bh=S0Mdem7bRvpjFfGjWzd/dzDFbSbxsGadbPDFP5soJTc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rXdxUDklvzgO/Uo5NdIG7GyV6YHsHmdWsnPJxTGOUgl3MoAq/DWmpbTxcWgnaKoN2
 HusxglEOXzfZ6fNmNM3+ILIKmpifIyb9M98T+FF1d9uL+9LsXUEs+m2lij4KEpFGv3
 jnDYYauq6Cxn2ftMDgGwfuCIKr5BBwcUSE+ga5GM=
Date: Wed, 12 Feb 2020 15:41:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6ul-pico: Convert to DRM bindings
Message-ID: <20200212074109.GC11096@dragon>
References: <20200110192334.27024-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110192334.27024-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_234115_211853_46C29F77 
X-CRM114-Status: UNSURE (   8.91  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 otavio@ossystems.com.br
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 04:23:34PM -0300, Fabio Estevam wrote:
> Documentation/devicetree/bindings/display/mxsfb.txt states that
> the current display bindings format used in this dts is deprecated.
> 
> Convert it to the preferred DRM bindings instead.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
