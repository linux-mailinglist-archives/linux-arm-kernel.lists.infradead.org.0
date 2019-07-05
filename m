Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A19F60827
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vR2kbIu4sIecw75JmJC4s/fJg7m9lTE3kC8YCOk9bI8=; b=sb/YrIyDU+inv5
	gveQNFDkczWXUVjN+fgJlfufUTQdqGXhbOabqW9K6WSxNeHz8wwMOxPRumQGVgJNBzoGZSE5DeKhr
	d7JljHQI2GEjC/RMWnbkKz4xrma/TFOg/l2+jjtlbPm9cKKO0AkvulO2EupwuQt93+Vk4RBXggXxV
	9sGIiUVfuvboIGN+9Rxu3riE4ddi45oVFIrRDE1tAQIkdPS5iIrZpychVejWrBcc0w5dDkNj80E56
	nRXe+/Ok6gYQteyut7SV2UlRP8J0xK7sjUO+/G1jsEArYLy8GzpaKQyALIUOJKU9nd6zoI0sd8FBy
	dY05gIBTqYMD1AeNez9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPRf-00063d-Iy; Fri, 05 Jul 2019 14:44:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPQx-0005KO-Om
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSiMC23ISGGQqVJSQMfXoclzcfCXE9jKziQow8Aqu58=; b=wrJ9PY6MWbxzmxeE6ynradzPT
 M0hJ0o7XjYxi9fQYC9Lgt1YglaQLIxNC+urziclwLCkl4o6XxdsLTDVQuoIOibJJx4wsEc7OpbLcQ
 nK5J/XZwYHyeqWGHDeMygyiYnX5Z0R5p2oqCi3aSusbl3u4EJU/G2eyhNkXPK60rrjbWcs0DFnqCG
 MVbjtPuUoF+eAUKiJ9Zh8PfCmD0gNVlpvugoaV4MnlPWQDiowEHHo1NTG7j1m5K7HxH/q7sNbkiml
 v3tG+FUE/7zwY5TgxoPA02uRe5YYPfun6EByYRGc+/MIKYEmfUGY4gaQyofafAm4ewPtiXwl6mBIv
 cdi2qpywA==;
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKF9-0000mk-AO
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:11:00 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so966351eds.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 02:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kSiMC23ISGGQqVJSQMfXoclzcfCXE9jKziQow8Aqu58=;
 b=bV5DgE/awiZCo70PJlZnyqIWgNigM3VnXItEoGqIjp2VwZAjg1Xtuv4hQpPEB0Jt6F
 Fq5BSo7B/rY4PMP/4Nwu27G69SQWZt+J6PAH2WXApCEy7ZPAb3tfWAIIP1vcjgWxUGlW
 eNQwjSrBPEfkUsBUD50OmCAvjzjhzwnTWIysIdTelYTQHmRPPTMScD6/trE7whDBf6HV
 G2WCWOFKxTlOoQwaIFS2Tr5i7U7WxlJCtJalVwHV9bXmlsNH/BVDB9FOg1yy7PB5xxRR
 H9Q5HcXpRB4X31oxQyBpicdAK4o0cRVRE8CevPbt2rFH5oT+MCW3xSEYts34UIcnBtz0
 GbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSiMC23ISGGQqVJSQMfXoclzcfCXE9jKziQow8Aqu58=;
 b=DYUOhi9c2BiBX8xFrNfJXzavNPdVCdCFFQziRtCVbo38yvrnGqk3gFfejvMQdQZNg8
 mlGFjmu2Kk1SmjBK+fmvBhqVmeFYpJ+rE5bnGY4UuYgN0OWW+cyK5A9NVb9sevnRaiyz
 6kxqJ2QPDG8a7fOR0p1iXsR9gm1lWA4IKLFE9tsOUUp82K8gkMQCsZtbrYun3Fv8ZJBX
 aanIrz87Sj4AdoRagRRuJp9eKslzg1icpX3+Pp0CeGEfAHPykp6nymZup/NJDorwqKOp
 6U1w8vXbqf8Wvuo/GveV/dWnNWRG5U7S9hLUCqcwKDMZcI2a+M1BE/AtSdLPiG+rd0U3
 yWuA==
X-Gm-Message-State: APjAAAUZUmW2GR/42xw0V5esB1xRMVwQ+TtRKLdVKAHSOzT/QVpb8uv0
 8xzTIF/dASmFDB0V7pk3Neot4mTmf3deghtPXrU=
X-Google-Smtp-Source: APXvYqx22fS+pUeLNsjnHvqrFs6EQGY5EsmKNI1CNKh15QT+gqZBMDoV2f19y7PER6ojlIisVn9BH1EpPtvyAEyWL8k=
X-Received: by 2002:a17:906:b7d8:: with SMTP id
 fy24mr2518380ejb.230.1562317736258; 
 Fri, 05 Jul 2019 02:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch> <20190624182614.GC5690@piout.net>
 <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
 <20190705044945.GA30115@lunn.ch>
In-Reply-To: <20190705044945.GA30115@lunn.ch>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 5 Jul 2019 12:08:45 +0300
Message-ID: <CA+h21hqU1H1PefBWKjnsmkMsLhx0p0HJTsp-UYrSgmVnsfqULA@mail.gmail.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
To: Andrew Lunn <andrew@lunn.ch>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, 5 Jul 2019 at 07:49, Andrew Lunn <andrew@lunn.ch> wrote:
>
> Hi Vladimir
>
> > - DSA is typically used for discrete switches, switchdev is typically
> > used for embedded ones.
>
> Typically DSA is for discrete switches, but not exclusively. The
> b53/SF2 is embedded in a number of Broadcom SoCs. So this is no
> different to Ocelot, except ARM vs MIPS. Also, i would disagree that
> switchdev is used for embedded ones. Mellonex devices are discrete, on
> a PCIe bus. I believe Netronome devices are also discrete PCIe
> devices. In fact, i think ocelot is the only embedded switchdev
> switch.
>
> So embedded vs discrete plays no role here at all.
>

drivers/staging/fsl-dpaa2/ethsw/ is another example of switchdev
driver for an embedded switch.
I would give it to you that the sample size is probably too small to
say 'typically', but my point was that in order to support cascaded
switches it makes more sense for those to be discrete.

> > - The D in DSA is for cascaded switches. Apart from the absence of
> > such a "Ocelot SoC" driver (which maybe can be written, I don't know),
> > I think the switching core itself has some fundamental limitations
> > that make a DSA implementation questionable:
>
> There is no requirement to implement D in DSA. In fact, only Marvell
> does. None of the other switches do. And you will also find that most
> boards with a Marvell switch use a single device. D in DSA is totally
> optional. In fact, DSA is built from the ground up that nearly
> everything is optional. Take a look at mv88e6060, as an example. It
> implements nearly nothing. It cannot even offload a bridge to the
> switch.
>

Let me see if I get your point.
The D is optional, and the S is optional. So what's left? :)
Also, there's a big difference between "the hardware can't do it" and
"the driver doesn't implement it". If I follow your argument, would
you write a DSA driver for a device that doesn't do L2 switching?
Along that same line, what benefit does the DSA model bring to a
switch that can't do cascading, compared to switchdev? I'm asking this
as a user, not as a developer.

> > So my conclusion is that DSA for Felix/Ocelot doesn't make a lot of
> > sense if the whole purpose is to hide the CPU-facing netdev.
>
> You actually convinced me the exact opposite. You described the
> headers which are needed to implement DSA. The switch sounds like it
> can do what DSA requires. So DSA is the correct model.
>
>      Andrew

Somebody actually asked, with the intention of building a board, if
it's possible to cascade the LS1028A embedded switch (Felix) with
discrete SJA1105 devices - Felix being at the top of the switch tree.
Does the DSA model support heterogeneous setups (parsing stacked
headers)? I can't tell if that's how EDSA tags work. With switchdev
for Felix there wouldn't be any problem - it just wouldn't be part of
the DSA tree and its own driver would remove its tags before DSA would
look at the rest.

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
