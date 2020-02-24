Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F69169F86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYZ9ysJOJ4aNbQiNDwdgrZl5O8JWGCWyJxvqJb0V140=; b=fPXAJ2LOTFfUj2
	UKGkL7rIZUeRD8fjMzJXGU9jpDkQ6pKMgceCn3vSH7n/VbW627xu2JnqSYj2OoqynVRZiiGLaQ4YV
	LH1sW0/c9F5//DQseIDyHIbWs5njVQrfirefxd0NbIjnFtXAKsUAbFsYTEKMA8R3Ur5o8glrXDiN1
	gAqQoCorlrXKIG18crfKMD5P21JVnsnyX43+paAYC3kftuG1yFEpDgr5g0pAkzE0qW2WHZQ3pj0Fb
	EvWel3lMHXkXEEFWGQEPTJ8lt2+luaorzu5mlcY2XYvp8KwdIu1WcezhuBFNeCO6Yj5ydKRSAIQm0
	qAdP7KJjVyHM22/Mic2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68Ws-00021u-MB; Mon, 24 Feb 2020 07:51:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68Wh-00021D-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:51:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8024206E2;
 Mon, 24 Feb 2020 07:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582530699;
 bh=66Cc/Y6FUBqCiSi4OnMZIr7inydV8YlUeIUN39HgudY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xgcAvprFUPw33SKJxG+uE75hIGEG32PfJrwR5/yij/lqhxHNaDrPHGoOmgqZemrG8
 K6EfkN6zyQXksAZN6d0lSWv3unFLAwTnmKW6K8fhGI8sb6HZcQmiEsPxq7FrT9y+wf
 Ci7X9Cb6N33ePg02cLirPI5ZvOic9Qqr4ZTMCebA=
Date: Mon, 24 Feb 2020 15:51:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] arm64: dts: imx8mn: Adjust 1.2GHz OPP voltage to OD
 mode
Message-ID: <20200224075132.GB27688@dragon>
References: <1582510060-12272-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582510060-12272-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_235139_966899_988750E8 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 horia.geanta@nxp.com, daniel.baluta@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:07:40AM +0800, Anson Huang wrote:
> According to latest datasheet Rev.0, 10/2019, there is restriction
> as below:
> 
> "If VDD_SOC/GPU/DDR = 0.95V, then VDD_ARM must be >= 0.95V."
> 
> As by default SoC is running at OD mode(VDD_SOC = 0.95V), so
> VDD_ARM 1.2GHz OPP's voltage should be increased to 0.95V.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
