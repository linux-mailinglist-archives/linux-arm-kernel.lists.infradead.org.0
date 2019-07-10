Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6C647D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cc/TvzVAih+RnAMk9xH3WqnKSinJTyM6AOGddERPWFI=; b=GLT/9Zcatj5pf8
	UIS8GMLo9eHMTdDuiiEwLRgRdErdCB0jphH4TR22TM0WA3+/3A4TDBfQCZ5oWgfi6WqNm1D5dnRLs
	Y1+5h8KEYtEV3TiQlM6aivchNtsyiNFfyIObTLS1JpbfyZXep7h3l8qa0n0pKmSFdmqoVmtI6XqPY
	BHsVDfBqp48iMNu4yboKr07W6BsBZ77deDVPbj38XcuWySv07YD/Li9LyyFW0k3RCZPqVe23mF7iy
	LDNWCuJaOJ8iqaFJM7t/DKVVuRe9rmizbq+n8vcyzsnt4c/F6YNj6Kb2UU3QiPWnvqEt4ATDNA5aH
	9pqE/REH694W3Q+jG/0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDM1-0006Mc-Fe; Wed, 10 Jul 2019 14:13:53 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDLm-0006Lo-4q
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:13:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5AD75216CA;
 Wed, 10 Jul 2019 10:13:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:13:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=5v+hHlvidFmtFgjlAm3pBo2Tz+
 GoKLc5rUvGwtlDRfI=; b=UjhvK8Wyhx1ZV33kRimOa4uTyTlXlS9qqz4B0PEdy/
 pqtBMjnHxlL6U0qzZ7uwfbeHZ6XHfx4Y2VdvRog7tOSMNpXxeVJ6t7TDR534VISG
 jrCqUhXIkQb44AsCK+QRPb6C+i3YB9vk0+heVW3y+rVPvAUHmdTewNc96KwyTOA1
 vurtdnQx8lpJbNyK6PXWkj2rRLJj/ZOJnprezTPMb2qGqgzGyAQsBk0S4v9bhP9t
 XqAHMYmEzsD5rd7MkxpCSFyswD11WgvnCIFhzydKO7nrMVBV/qzPql3Dj0Zj0iyC
 6QeA+IHrISYFwNKe1amAW8XCpHJSLLAtOpqTJltbofNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5v+hHlvidFmtFgjlA
 m3pBo2Tz+GoKLc5rUvGwtlDRfI=; b=ZnSFQJZjNMJbxNMefR08ouzswfBXEdBkC
 dM3EJ5by9Mvt9okUvPzyG6FuRVjWpv2+yHYLiKglNvP1S+WouK1PMdNTEjBbc39k
 JJHGP7T7/rYCN8/kwMwzIPp/1MHzmcWaFn7b6gO2fFFPHsBURAfSxshyzXcNBpy1
 VQ+KyaX82n8d49we7bxMK7vVNiQwhAVbCxmmKCVKtwzYUgtm3qol0Lmq0jqlGgH5
 hKanjKp/xcPK9tU8lEVayrYDrQYOd3IY5YvedFKZmdjhZXeND5BfjKfJVD7cnFNa
 knjps+1Z41meU8/LbQJNxJSggsNeFZeAC5zAXDlVM+Tgs8QqvsvKw==
X-ME-Sender: <xms:jvIlXTXRXnLZtST76DPU1uXq_K8okxZpsf6JWfLQwuOuOMChic3nHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:jvIlXXSB08Fd9eGNS0FTotHtfnt1k97BhdcZQKMOxw3JEgZ1e7qKnQ>
 <xmx:jvIlXaGvlBgj01ZpDRFQjjqxg0Gwhzp6pIp6r6grlniSKxcpOa79DA>
 <xmx:jvIlXfS0r2GV-C-Nwcyv5U7bbYwg2rJh24nBk_a_AK_U0tUKC1CI7A>
 <xmx:kfIlXU-nxT3rL2IjsA7AspTCVFV729-B9KbNcKCok6sSNywHwrwhgA>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9E724380086;
 Wed, 10 Jul 2019 10:13:31 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 0/3] ARM: configs: aspeed-g5: SD Controller support
Date: Wed, 10 Jul 2019 23:43:22 +0930
Message-Id: <20190710141325.20888-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071338_362821_7E675AA0 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, ryanchen.aspeed@gmail.com, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series adds SD controller related bits to the aspeed_g5_defconfig.

Please review!

Andrew

Andrew Jeffery (1):
  ARM: config: aspeed-g5: Refresh on 5.2

Joel Stanley (1):
  ARM: config: aspeed-g5: Enable EXT4, VFAT

Ryan Chen (1):
  ARM: config: aspeed-g5: Enable SD Controller

 arch/arm/configs/aspeed_g5_defconfig | 64 ++++++++++++++--------------
 1 file changed, 32 insertions(+), 32 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
