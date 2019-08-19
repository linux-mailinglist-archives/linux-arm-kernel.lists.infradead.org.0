Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6795591DCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOmk41KpOZhBPkHaDUFIPS8YF3Lr6TpP4B+/4NrLLxQ=; b=U27cYBz8wdSnl3
	bDXbYYUoYg6fYceuqfDVx2K8JkJoCm2mjkkCspctUZanD5jg006qHuZwg8pnx1nnxg7b3cZCytKrS
	6v07hNjte8Cfr+HRXfprVYPvjKDP11V/Wg0cRatrmkLybgpQdp5h/HRt6chOmN0f90HmoMVGkatrx
	fSf4SZBWamZvKTl96+gL0ItCatVaGp2lfJonWxfhO0TIGhWhVouPfquznk0hBwfr5DrLq8SZUmLdL
	o6X7PqIk+MAmfm+5XDeBDjBxDELjVrFfGQcTx+KhEifOYi/Q3m6cF4gNQZco5KCpX+pc8euY/0LEp
	GOxEAb1gtBtVwHF/kIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc5F-0006ih-Nq; Mon, 19 Aug 2019 07:28:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc4p-0006f2-JS
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:27:41 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 266852086C;
 Mon, 19 Aug 2019 07:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566199657;
 bh=SZ9Ao8FfR0PuQ6iPU0Wh/DnaqMF8VJumtYhqVss2EvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J5zIXe8voouEL04ALmAx6QxC326GZiAYYGDkZjaM0n+UAjB4B/PDfVrUtLR/y4Jx8
 AxUgxMLA1VjJZG3dz84Qu0AoKYmld6W6a/SDbtuGmDKJYflXgpO3EsuWETy98HYH17
 jgcHqPM6Oq/Nd5/1T7dLU3cfrcwNtIO7E+eBLTes=
Date: Mon, 19 Aug 2019 09:27:22 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V5 5/5] arm64: dts: imx8mm: Enable cpu-idle driver
Message-ID: <20190819072721.GA5999@X250>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-5-Anson.Huang@nxp.com>
 <34c03d76-ae61-63b4-153f-3f9911cc962e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34c03d76-ae61-63b4-153f-3f9911cc962e@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002739_764274_8C1FAE16 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 catalin.marinas@arm.com, agx@sigxcpu.org, angus@akkea.ca,
 leonard.crestez@nxp.com, festevam@gmail.com, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, will@kernel.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 06:12:50PM +0200, Daniel Lezcano wrote:
> 
> Hi Anson,
> 
> sorry for the late review, I've been pretty busy.
> 
> If Shawn is ok, I can pick the patches 1-4 in my tree and then this one
> after you fix the comments below.

I'm okay, so:

Acked-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
