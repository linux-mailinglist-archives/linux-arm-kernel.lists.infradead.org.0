Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB9EBBBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 02:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Y8tN/VGqnqtc92+vh/kdfgNdmbTdOgRa5QLwEVgk9Y=; b=L8okTuxPFjcIQj
	gDbs9jh9AFHwOdbBkylvbI56WozKF/ARg7lIUhFKYBOivp6rM67bjLXpMZdMsbynnXKH5z+HYL7x4
	Q1Cc/Z49Y6PNNAquXb5XC47mWpXDzrXnmH1RjiELvHVLtpVbyZL0N/3wzHDg4FaIeliZgpC72QU8C
	HGjHRgbvnqj4t5d+HjpG6IXRWtrY+Kfek8CDj3q77Jsemvn40opp+3DVgHgLy4QuV+0CerwGVf1kW
	3eSgEWF1ZAfJLrQwPft/LB7qYNyCEdJWnVLyUVsomdl9b3jZ21XTyvLdDRBhiqHm0ocFpiYHNz/yh
	vioJq+P62ffefA8cQV0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQLnL-000614-IZ; Fri, 01 Nov 2019 01:32:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQLn2-0005zI-AE; Fri, 01 Nov 2019 01:31:54 +0000
X-UUID: 5130383db0bf41b9b2c0732fb8e4eb9e-20191031
X-UUID: 5130383db0bf41b9b2c0732fb8e4eb9e-20191031
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 678234526; Thu, 31 Oct 2019 17:31:10 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 18:31:37 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 09:31:35 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 09:31:35 +0800
Message-ID: <1572571899.23942.3.camel@mtksdccf07>
Subject: Re: [RESEND PATCH] thermal: mediatek: add suspend/resume callback
From: Michael Kao <michael.kao@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Date: Fri, 1 Nov 2019 09:31:39 +0800
In-Reply-To: <a0af0b72-dbc3-f284-34b7-fc94bbe349a4@linaro.org>
References: <1570613704-16609-1-git-send-email-michael.kao@mediatek.com>
 <a0af0b72-dbc3-f284-34b7-fc94bbe349a4@linaro.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FBAAD417DA093FF98E142D814BA2901E3D11B820C756EC48F85BA1DB00C7872C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_183152_516544_DD5B9666 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-pm@vger.kernel.org, Louis Yu <louis.yu@mediatek.com>,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-10-13 at 19:50 +0200, Daniel Lezcano wrote:
> On 09/10/2019 11:35, michael.kao@mediatek.com wrote:
> > From: Louis Yu <louis.yu@mediatek.com>
> > 
> > Add suspend/resume callback to disable/enable Mediatek thermal sensor
> > respectively. Since thermal power domain is off in suspend, thermal driver
> > needs re-initialization during resume.
> > 
> > Signed-off-by: Louis Yu <louis.yu@mediatek.com>
> > Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> > ---
> > This patch series base on these patches [1][2].
> > 
> > [1]thermal: mediatek: mt8183: fix bank number settings (https://patchwork.kernel.org/patch/10938817/)
> > [2]thermal: mediatek: add another get_temp ops for thermal sensors (https://patchwork.kernel.org/patch/10938829/)
> 
> There is no new version with the comments take into account. Did I miss
> something?
> 
> The patch base on Kenrel 5.4. I resend to linux-pm. The original patch is at linux-mediatek only.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
