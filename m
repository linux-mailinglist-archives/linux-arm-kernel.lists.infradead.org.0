Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D51AEC5F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 14:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1L/qxU5gxWxf2yrYjAYPdea9+ib86H+f+Q+EUUmAmEY=; b=SH4SuqJijtxJpc
	o7eYjOYtbwh/eK8r6bX9PLBQwTwGvQpJEC5WbKskKFppnLt4772J8zMeKJJmA6B9MGEvyUf63DwIB
	gQ9xpLNxktnWGUbXgN5i+b6ljRx+oaYjUuWDR+aXcT7Ii9ebbXWufrO0QvXwTH87oXQUTsw27s/b5
	bLb8AO6bmeyWqP1Cc9dnwchYDBcsRI4i8oZYC54B9ByltPpIelMJmDS9CDU7UeKoD65RCl4W5znjn
	jbqjJjsAA2MgKxdfgFJbKtrVNH1+ZJKubw8rpfB7H73/gKDcSS7FRA/dPoeBP/EvNIOmsC8otWP/k
	O+lQyl4j8tNl1TwxHtVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmNc-0002vr-Re; Sat, 18 Apr 2020 12:15:28 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmN2-0000PB-Sc; Sat, 18 Apr 2020 12:14:54 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id BFDE4342; Sat, 18 Apr 2020 14:14:41 +0200 (CEST)
Date: Sat, 18 Apr 2020 14:14:40 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] iommu: Fix MTK_IOMMU dependencies
Message-ID: <20200418121440.GC6113@8bytes.org>
References: <20200410143047.19691-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410143047.19691-1-geert@linux-m68k.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_051453_085155_BE9F16C0 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 04:30:47PM +0200, Geert Uytterhoeven wrote:
 
> Fixes: e93a1695d7fb5513 ("iommu: Enable compile testing for some of drivers")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  drivers/iommu/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
