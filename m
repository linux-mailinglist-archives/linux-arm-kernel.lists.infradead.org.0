Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD9E122AD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0x/OUPBOfql6IH4TNSaOsF8cZRKsYExBSVOg2mWfGeU=; b=fGUIHfbvEeT6yK
	SJ1byn3gOzTKJD9gssoteIUHU7u6PWqdMxOGy9aIi5tb+gToJMtvYuc6Q2vjzjY8HScNZ/qWQPpXJ
	Gp+XCbesFTqSFBrJt1wgMHVQe6gCdTZumCWoZ4vSVuIjvAaeGlofC25HYUxKcekvb3/mLT6e/yds4
	wxYIurZ9azmrMKRs64wEnEGgqkH1fdTdNSq/Bk5x2EVMvsul940TXiyJoVDa+c9hF3bpK4tnUL8na
	lDnNDCwtFXr7gs5nrY1k4dceueYHboenCAR70G5ctVuh8+HOBRQmwFtlE3gZGkHbnn/4pqwYrga5O
	+O0984cLlvoldbNrL7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBXp-00049G-1Y; Tue, 17 Dec 2019 12:01:41 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBXh-00048i-0N
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:01:34 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id DB4273C057F;
 Tue, 17 Dec 2019 13:01:24 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TeibO5qeoXj; Tue, 17 Dec 2019 13:01:19 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id D400A3C00BB;
 Tue, 17 Dec 2019 13:01:19 +0100 (CET)
Received: from vmlxhi-102.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 17 Dec
 2019 13:01:19 +0100
Date: Tue, 17 Dec 2019 13:01:16 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 0/6] arm64: dts: renesas: r8a77961: Add more device
 nodes
Message-ID: <20191217120116.GA11814@vmlxhi-102.adit-jv.com>
References: <20191216124740.16647-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216124740.16647-1-geert+renesas@glider.be>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_040133_196943_9F603F88 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, Dec 16, 2019 at 01:47:34PM +0100, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series broadens support for the R-Car M3-W+ (aka R-Car M3-W
> ES3.0) Soc (R8A77961), by adding more device nodes to its DT source
> file, up to what can be tested reasonably using remote access.
> For your convenience, it is available in the topic/r8a77961-v2 branch of
> my renesas-drivers git repository at
> git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.

I only see below r8a77961.dtsi commit on topic/r8a77961-v2:
8e4529f2ac8293 ("arm64: dts: renesas: Add Renesas R8A77961 SoC support")

It looks like the patches are from one of below branches?
 - topic/r8a77961-extra-v2
 - topic/topic/r8a77961-extra-v1

> Changes compared to v1:
>   - Group SYS-DMAC interrupt specifiers.
> 
> This has been tested on a Salvator-XS development board.
> More details can be found in the individual patches.
> 
> To be queued in renesas-devel for v5.6.
> Thanks!
> 
> Geert Uytterhoeven (6):
>   arm64: dts: renesas: r8a77961: Add RWDT node
>   arm64: dts: renesas: r8a77961: Add GPIO nodes
>   arm64: dts: renesas: r8a77961: Add RAVB node
>   arm64: dts: renesas: r8a77961: Add SYS-DMAC nodes
>   arm64: dts: renesas: r8a77961: Add I2C nodes
>   arm64: dts: renesas: r8a77961: Add SDHI nodes

Thanks for your time and for the helpful minimal test-cases, which
can be reused in future bring-ups.

-- 
Best Regards,
Eugeniu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
