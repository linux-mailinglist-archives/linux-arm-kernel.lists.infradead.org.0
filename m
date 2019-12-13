Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A67911E1AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3GmAftS040fbWxaFL8aiuyAJ08WCS1tBqYYUVvtV3U=; b=d1/pd48moWUV2z
	yfrsbIiychwKzdd+M7lq1FviGhKYPdNFKoIubfKZHeQ9W0mrocxZanQ1h2Iq3QT5J/jEuU+Qtcs9r
	Wvd+CZ+VNPTEaPgV+j1OGfKhUrfS7Ue6/9CU8/t0NkGDH/iaFbyTcL6yfaYvG2MJXekCTtFvd5/Pe
	uv1Ux5CHCwiEegYOfkql7+/3D5+VvKjW/xipHh328jY0ZaFwUZp6Z6R87tNCa8wRjgFxw8UaGFv8I
	UAv6RT9C7hHzrQ0LgqFL8KbWu3C+nhJ2JmpSsweSs597KIA/2XYmznLjybBEJPtsv/rDfmLrW1liq
	ovSRForleqXGMGk8MzxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhsG-00009w-A6; Fri, 13 Dec 2019 10:08:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhs8-00009U-Le; Fri, 13 Dec 2019 10:08:34 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ifhrt-000106-VL; Fri, 13 Dec 2019 11:08:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulators for PCIe for Radxa
 Rock Pi 4 board
Date: Fri, 13 Dec 2019 11:08:17 +0100
Message-ID: <2621713.C5CYpBeeQa@phil>
In-Reply-To: <20191120161302.5157-1-matwey@sai.msu.ru>
References: <CAFjve-AT6c-yweF0mOPea-caG3n43nZzVPcwef-qp+n35JN9ig@mail.gmail.com>
 <20191120161302.5157-1-matwey@sai.msu.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020832_859548_8516FC03 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, tom@radxa.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Akash Gajjar <akash@openedev.com>, matwey.kornilov@gmail.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 20. November 2019, 17:12:54 CET schrieb Matwey V. Kornilov:
> Add 0.9V and 1.8V voltage regulators for Radxa Rock Pi 4 board PCIe.
> 
> Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
