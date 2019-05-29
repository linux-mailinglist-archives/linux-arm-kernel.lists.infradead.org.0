Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055512E8A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRP9/oFQE61ohoWnoiWd9/RV8EEnggQ4unI53IvBwF0=; b=Ww4iv87e1HG8WA
	mm5RO8ffU95j1kMa3M/BU4oUUjv+GfKl43kuNwXfIXmRcvdXPxxvAdJ/7W2/A7+CScc4xfYGUFEtw
	bGW2xYrDIItX38YvJmFGul/j0JreVNF8JVdEgUXcMvvWEB6/TLgxDLy1ynSU0x2FU3SqSEhEWtCfU
	C/GH+OyfGTsq1/T88InZA34xjeLjlx6dXZRwoa5Kbaquu0ybLcEw0PRC9S6F0bHOlMp+OmTbzjDld
	fnCsOHgzao5Sn3gxT0SjZ9mSGH89NGF39Xy1YPb9rcQAdgOTiUhot7grpMTU+bnAm76yANZJ/upn7
	08YXP2f2q9VS+CV8Fx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7XJ-0005Ho-Hn; Wed, 29 May 2019 22:59:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7XB-0005Gy-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:59:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id f97so1690507plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 15:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iRXiq08eonK9BxjJjymdgHQ4qGSvRUxD96bZCDtUMV8=;
 b=stSrV1REP7r/iO0UySmKgfFQfgnoSywv5NEtp+3mDh+GJouFI80ivyUakPvqig8Azk
 YgB10Lri9r0RC0ld01sWyFm0/h8uTiv14UMm9g9A5G5CsmRxkOYkpXzsBxF+Q17278tr
 Px91blXo6+fUgF+HLBAuoi2qy4+OyklLJPHr9DZt3StO0PqO4rhu88kqA9lQuNlnPgvN
 yn07ols/kBnUXU7GcG4++x6XMFl1njQt5KNlxr6O8HGncwNDZXgKxrpK6qctCadJc6WV
 PlenhQY9FKgMHji+69msD05gr+N6JwIZ2G+9zzgd1/be20BaLEw4xZLahuoCFZPzkVjy
 dljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iRXiq08eonK9BxjJjymdgHQ4qGSvRUxD96bZCDtUMV8=;
 b=HCAJVvO5rPRWFp83tEOFtfngA/aJlUO1EIDNFE9lLnziFYngQIBCqQ81nmngVxj/MN
 sdk+hOQmfaQOQnaUbcok16U1CqHHsT8YLyUifytcv3K6N1CBD0oNRE03oav+EfEG88MR
 lHyXRBR9PWcGGrvW2cGo0/84hl2OnL0urx44uZolkavxjMZHkEWOKDGmBNDGvCQur3tT
 dtTgUst+U0Lmmw0mp80hswOFYuMODixq4Ck8c4WsqGl/bb8LjDg/GazeMWxrdFop1jyT
 Q+PM4O2fiHAHxBt9Mh07U05jRLYCSl5oWS9MJ2W5aH3SYNZZ0dkwI4A58antJVbU6bzv
 SBhQ==
X-Gm-Message-State: APjAAAXFM0KiqSTbASAoil5n+0GIpuP58PTsq0ole7qAZ+1x/0l2T0M8
 AnTo+JvH0LE2vFLCgd7I/f4=
X-Google-Smtp-Source: APXvYqx96A2IXwPpSqyQ4BjLhdKAVqBGtW28Z6W8F3//efV2DHQ3i/2tcwUQ5QxYVU6xOHShEZbpJA==
X-Received: by 2002:a17:902:b601:: with SMTP id
 b1mr458014pls.117.1559170740954; 
 Wed, 29 May 2019 15:59:00 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id s66sm822586pfb.37.2019.05.29.15.58.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 15:59:00 -0700 (PDT)
Date: Wed, 29 May 2019 15:57:48 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx: Add mclk0 clock for SAI
Message-ID: <20190529225742.GA17556@Asurada-Nvidia.nvidia.com>
References: <20190528132034.3908-1-daniel.baluta@nxp.com>
 <20190528132034.3908-2-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528132034.3908-2-daniel.baluta@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_155902_960685_619601E0 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "timur@kernel.org" <timur@kernel.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 01:21:00PM +0000, Daniel Baluta wrote:
> From: Shengjiu Wang <shengjiu.wang@nxp.com>
> 
> Audio MCLK source option is selected with a 4:1 MUX
> controller using MCLK Select bits in SAI xCR2 register.
> 
> On imx6/7 mclk0 and mclk1 always point to the same clock
> source. Anyhow, this is no longer true for imx8.
> 
> For this reason, we need to add mclk0 and handle it
> in a generic way in SAI driver.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  arch/arm/boot/dts/imx6sx.dtsi | 6 ++++--
>  arch/arm/boot/dts/imx6ul.dtsi | 9 ++++++---
>  arch/arm/boot/dts/imx7s.dtsi  | 9 ++++++---

These are dtsi/dts files that have SAI missing mclk0:
arch/arm/boot/dts/imx6ul.dtsi
arch/arm/boot/dts/imx6sx.dtsi
arch/arm/boot/dts/ls1021a.dtsi
arch/arm/boot/dts/imx7s.dtsi
arch/arm/boot/dts/vfxxx.dtsi
arch/arm64/boot/dts/freescale/imx8mq.dtsi
arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi

Would it be possible for you to update the others also?

Thanks
Nicolin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
