Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD9775E96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlo/b/Whekt0sZOE8RO1Hyrw4ZN1BHtKoaZzEpVAi5M=; b=ZhKcBHkD1/6XbS
	CxaI3tSS77NEk3PF5FegMQ2U33GERG5F4azcyrqcOrjv+NYEnWE4iR20WQtuwQx6GjI8LWepaCeIs
	39PN/wZTnRdnnthJW6XwRA8BsOtymvf9tX1+yxg8XomucIRNYgur8JlVbnc7Hx/qGRXy0GAvJf4fE
	uvVkgFKy9fAvBtcTQcBji3Bu0hzJXw83GilhhMCxuhiv/L76kYNlR++tb4ggeEdSV/qoP/zpGgNOB
	SEsEXjTxmRqXbJtQysRZcV9HI9XcUYxALTG71IrU9FVr7Wv74BhPSd3nc/xW+yNByk4DGD27UXoil
	nKe2D3vb/BEMvCZUvoUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt25-0006YV-Mj; Fri, 26 Jul 2019 05:44:45 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsyB-00042C-4l
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 81E8322304;
 Fri, 26 Jul 2019 01:40:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=rG3ViSoD+/QE/
 VXNi2QRXWRcPzsPK+KCQfU2NAzrabU=; b=ZFvrZA4/NROfeW3BhqjDH6Pq/IF74
 IQNAntwYgA7a0dpYRagWuIPGA4QKb+7nl/n/QP/wXyXDKGJLM/0cYfsFa16sDH6K
 wLVxTkKWnt1LuJpDmShImd6KCBEZE0VgXLUQXBDrc7QmDx4oMmTSOzpQcRRLc6b2
 GKx7ZNhz1rS9SHZiCPji/jReQsdd/FgzPfwosJq05mvY1T2o7zC9ZrFGuWBHGj6U
 b5mK8bZq83GeQF4nsn7WGtek2aP533EGIAzEaFQVD2+rTZNIg51gQCFyau4rO+vf
 PVStSvYNaMVCDhp1aIGRZVZkyKVb5GOFMR3bSGwzkpXixvn6mhbdJoSdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=rG3ViSoD+/QE/VXNi2QRXWRcPzsPK+KCQfU2NAzrabU=; b=fny9/EN6
 AqWnZP1i3ik8OyT0QgcuJp0Pwpx+U2xGXQib5GcSmrc1Sa/lPO3/4HFcrW56p73A
 /pRbp3TU3ege7PAtyWBPNwDq2zbTOnfuGfp0+n3ET0cI8/y+WUGYZ9xbaNsJ9PZb
 1DkoFrfhpY/+KJDUSTWWvoOvOfYVc9O4fpax5ba5XOHrOCgvsTDRrPUbgOdOO/sT
 hWoD07VN3wbEb8iw1vtXUbERXLzbG/CjsjrUyPAfjV4d4i4TViNIMZMgrH0u11s3
 xTLNcJf2yvq4ox5ArgCmZ/b53b2Walbyauy2b4x/RLf8+vcY5uE+S/GHP6ZgNTtO
 CmVRXFp33FR7vQ==
X-ME-Sender: <xms:WpI6XUztnZzH09GPCPGTYY4DpUWTYVgBT4tR7B0rAu9Gmujh9rBUVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:WpI6XYbiO39PRBEFLxsPziRXU0fmTwfVxtr60nFwIbtPttATfdEi5w>
 <xmx:WpI6XdzrwIiBNu_uETptr4EFaXvlbR8r34C5afBlpKzVcoJXF6OmVQ>
 <xmx:WpI6XZG0onGA5qGAcg_oAOn-qSJeyqDf5qYzsY_x1B8-fbd5pqkrkg>
 <xmx:WpI6XTtWs_B06LNwzoiuZVcBiNYgg4YzjhfFc4P-A3ALnPuahVaF1w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id A6014380074;
 Fri, 26 Jul 2019 01:40:38 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 11/17] dt-bindings: misc: Document reg for aspeed,
 p2a-ctrl nodes
Date: Fri, 26 Jul 2019 15:09:53 +0930
Message-Id: <20190726053959.2003-12-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224043_464533_77F6B3A6 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The P2A controller node sits under a syscon device, and can assume
offsets from the base of the syscon based on the compatible. However,
for devicetree correctness allow a reg property to be specified, which
an associated driver may choose to use to discover associated resources.

Cc: Patrick Venture <venture@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
index 854bd67ffec6..091d1c5ec58f 100644
--- a/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
+++ b/Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt
@@ -18,6 +18,7 @@ Required properties:
 Optional properties:
 ===================
 
+- reg: A hint for the memory regions associated with the P2A controller
 - memory-region: A phandle to a reserved_memory region to be used for the PCI
 		to AHB mapping
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
