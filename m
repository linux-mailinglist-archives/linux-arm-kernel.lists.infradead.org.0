Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF05617F056
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/cLP+hY0f1ZD4Fvr+kAqXM5lR3tdyIFgIKy8i8BmDU=; b=dvplO/tFqPOOfd
	t7sNfjZ3aIzaINVkpV0EtGOwhmN/QCMO3zre3Mq2EYoG0DPdu7rzcBosRlx88Y3WUZTP/D00WDrAL
	ZL6tkbKl7DoZQrFRgcWw16rpBPhXxFFNWkFxH3P7SURSOEnVf+mJQSCC2tEJfcepZPM1jRigwN7Eu
	ub93OxvzHRCF0Uv5CUoigZje2xrvPJOQIwlCmEHV/yWSbzrai0jnO/FggO84cvemq57l+JthD0bWe
	MkYVE4laXBcKYfa748nh6rg6Cei3C/xgYFRVYGR1SKveLwwSR2Y6IaTY8/gIJdrDTGg4qBHasOA7/
	wm6P6xvzyxeJOUO2zZ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBY0Z-0006zQ-03; Tue, 10 Mar 2020 06:04:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBY0P-0006z5-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:04:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EF36222D9;
 Tue, 10 Mar 2020 06:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583820281;
 bh=r2MPC5UtaW4E+Gx3vUdEl/eb7ySDkUz4DXRirRU3m1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KN6ETD5wysJVebQR9jSbcf0KVdTLhMNlw0l7uwvCqnSSOmqmHlDvEn8rGnRTiAksi
 0d/oDwkmigihBqVp+7r0aG6DTpvKk2ulzoZV6A3EGs00RcaVL6p16PeD/cDD8yLvZL
 hD8qQkhkKrvBVCkr8ObTi3u33FI5mDFLZsCla3Bk=
Date: Tue, 10 Mar 2020 14:04:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 05/14] clk: imx: pfdv2: determine best parent rate
Message-ID: <20200310060434.GH15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-6-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-6-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_230441_722572_2DE8DFFB 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:48PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> pfdv2 is only used in i.MX7ULP. To get best pfd output, the i.MX7ULP
> Datasheet defines two best PLL rate and pfd frac.
> 
> Per Datasheel
> All PLLs on i.MX 7ULP either have VCO base frequency of
> 480 MHz or 528 MHz. So when determine best rate, we also
> determine best parent rate which could match the requirement.
> 
> For some reason the current parent might not be 480MHz or 528MHz,
> so we still take current parent rate as a choice.
> 
> And we also enable flag CLK_SET_RATE_PARENT to let parent rate
> to be configured.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
