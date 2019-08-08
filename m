Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07EF870B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 06:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWWSuwDj/sZ38tqyxbpePd6MPcEUwSHclWAxWZJrk6o=; b=Bi2LhStCa/O5fT
	/as9lrPU8Q82tMeUJ+5EsWgE/5Bcfeul3qiaaQ2FoeXFkP5y49fwypm//j182e9Ddwxg6mVvJeqnt
	Zh2VRVClWvVvXRjAY3US2n1yGgqErX0d8k1Vsx6T/T8grYz5J3h6Gh5jaCy0zpqfwvL1VLVplKJZc
	wonKf3gXnPVTy9EnBZExomajnkyqAV431ieKj+3lhCoJL+ZV32dyqySTo9vHm/ZQ4IPu6CU6N3Uy6
	ipqTCNNwAsJ4DCjUgtiuYFimMRetsQQyG4X7RsHdwPyVJVNUkjqJaW4NR17q0XIA4HfKg9Ffh0N+T
	BwTkcUpMMv/YhA5II/Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvwfA-0006Vd-Np; Fri, 09 Aug 2019 04:38:00 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvwei-0006Lw-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 04:37:33 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id E0AF320355;
 Fri,  9 Aug 2019 00:37:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Fri, 09 Aug 2019 00:37:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=EoJ2wwxdmR03d
 fpAYPe+gJYviPTMS5bz+4dOnD3WST8=; b=VVvSS6nQtwp9ReVHsB74mR5ERcHfw
 LhoRQiz7hP/DsK6tJsN3qomhJX7j5v4JljfrAyjMDk8w8kEJl0Hr2yNeabuEGc63
 nvf//Dz7tVn1pVUYtf6VUQrMuZgU2H/3cUwlN7ccGbz3ZVUB6bNVhzaGyVzmC6Ur
 R0cVIJnSUNd8MC3MxrikPKqFwCgpsClyrzBHM0ATYiB1lJiz0xO4voKPYfOo1CpB
 /E3x7b+6ZYJdCQAuhZAGaW58tYdQy2kstiH5Ta6Y/kAHJuVVYD5NOt0uMWf1rBYS
 dDWlP+GnaeSy8G5MccAk0MQcvym5VdtP7UfzEKAXz1rH8HDIF7JYYIEkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=EoJ2wwxdmR03dfpAYPe+gJYviPTMS5bz+4dOnD3WST8=; b=Zct7FONo
 nij4Phl4eU2Y6zax/dG3Bh8Ly6QW4+90o794JvW1n/qDxQG3ixLi8qTZOwD5Umui
 ZmpZxIJnqV3LRH6t2zphuKPaXvre1IIwC8YlXhMfXmeIFIhjbUfhZtRW+QFwWIcp
 TsaF9TLyLDjIApMpWBr/1yUctmo7xlPI2V7jnJVccGqHsBsJVJexA/uGsirc/1t2
 o6M1mc3CYbYz0uhhMagtEfY/Huyf+AvFcjEIckYDGITVuWIIPqK6WSaXfgGoa6Gg
 salwgfjck3RMEldVWp9NQwOmaF/bpLyHmi5ysBbOSUS6zkSHzUy9wOF9W3RE3+2h
 wiTjZHfpUhIVVA==
X-ME-Sender: <xms:h_hMXfQHdaICBDrtHlhxUQhdl0ggvpCzUfAZHTMPGhUhiJu3bt7XwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduiedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgr
 ihhrsegrlhhishhtrghirhdvfedrmhgvqeenucfkphepjeefrdelfedrkeegrddvtdekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishhtrghirhesrghlihhsthgrihhrvdef
 rdhmvgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:h_hMXb_Y6A1vAhJDUnFlMgl2jmSLz8R1yV6vxIpzxRkK9P73b9xn5A>
 <xmx:h_hMXYphLM1MwejGBvk365Vh8aREL4Tyd447Wuja8VCbOjBVhmmGUw>
 <xmx:h_hMXZWJbLFeu3a8HyoWSJ1v6VIl9GvjMjbZvJUum0vspwGtfWJ3zg>
 <xmx:h_hMXToeHxzVZ2mhB8OEUuJHzQH5IND6utFl7l0FK6va-qtKHhai1w>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC01A380074;
 Fri,  9 Aug 2019 00:37:26 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: defconfig: Enable sound drivers on Allwinner
 devices
Date: Thu,  8 Aug 2019 14:37:18 -0700
Message-Id: <20190808213718.12270-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808213718.12270-1-alistair@alistair23.me>
References: <20190808213718.12270-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_213732_124045_7E80C930 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, Alistair Francis <alistair@alistair23.me>,
 will@kernel.org, catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the sound drivers for Allwinner devices.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b17ed20e1754..3dc12c3b9bf8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -550,6 +550,12 @@ CONFIG_SND_SOC_ROCKCHIP_RT5645=m
 CONFIG_SND_SOC_RK3399_GRU_SOUND=m
 CONFIG_SND_SOC_SAMSUNG=y
 CONFIG_SND_SOC_RCAR=m
+CONFIG_SND_SUN4I_CODEC=m
+CONFIG_SND_SUN8I_CODEC=m
+CONFIG_SND_SUN8I_CODEC_ANALOG=m
+CONFIG_SND_SUN50I_CODEC_ANALOG=m
+CONFIG_SND_SUN4I_I2S=m
+CONFIG_SND_SUN4I_SPDIF=m
 CONFIG_SND_SOC_AK4613=m
 CONFIG_SND_SOC_ES7134=m
 CONFIG_SND_SOC_ES7241=m
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
