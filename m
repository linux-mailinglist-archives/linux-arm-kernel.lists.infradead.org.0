Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B378F10FD2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BblhCsSRpuYP4gQ9pMoUQXjG6Rq7nQKmzsIzRTQI90=; b=n4XyIvL5D8w+HA
	ZwdbEQ7RzGpGelVdKLd6Y7dUyP/Fxh2VVSKsPL35tCjtUJxFwLEJj2nGFgWpyzlgLEYzazPxl/IYl
	cxt2yITO9G3fR68hmdkAnUXfu/HXjxAfWzyJjDlrj3d0uyQru1sFsaylmpCUHYr4UMRLkb1dkZfZH
	7ckX2n/EzAKPIVYzv5kDUWNy0vjGSYMSx+58lVSz1eoVZ7xGhl0FsQNXeL5JkWv0SOh9VYSTta6NN
	3BSwAExEEjOhQW6EKYd5/CM3Kl8ibXuxBwhHpONuKKSckfWYK5Hqy1O+IBAu6PSMqwN3KsVp7MsjA
	NM2Nh2iIJNzowyBJfBzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6v1-00024B-Ue; Tue, 03 Dec 2019 12:04:39 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tY-0000r5-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5D465223F2;
 Tue,  3 Dec 2019 07:03:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=7tglTbsrzj15B
 FYdwtCNlMSUTM/CZ/wbtl0qCFh3E+0=; b=GGvhoydVUQlN4HGmCxhiL2YtAsL9h
 y6Dq1zMIjxR2CBPg9wCnoRmNLZ8zGprdX41nDxFWaMK8CGcgd7xf8JsGbwjj+Qa9
 1j/rfgvu0KXkD1h9+mf3xppWzfscljlHx4KxWKJN6D0YA1d4Qgsf6viz6O0/jqdk
 4We6S68LN1QI9gcVOKqDvxiuHCIdjZYZjvYfvP+NwdZr6KxcqveQmy7h9kTANje4
 dBzOHMqZZzeSU4T0hcGRcIUFXf6Zv1uwRL+2G68/HRXH0U7STzMi4XxJO5hnapQr
 VwhLOJ3GhJpGOOvogDjZyg8k5gi5NSxjf673boBiMWzoCw7GU2DB8Kvxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=7tglTbsrzj15BFYdwtCNlMSUTM/CZ/wbtl0qCFh3E+0=; b=f8bekuom
 KnsH3MnC4rVm+vWVIp2F0mRuE7fC3DKJhwBGyg3Lsfxbbfs0njAKaSqxYjapVT2z
 nP/S6wK0L7eA5Gh8sdz3cBjh504qBOQS7EGBmWBSILRb7A+sMMVm+NPbcmkak8l/
 DHYqhHOP3jC/f2F0xloFoiGT/WiuPjTC1OIo/DR5NK6JdXyEdQMIp1XNRzHbaC10
 qDkpEnZsWpFjWgJmyosbcJPzNmP6A9W41Z7iXteS/UNqwRt8jIzfbtxunG8LT0Yr
 J64c8XY426w+nfAJzX9BT+JcZINQNp2kTSHJ63LJxe98EwRU4x4wM5gl7aRuKSYl
 OhMrMcAHxUJENQ==
X-ME-Sender: <xms:-07mXTYq7A3QCVF_gcYOC1XYtyuKRs03NnwuB6eJWHhv5RqDU_kzRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeeh
X-ME-Proxy: <xmx:-07mXWfA9jEhiNCLRTW9ZDBw8K0wXlO3gwsBsAHgMTBtqNyUt9eRcQ>
 <xmx:-07mXXFbKR50YClm5Ber4YI8gMxD91yvxyYQM9uHA23t-Hh_qnioww>
 <xmx:-07mXTDT12r7upPIc8QFCoKC35KKk2Pr0f4mlzWdHsycdUR2w9_ODA>
 <xmx:-07mXVmWdDtKyOBN_9n3szeI6c3j6HChFNtV4htDM910RSS3WF8OkQ>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4177A30600D2;
 Tue,  3 Dec 2019 07:03:03 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 06/14] ARM: dts: vesnin: Add unit address for memory node
Date: Tue,  3 Dec 2019 22:34:07 +1030
Message-Id: <5542cc20633c5d185262e3acc1ff6a81a6327a34.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040308_705078_E7C031DA 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Alexander Filippov <a.filippov@yadro.com>,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following warnings:

    arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: /: memory: False schema does not allow {'reg': [[1073741824, 536870912]]}
    arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: memory: 'device_type' is a required property

Cc: Alexander Filippov <a.filippov@yadro.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Tested-by: Alexander Filippov <a.filippov@yadro.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
index affd2c8743b1..c46aec4baec9 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
@@ -14,7 +14,7 @@
 		bootargs = "console=ttyS4,115200 earlyprintk";
 	};
 
-	memory {
+	memory@40000000 {
 		reg = <0x40000000 0x20000000>;
 	};
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
