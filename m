Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76355A3176
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0tsXnlZsv8QWWh6lTjRDY+vFsMRhnMoZnFml0x2E7sU=; b=o5afXoFQc4Jj6O
	w4MqWWu6kFgcpN1n4flSDzKMRxcrgNAuRXFnFSaorVIW+1tgrIcxMp06DiFP3eDZ35zffXfWk/gT+
	JnqExTIO9wNSs5EdQ1elGzqFb61gjGiK45KcElyBHiqfeAG43k6m1ndQxNVM4pq2qAHogWJwfxYwp
	a+kaKxVPfG1H1DA64dl80cPFqhABSsBh0ghnIZ+SrAzB7iN5wOeN7tm2WRWX8lhmXyg4Kj8Of2yQI
	SAeHR0foUNoBhC39TmLC2ZL3zSqZQkECf7vDd4TSEcqMRVRee6ZcRD/unN87nUAVSm/meP4w7qdUP
	Eqf1OmH0RMoWi9zpTTyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bcX-0007q8-36; Fri, 30 Aug 2019 07:46:57 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bcK-0007oG-Er
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:46:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1AFE3210F2;
 Fri, 30 Aug 2019 03:46:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 30 Aug 2019 03:46:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=wOiPzLG3FhxjtzR8rsBkC79oy1
 3YcSX1rCw5Ip7LvOk=; b=QOcqzeZAvNkdX0XrmuI/41pdvneLhtVk+adFkiK8Jd
 xkjTDB/Z9UdtH6CVT9XFRrU/m178LYhbaH2qF6bmU7Lggshign+2mhLdsXyEWE27
 gpaAS4ua+CTurEp0IYTrFRUdowCdzsLTEIfa1fz8cK+Pmo2p5KECYYOfmMDErOsI
 Ltj1V/zoQw8Xk0PMhZtkZs2IP24Ror++YkMtw957Horncu1zNHSvL+WT3xrx9EQV
 2uznitynpymlwI2uLLx4IIfDCHUv6QEYWOexettkzzJi3I4yx02lTJan4o6T5Qmy
 XNPnVssx/tyE4D4Bxrc0hTculT/caS1QFOApUkJN0xxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=wOiPzLG3FhxjtzR8r
 sBkC79oy13YcSX1rCw5Ip7LvOk=; b=1H1dbsIzWAOdpx7lcBsSNh8xQqir/bqpa
 RoEpc/IGrrncVUYSadJU7HPmajDudhVbyVrpigJNt5KyfoDRBpwBZNj0FdipJ4V3
 FVs2kG46zuICyI10xicke0dyWyXq0HlIsppHg3CEW4cJl/Q5RbY4tVmpgfOenWr+
 DgHPXTROLbPLr95ZJ0bl7qvSpK6pomU4Atc2eNVhUEZuC4TewLA+WEdJcnuT9qpp
 +zl+p5xRnTT/+o3K0syw2rE6wfa1oIGs9OaDbrFuUw4CKnR/vXH2h2/kqnMKYuW5
 gtUiMsmM7CHNp4REMN7vnO2cOV+pEIze9Mpzdpyb/WlQzMG85cdtQ==
X-ME-Sender: <xms:WtRoXRJpycpv8bq9ZYWroPC8dbNZoOC0f2YgaZHEgarQTFwEw91DuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeifedguddvudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeptd
X-ME-Proxy: <xmx:WtRoXcIydX4ajN2Gjn9zQkLTF4IiE2BLocK07jfkTD3KszNDJHPsDQ>
 <xmx:WtRoXWXWcxCsps0CZuPIVgBiChwt0G4adj1xuuBksRthQwbU6ee2ug>
 <xmx:WtRoXcndN8ysDArbdYrXJJaDuFj5qQdg9N5gmHgcQEPxfIW5VKsTsA>
 <xmx:XtRoXX_-l60JPiQyz7jdX98IQDRAUYIPlvirQihJA0cHDfMTcS3_tw>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id D8181D60057;
 Fri, 30 Aug 2019 03:46:30 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH 0/2] mmc: sdhci-of-aspeed: Fixes for AST2600 eMMC support
Date: Fri, 30 Aug 2019 17:16:42 +0930
Message-Id: <20190830074644.10936-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_004644_641528_39A2989C 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ulf.hansson@linaro.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The ASPEED SDHCI driver patches sent previously were based on testing on the
AST2500. The SD controllers in the 2500 and 2600 had the same register layout
according to the documentation, so we added the necessary devicetree compatible
string at the same time.

Now that I've got access to 2600 hardware with an eMMC chip I have a couple of
patches that are fixes enabling support for it. I don't think the first patch
is too controversial - in some cases we weren't ensuring the clock was enabled
before returning from the set_clock() callback.

I'm a bit unsure about the second patch though which enables use of
max-frequency in the devicetree, it feels a bit hacky so I'm looking for any
suggestions on the approach.

Please review!

Andrew

Andrew Jeffery (2):
  mmc: sdhci-of-aspeed: Uphold clocks-on post-condition of set_clock()
  mmc: sdhci-of-aspeed: Allow max-frequency limitation of SDCLK

 drivers/mmc/host/sdhci-of-aspeed.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
