Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0810FD0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7U29f9I//5SwEyzEHCUCcfY5Mi1KJE51hN2SYAy6EU=; b=AxaJ+UyyEYa5vu
	xljRRyTSnryzrCjpYaH7RtPhWAKjyPZa4zi0pgOZbyvaXDinHHwolbh+TeWLISFg4kj8HSnCe+/27
	GPF9YeE5HXlq4Xdk1DCOC6P+OpMCgY903F8YX4FMceSd3vzQ8ooOTble9Cb2LbyfD/x2FKSbphPLg
	dlHdFhCylPrDqjtf9hItXXtvPXe67gyvnVlRYPnZx234F/aGYABNGTAFD1FUElroXjm0WoKxY8JLJ
	67ZF0KCuEuRANRl01iscqUmZ+j9OBsga/6IctU175KO7EOmwNcKdsSXXS/yTTLx6XII2ecsWQInfo
	q4nR0gQDuXghHK491yIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6ti-0000j9-7Y; Tue, 03 Dec 2019 12:03:18 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tH-0000YC-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:02:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DD154D04;
 Tue,  3 Dec 2019 07:02:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:02:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=ztq7FLHlrns5zu/XcOJ2JlDLPY
 qZhl4Q876ZoCQ+iMU=; b=mvRcSmjJQh0CRMvAcEkW9kerL29X7umeGBKg/+gbPu
 2LoTDXE79vt69JFJbwznqTXvEc7fsEWMmtQAS4KV1ME094Z+gQoBy4oBJ76Qdd7l
 RpzIrgWbLI8ogu6UqBDkAoOqt55DkxOvI2blo8WIWT20GfEsWJ9UopeMd6WaOhG2
 bpbRoiDd2Fay8bbe7wEztgU6z5JIYOC6KRg+7IkfXxN4mfW/ku0LjgtrwfI/KqfK
 Xz4w2IDJa+PPVv4DUFycF7+2HXRR90+/HvRf0xPR1PasF9ypO6ZV8Sf4skCCGwqq
 J2kjnNTyYwjAuO0MMtUKSbtQ9oB0n7aRuN+2+uR1pkDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ztq7FLHlrns5zu/Xc
 OJ2JlDLPYqZhl4Q876ZoCQ+iMU=; b=BKeODkHb4W0FDe04Sxq6J57Op9FbaHVGp
 3FAQX6K5SH+qqo7dNp/xenvGryg8yB7isLaaPXJczEET9KJejDdGyy8qBWCCZNQU
 0jXEBswKRW2Ta41C6Y48NiwyTuULRbfTkOJf0Su/F4/vM1e0eNd8iK+y2GtAhtag
 Jj+grfGA1KJBvUVtXmFEi0PoR+TnA9u8uq9gsaO7w4PI6098oLwpnzkYhPyW00jk
 4WBEP3U55pEbo+6UbQy84nlY+7MleTuSgsK4tTJjGY2PdYTmYsuLGmyOhWc+uxLN
 /Uh2JioCG1Dv5puImHWf+sgNRsezI1ayvQMoaPWyYaeLdnBgkXmdw==
X-ME-Sender: <xms:407mXWaFPcTpZik5e3BkQWVrt8snnAJJrRNX-g_hggdEG8OZV3dxeQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddukedrvd
 duuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:407mXaXuS35u7D7UWegYnTOzGj9sNKYYUmSsryisssIRuo7Ufnrs1g>
 <xmx:407mXRTghfOJ0UqP0hKAv_PzLbm2Dz4kcgpn6weMCcdgfoW9TTdqeA>
 <xmx:407mXXEqRI_xwvbFpt3JiRbJqP_dtAab5HKNdXWH_zcWMwy4CQfMkw>
 <xmx:5U7mXe_N_BAFOfuorW227HAYtguJjMdZltqXMAzzltXw98SN-bgYbw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id BF15730600AA;
 Tue,  3 Dec 2019 07:02:36 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 00/14] ARM: dts: aspeed: Cleanup dtc warnings
Date: Tue,  3 Dec 2019 22:34:01 +1030
Message-Id: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040251_809865_5C1AF464 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, xow@google.com,
 chen.kenyy@inventec.com, gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 anoo@us.ibm.com, linux-kernel@vger.kernel.org, yao.yuan@linaro.org,
 a.filippov@yadro.com, robh+dt@kernel.org, yang.brianc.w@inventec.com,
 joel@jms.id.au, taoren@fb.com, venture@google.com, sschaeck@cisco.com,
 linux-arm-kernel@lists.infradead.org, wangzqbj@inspur.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series is based on an RFC-ish series I sent quite some time ago to which I
have only just been able to circle back. The previous discussion can be found
here:

https://lore.kernel.org/lkml/20190726053959.2003-1-andrew@aj.id.au/

I've split, shuffled and rebased the series a little, with at least one extra
cleanup for the g6 dtsi. This series is just the devicetree changes, the IPMI
KCS changes will be posted separately shortly.

Combined with the KCS changes we achieve similar stats to the RFC series,
reducing 264 warnings to 6.

I've added each patches' tags from last time, but please glance over them
again.

Cheers,

Andrew

Andrew Jeffery (14):
  dt-bindings: pinctrl: aspeed: Add reg property as a hint
  dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
  ARM: dts: aspeed-g5: Move EDAC node to APB
  ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
  ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
  ARM: dts: vesnin: Add unit address for memory node
  ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
  ARM: dts: swift: Cleanup gpio-keys-polled properties
  ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
  ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
  ARM: dts: aspeed: Add reg hints to syscon children
  ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
  ARM: dts: aspeed-g6: Cleanup watchdog unit address
  ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes

 Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt            |  1 +
 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml |  3 +++
 Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml |  3 +++
 arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts                  |  4 ----
 arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts              |  4 ----
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts                      | 11 +++++++----
 arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts                        |  4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts                          |  4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts                          |  4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts                            |  6 ------
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts                           |  2 +-
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts                      |  6 ------
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts                            |  2 --
 arch/arm/boot/dts/aspeed-g4.dtsi                                      | 21 ++++++++++++---------
 arch/arm/boot/dts/aspeed-g5.dtsi                                      | 49 ++++++++++++++++++++++++++-----------------------
 arch/arm/boot/dts/aspeed-g6.dtsi                                      |  2 +-
 arch/arm/boot/dts/ibm-power9-dual.dtsi                                |  4 ++--
 17 files changed, 56 insertions(+), 74 deletions(-)

base-commit: 3eca037f2dfce07a31da0a837ac35d6d846614b0
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
