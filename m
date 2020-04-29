Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240DB1BD29F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7qc/aPSHPPXn+ULMI0ENGXpZECNV9SjMGS8kwgMYpc=; b=ESumFsLfGfShny
	S38cn2G+Qrg/tN+Jy42jgBaeuiqQyk+LEeX3j0AxLBiq1tkzAfYs2PDvjfy4p5TQgYmRfzYv5208q
	AO/JztxWNgzET1y1Eb77hIDTaF5DB69EmK1Fp/COUC7nJCigSVpZDuS1jaGCOyP21e7g+mssWGIao
	JIUP18luLuzURJ4jHxiQ1eZHqrq4RgAi1OO/xbvJAzt5yL79G/pry9oclwe1pRDKy1EwMnG3AsaUl
	jnITk2odTZXSVxPOW7gBsoU5cqNPQv/gYBjLgiPcBVAR/fjEDjw6wzGFEsjCgMzsRekdzqC5i/RjJ
	J4FT4iSQ9m79Ue39TFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTckc-0001st-Qh; Wed, 29 Apr 2020 02:47:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTckN-0001qk-AJ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:46:53 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF90920737;
 Wed, 29 Apr 2020 02:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588128411;
 bh=i/beAvLFST2zpd8Kzs30/5TtRc3y6I9BsrZ9LT5jD3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oE44iFbDA8l5+pIUkhCjvjYqB3CdLOo/xE3SJ8scLw3NEE072VFMwIBKna8Zp83Lb
 C8ShYMGnDpmHXZu1b7J0dLvuNylBH8rUoVEbochDChE5OMu4jmzu8lUaAgsQEr70pd
 Zosytjw13rZFSlK5kcODISxdnWNTzC9zIFD9nl38=
Date: Wed, 29 Apr 2020 10:46:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Matt Porter <mporter@konsulko.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: specify #sound-dai-cells for SAI nodes
Message-ID: <20200429024644.GL32592@dragon>
References: <20200415185941.13956-1-mporter@konsulko.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415185941.13956-1-mporter@konsulko.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_194652_408914_0F2F82A0 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:59:41PM -0400, Matt Porter wrote:
> Add #sound-dai-cells properties to SAI nodes.
> 
> Signed-off-by: Matt Porter <mporter@konsulko.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
