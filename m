Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D3F249A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvGnZjWoLlKkJGA9dHWpAOit/Ozye0RaoFbvvDCMNW4=; b=l8KCO5LHHy6YKh
	xDwMLjfqGR0RqRIBlpGOlPznL4Pu4lQmUitMWz3XB+hGwabF+12G3mfxnvOsYsgM6GB7CII7klIDP
	NPFE3jbViGNhkdAJPRLtyttn9lLsFJ3/96PLKU03ZwjlSVrkGPZ1wgG8t7mfHatwtbQ8lmCjI37Jm
	20Me57R59wn3yPhDh/YW0y5RaJgYWJdqupO+y+jMueO+HIkZueMQrosdQTJc10Utzj1kYhe1piiGo
	YmN9oI5rtYlaOcGyTF6fxrVTSWaFbT/ViZjl1fkjquwgKkHuQ2X4BK4tG8Am9+LziYuLTBn09sBC2
	Dt9DvnU0iVaVLfX1bIzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSziz-0006kt-SH; Tue, 21 May 2019 08:02:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzis-0006kH-7h
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:02:11 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71CBB2173C;
 Tue, 21 May 2019 08:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558425729;
 bh=Fkgm5gp6YL8e+SsgbGZ1KjWAN+q7Ce/D2Uq309+p9Tw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sp7G/N3VCOIr9NUSEIxER+8KMkKJMpl44SSWZ0Na1JPVSCJ6K/MVKS7aZc8Q2iO6r
 4cBfraJt+JpOlGt40uybnIHaXKTsKxO5odavSWpqS63wtaws+7MfBgjIOZ21YqN+Fp
 21LosXVlVnyMetR3HZ2rViCVUqJe+3/+KYn+UJsU=
Date: Tue, 21 May 2019 16:01:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 3/5] arm64: dts: imx8mm: Add cpu speed grading and all
 OPPs
Message-ID: <20190521080113.GY15856@dragon>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
 <0c7b08ee090ef1a91dc4d1072482b1ff0d4665fb.1557742902.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c7b08ee090ef1a91dc4d1072482b1ff0d4665fb.1557742902.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_010210_285705_1D817BB1 
X-CRM114-Status: UNSURE (   8.35  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 11:01:41AM +0000, Leonard Crestez wrote:
> Add a nvmem cell on cpu node referencing speed grade and the 1.8 Ghz
> cpufreq opp.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
