Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CBCF1E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh+F/V4NpJTBf1BREyUI1jYCUBnmAUR8auHbMqtPZ7c=; b=Zbbm2i2Hs32Udo
	H7oWioNd+LH2vqDOsi/D0py/BNmWpH4r5hgGoyr1igfmvS/Ry0/es8lISGTO4jDQlkENagWY2VnS3
	Md/Z97UwAAOzfPfLLCGc+GPD4W9T28508Re41ZmAHZKczKKpi0ST7HWHevlouH7yeIf61CjWqOUBz
	WSbYY1Au/COM75I4nB8goKueg7vfol1ME6IItwE0cNQIRu16PC8ST0Zj6bpTrTaVDgxsTW0jrXeS9
	UsAhKYrDJHkLI8GLH9PR05LDzZf1gtMaViN6Mw+tzbdtF6R8xR8FZcuMR3vBtqgp4dZYiIpG3/Ui5
	+w+2T0SN+iBxYo05/skA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhKu-00006C-CJ; Tue, 08 Oct 2019 04:43:00 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJc-0007Un-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id ABF0756D1;
 Tue,  8 Oct 2019 00:41:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=0ZyCfffyOorwV
 V2APbLxKQBRpMP57doHLgemuOBGNUY=; b=cC0En3F0LXp1OVPJ2u4WLRrpaof6d
 stfguwWNUQsIG+Gv8M5vurMixoND1PKil1vxgftrZ76RTFuCmxei3IzHn/TdNqii
 RMsQAqpxZBu/Dds9RcjqNbeJgA8vuluW8IGO5o+BQh/Fv4x3HhX2bm5ZOtTqSNZy
 nqhJjuORTcwiXaXobEch7XRYUR5BMtBHotYusPvo83jQ7tZ3M3Id5TrZIHk6AFFy
 eoanuyzADedmMrYBUDgWcEWKl+4b7rOW4TkpeiJ3P9F/HeCs1WGBirEhTYlZHSLh
 s7icK5yKr88QmXfAXEnWOEmXF20w4Khh69P2FvcwK8LKqXk8fsIVNTkZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=0ZyCfffyOorwVV2APbLxKQBRpMP57doHLgemuOBGNUY=; b=yWYnCRre
 h5/msrcHvHMd5dC60lpi/XNZBS8F1fp13ClK8wbxJVSVDHAIXO86wlOZLd6MG30S
 uVJ1b5t+Q48gd9nOvo8U6UN/T8oYTk0Er177IS73gJQDkm+MzU2aA/fdxuJOkfxl
 BfjmyOuC0Z5s1XJy/F7P+0qcCwdXTyOWlxdbXMnpPaN6/7yATsGIf/Mq1/qkGD4m
 amabj+1Yuu+PyPcuDzVW6L6X11U4pbcN7aaASli7ZagTu7NBd4GbO2gILFrw77Og
 X5d02r/ObwDO/FkpZGMdxP6s6YY+e7zxG79wmjaHpk012XfoogwJV1hWe13imJFG
 4moMZ4XRgmRMYg==
X-ME-Sender: <xms:gxOcXZWvD7Rp5w0Gg74Zc4Mydzzk5k4JI7on9n8xsx0GSaDHAhfNRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 fe
X-ME-Proxy: <xmx:gxOcXclRAGX7eGdmQ2akP5GbPHG3ovlWeF9nhKuIEi_aXN4E17ttDQ>
 <xmx:gxOcXfREbo4X_nZv-PzGG3hUBeKsZaF2UVIY78Ch8dlzERdq7w8wQQ>
 <xmx:gxOcXXatcStzzXC1XLAmVhNTP8-i2DuxOyhjj0m7GbpCmvEDTxkp5g>
 <xmx:gxOcXVKaYYQAlgYteeRs20KEAGDoBYMJjw3Cp986HU7aowxg7fnfjQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 04EA980069;
 Tue,  8 Oct 2019 00:41:35 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 5/7] pinctrl: aspeed-g6: Make SIG_DESC_CLEAR() behave
 intuitively
Date: Tue,  8 Oct 2019 15:11:51 +1030
Message-Id: <20191008044153.12734-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214140_539951_596C06D2 
X-CRM114-Status: GOOD (  12.53  )
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

Signal descriptors can represent multi-bit bitfields and so have
explicit "enable" and "disable" states. However many descriptor
instances only describe a single bit, and so the SIG_DESC_SET() macro is
provides an abstraction for the single-bit cases: Its expansion
configures the "enable" state to set the bit and "disable" to clear.

SIG_DESC_CLEAR() was introduced to provide a similar single-bit
abstraction for for descriptors to clear the bit of interest. However
its behaviour was defined as the literal inverse of SIG_DESC_SET() - the
impact is the bit of interest is set in the disable path. This behaviour
isn't intuitive and doesn't align with how we want to use the macro in
practice, so make it clear the bit for both the enable and disable
paths.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinmux-aspeed.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index a2c0d52e4f7b..d5202241f411 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -508,7 +508,7 @@ struct aspeed_pin_desc {
  * @idx: The bit index in the register
  */
 #define SIG_DESC_SET(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 1)
-#define SIG_DESC_CLEAR(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 0)
+#define SIG_DESC_CLEAR(reg, idx) { ASPEED_IP_SCU, reg, BIT_MASK(idx), 0, 0 }
 
 #define SIG_DESC_LIST_SYM(sig, group) sig_descs_ ## sig ## _ ## group
 #define SIG_DESC_LIST_DECL(sig, group, ...) \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
