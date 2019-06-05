Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB81E36821
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 01:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ3OIq4lWdelEqwjlneI1sZW/afyUft542QV3PcFcYc=; b=rOj1FJ7XT8lY9b
	nCtLTTGZZKGbUhDoQQKissfZY7EmEdC0UYgumDaHAfyoB2MSjoiw8L0gUi2i9yOMhH9/TfNBaFmN4
	zzJut9ixIG+3xvBs9ucFl4cL27w3KUPtlognJ66O9pyOcZoWJ4WtbNLaWOZ7sAhB2EDCzCM19QFfz
	/qNbiw+ykrgBRot60J/Lqs6h5PgiDtI0p5XTCPxSMfRZDfjNrGROAaHORj4D8dmp9V3lhoDFuqzAo
	hJBP2mTFAlDZ93yosCPndL2SpGu3n+n2tj5ovwDVFL2GfdrGWv6jqd29+yymARoLCkWVvcll4PhvE
	xsQTA02q5vO+celzMqxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfPM-0000cn-75; Wed, 05 Jun 2019 23:33:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfPF-0000bs-0K
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 23:33:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06CE62083E;
 Wed,  5 Jun 2019 23:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559777599;
 bh=Z3tddQB2KosKS8slNYJZDj6XrnlD8q21sPK71MNMMsk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=tPZr8Ui7o0n3eqomnLmPN3LKzIgBLT939aDKAzBV/YX19ItuCL8Dx9Yq6IeoEj1PK
 hCXYqWjBSoia4X1vANS7sLgrpOrpNfbU/q/42gitpFSMITnKrLtYpuAXp1D1WdfVhH
 Q2kldMWUVIvEsMA3p2mzFiYEiePFTu9fhqXn/HVw=
MIME-Version: 1.0
In-Reply-To: <20190604015928.23157-1-Anson.Huang@nxp.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
To: Anson.Huang@nxp.com, abel.vesa@nxp.com, aisheng.dong@nxp.com,
 bjorn.andersson@linaro.org, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, dinguyen@kernel.org, enric.balletbo@collabora.com,
 festevam@gmail.com, horms+renesas@verge.net.au, jagan@amarulasolutions.com,
 kernel@pengutronix.de, l.stach@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 mturquette@baylibre.com, olof@lixom.net, ping.bai@nxp.com, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org, will.deacon@arm.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V3 1/4] dt-bindings: imx: Add clock binding doc for i.MX8MN
User-Agent: alot/0.8.1
Date: Wed, 05 Jun 2019 16:33:18 -0700
Message-Id: <20190605233319.06CE62083E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_163321_067211_E5973E77 
X-CRM114-Status: UNSURE (   7.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson.Huang@nxp.com (2019-06-03 18:59:25)
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add the clock binding doc for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  .../devicetree/bindings/clock/imx8mn-clock.txt     |  29 +++

Can this be yaml?

>  include/dt-bindings/clock/imx8mn-clock.h           | 215 +++++++++++++++++++++
>  2 files changed, 244 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-clock.txt
>  create mode 100644 include/dt-bindings/clock/imx8mn-clock.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
