Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C499CF871
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=swa4fjvBFU2yJsusoUzJikRRx+Rld8UmPydFwB2G5Ho=; b=J9yaY6BN1/Hfdt
	tYNDs/quWLdBlP8UTZCBEXsXPOVOFB2gJnqfMVU1aHticeHb7ozbfiB5xXY63Ai926z7wZ5Stysha
	Jno7teMp4qpEQgV43SH0QuIW0DdA6OEZLvHRnnk4sl0z6gzIc6UNNcVZnsPM9+ROOU38f5PBLIGuZ
	wDQ8sNLeYpR67QPFvDC/g+6tT3KNqQykG1kT1W3vXU0AXqWjPPc6X/IvpgHqav63jHc4IeO+C/E/f
	lP3I4XAbVSAz1wrZ9dKVQpNknzckI/3s6l1lxa32PY3IyoT4zWX0ykFRo2E83hQYpw/unTrai0bn+
	Qm7OtgvZ8h2GCLIKmx2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnlE-0006Pr-H4; Tue, 08 Oct 2019 11:34:36 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnl5-0006Og-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:34:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 6DA6C20C8D;
 Tue,  8 Oct 2019 07:34:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 07:34:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=POMHwN73ao1VX1XVvng87eUIHu
 egEN2mJo0ATUF+SyY=; b=OXOEf1pIx5XZ0ox5FfAl5t+OYKHLONEym8sqHCQxJ6
 Vo0oe30Ejx09yZwPsas7W9SqOb8oliFwwoVbWhq+pYt439X3uY3uJwvpbLGfUSxb
 ta0z4DcQbl6FqenkmpLZ1cskDxIrpxosWLAo2u6R7FNLVdm0a5Ow2evcdK7WRifu
 SjA1UOXuSm646fZ4jicKeILwaH7fwrD4005YWfhRNRUqFN8ayXObB6dKe4DFTeDF
 9pxp/AsnBTQf6WUJmNOvWHfrl/lkbWApPd0l3GZXv/1GkCVwegOuckvhMzz2Ap1c
 6krOWgtGtX4vSVOYJRImd9RtOwB/4XPvI50bivyEyNgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=POMHwN73ao1VX1XVv
 ng87eUIHuegEN2mJo0ATUF+SyY=; b=NFbew7aNCP9NXA76QE4YKLrHIat/7qMna
 3Bl7XmoCuC8RuOugY2EfJ8q1JKXOJuajWtRoZX8Cy9Dl3GnmOoSi0CMwYi2FuH7i
 pIYMGRn/jcsqS92XFaUqnZ669+hmutHQVUyYRBledc3XvyXd//Est6mIfDdtMsO1
 ECTBampCoEQ+vGo7D8+kdFlqTSu2xAKBnajrPzf+702AlIsQr759IKWg+KvRWWRZ
 P7vLiyTXUbGO2KI7nQ5BRvE3ljX/yc6gN5qIgd8xMPDDDsO0Ww2CpQrfhIETYZik
 VqF5vQHbwv9bajYuMjIiJb12AuvKs3n/Zzs/v0qiCccGSIHr5g4Mg==
X-ME-Sender: <xms:P3ScXTKx9szxQfYf8k00yQS_d5JWZFBaRQufZzxcl9uxnsRDvZn_KQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:P3ScXZ-iU2Yieq3etzQ-OntBIonjhalisjdnWTwiadUFjNYIU58fCA>
 <xmx:P3ScXXLxOxTvyDiPHqHN2GT1pYlxbFRzWS7D1iocQ3kd4RTvDz5BGQ>
 <xmx:P3ScXX_g8RG_akPyo9xQLnqLi30tDmpkf6eBwEfw0DR1NQySwhWRAg>
 <xmx:QHScXbSDaCra_m8nRs_5Ton2b0jljcgYvhxmGAsJzSorXwzt-vAmvA>
Received: from mistburn.lan (203-57-215-178.dyn.iinet.net.au [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 811BBD6005D;
 Tue,  8 Oct 2019 07:34:19 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH 0/2] clk: aspeed: Expose RMII RCLK gate for MACs 1-2 on AST2500
Date: Tue,  8 Oct 2019 22:05:21 +1030
Message-Id: <20191008113523.13601-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043427_999212_30AC2EC7 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
