Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116D52635F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0stMBMq+Ixh7Eopjrr7fLiPWVgzPB8LLn0xCv2qrZ5k=; b=Jc8I3EXDULJGTg
	1MDua31wYHzln0N+jzGXb8djH3JCGHMAUimswOgd0mzB+Rv0bq40dWbG2QycHBxBJYfEg4BH/k66g
	HbWKfVVMDnF582zVdq/RgaVeca0JL8rA2/1ru6Qk2p4ByKuQ7MhUrqSzZAoAIo+l6MmzazcEMDBO9
	2mx2en4iVoxsZXWx9pmPEeaeqzk3nYJdcfNcbB2jX+rjOkc4UvOW879tMUMaM28gvVNntmH7stecn
	Izpym3Nd62wOBHkplb7nTjsI70SEcUVRl2sopc/CduGUnODv/3WZxmSluTPYjTxmLFI4120z7oZri
	DJFwXWGJMAt5UCVaQznA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPxz-000073-Ks; Wed, 22 May 2019 12:03:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPxr-00006b-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:03:25 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D656B25AD6C;
 Wed, 22 May 2019 22:03:20 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id DE72194053F; Wed, 22 May 2019 14:03:18 +0200 (CEST)
Date: Wed, 22 May 2019 14:03:18 +0200
From: Simon Horman <horms@verge.net.au>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r8a774c0: Clean up CPU
 compatibles
Message-ID: <20190522120318.mwcp7a6wr3lq6kcm@verge.net.au>
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_050323_879808_AD201377 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 05:44:26PM +0100, Robin Murphy wrote:
> Apparently this DTS crossed over with commit 31af04cd60d3 ("arm64: dts:
> Remove inconsistent use of 'arm,armv8' compatible string") and missed
> out on the cleanup, so put it right.
> 
> CC: Simon Horman <horms@verge.net.au>
> CC: Magnus Damm <magnus.damm@gmail.com>
> CC: linux-renesas-soc@vger.kernel.org
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Thanks Robin,

applied for inclusion in v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
