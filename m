Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4D5650F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 06:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoTsI/qYJ0GDEFa/1ouxCjcDBHNYev4je/OrPU9MLGg=; b=pXOHvSrrZNBvCd
	igSc6DVLIr53sUpqPzYqq8K1KH2nY9dZl5OLtF6QJEHHvdydxu4LlW5pzGqnmPp+oyCC5FfaKKadW
	sLYQlomgiCMFNwYLBArQVxtJezJ4k0JOAo3ClkjXxAD6SenZcvW/FpTvxg7CLaXemnwLTBXVcqMPs
	sBgG46e+iniLIXsaZTyvyzAdX8/Bc6EFRJ36d+3JlzuilHAkHTz50Ia1MemsF/7D5bCFOQSKk5O9s
	VxguGfdYLKlkt/nyNazvIDRTmCsu6A+8FAedszALsaEohVWivVzu1XaCLe5xusv662/ZUD2wd5L71
	ASWmqBULEB4Bbhpei7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlQa8-0008Su-39; Thu, 11 Jul 2019 04:21:20 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlQZ7-0007ri-Ui
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 04:20:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 276A72F08;
 Thu, 11 Jul 2019 00:20:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 00:20:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HZcia/IfVzkvd
 lkvnb5LKV31CBZHUGSpuuBvYoxo1kk=; b=pdfcgHouKdKuYmfxpsOaP6K77uack
 pqSsatKYFQ0izSJYE04AQd0ZQ9T3WwACruy74H758hT+Y34YjTeY1rlxDpvPkfoX
 WF7pFEd90LA52Bel8RXQ2Rx+G2se15f+Ba4s6XRXR5HiVUiLBCg6Juu0glKats0Q
 8pbo9O8F2yPIuuWi8YfXcSpvCBAhrqOek+t3v6HsLNXuFQQ4ryHItcbted+KjpbK
 ANLZ9dqUQFwvsDoc/+y6VLNmBLj4+UGghVfLWnFt8be3BTiouv2YYJkKknsOJLd4
 RSUtY9Cizor8dZQvDh+244oXIU2RIkqNvUyyMtZpAHLZkqYeuhNQavn+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=HZcia/IfVzkvdlkvnb5LKV31CBZHUGSpuuBvYoxo1kk=; b=dGw4pyKA
 2n/im6cU11TCGqY7ZrXDTVMb23naYGovlb5tij+18E7pMSayDOueYwdIbIjZTxMS
 m2Qqvq2QoAOrmIqwBMLxHjpEJJfMjm7EjfZzDr35pcME4SbQltnL4NxcdClFfiXf
 BZkO2I6GLcTt57n9qbrx1Q5IBMS42dONscdBBrb1+Bp3cxvCfXvjJk/JdKD9M27J
 pEl15KBq3pQOoQ780kEzUfb0mtOvXFU/rkHFpUfZ7U2Apj/TKli/Z25xDr0pmdyj
 sOFtNrFkRofrYV8d5c4RbimT+WdUBrVdF4O66klVjpgRoqQzx/Ajx0D1vGo6i6B4
 EJjwiJJavaVB1A==
X-ME-Sender: <xms:ALkmXXV0bcNWplwFBt949UjpF7Zssd-U5nNs3MnD6KA6Jj76bvGW1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeejgdektdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 fe
X-ME-Proxy: <xmx:ALkmXSKUy5CCssGBvIjkAddVPKvTwkwJF2oS3pmtT4pUKz6Ia4FA7Q>
 <xmx:ALkmXXBzOiBiXQN1CrMKRvOw7tCMa-nc5zJ8cQg08V0zj_w3hpDDgQ>
 <xmx:ALkmXSd8ZtXUKKVT0PP36KAl8hHBNVrPEeFPJgOLhMhB38oFcl4W-w>
 <xmx:AbkmXbu3zc4oHjPB991BmzWgCKDe0tMeskvLDUDpLaHMmD-TIP3fAQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2B1C780059;
 Thu, 11 Jul 2019 00:20:12 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 5/6] pinctrl: aspeed: Add SIG_DESC_CLEAR() helper
Date: Thu, 11 Jul 2019 13:49:41 +0930
Message-Id: <20190711041942.23202-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711041942.23202-1-andrew@aj.id.au>
References: <20190711041942.23202-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_212018_283026_47178926 
X-CRM114-Status: UNSURE (   8.30  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The complement of SIG_DESC_SET().

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinmux-aspeed.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 474820df6263..c59e936a7dde 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -508,6 +508,7 @@ struct aspeed_pin_desc {
  * @idx: The bit index in the register
  */
 #define SIG_DESC_SET(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 1)
+#define SIG_DESC_CLEAR(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 0)
 
 #define SIG_DESC_LIST_SYM(sig, group) sig_descs_ ## sig ## _ ## group
 #define SIG_DESC_LIST_DECL(sig, group, ...) \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
