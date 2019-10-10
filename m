Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1289D1E29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTGNUlxUxPUPenEAKXkmRC36DauDe3u/DtFis/gaEp8=; b=eBEr0dWLgBXuHs
	mx/4/RrVRqlp2FKhZuoIQEUrgcIa4Pi5yiWG486kziH7a0EeJleXKHDtaj8hH//oE00+AhL4FB9iV
	hNjQam8BBEkcniOh2CBqHBN+S22ygOQfA1ij68WZUkC/37wJWKZOAeKJsa+BB793fQAt/mXZprGMo
	hLDs+EjSBU+3K+8fEe/J7wlEWC/LJjN5Oj3kjFef0BaaVev8MnAf+DZ36ybPE4qrshFpHUW0qSBG7
	p6UKw8hO8OwCEY4dnDsxfz4JZ+DZNdnNhwpo6BBitRyiaMKUbRYLQUgdK4n6CTODdFk5MhpM63Ifw
	oUxFS7XdeAPGqBscQGmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINqe-0006FR-Nf; Thu, 10 Oct 2019 02:06:36 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINq2-000642-Cq
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7C66B21E29;
 Wed,  9 Oct 2019 22:05:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:05:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=j0nJ6T39mBn7jdktZT6Zi6X9sd
 fIshRqVoX28oscb1o=; b=Grg3rMCD3oBEZNUMpdLMPocNMItAkpBFGgUsksSuhr
 ur9gtvrXrNA5jSZrwrqaZOdUnenU8g6XcXo2YPeeH2FWM7uhkf7BTK+EAbLo+DbF
 RNIBDr7kZJl58FEd5i6gl9wLDBztZY+mwP/MHZgZ53S30kalDB6HKKvkDljeoGu0
 ESzuUX0F8Ihxg3L/NnwfCshobLMTVw0CnQWmtBIFsBWCtKPhlYxSBCk4N7Kj7/42
 Zjqsa41Tzsk6McYk5pCOo5Dbl17LmHGpXAirYM5WpfYorShOcwtQgrw7Jk7gBcza
 pqHwWLx0lxGzbgaF7+RHPFonEsv8bjCrGs3GRYkpm0Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=j0nJ6T39mBn7jdktZ
 T6Zi6X9sdfIshRqVoX28oscb1o=; b=GvX3d3NO4LpcMPH3fnKpwpu3sSnikOWpy
 BSzMdsbTXEu33S9MIV0RGsTRxod01XuiuhQeUq0BsfbDJLLfs2bjKRnFc+tro2zP
 sLelAZj6Yx+UdwZ53vLrqAhatmrs96aRJk+AfJ36dAmujrQtHvFJoUIRrM9v7Y+W
 O/bS0EQOgcyXBT9ut+RPX+aIkyyFm4hOao+NXmNJF64mS8+hUT1gJ13q09VwY24w
 Yzo/Q4N7VA6e7Q4g3HcPJZTb+3oi07Cc5KOqJWpuAXLd6ouk0uMJajtc4n66pr/0
 12hJs9kJ4hzPrGDe03TTe/P0ME16pQ25MKRHslaWImKWtySuFMlIw==
X-ME-Sender: <xms:AJKeXcSdWl408cda4MuK2rbaRDqUfONrCFbRzETcpJeSj_ugEoDBxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedvtddvrdekud
 drudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:AJKeXVTPykFqBY-AgGPxHXqScOD15duqhBzxy9PXbKuiJuzXMqd7pg>
 <xmx:AJKeXe4NMpZ-dEwnkcFg2ywhVq3IHJX9IHQZYKF3hkTkg7crb-6WNg>
 <xmx:AJKeXe-OzahKpL4FaXG1Bcerml1DFJIDGn2jgwpQNwIMZvME9VeVpQ>
 <xmx:AZKeXf3y_VHgP-2UDPJ4b6BjJT2PW7Y2KcYOOKZS3ydLJS83kuDiKw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 07A12D6005E;
 Wed,  9 Oct 2019 22:05:48 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 0/2] clk: aspeed: Expose RMII RCLK gate for MACs 1-2 on
 AST2500
Date: Thu, 10 Oct 2019 12:36:53 +1030
Message-Id: <20191010020655.3776-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190559_230214_D57FFB3D 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series is two small changes enable kernel support for controlling the RMII
RCLK gate on AST2500-based systems. Previously the kernel has assumed u-boot
has ungated RCLK for networking to function.

RMII is commonly used for NCSI, which itself is commonly used for BMC-based
designs to reduce cabling requirements for the platform.

v2:
* Rename macros and clock names based on Joel's feedback.

v1 can be found here: https://lore.kernel.org/linux-clk/20191008113523.13601-1-andrew@aj.id.au/

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: clock: Add AST2500 RMII RCLK definitions
  clk: aspeed: Add RMII RCLK gates for both AST2500 MACs

 drivers/clk/clk-aspeed.c                 | 27 +++++++++++++++++++++++-
 include/dt-bindings/clock/aspeed-clock.h |  2 ++
 2 files changed, 28 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
