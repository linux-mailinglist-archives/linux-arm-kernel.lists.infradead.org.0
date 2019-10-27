Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2952E64D4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 19:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0ybh8KhyNKEFWX+NhL01tdm/Y3vboQqen+Sfx6C5Ik=; b=nWUvqQmF8aSCG7
	rFmlYxs6gfF4s1DuTqEWSSbSPrvz6o/4HsOf8VJvekA6RpyQjIqSJAXmvFVSPtLsrEM3GKJ6xGuA9
	Wyk7U1JbqwoQHZaTkXGM7a0RHBs870OvC98dLBmtBbzGQzrxLKtpC9wkQcykD9HtYLJAAdQ0RBP+J
	CjZoAziTzc6MXOTyKERcZHagouKrFkZbQwJcGT8IdUGedPf2t8vRZMUS1Oii1C5+hdDXQnmk5G9Kk
	/XYatym9+aR2U2hjyLRGOvqT6OzWAW97UpY5moiMn3JWh1IMfyTvtgy0Y/rAvkOt6aHSLSmicB4uI
	z+IFABPSWIxKls5JilTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOn81-00088h-47; Sun, 27 Oct 2019 18:19:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOn7o-00088M-Vu; Sun, 27 Oct 2019 18:18:50 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOn7j-0008Gg-Pf; Sun, 27 Oct 2019 19:18:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
Date: Sun, 27 Oct 2019 19:18:37 +0100
Message-ID: <4966121.jNSStvosxs@phil>
In-Reply-To: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
References: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_111849_176954_FBA15E23 
X-CRM114-Status: UNSURE (   8.87  )
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

Am Montag, 21. Oktober 2019, 12:24:36 CET schrieb Markus Reichl:
> rk3399-roc-pc has three gpio LEDs, enable them.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.5
git am choked a bit on your inline signature though.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
