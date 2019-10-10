Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6162D336A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NYDdcAz5SryQkaWlXMXKsqVDBolav4Xyf6TOpcjEcg=; b=jpKSdXPuqgJwod
	vIzx3Rxrl7JR/X4LMYKYv47hli3uyha5Equk6PRxjnH7L//oMhgU0Pw9q8Sh1o8Iu4l2rDxoh7LEd
	DzSNqSdSjRkS++0xCkkef+yYUe2wMJTAHkh+iuZ7CBKyaHQIMEl3G6omIuCt5OuMvgtVU8MgY6zL5
	ZP5L0kM6PQobVByfzXopgEtu1ziDsrV7pRckz48J6frRlSWQG7FjAuv0LzmHqSlHAwP8nmsA//lBq
	Fx2Mx28To6plQ+P9SHO3vp58vANkamadRCFi3ZsFqsYrtvGQ4LErYrWCuguaCcIt8LFZLHUCr0g2W
	6TC/a/zVhk6qhlHACEYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfzz-0007Un-Mo; Thu, 10 Oct 2019 21:29:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfzp-0007Tk-J2; Thu, 10 Oct 2019 21:29:18 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIfzl-0007B2-J1; Thu, 10 Oct 2019 23:29:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Update nanopi4 phy reset properties
Date: Thu, 10 Oct 2019 23:29:12 +0200
Message-ID: <2606862.TP9lFruHDT@phil>
In-Reply-To: <4d16c24ae3651a2119cf5bb1213f46a9fce4b39a.1570444773.git.robin.murphy@arm.com>
References: <4d16c24ae3651a2119cf5bb1213f46a9fce4b39a.1570444773.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142917_775291_BE80C29E 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 7. Oktober 2019, 13:33:26 CEST schrieb Robin Murphy:
> Use the now-preferred generic phy reset properties instead of the
> dwmac-specific ones.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.5

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
