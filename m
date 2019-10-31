Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF20EB265
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+D2uumNxL4L/vGbxwGz58wfdoIPrVGT1zvbzQaM9Lg=; b=qbBIxtCYdx3QnS
	0cz+SBGpovUkEG/+Xu7X/1o8CKjyeb8F88rm0POawa7AdX/0u/Gx3xQyoGXAhPMCxIC3ood1XTCkF
	Lk7Ze9BDsxlqVL8p8vuO0qhvSqEixeBUp1Bkm1Cq3nnPfihIjYbXj0335uyMpzAinkgMkYDVD52G0
	bV76OfIwRPSShXKNa1T0vqiaNQcdgAIY3OmAiEJNgIYpfcPRGrfJln0yvBiE1Nul7w/X7LUTc+rsi
	UMB6tYgjst/pADxMlntt3tWiMEfAE9fjXJSIIZwoaC9Yzuuylj0npq9JOL+rusQ3VCvq9AQxobzKP
	KLppS9F+60azJ+fpCSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBME-00022l-9p; Thu, 31 Oct 2019 14:23:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBLy-0001zr-TD; Thu, 31 Oct 2019 14:23:12 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQBLt-0005nA-Pi; Thu, 31 Oct 2019 15:23:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc_sys enable pin on
 rk3399-roc-pc
Date: Thu, 31 Oct 2019 15:23:04 +0100
Message-ID: <6903568.7J3coomyo0@phil>
In-Reply-To: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
References: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072311_112773_BDF47DA5 
X-CRM114-Status: GOOD (  10.09  )
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

Am Donnerstag, 31. Oktober 2019, 09:51:56 CET schrieb Markus Reichl:
> rk3399-roc-pc has vcc_sys 5V supply for USB and other peripherals.
> Add the GPIO pin to enable the regulator.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
