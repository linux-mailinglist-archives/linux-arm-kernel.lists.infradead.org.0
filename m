Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D975E7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZSNkR9u4VH/B+y/c3XAOSZ2SbiUoGq+tDUb+0N/uG8=; b=DlZi4Mg7k17/fA
	nOGIS62NZRR6N6HRiWbRgv3Lm/WIfW7DCXa5y4mnwIYDyWcyVginFxuudUE6hRVJ5wzkh27eceMwr
	MygbB+Hemko1V1uVxiS/vxb7ULSvZf0TYk4mfVzoRcxyQUzDvYowBu/TdtA2pT9Gy/F1zr+aC8up0
	KoXKnTOKQT3Ie2NvFqmynBt4oJsU9QisUDzW1852tN8NImP6vJbyVLNQ/VTdBW7vrD/ZfmgbHuD+o
	kmCQsn4MhTDhusbBnIUFB5t55KdB277kqkidErzdEi07ZW4Q/LvoZzLKi4AnAeDJxBM2LFr33IDpi
	AawmovVxWS/15kTsFvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqsyd-0003tw-BU; Fri, 26 Jul 2019 05:41:11 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxb-0002x3-TK
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E97594043;
 Fri, 26 Jul 2019 01:40:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=YmS6AsD+8CfqKBI7XO37yB9Lqp
 cZsRZIp6cXhLrnCAQ=; b=GO+MZCCs151Sya5IlFCRgSqjgopJaNvo+2TLp+7e6X
 JGiOodAVbNOf2PEqYxOV+3zZ1uPvz9hXsigCtIZqmFSOWFz6hvycSPs4hLkUisxh
 A0KY7HE12NdClt4IlqianUaPtZhgQXpohciMYjwjb+GmHh3IojkHdS0OZOqmKsKL
 TkwDwY5rsbDT0oPmGfiO+ghu1ltEVFxP6VfDf2W6Wz1shXGVpB3Uk9sIfEx3GfWQ
 S2G5V3uKoNirAwbT0OojSvuck1nLQ8bnuSz12NggOcTMDuA7jZ4SUxviMsAtYVei
 9OSwI8VS47fpU28hYPB4HNzZUcc6wkO1iN4BCn9ftoxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=YmS6AsD+8CfqKBI7X
 O37yB9LqpcZsRZIp6cXhLrnCAQ=; b=GpbeM8O5L9VE83JmuX0dO0mIycwgG8+Zk
 528mLzTW9p4b1O4QpN1MLKBBOgPz6JtsXyCd6iPR+dgT3zVDDLQ6L+rBeFFsFMyC
 MR9bk+cb/ooiI4UHm3rGbeZraT1m86+CxvjXltEQTeeWppus2rnNBzebIeSk0+us
 iZmsMwpf0bKank7PUl5sNmBaF6Nu381uXAXFoq6EoXM5rsk4RKsvUPwJIThJ7cwn
 jI1/WbUuCuHXM9mBFoJyU2h2iPEUKwwp/Shnwlm1xODyBryDngT9W8IxEOMd9N2g
 H21k/gLQDWdXqCMxTkA7Wms3Bp22cuORWyypb14DM7XFDQ57GLHIw==
X-ME-Sender: <xms:MZI6XeTjrawMfiW__ZVl_CUeDGfyAjZVa0RN298RIRLb3nAIrDHlGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:MZI6XYDVHTC8q_duErk6ENo2Ua6qzUhW9hjnwvQOTe3VkYEbxfWh1w>
 <xmx:MZI6XW3UL97gNny1jN93y5gF4b7AHme3XF7QG9huiDjooZ0B7OVKKA>
 <xmx:MZI6XeVpsvwDq5Rs5jR7-0-zCy092BuDcycC-LP6gEBJy02pAfFE6Q>
 <xmx:M5I6XZ0MvTH8dhaIYNBomhLPRFbPMO0Bapa7lT9D6D2MGGodHXLmzQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2A89F380079;
 Fri, 26 Jul 2019 01:39:53 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC-ish PATCH 00/17] Clean up ASPEED devicetree warnings
Date: Fri, 26 Jul 2019 15:09:42 +0930
Message-Id: <20190726053959.2003-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224008_199196_CCEC755F 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, linus.walleij@linaro.org, arnd@arndb.de,
 joel@jms.id.au, devicetree@vger.kernel.org, xow@google.com, minyard@acm.org,
 chen.kenyy@inventec.com, anoo@us.ibm.com, linux-gpio@vger.kernel.org,
 robh+dt@kernel.org, yang.brianc.w@inventec.com,
 openipmi-developer@lists.sourceforge.net, a.filippov@yadro.com,
 linux-arm-kernel@lists.infradead.org, Andrew Jeffery <andrew@aj.id.au>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, yao.yuan@linaro.org,
 venture@google.com, wangzqbj@inspur.com, taoren@fb.com, sschaeck@cisco.com,
 haiyue.wang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The aim of this series is to minimise/eliminate all the warnings from the
ASPEED devicetrees. It mostly achieves its goal, as outlined below.

Using `aspeed_g5_defconfig` we started with the follow warning count:

    $ make dtbs 2>&1 >/dev/null | wc -l
    218

and after the full series is applied we have:

    $ make dtbs 2>&1 >/dev/null | wc -l
    2

for a 100x reduction.

Getting there though isn't without some potential controversy, which I've saved
for the last half of the series. The following patches I think are in pretty
good shape:

  ARM: dts: aspeed-g5: Move EDAC node to APB
  ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
  ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
  ARM: dts: vesnin: Add unit address for memory node
  ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
  ARM: dts: swift: Cleanup gpio-keys-polled properties
  ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
  ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
  ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes

With these patches applied we get to:

    $ make dtbs 2>&1 >/dev/null | wc -l
    144

So they make a dent, but fail to clean up the bulk of the issues. From here
I've mixed in some binding and driver changes with subsequent updates to the
devicetrees:

  dt-bindings: pinctrl: aspeed: Add reg property as a hint
  dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
  ARM: dts: aspeed: Add reg hints to syscon children
  dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
  ipmi: kcs: Finish configuring ASPEED KCS device before enable
  ipmi: kcs: aspeed: Implement v2 bindings
  ARM: dts: aspeed-g5: Change KCS nodes to v2 binding
  ARM: dts: aspeed-g5: Sort LPC child nodes by unit address

By `dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS` the warnings are
reduced to:

    $ make dtbs 2>&1 >/dev/null | wc -l
    125

The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
the remaining warnings (which we can't feasibly remove), but doing so forces
code changes (which I'd avoided up until this point).

Reflecting broadly on the fixes, I think I've made a mistake way back by using
syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
devicetree. This series cleans up what's currently there, but I have half a
mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
driver implementation that uses `platform_device_register_full()` or similar to
deal with the mess.

Rob - I'm looking for your thoughts here and on the series, I've never felt
entirely comfortable with what I cooked up. Your advice would be appreciated.

Anyway, everyone, please let me know your thoughts on the bits relevant to you.
If we can agree on a way forward I'll split up the series for subsequent
submissions so it isn't such a spam-fest.

Cheers,

Andrew

Andrew Jeffery (17):
  ARM: dts: aspeed-g5: Move EDAC node to APB
  ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
  ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
  ARM: dts: vesnin: Add unit address for memory node
  ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
  ARM: dts: swift: Cleanup gpio-keys-polled properties
  ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
  ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
  ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes
  dt-bindings: pinctrl: aspeed: Add reg property as a hint
  dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
  ARM: dts: aspeed: Add reg hints to syscon children
  dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
  ipmi: kcs: Finish configuring ASPEED KCS device before enable
  ipmi: kcs: aspeed: Implement v2 bindings
  ARM: dts: aspeed-g5: Change KCS nodes to v2 binding
  ARM: dts: aspeed-g5: Sort LPC child nodes by unit address

 .../bindings/ipmi/aspeed-kcs-bmc.txt          |  20 ++-
 .../bindings/misc/aspeed-p2a-ctrl.txt         |   1 +
 .../pinctrl/aspeed,ast2400-pinctrl.yaml       |   3 +
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       |   3 +
 .../dts/aspeed-bmc-arm-centriq2400-rep.dts    |   4 -
 .../aspeed-bmc-arm-stardragon4800-rep2.dts    |   4 -
 arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts |   4 -
 .../arm/boot/dts/aspeed-bmc-facebook-yamp.dts |   4 -
 .../boot/dts/aspeed-bmc-inspur-fp5280g2.dts   |   6 -
 .../arm/boot/dts/aspeed-bmc-intel-s2600wf.dts |   4 -
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts  |   4 -
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts  |   4 -
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts    |   6 -
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts   |   2 +-
 .../boot/dts/aspeed-bmc-opp-witherspoon.dts   |   6 -
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts    |   2 -
 arch/arm/boot/dts/aspeed-g4.dtsi              |  21 ++-
 arch/arm/boot/dts/aspeed-g5.dtsi              |  73 ++++----
 arch/arm/boot/dts/ibm-power9-dual.dtsi        |   4 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 163 ++++++++++++++----
 20 files changed, 205 insertions(+), 133 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
