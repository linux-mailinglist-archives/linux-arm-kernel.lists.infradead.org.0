Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA43FFC98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 01:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvxYU4ecGq3S4Ih4AtknAWmpLcjSuxGsbDPSFr66eo4=; b=WXm99c0lVhMhWn
	ZvfmhLoxgjmBLJk1zQKXf+jkAEH+Oec9VMiGyu86Odt+eF3BPGcR8YiKvRyDQYMLNi5MrzXWvFRI3
	XraFjLaAeW/DAsqYe+L1CfUcDtmkfwk7UmxlihK/pU7YFXh+JRhmUXpysa2IZTgg234hNhE7RnzOb
	KcP6EKu6qtro5QdfCfmiixRyQFJdEc3i8flH5rb085qrEk4PhiThotSyjW4gMV+WJj5PGxM/qe2Rd
	gPa2zo4hpr96ybwc94AxvWA9Xn4Sa7UQyrveCRJjjV3DVQT+vqYKBe/m9rVkObWkqk3XxO6Rvr9/l
	NZpby+ZuFQtfX5/mV/CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVJO-0004fX-49; Mon, 18 Nov 2019 00:54:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVJB-0004ee-TX; Mon, 18 Nov 2019 00:54:27 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVJA-0003g3-FE; Mon, 18 Nov 2019 01:54:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Improve nanopi4 PCIe
Date: Mon, 18 Nov 2019 01:54:23 +0100
Message-ID: <2458811.002snvvaTN@phil>
In-Reply-To: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
References: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_165426_103754_4A5ACAB7 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 16. November 2019, 13:47:20 CET schrieb Robin Murphy:
> Expand the power tree description with the 0V9 and 1V8 supplies to the
> RK3399 PCIe block. The NanoPis M4 and NEO4 just route 2 lanes to the
> user expansion pins, so there's not much more to say at the board level
> for them; NanoPC-T4 has a standard M.2 connector so we can at least
> claim the 3.3V supply to that too.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied with the same resolved conflict regarding the i2s0 phandle

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
