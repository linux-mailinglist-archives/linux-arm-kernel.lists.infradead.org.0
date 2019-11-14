Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAADFC2AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy5ygM0km+POPwR6wUAo/1YxP4cmez/O8xROTw8UNbQ=; b=eSUI6iQwAFzH/H
	Prao2yUA36/ynUhC+vCqqOwECnVGbJhgkRwMIbL2Bsf6LJ21EIRvb1PXax2aYsUMzTULItDNlg9hE
	FTpcVKCMq5EPWoh0uXp0bql0ePPdBk46QHnJQV71OMyQpUCFiXzk4/1ZupMkFTNmrdHoKlViw7TOP
	Q7BTGvRxGUICmw5W2FwiBXNsGu26+ZSTDbw2fpTT5oBFiL3qLlmVG+U6lsxmTXEn5xLo2sLd5yoKa
	6kw6LLOTzhhhAR2yh8KzAeifn9HvG1UugvN4DbB3VJl4GGsHYK1w20O2dFNp+hGiCbbzUq7vK6rT9
	f9/nclQq0EbS66tL7TXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBV0-0006AS-WE; Thu, 14 Nov 2019 09:33:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBUq-00067M-Mk; Thu, 14 Nov 2019 09:33:02 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVBUf-0001Pj-Hv; Thu, 14 Nov 2019 10:32:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc
Date: Thu, 14 Nov 2019 10:32:48 +0100
Message-ID: <1669035.FjvuzNSCd2@phil>
In-Reply-To: <c2b88509-129d-46d4-9e23-15d0482951be@fivetechno.de>
References: <c2b88509-129d-46d4-9e23-15d0482951be@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_013300_886388_6BCAADA7 
X-CRM114-Status: GOOD (  10.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 16:38:26 CET schrieb Markus Reichl:
> rk3399-roc-pc has a Mali gpu, enable it for use with panfrost and mesa >19.2.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> Based on v5.5-armsoc/dts64/75aa5678
> If applied with other patches in between, the second hunk
> offsets and may patch vdd_cpu_b instead of vdd_gpu.

applied for 5.6 (probably) and made sure vdd_gpu got its regulator-always-on
removed, not vdd_cpu_b :-)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
