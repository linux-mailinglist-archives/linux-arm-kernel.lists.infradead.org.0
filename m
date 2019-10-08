Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AEBCF1E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8AeyyrA53MVM88sakudtSkl/J6/hw1AetwqY7hUiFo=; b=adSCw8k9c8+z1d
	Zw9eF0B7Wh0LKvpHSuRPBiHFEwmUQFTCzodcKrCdbP2sWvwhGOzrJnDz4bdreeVMya1w62DIE2+EE
	VGWrVtkvYcVVxrzEoGs3lxJ6SiYHNtrU7F7sUAmkqFJkRLTnzCzvIMCMLD3S31m2SDgTNbBEsIoNK
	Q6da/EvHrHNZdKfGoHydqqPBdM8thdXESkujdhHfnvxscv7YWjm3EuGzLAQekyKUOntlEUzZJ25+j
	js4kzQn089BrdDdDEDEmSi2jmfeBICEkStftoBqsbVLHlUjY8N5+1zC3Iovzj7PBiA0cyDRTutgDe
	2Z3LqF1swxelMcIgQ1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhKV-00087h-4C; Tue, 08 Oct 2019 04:42:35 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJc-0007Te-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BD4BF531E;
 Tue,  8 Oct 2019 00:41:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=M1iyDZQoxGoqP
 BEuWgwS+K5O8DqyhEij/CquYJUJoaw=; b=NcX1aAJhfI2m+KY1MqxeL5glZ8dlm
 MQtK1zf9enX1F/D9v4LBYV0TO1CgzpfTuv3qrMB3AiISoXNrnlfKp0QvHDVBa2YL
 HAo4thHiEqwosYGd/370kDe0/W3GGM83OKIFs3F4y/a/4Ha9BK7Gno+3YVoGB3tL
 H8STlOLLsPc/vgIs8F7se78tle+jo/1YiYfF+ccCMKf9V1NPAZYYsEnggVa/ohha
 m1tQfd6I7Gh+JDYcn2ZQv0e0JRM3iG+YTpPPCY5mgx1bfOph1ppmUkWPCC5JgUxx
 isCr0if/vNia579GamANLzP+ydQWNG06o2Y4d+MILTEnEC0/P4b13TN+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=M1iyDZQoxGoqPBEuWgwS+K5O8DqyhEij/CquYJUJoaw=; b=kQVGJmp8
 j+HdX5TRgaW2zULCxq8T1QJbxdfmr+ZIOC7ewEGjLuuDA8fm+nhwBKBez/prRlfX
 b2amqO3D2BIwuywb0E/L669kz2Fl1xS3L7T1oseZgtpcrNq3ryyJU1HhSxRIc+jh
 ZeXjuHXXPWk+AfYYAnS00yU/BZc9fgi1IRyECgY3lYryUhgshaQT+nYzCjWaldog
 MUCj//Ihs/egJtlURe7oHGIqBMcn1YX3dBqRlECr47+GdUYutYM27XOw4ag58I9j
 7o8Habj8TxXJfYamHAhXGkwr7Cx1C1Ba4UmT8qu/O6Q8S+XNrEufXIZ8xrTMlt9K
 b3zC7cP6q1ptlw==
X-ME-Sender: <xms:exOcXcxw3io__sw_1WbFc3cL7cdzvlkU5g28VkHiKrQC4e0MxP5CmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 vd
X-ME-Proxy: <xmx:exOcXanJcndheNID_1QJZo5UqlblEluqqSLEVcXVUycFhuMDit_A1g>
 <xmx:exOcXWgsuruBvYRyNKmw9Kjgl0VhqPtFQjZ1swOtuB0R8HfDXcpYzw>
 <xmx:exOcXVd0-h2D7dXrATaeallC2mQCJGVE7FuJxJEF58QpkOOtPihTFA>
 <xmx:exOcXYfC4AGe1h1j8maPIOz4r8QjFtJ2yF-dQ0xJce5V-AGK4BhIkg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 09B4C80064;
 Tue,  8 Oct 2019 00:41:27 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 3/7] pinctrl: aspeed-g6: Fix I2C14 SDA description
Date: Tue,  8 Oct 2019 15:11:49 +1030
Message-Id: <20191008044153.12734-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214140_345509_A9C0AAC2 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C function the pin participated in was incorrectly named SDA14
which lead to a failure to mux:

[    6.884344] No function I2C14 found on pin 7 (7). Found signal(s) MACLINK4, SDA14, GPIOA7 for function(s) MACLINK4, SDA14, GPIOA7

Fixes: 58dc52ad00a0 ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index ff208b7c75a8..9079655cc818 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -87,7 +87,7 @@ FUNC_GROUP_DECL(MACLINK3, L23);
 
 #define K25 7
 SIG_EXPR_LIST_DECL_SESG(K25, MACLINK4, MACLINK4, SIG_DESC_SET(SCU410, 7));
-SIG_EXPR_LIST_DECL_SESG(K25, SDA14, SDA14, SIG_DESC_SET(SCU4B0, 7));
+SIG_EXPR_LIST_DECL_SESG(K25, SDA14, I2C14, SIG_DESC_SET(SCU4B0, 7));
 PIN_DECL_2(K25, GPIOA7, MACLINK4, SDA14);
 FUNC_GROUP_DECL(MACLINK4, K25);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
