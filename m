Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC5B64816
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hjet3O6EaGzlT78Kl06BQVdP55B5US0n7MibXhBtIyg=; b=UqhFDxgH3BkXce
	0oUpZTsn5bBDEg+AFU3NI4qYbUcgEBLZ7JxeNW5vEl/kVP1+DeAQS1SRXImvVXkdbSjRPMBwH0fx5
	vtXr1jEwZIduMcTBW6V+ziHdJHvGByrMOyS/Es7dq1Hitdot5u+cZZsFds1Jv4OHCk8+h+srQqIQX
	RZNoJBVBrytg15sb6vsrKZa6Lud4anMVCbdUT/PTVJ4ywpwFK99Whe3jKVV4S87BEstx24jkHJKyJ
	kYZEAoUZvZ1+zCDJIVLouxf72sGOeyglVdsAlYHOtNQeeqSn79TUWUr8loEI4WWGgcu/Wnb86Osup
	dpVnkg53BMiKDwCvO3uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDOt-0001el-8j; Wed, 10 Jul 2019 14:16:51 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDOY-0001bA-04
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:16:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6D3B4160C;
 Wed, 10 Jul 2019 10:16:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:16:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=pU/ZJD/W/LSUZ7docvxRW9NDp5
 g+z+9zh0aNagTZBXU=; b=D4kYOq39R5yaReEh7G3luGqW0UfZE1/qxpun4Df9zW
 XJ8vi83u3o4FLc10yVRjN+VlUylh1w1Ac8Aq2jkT9vNeCtkrEAJpTuowmZ+yIIIg
 RyzNNtA0VG2pGbXG36JelnF/I856XSBsG8k+LlTkvmkShNkODlK9uCE+hqJetJmQ
 GIcsjRN4KFRhk//k/A/92jU/Azev63qGN2INs4ThIg6u8Jb+RW8ubUkiqLCLdi36
 QUgIknlL0yiYToxpmes27ZNRJi0YHQNNugln4XE0ym1ECsY/TJTy21tUz0nXkmk6
 3ZYO8vhljwC0DoSquMzybm1hRaTkKJnx2X1g74tasypg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=pU/ZJD/W/LSUZ7doc
 vxRW9NDp5g+z+9zh0aNagTZBXU=; b=zr6KNcoWBQzAjCHN6n23n3x+KoCEcsfVm
 ydGRWqXpXdOwAHa4yX+f2V1y/fAmEtY5bd23ZY8pLs+wBfTlKEKzKXpAYqkScBqH
 4RPiOocJ2C0TRfTfzU6ChCQ/hHA60ZdkUDLHz1WJONm2E0CVCoH7zPFTgCbHAtBd
 QNxc2PSxZGU2ITJGPKa2AA4bS+VaiEKXJLRuqQV3b0msjvdiWtJ3vRu8eIwsjH2b
 Bjc5GKCunyIvHW/LEFIJqloJx1901e0xnqf4tgZ5DDX6ou7Z6dwychT8Tdn77eET
 KLSSNy9Q4rfJTX/mPOr6Oiii60WDSddjTjw0d7T20YW3fgYMMp30w==
X-ME-Sender: <xms:O_MlXcjzK-xLWk4cI7qJv9Qw34H1oPMYwl9db4l3SnZa0xrdVyEHpA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:O_MlXYzj6lwL8H5aVd3eLWJCL8CLQ22NXh0Quhg1AXqkNYcMEOXNbw>
 <xmx:O_MlXT2X8Z_GnJuzF12_9IifdL9fmLyPvmZzpNWemX7cSpb8o7Vq7g>
 <xmx:O_MlXclJBRzqINO-vg202mwBT4QvqGAXLcWoaDCsaQ74b2HCPk2NTw>
 <xmx:PPMlXYR0R3tjk-ZoC-ip6q7Tlxv83HZhK2kcnsRFr_gT5A5dqVprSQ>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6E2FC380088;
 Wed, 10 Jul 2019 10:16:22 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH 0/2] mmc: Add support for the ASPEED SD controller
Date: Wed, 10 Jul 2019 23:46:09 +0930
Message-Id: <20190710141611.21159-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071630_148010_687EA281 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce devicetree bindings and a driver for the ASPEED SD
controller. Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: mmc: Document Aspeed SD controller
  mmc: Add support for the ASPEED SD controller

 .../bindings/mmc/sdhci-of-aspeed.yaml         |  91 ++++++
 drivers/mmc/host/Kconfig                      |  12 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c            | 307 ++++++++++++++++++
 4 files changed, 411 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
