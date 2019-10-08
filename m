Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D434CF886
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rF5XXK83uawLjNpX05ZTicvtmCYQSzUpg+nsKtP4ELA=; b=FTHBmh84+JtNNW
	YJTZkTeHG2zhg654308XvsfzBimL8SIbnKUhjcmmoNavd5cZkeD2o3wROZzG32AyYrYDmWnCCXmZ2
	qTZtl/58wEmWfpudh0LDG3Iys4e6DkBpjXa83GKr+yaNJ8+qkgPKm4UzJQQL55kVUS/wAfZ3gb3QC
	pWUczJEjgkTnQCgagMU+v3lMGlKxyZNDJHolyt6xIfVg4T1kkiNHL+5oN7SjnZ/Ucwz47tIX+jFcE
	InQmiz0CReVUnWIbvFvmH2ZScD2y+lDQPocZroNnIorGofCilt++Ld8PZUCeDhFxZGhdOpLE7J+zj
	WbFillmBgSRImPn6AYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnmD-0008Lq-SH; Tue, 08 Oct 2019 11:35:37 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnlW-0006oP-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:34:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 05EE021F83;
 Tue,  8 Oct 2019 07:34:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 07:34:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=y0VW5yf2PF1LsvzvqAZZ+ZX5t7
 7d0UMxShyI80xACEY=; b=pk0eRjpSJcTAE4PnWISz7ZTrGWuAhfaOHKg+1c5uA6
 IrnSuq6tVnSQCYEWH7yWghrixVmw0ikpv5SfZ5OjDYSJqBDnIHEzyXKQVZdUNotX
 pHCqoHkkVPHRlY5rj1nrty2XXg/jtdAQVpLg84xq51Jw54hgVCKXVjBmfQ6VMcaR
 gF8iHjjPyS7+Z3VutM2kMrJe3YuNVTLFuBlJKS8N0sCh5ZNOopXRzRK4NOQ2a0YU
 I0PaNcO6c+6SE5r1QsSC7I18BiuiTszuX9awXZ3bGKwILgMCLimisLAVNzOB25eo
 F0EfgQwO79h/Elz0minBie8/0dPPs0DznXTCWX88ZbOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=y0VW5yf2PF1Lsvzvq
 AZZ+ZX5t77d0UMxShyI80xACEY=; b=ZvJABR84cEocC8LySf65dRGt0US45XcI7
 QCp9LKXZyo0l+nwhk3+NIXTW+Qdj505q6CCG0QGtzx6Eu4QSvYVkt4uw2VY9/vV7
 PCTeCfrRgrGjjVTHCJ1mA1poW5lwl2Eq1cxuKLx+HTEs42GkSLxfeSigenO4XK7n
 UrjMXsxIibs8wAMP0DKZgTApqnoiscEOLrlswplu2KpsNV+ZS15UN0SX4SEzNrLy
 rlj+KgiMTCrxBjPwDeDLfKrJsUBaXiXAh/+shCipn/zPQ/eb9vlYE0ZMrC9Rjc2a
 0KpirxSRCuXLLM7LHCFexiLyd32U1z3ukLZ2nPiDPGTsaCmOI88tQ==
X-ME-Sender: <xms:XHScXXzxfopRfG5qkUUYdTiFEi24L0KOwnLdWmsVmfA05umw26KArQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhi
 ugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ud
X-ME-Proxy: <xmx:XHScXa7_07xHmFT7WajFMI2g4wyEiqhukM9d45PjD5akT5e1uTHMhQ>
 <xmx:XHScXTfICRbswpRiWjcLtNokaLKlqGxI3UVuD7c3KgVpHghi5xyWqw>
 <xmx:XHScXf75PyDM9hHCcadyWg20LhSRe9VnGjjckdT9B8fDBL9xXzBL6g>
 <xmx:XXScXQX7wb2zNkAHRIaZLunM8nRH24Oj0g5DrGUlig-G27jVZlwiCQ>
Received: from mistburn.lan (203-57-215-178.dyn.iinet.net.au [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1E63180065;
 Tue,  8 Oct 2019 07:34:48 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH 0/2] clk: ast2600: Expose RMII RCLK for MACs 1-4
Date: Tue,  8 Oct 2019 22:05:51 +1030
Message-Id: <20191008113553.13662-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043454_203712_8EB5AFFC 
X-CRM114-Status: UNSURE (   7.18  )
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

This series is similar to that for the AST2500 but I've split the patches out
as the AST2600 driver is new for 5.4 and I'm hoping we have a chance of
slipping them in. Maybe we can get both series in, but I thought decoupling
them might make it more manageable if not.

Regardless, the blurb:

This series is two small changes enable kernel support for controlling the RMII
RCLK gate on AST2600-based systems. RMII is commonly used for NCSI, which
itself is commonly used for BMC-based designs to reduce cabling requirements
for the platform. NCSI support for the AST2600 is not yet implemented in
u-boot and so unlike the AST2500 the kernel can't rely on RCLK already being
ungated.

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
  clk: ast2600: Add RMII RCLK gates for all four MACs

 drivers/clk/clk-ast2600.c                 | 47 ++++++++++++++++++++++-
 include/dt-bindings/clock/ast2600-clock.h |  5 +++
 2 files changed, 51 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
