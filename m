Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247EF22CBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwMLJ4gvDXevzGJlIsoh0E6E6/CDO1bOAWrgwe16e8U=; b=Tl17nuTAdWxxAO
	4JmXngzYTR5DxG+D+Q8Kx72hTXYLc4Nzf2PVP8wDhFK3iaOVy/kH8kvOOudsZH62yYV+IMIHXGPzc
	T6wpYxNPk7MxS5i6IBJts+C90iz4kG02Kt+QTRrnOq1Ljb5Ji/84Nfvue4O9Uw6pViZp6S2kdx+Qb
	IMVdbTkKhbSyCFEgUhm1WYuPA2VKTlTpEu5DWIbucct2CyVffIEZtnsDH5DJkUPjlZKtpha1wEVup
	kzY78orX02H8KlmDPKM2KiC51THYu8MexmaUWiy6p5GwUpbI+QLMx/3BrBT29aIZiaZHypRCipnfh
	8VmpVpBruenCL+ut1ajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScVz-00069H-Oa; Mon, 20 May 2019 07:15:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScVr-00068j-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:15:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 563A52081C;
 Mon, 20 May 2019 07:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558336511;
 bh=9Ws2DvYBg8/lRkMwUR/N+FNcmhvVHWsnSL7L2wc1H0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DMGZXzSweW9P9nn+k3NVg4QRhte4ublBQOGA/yf3I6zYyphGuasDy9bVTciFU/lgG
 yJKzzEgomkntyFOodMCbj+kOaVDOUo4GLuhKajN450YJBjkpE2dzXyfDHu1jIZf0FY
 EHHENrURaK6wpVxGlCdUtKl9lhFMi8Bs2XclVRBs=
Date: Mon, 20 May 2019 15:14:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed
 grading
Message-ID: <20190520071417.GU15856@dragon>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
 <20190514071322.avosfk4fzz2hzzx6@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514071322.avosfk4fzz2hzzx6@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_001511_812904_09182E17 
X-CRM114-Status: UNSURE (   9.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 12:43:22PM +0530, Viresh Kumar wrote:
> On 13-05-19, 11:01, Leonard Crestez wrote:
> > Right now in upstream imx8m cpufreq support just lists a common subset
> > of OPPs because the higher ones should only be attempted after checking
> > speed grading in fuses.
> > 
> > Driver reads from nvmem and calls dev_pm_opp_set_supported_hw before
> > registering cpufreq-dt.
> 
> Who will apply patches 3-5 ?

Me.  Will apply them after the first two get applied.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
