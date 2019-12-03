Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CA6110096
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5mlCyVgNpS+SzWqZkJgYhIlyr9+vSrpNxMeOjRtJTM=; b=Q4simgokUAJkGf
	z9vbGdmLRv7BCYppMaIrlOTg0WrgwZUlCXVSiBDFcYDKnP87q3ulDAytoTMPa/35V6zZ7dRFmLqxi
	C2N8raPBJ333PJer8hzoZs579R2HpRKK5vNf4q8Q5AHZS8EP+7bRQQ+zPADDgotNl9qLd6JQzHJNP
	qoe3df6lP4uhDzCfn9oUjnHAy1Hic4pKbfL0rVW+7FXserMfH/A6Y3gEsaMh8y3v97EZQlCdxM9Ag
	UdbBSDfdcP8eA0WW6gGGgrlKDRr0y7tsslq0PBe+TU8h2Wv5XiohljGX3BHA8CUMT0A6kn+CREF3h
	9odGlNVGrgZgpyhw6+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9T8-0000r1-Ro; Tue, 03 Dec 2019 14:48:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9Sz-0000qU-85
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:47:54 +0000
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCD5720803
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 14:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575384472;
 bh=qoEpR+iz5sa+F9skDmBKFFgJNfBR3Zy5GUGd1/9m/gQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Yk3+kwHbCw67Q8MsoMwGkrd5CTloi+Cgz+s8OJTz8fohj85dg//2UtKabMoqyzHSX
 lRhvnd9AvR6nddhBsnDYT7SIiQlgDLIm3XBrklMlrRWwZ4TrrHg7DMh4T8RTSMgsBR
 S3dUK+58xtFa6ZyeTbtri6zHy807ej67tLHjKfjM=
Received: by mail-qv1-f44.google.com with SMTP id d17so1604878qvs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:47:52 -0800 (PST)
X-Gm-Message-State: APjAAAV6EoQsf+vxcKI/CTefxnzR+TEsM/O1AxqW3qkh/51d8FBnmVcW
 SX5DYvLGVHw7SORMsGc7yiufXcTajZysaYZUrw==
X-Google-Smtp-Source: APXvYqxrMnC94tLm+z/m6J/edWdsA+e9+yTSEaG1G1r+Sc9Beij7suS2pnqDw5WIbatRieWqQvxMMTtm91WsEIvREJ0=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr5131884qvu.136.1575384471940; 
 Tue, 03 Dec 2019 06:47:51 -0800 (PST)
MIME-Version: 1.0
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 08:47:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLMs1MsNXMFTCVdrkNNx5ktg0_Q=zf6xgiTkeys-T+CNg@mail.gmail.com>
Message-ID: <CAL_JsqLMs1MsNXMFTCVdrkNNx5ktg0_Q=zf6xgiTkeys-T+CNg@mail.gmail.com>
Subject: Re: [PATCH 00/14] ARM: dts: aspeed: Cleanup dtc warnings
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_064753_327825_6CA0DDD5 
X-CRM114-Status: GOOD (  17.91  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Xo Wang <xow@google.com>, linux-aspeed@lists.ozlabs.org,
 Ken Chen <chen.kenyy@inventec.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, anoo@us.ibm.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, a.filippov@yadro.com,
 Patrick Venture <venture@google.com>,
 =?UTF-8?B?QnJpYW5DLlcg5qWK5ZiJ5YGJIFRBTyBZYW5n?= <yang.brianc.w@inventec.com>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 6:02 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> This series is based on an RFC-ish series I sent quite some time ago to which I
> have only just been able to circle back. The previous discussion can be found
> here:
>
> https://lore.kernel.org/lkml/20190726053959.2003-1-andrew@aj.id.au/
>
> I've split, shuffled and rebased the series a little, with at least one extra
> cleanup for the g6 dtsi. This series is just the devicetree changes, the IPMI
> KCS changes will be posted separately shortly.
>
> Combined with the KCS changes we achieve similar stats to the RFC series,
> reducing 264 warnings to 6.
>
> I've added each patches' tags from last time, but please glance over them
> again.
>
> Cheers,
>
> Andrew
>
> Andrew Jeffery (14):
>   dt-bindings: pinctrl: aspeed: Add reg property as a hint
>   dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
>   ARM: dts: aspeed-g5: Move EDAC node to APB
>   ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
>   ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
>   ARM: dts: vesnin: Add unit address for memory node
>   ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
>   ARM: dts: swift: Cleanup gpio-keys-polled properties
>   ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
>   ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
>   ARM: dts: aspeed: Add reg hints to syscon children
>   ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
>   ARM: dts: aspeed-g6: Cleanup watchdog unit address
>   ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes
>
>  Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt            |  1 +
>  Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml |  3 +++
>  Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml |  3 +++
>  arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts                  |  4 ----
>  arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts              |  4 ----
>  arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts                      | 11 +++++++----
>  arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts                        |  4 ----
>  arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts                          |  4 ----
>  arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts                          |  4 ----
>  arch/arm/boot/dts/aspeed-bmc-opp-swift.dts                            |  6 ------
>  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts                           |  2 +-
>  arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts                      |  6 ------
>  arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts                            |  2 --
>  arch/arm/boot/dts/aspeed-g4.dtsi                                      | 21 ++++++++++++---------
>  arch/arm/boot/dts/aspeed-g5.dtsi                                      | 49 ++++++++++++++++++++++++++-----------------------
>  arch/arm/boot/dts/aspeed-g6.dtsi                                      |  2 +-
>  arch/arm/boot/dts/ibm-power9-dual.dtsi                                |  4 ++--
>  17 files changed, 56 insertions(+), 74 deletions(-)

Other than patch 5, for the series:

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
