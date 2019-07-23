Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A7D71344
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wncERk/tBRopBTZJk4JG+zlvHXqD6YwE9wqMTxJk6Cw=; b=dZ8N3gxfDN3Ins
	TfVI0GHDMKQM8sTXWCb1IuHIBThwOX4GbMGQvORTrwitPgAnxh3/bM5HLVcwWBm1HAekT3vQxlp9g
	9WHpmf0f2gYGnPm/167qPyzP7Wx3cLDuE3Lz7CrrxwkmiJyg0htvqvqbsglvGFbdJAuzjN1hBSm28
	Wjwt6L1GSbrlRKlG0dqN/pBDPpH/1fYapS7XtvAqCctZVTzkDPUfKzDQPF/8BI+tKwqINVtcPfrtH
	mKlV0lu0VDJG98IeDKIxg8D/QOwQTySifJrHE10GeRvgHrFjHZabCF7gB6tWYGTps/6kJZfziLc4v
	eVC+m+THteBolKMQ0l/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppZm-0006Fz-Dp; Tue, 23 Jul 2019 07:51:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppZX-0006FX-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:50:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC7AA21BF6;
 Tue, 23 Jul 2019 07:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563868255;
 bh=e+rfHbmA114ieNPtGenJSrIxHywXJvrFDJHEzofAoxU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AX4LRyECbHjthQZF2SidTeakLLjEHNYQXP5KfxlgtUjJUJUIPsqSynsKl2W6SKHDP
 x5VsY3Jg8iJfAthV2EBLRWtPsw6DctewlCsozGMvjr+hMJQuaeFfiB9PLUkbbU1EzM
 mThb+Ms1uQEld/fZ0wBumCzlOW8Phk9lEN+Vfrik=
Date: Tue, 23 Jul 2019 15:50:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v2 0/3] Add power domain range for MU13 side b / IRQSTR_DSP
Message-ID: <20190723075024.GL15632@dragon>
References: <20190718102519.31855-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718102519.31855-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_005055_898412_69439D6B 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, =kernel@pengutronix.de, s.hauer@pengutronix.de,
 ulf.hansson@linaro.org, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 linux-imx@nxp.com, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 01:25:16PM +0300, Daniel Baluta wrote:
> This patch adds power domain range for MU13 side b and irqsteer in
> preparation for adding support for DSP <-> AP IPC communication.
> 
> Changes since v1:
> 	- fixed typo in patch 1/3 commit message
> 	- enhance commit message for patch 2/3 as per Aisheng's comments
> 	- only add PD range for mu 13 side B
> 	
> Daniel Baluta (3):
>   firmware: imx: scu-pd: Rename mu PD range to mu_a
>   firmware: imx: scu-pd: Add mu13 b side PD range
>   firmware: imx: scu-pd: Add IRQSTR_DSP PD range

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
