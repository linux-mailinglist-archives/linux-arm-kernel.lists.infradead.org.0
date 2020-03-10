Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6918054E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MQjb4gHrztZayQx9Gi1Q/axHCfmWG2Aq+CwnwzZyVN8=; b=niBx7OpxQINcTY
	1d6TDzj19eb4NaHUyC2Kz53NtNnEj4iqLMH9O4smPvqXHHdYltIFpqBdxYcwFTgC7LJx0PeJ03XlC
	A/olSHgEn6NBW4ARyoTsxl+XjvP4xXg7esFXJY8336gvh7tcGsnrrdtm1+sGJls+fIMoFjF6tA9Gm
	3cUvoIDL3YVQ3FkrglANWspIh1rIBXbngtmeYjeL6lwtPrc7acYdyy/YOn6R6T/COsUPjrXiJ1/WI
	GCabAtyJtvKSOFoIu1Gl/KIv//45WRuIGqx8N/JpFfGGY51BfiQEY9UhHFixdIOugAxogYae2ZFbb
	pr2frYQWLj9gImT8Knpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiyQ-00083s-Gy; Tue, 10 Mar 2020 17:47:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiyH-00082l-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:47:15 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDEC320727;
 Tue, 10 Mar 2020 17:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583862432;
 bh=Oh9ZvT4Bvl8uZds2f5cLSdbfHTOwhbdXpqse6mjFJ8A=;
 h=From:To:Cc:Subject:Date:From;
 b=nqX5P860kUst2mq+YE/8D+trqHK9MpxmtbDRBdlzzFY4I5MkI3QoiUu/T2WdWHAfr
 dei9VWzgsIc6vPDp+YkvTMgixX5B2wy4AJ6Ne9vS676l14agqOGeZDwM8+LeeMmPoC
 y92YWqKfDtGo8NqqZjgQYrfAP5NNR2cxtN7JCq3g=
Received: by wens.tw (Postfix, from userid 1000)
 id 031656045B; Wed, 11 Mar 2020 01:47:09 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 0/3] ARM: dts: sun8i: r40: fix SPI address and reorder nodes
Date: Wed, 11 Mar 2020 01:47:06 +0800
Message-Id: <20200310174709.24174-1-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104713_937991_87C3B405 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here are some fixes for the R40 device tree for v5.6. The base addresses
for SPI2 and SPI3 were incorrect and are fixed. I also found some nodes
were not added in the proper order, possibly because git matched the
incorrect place when applying the patch. These are fixed as well.

ChenYu

Chen-Yu Tsai (3):
  ARM: dts: sun8i: r40: Move AHCI device node based on address order
  ARM: dts: sun8i: r40: Fix register base address for SPI2 and SPI3
  ARM: dts: sun8i: r40: Move SPI device nodes based on address order

 arch/arm/boot/dts/sun8i-r40.dtsi | 126 +++++++++++++++----------------
 1 file changed, 63 insertions(+), 63 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
