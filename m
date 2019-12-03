Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15B710FDC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+KImYHFYy9e2Js4wAIRVyQQhX6EN4YjgYpT2clyTHg=; b=NAPBelOCDh8SZz
	65CKxN3jJFrqSILAr0dZlhvfHvqbMuJqWW0dLlrKXKfKg1J9CSl2pMink1m4qi4JEWwxKaffsn5kM
	c8Hj3LoukePCy4blCM2LYy6peEcgUsO5M/ICy0VcB2fVtG7EjrREJX2I+D2oMR51OBYY/9ca0QeOb
	iwFuho3Z1tnTfg7LaasM1X4MR5FiKnzBVLIrILi06552GzNBYUm+/b1GWUhJvDmAxee8iHz+X/mqI
	uEUQGXRfzyu305YFhlg2K/QM8sHxVLF9e18VFZvZgZaloZrw6TBjspfyxOnjopLwpWNHHIRdxkTia
	IhlV3t1gQ6AIcCM/4hyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7QE-0004cP-IS; Tue, 03 Dec 2019 12:36:54 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Q5-0004bv-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:36:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9E1836C3C;
 Tue,  3 Dec 2019 07:36:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=SOZUq2rJD0QJ8mJKAc7oPLyCtR
 nzRzApgEKAYYPVX5g=; b=GaEpkJwswsN6B+BGMOIDa5Y6tqbkL7hfWZU0irBbo6
 KG7zMnNrZiKbtXUzRio3ugQJH0Mc8PtKOBg9L2Q8MTDBI94egRoQJYQRgWAfZI38
 QPm94qCHFqNHdh1ijPsAqPMmsD4PGZDea6kbqHqURcKfojeuhpG1DTe452JoCzwd
 UIJZy5ugYhfrRJPnGr5Y3cuA5vZnKUFhps63+HxcNlgXOL6uvUfHK2ML1bPKJq9D
 AZ7HmMaVQypnu6Nno37etiafDus0S/3FMC9WFiixik3hm27Yp5EYU6RP27LaKEGy
 5mC3MX8p5f3AzN1/SktTJpkTlS4x84qn1DoZn3/7Cmlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=SOZUq2rJD0QJ8mJKA
 c7oPLyCtRnzRzApgEKAYYPVX5g=; b=xFPyLaDoMhBRQSvKGkUUA6EiRHXRfh3Zj
 zVnkyYOFS87Q8NUOnirCTnkRn0DCd+vuF2AZO+EncBWI6h/rTVkanfFUQoO9ur2f
 nvLEuOSahNShxbVLUTHd6GD/k58prnFj4VmjtZlLA1HlPOSsSHZ/Qz75TKjuwT0E
 GRHVTMecdCCO6uXxA+u0912m4q9IpCysrr6wC22UOjOQ8WD3EG0bjEN7dfROSll6
 yoGA2e9mDcjOuzpLhMlsEXI58WTGN+ChMX5BXIEY9ybgOJRZTne7oFqtXGvq24W3
 sWejt/OyRnMh3a9NBeyn8wkgxJh40K6bBMVAhx34+mraxSZ0TXVFQ==
X-ME-Sender: <xms:2lbmXS5ZXg7wiN3SZzGBlY9uTCy7VzlWXnir2E-XQkH4LJAtT6DCWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddukedrvd
 duuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:2lbmXQAgd4zEB8DN8VWm1DnXLPqX67BYXO7D7CcrvPVy3l1ZKI5LLA>
 <xmx:2lbmXdBfqZgbkxOogcYRNi8dXTx-6YZg5nleIKJN72ruCi4Tm7Hpfw>
 <xmx:2lbmXRYv-WHhjjXQRna92ewaKh7nE9_y4RRpU1NJjpVLi-CdTw0g8Q>
 <xmx:3FbmXZ0J4rAA31er-T2wgfz3nONrmvnaA0EuEKbC8cdyf1hiuyqxmw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E6363060158;
 Tue,  3 Dec 2019 07:36:37 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: [PATCH 0/3] ipmi: kcs-bmc: Rework bindings to clean up DT warnings
Date: Tue,  3 Dec 2019 23:08:22 +1030
Message-Id: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043645_772318_31563021 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is a short series reworking the devicetree binding and driver for the
ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
changes enable removal of more than 100 lines of warning output from dtc.

These changes are extracted from an RFC series posted previously, which can be
found here:

https://lore.kernel.org/lkml/20190726053959.2003-1-andrew@aj.id.au/

Haiyue has already reviewed the driver patches in that thread so the re-posting
carries his tags. Since the original series the patches have been rebased on
top of char-misc/master with no further changes. However, please take a look to
make sure the patches are still sane.

Cheers,

Andrew

Andrew Jeffery (3):
  dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
  ipmi: kcs: Finish configuring ASPEED KCS device before enable
  ipmi: kcs: aspeed: Implement v2 bindings

 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt |  20 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c                        | 151 +++++--
 2 files changed, 139 insertions(+), 32 deletions(-)

base-commit: 937d6eefc716a9071f0e3bada19200de1bb9d048
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
