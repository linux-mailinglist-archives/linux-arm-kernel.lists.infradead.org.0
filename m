Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411B519EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRnMiHARNKYuE7PK4e6RgNBj/NfywgqztyarqmVR6JE=; b=DT7Y9lW8C5cBw8
	jmruvvhfsEr2fr/ukV7L/2VfBgg5zQuAleZNChe4J1AlzcE4Sx9hWX03iG2sps+mIQySncKoshZKz
	waRqoru5sjC2FJtiFIHdlo9DBMomJaz504PbW5wzLtA6IBluM/stxk2AxNWjQKhrUZcBbx9J2Gi9+
	mnSchgcx1WPMpait0z9fLknjKkypubkVVdf81ivtloyrYjqEmOl/A1V3LVpcSdDcophxG9Np4Y629
	lzPYLeKQ6byZhieMufwcWY8GUnN0FAW+CvPr6GOvSOaf8nJZjbx3i98qKseV4cyV8QihZ4rvXgD1y
	X/IRao5M3bZ1C3FF1+Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfT3O-0002Cl-KI; Mon, 24 Jun 2019 17:46:54 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfT3C-0002Bq-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 17:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561398397; bh=l26+171beDHOxmBA8VQOvSCiteWk45rGxm72YTM5O5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pegVqKhp8mz968SWeU+w2vKRP6a4dc5+dBNm3nxwjuqAnevGGPHI4ZwfoFTXH8rjC
 thu7zSl6O4mdMXvGt7ZiNDk2BDZdMjeXRx4UwQIv7JVVJa+Df0sZPc6ZKAo7frELlZ
 9z4OGEpcrYnbZdEHdsuYFHIY74nf+gLab1TwBX54=
Date: Mon, 24 Jun 2019 19:46:37 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v7 0/6] Add support for Orange Pi 3
Message-ID: <20190624174637.6sznc5ifiuh4c3sm@core.my.home>
Mail-Followup-To: David Miller <davem@davemloft.net>,
 linux-sunxi@googlegroups.com, maxime.ripard@bootlin.com,
 wens@csie.org, robh+dt@kernel.org, jernej.skrabec@gmail.com,
 airlied@linux.ie, daniel@ffwll.ch, mark.rutland@arm.com,
 peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190620134748.17866-1-megous@megous.com>
 <20190624.102927.1268781741493594465.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624.102927.1268781741493594465.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_104643_001223_EC3113D7 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, joabreu@synopsys.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, linux-kernel@vger.kernel.org,
 airlied@linux.ie, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:29:27AM -0700, David Miller wrote:
> From: megous@megous.com
> Date: Thu, 20 Jun 2019 15:47:42 +0200
> 
> > From: Ondrej Jirman <megous@megous.com>
> > 
> > This series implements support for Xunlong Orange Pi 3 board.
> > 
> > - ethernet support (patches 1-3)
> > - HDMI support (patches 4-6)
> > 
> > For some people, ethernet doesn't work after reboot (but works on cold
> > boot), when the stmmac driver is built into the kernel. It works when
> > the driver is built as a module. It's either some timing issue, or power
> > supply issue or a combination of both. Module build induces a power
> > cycling of the phy.
> > 
> > I encourage people with this issue, to build the driver into the kernel,
> > and try to alter the reset timings for the phy in DTS or
> > startup-delay-us and report the findings.
> 
> This is a mixture of networking and non-networking changes so it really
> can't go through my tree.
> 
> I wonder how you expect this series to be merged?
> 
> Thanks.

This series was even longer before, with patches all around for various
maintainers. I'd expect that relevant maintainers pick the range of patches
meant for them. I don't know who's exactly responsible for what, but I think,
this should work:

- 2 stmmac patches should go together via some networking tree (is there
  something specific for stmmac?)
- all DTS patches should go via sunxi
- hdmi patches via some drm tree

thank you and regards,
	o.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
