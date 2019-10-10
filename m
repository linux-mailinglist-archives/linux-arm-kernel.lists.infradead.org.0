Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7932CD1E23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VYJQ72x/u9zFz6Rf8z5QphAMx0nexhlCObFoe5w/lg=; b=nIStUSUl1ijy+J
	6I1LoLzcBLMBgYyG2AicW/dCrLarsaIWvTBS1ZZPWksyy6sSTfuLHvOyWA6A2cdGI5cdFanFixMyC
	EpOea0pBUHHF5vhzxljp9pdw+C5fFcmMD1b4I56kumNrIeMXcL083jEKjVsXgRlGLHKPCq9sE/JFV
	iiDcdXenHqZsA8vN8xZDwqzGGMFQJZFeLuXrjljmkls6e7IE08DjaT5OC/WDZ9cQSj8jp4898Qf7b
	p1N11sSk37kDLCgYPc0J+fUWzumDbX/NJfnfIZIZKcz+VufeRsGn6T9zeOGfd/i1r5t8Bg9/v1gGE
	0lCOMBFTyXJKNKcnBEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINqH-00065O-K7; Thu, 10 Oct 2019 02:06:13 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINq2-00064A-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 15E1121F14;
 Wed,  9 Oct 2019 22:05:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:05:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=WvQCoXY2dn2Zv
 ZQTKce1J5UaJ12CgomxgQSt/e8KvKU=; b=R5iHXfX5XBgnc5dhScVpq9T2TBg5L
 YAJE+D1S+dKraSyAWYPExaH+Xai2CI2AejmX0KNPJamZzzGCYJMKo0DJatrpDkvX
 TcWbUX0kLUL9AEghrNX9FcaPUTsj+qge1wfCHl8tRfxKrAjIXhovaN6wybdpc4M+
 PHQ52f2A8TKfjOXADKP/wfOfpbGGACUiXm297AyroVx1hv3AFzrwllftPjSJ0sx+
 jhqgB7pzSQ8BmDgOwE51wDhwQX2Waihak8OuqVI5mrFM6v/TlZ3/kENBYrKvNx+s
 1czrNFdrFr25aNA7Dbf2dm9U4BoFSxpyWusW0PaJEV+rblp9nRgUrOGJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=WvQCoXY2dn2ZvZQTKce1J5UaJ12CgomxgQSt/e8KvKU=; b=uIUeHivC
 NvAXpNrD5z3/ElBHP7PWKjQVl1SqElBBcSWVFUHlONlQmyCtJ+ErkOs8MTmPKpbh
 ZWv4tA32h17iceDu5qm23+0zQHnZ2K+i/BNPgy2hJyPwjWMO8pggWNDFkDcUvNSf
 N3bEZl0IXjzFXs2hxEASxL41okOxyD1eeyQKJpdEqEvfKY/xTQ25FvZORG5KV28x
 hmq5+K7idYnff0KEXa3xQmeab4QW18a9BTAoiFKJS7kcwZsbh9cPSPFu0xgMxtTG
 auBC8ZLNKtAxJASKPVLPtgZU7fTX2cP00glO4+jv1eeFu+dkxBZ9m++RxSNB4+ju
 C15cbvKp4BlWqA==
X-ME-Sender: <xms:A5KeXVa3WlA82QFyXE2KP3WgZhUPxBoWGwn7F5BFr01Mn1kQ_3X04Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:A5KeXQZEMpH41JZRk_o82SV0iSlij7M1gelhC7gHymd-jlTJmW0v0Q>
 <xmx:A5KeXYmPvLgr1OFQiD8ku9ewFBvrRbYvyBQY3rGNa9c0T7UKmg1WCg>
 <xmx:A5KeXTiBjcZFLtytc8BbDq5CUSk9GFi65RKrn4JO4UCkeoj51zQ7cQ>
 <xmx:BJKeXVxOpiNWIvlgrxVJ5pLzf4ynfOH4JymXNvkTxZpGJecLm3SnTQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id B48B7D6005D;
 Wed,  9 Oct 2019 22:05:52 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: Add AST2500 RMII RCLK definitions
Date: Thu, 10 Oct 2019 12:36:54 +1030
Message-Id: <20191010020655.3776-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191010020655.3776-1-andrew@aj.id.au>
References: <20191010020655.3776-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190559_230498_EF3ACD5F 
X-CRM114-Status: UNSURE (   7.59  )
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

The AST2500 has an explicit gate for the RMII RCLK for each of the two
MACs.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
v2: Drop "_GATE" from symbol names

 include/dt-bindings/clock/aspeed-clock.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/aspeed-clock.h b/include/dt-bindings/clock/aspeed-clock.h
index f43738607d77..9ff4f6e4558c 100644
--- a/include/dt-bindings/clock/aspeed-clock.h
+++ b/include/dt-bindings/clock/aspeed-clock.h
@@ -39,6 +39,8 @@
 #define ASPEED_CLK_BCLK			33
 #define ASPEED_CLK_MPLL			34
 #define ASPEED_CLK_24M			35
+#define ASPEED_CLK_MAC1RCLK		36
+#define ASPEED_CLK_MAC2RCLK		37
 
 #define ASPEED_RESET_XDMA		0
 #define ASPEED_RESET_MCTP		1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
