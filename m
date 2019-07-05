Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4E9609E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 18:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKZND19N3DCHbOhnSkviD1P4VuS18Dsv1V94ad5YLqo=; b=hGHTdn5jIHJEcx
	keIdwZ4vmmU1vda2xl3a2f5rv8a1ZELyjt3qjTLCo+24MrFuM+wVbsct9+hgyFSLTNERVxAynczKE
	PYyGC3VdN6rUbJXXxX+1ALWgTVmk1VAk5kw42A4Hh/3yJ43KkzLUEVdoMtsyZtZqcIjaSbeUoW6ZU
	mBfShgCIXXb3CAftQRCaewOhR/r7weEfGjBEecMHeu1eA6TqmUZRcfZ5Dr2MwmZqoUGEpmgkycnc4
	N+miCrrGqQTjfhR+w9w8bpNK6xNReCQ8/AI76va1mhuQnMuj733TXRmTnopONTVSRlxYiv0GQqwL7
	E5QBslnfe7TL7jo3nLZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQgO-0004Yb-UC; Fri, 05 Jul 2019 16:03:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQgF-0004WZ-SU
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 16:03:25 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so4813829pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 09:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Tpm/49CMge9GGSgW5OlmplqW6PGiorTO4o8V9fLZ7hE=;
 b=ZVbjMfv4tekvvXfIui1y1EotpSdh0IvEFyS/dHxd0l1Qx63+wLnBabygQzc0U1Fz/G
 ETJ0SI8RS/UaEKKH5+pk9PguG9pYwxhppYGHvKcEg7oGOa+CpxN1+IqYrmp22Xuu5l5T
 a4bcsWAW5Rf835AsHzlgv1qsWDBzKqRtKCSq9I9qOfL2dAVXpI13p0woJOdtjQkil6EA
 iske6VhLtgmOl6P2vDZHsWdbi23HmdoDu4y3h9JPIEu366d81joZFconmiLUUogsjrmN
 7PxDecJyrECO88iNV4/rPMFqHuK3++7udWJmlC7dTTQWPF6tiVCvKVcICeucbcD+cYjy
 vn6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Tpm/49CMge9GGSgW5OlmplqW6PGiorTO4o8V9fLZ7hE=;
 b=U/mQNZ87eRgssMvMA/gZWhUyKC91BhIsD+syBy/VCA0g5TNu3VviyfsJl5cbB7OU7k
 gByZovGF6geh/GmneTzaGlrQFfzHfmAx97ECUDf07Ln09q/HxoVSUCecGl5vwWb3LBa0
 sHchhQ0ZiJrliIk1uaoLXQ+ZNJo3LEa0TrA44rcVyWCdbEUj5A6UPdVw3csAbTv1h1qF
 LiNtm39WEAmkmznR5zsok4KI1c2YRW1qwYWVwjTYn74ZMlKwctH7YU05jIuvUdvQgyba
 wVg65GwJQMyZOkiCIKtu/46C09r0gtgB9TMPrJ+g4UFBPzsMTbXnjAFPEfv8fQF4lm7Z
 jRDg==
X-Gm-Message-State: APjAAAVRBgn80+d37dmcbjGAailup970a/jkdEVU/RhgBt1YeXVakwlZ
 IrpNY1pCzwD1QPXjPzw+/cZlqRnk
X-Google-Smtp-Source: APXvYqxGzCdLXelAJUEGE3ud5sNVpGihTJoNCAeK33dQhBfTKH/g3SgJIePXQFNOshDssjw1qneJBw==
X-Received: by 2002:a17:902:a714:: with SMTP id
 w20mr6485494plq.127.1562342599378; 
 Fri, 05 Jul 2019 09:03:19 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id b36sm22013156pjc.16.2019.07.05.09.03.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 09:03:18 -0700 (PDT)
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
To: Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch> <20190624182614.GC5690@piout.net>
 <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
 <20190705044945.GA30115@lunn.ch>
 <CA+h21hqU1H1PefBWKjnsmkMsLhx0p0HJTsp-UYrSgmVnsfqULA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <c60df66a-b3c9-1445-36c6-cad7c6b75550@gmail.com>
Date: Fri, 5 Jul 2019 09:03:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CA+h21hqU1H1PefBWKjnsmkMsLhx0p0HJTsp-UYrSgmVnsfqULA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_090323_933810_D816773C 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On 7/5/2019 2:08 AM, Vladimir Oltean wrote:
> Hi Andrew,
> 
> On Fri, 5 Jul 2019 at 07:49, Andrew Lunn <andrew@lunn.ch> wrote:
>>
>> Hi Vladimir
>>
>>> - DSA is typically used for discrete switches, switchdev is typically
>>> used for embedded ones.
>>
>> Typically DSA is for discrete switches, but not exclusively. The
>> b53/SF2 is embedded in a number of Broadcom SoCs. So this is no
>> different to Ocelot, except ARM vs MIPS. Also, i would disagree that
>> switchdev is used for embedded ones. Mellonex devices are discrete, on
>> a PCIe bus. I believe Netronome devices are also discrete PCIe
>> devices. In fact, i think ocelot is the only embedded switchdev
>> switch.
>>
>> So embedded vs discrete plays no role here at all.
>>
> 
> drivers/staging/fsl-dpaa2/ethsw/ is another example of switchdev
> driver for an embedded switch.
> I would give it to you that the sample size is probably too small to
> say 'typically', but my point was that in order to support cascaded
> switches it makes more sense for those to be discrete.
> 
>>> - The D in DSA is for cascaded switches. Apart from the absence of
>>> such a "Ocelot SoC" driver (which maybe can be written, I don't know),
>>> I think the switching core itself has some fundamental limitations
>>> that make a DSA implementation questionable:
>>
>> There is no requirement to implement D in DSA. In fact, only Marvell
>> does. None of the other switches do. And you will also find that most
>> boards with a Marvell switch use a single device. D in DSA is totally
>> optional. In fact, DSA is built from the ground up that nearly
>> everything is optional. Take a look at mv88e6060, as an example. It
>> implements nearly nothing. It cannot even offload a bridge to the
>> switch.
>>
> 
> Let me see if I get your point.
> The D is optional, and the S is optional. So what's left? :)
> Also, there's a big difference between "the hardware can't do it" and
> "the driver doesn't implement it". If I follow your argument, would
> you write a DSA driver for a device that doesn't do L2 switching?
> Along that same line, what benefit does the DSA model bring to a
> switch that can't do cascading, compared to switchdev? I'm asking this
> as a user, not as a developer.

As an user, I don't think there are compelling arguments to either
switchdev or DSA because the end result is the same: network devices
that can offload "stuff". As a developer though, there is much less code
to write with DSA than with switchdev to get your HW live.

> 
>>> So my conclusion is that DSA for Felix/Ocelot doesn't make a lot of
>>> sense if the whole purpose is to hide the CPU-facing netdev.
>>
>> You actually convinced me the exact opposite. You described the
>> headers which are needed to implement DSA. The switch sounds like it
>> can do what DSA requires. So DSA is the correct model.
>>
>>      Andrew
> 
> Somebody actually asked, with the intention of building a board, if
> it's possible to cascade the LS1028A embedded switch (Felix) with
> discrete SJA1105 devices - Felix being at the top of the switch tree.
> Does the DSA model support heterogeneous setups (parsing stacked
> headers)? I can't tell if that's how EDSA tags work. With switchdev
> for Felix there wouldn't be any problem - it just wouldn't be part of
> the DSA tree and its own driver would remove its tags before DSA would
> look at the rest.

DSA not does not make any particular assumptions about how the stacking
is done actually because each slave network device is expected to
provided standard Ethernet frames to the network stack. How you get to
that point is entirely specific to what the hardware can do.

You do what Andrew described about one of my setup (bcm_sf2 w/ tagging
enabled and b53 w/o tagging, see more below why [1]]) and both being
discrete switch trees, with the master netdev of the b53 being a slave
netdev provided by bcm_sf2. If your tagging protocol supports it you can
make them part of the same DSA switch tree and just have them have
different switch identifiers, that is what Marvell switches do and it
works just great. In your case, I suppose you could even use double VLAN
tagging to get such cascading to work, that would limit you to a two
level of cascading, unless you invent something custom.

[1]: The original Broadcom tag format introduced with BCM5325/5365 did
support cascading in the same way that Marvell did where a switch
identifier can be added in addition to a port number within the tag. The
newest Broadcom tag that was introduced with 5395 and newer dropped
support for the switch identifier and the switch will "terminate" the
first (from start of Ethernet frame) tag that it receives. This is the
reason why we need to disable tagging on the outermost B53 device that
we are connected to. This means those network devices are mainly
configuration endpoints and not passing data (DSA_TAG_PROTO_NONE),
though we could use DSA_TAG_PROTO_8021Q and resolve that now.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
