Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF9C101F8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKX2jNkfEWpt58zU/7bRXuohdQhcwiYOzv6IJPgb6CI=; b=acGXJ6IAYPHbQF
	u5WaVR/1U1B0ijn+hz/+HeSiZh/lfhEDGMk4tlAtMWDODgfqCu8oTPzr/i9QorQhOdkNNKHsirSk8
	JKITBVRB0T0kiGT4Gj4r3K4u7h3RsFbiz6qdFxH26fFqlukWn4zhxgoH0xDH6zgQpPDXlRkctspau
	lNnOc52PKgFFT6Yi3mBZmzdh7R+ODt+jBAJkt0AmfUa7XRdsR3lJHDrRRD9lMoSk9MZX8iVUlvDWF
	6j6ehDpAJPpCtE05POFruVc6bDUILHJEa0VJtLn5WIq/TkY3k0KH33LCBzYyu13LkSla3E6CkRgWE
	oQSom73UD/6nhBUnntIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzWc-0002hL-5c; Tue, 19 Nov 2019 09:10:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzWQ-0001qy-Py; Tue, 19 Nov 2019 09:10:10 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWzWI-0004Dg-Jv; Tue, 19 Nov 2019 10:09:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc
Date: Tue, 19 Nov 2019 10:09:57 +0100
Message-ID: <6728270.yCOpIldRRh@phil>
In-Reply-To: <94f44e1d-86c6-1e32-aa63-56edbd7d75f5@fivetechno.de>
References: <94f44e1d-86c6-1e32-aa63-56edbd7d75f5@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_011007_008048_E65079AF 
X-CRM114-Status: UNSURE (   9.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 18. November 2019, 13:44:54 CET schrieb Markus Reichl:
> rk3399-roc-pc has 16 MB SPI NOR Flash, enable it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied (yesterday evening already)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
