Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1D956308
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGY55M0wyl2P6AF4QqDt9lpYyxfUJwbyHXABk+giHCo=; b=eTmF24oC39zBkT
	Y+/ED9Kd8XqCZrk+KLn3/0uX/rM4rBzY+Txo10oIHTBCk6NkTzXODp16twTPHnEVOH5Ses+2wqZzt
	wZ9sacy9QIvpztlruOHNvQm7Ef7FoVha58jbQEjDNziK3GzXwyPE//S15tiJccFJd3SnKr7oNu/GG
	p0HIzX37sudS9TlCxcBDFxJd8YKcG2Iie54bDPSniB2ZnLCf9/CzT2bGYaMbjmgac+FNOnOxztjL5
	TuklXnwYVvONYJYDW12RFxNx4m6AuhYOQtQU6KnU8LvQory2U7tJCf+BmjJyeyWu6t49gfMFHKeqf
	Z70ALve3XBymrYtDO0Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2Bb-0007Gv-2X; Wed, 26 Jun 2019 07:17:43 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg29v-0006QQ-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:16:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7E04E1C22;
 Wed, 26 Jun 2019 03:15:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 03:15:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=fWlD1uewNsuOv
 vJeyP+mMa6JLokQU6xzkQsW9nl9tuI=; b=lNDZe0OwrWhjUfAq+Ykf7egxE5PT+
 TlpMZA8Aqdm9GKfmbzNSHzFTLTqiVth6hkZInumC9IlQvLXrRrLRRh/Nhmy2I2Oh
 huZJy0QqifGtdjxtqD3DwAg+g4FX95lbpaSewrK7PzdPUYqL/oPHEE2Eh2ZGfcHh
 DlEcUYWm6Agp/5fhcS+p5mgkBwGnXArZZwMtgD4MZuaS0AF4UDD9bh6szqY3WRBR
 nAw3MHI8xYWqL7z7eVpn5FpiwCIHrKzXT6T+4EMtkyZFy+oWciefDbJmMJsLPoF4
 B7D7d/qlqFLLT/if/Ja5aaNIPj7opctGOicwctW59RkcXYHZDRMBr++YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=fWlD1uewNsuOvvJeyP+mMa6JLokQU6xzkQsW9nl9tuI=; b=puLWPAjq
 whxH/c7QidyFvKjgWRqCymc6vEDpiIa/O0wlvq32w+ldyywucvsmSIJJ1JgNNkxa
 VxsubG6LyhdPmq7RttIWL3pPJT/IBCAF8ZYbaPcw8TVBEG4wKCV/fkzuskhOg4HE
 0cW7eE8wFvA7QXeVkEEsoU1LZ6MtbkWVEPbxYWUBuzt+ah6Dfc4Ey1LU8j9C62vx
 fElrkRFsEZzQJeBDULfIE27y7zLAKabz4F7yIeWBC/H1a7giGl7u5sB9L9vOsRzh
 xGVxNUmF4FkvO4Y2q6hKvkamFUihRcB1o1KlhLRnEkikoBk8pWMPp8OQ6dh5sR8z
 GC+1YP3iDF1hfw==
X-ME-Sender: <xms:rhsTXWlP9ws_PPZRzyZx3jZQVpTxB6KyWfzOBAM3H8MP0NYYodpJdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehgdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedu
X-ME-Proxy: <xmx:rhsTXea8AUim3q9k60F2hy0ukk1inKBD5-vkK0e7z1dtpVOUvq3qoQ>
 <xmx:rhsTXV0gWSQ-XQyewoq0qSiXREhxFsnm6gkfUEnHub6LDw4V2gglIg>
 <xmx:rhsTXURq--Q-jb9A_GChcDNgbzCXGK7AgsCwSSqBU7pyudU9rftbvg>
 <xmx:rhsTXe1FVeEOkH_6ZkGh_RmuGM_dxyrquAVFKMSeErk5f_NxzwBhoQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9CDFB380076;
 Wed, 26 Jun 2019 03:15:54 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 4/8] MAINTAINERS: Add entry for ASPEED pinctrl drivers
Date: Wed, 26 Jun 2019 16:44:26 +0930
Message-Id: <20190626071430.28556-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
References: <20190626071430.28556-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_001559_578871_5AAFBA9B 
X-CRM114-Status: UNSURE (   6.95  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add myself as maintainer to avoid burdening others with the madness.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a6954776a37e..978383f5c1ab 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2586,6 +2586,15 @@ S:	Maintained
 F:	Documentation/hwmon/asc7621.rst
 F:	drivers/hwmon/asc7621.c
 
+ASPEED PINCTRL DRIVERS
+M:	Andrew Jeffery <andrew@aj.id.au>
+L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
+L:	openbmc@lists.ozlabs.org (moderated for non-subscribers)
+L:	linux-gpio@vger.kernel.org
+S:	Maintained
+F:	drivers/pinctrl/aspeed/
+F:	Documentation/devicetree/bindings/pinctrl/aspeed,*
+
 ASPEED VIDEO ENGINE DRIVER
 M:	Eddie James <eajames@linux.ibm.com>
 L:	linux-media@vger.kernel.org
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
