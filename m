Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF9127F84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yjC4hEDK231q/m+CmuRzObWiIE1OxqoIPMTjJrr1qw4=; b=MUk
	i0QzMt8xZcsK7V8y/gBVHo1PyakQOqWAw2jr7KEAA/4FO4usqwsWnk0QTPiGuLF4Q5je5rZC1B4Ar
	DbDYJ5+xqw4U3xLOSRPcuDFHk7gXHIsxBqzkkvj4AgTdyI6NukDTC6UD/0pa7J8kpMsBIoh/B8tO7
	H2Hci8GvspiMdO/3uxeR/fdehhvK1NzVjPsxziCi4gQqzzo2SKgUl0X/aJYiPUHxvt9TuIuLK0HHH
	IHnReVq6bEds4bVoy2CMU9GhbkGNdu/MAClHu9bT4GA61dKBeUQ/rKDDypstp+IQWjBOVrJpKDsHh
	58x5nx/m6irVw3GJUyJLL/VE/H4QmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTofS-0000Tv-KZ; Thu, 23 May 2019 14:26:02 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTofJ-0000TE-So
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:25:55 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id B954725AD85;
 Fri, 24 May 2019 00:25:50 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B6EF0940504; Thu, 23 May 2019 16:25:48 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH v4 0/8] arm64: dts: renesas: r8a7795: Add IPA support and
 dynamic power coefficient
Date: Thu, 23 May 2019 16:25:36 +0200
Message-Id: <20190523142544.1273-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072554_199220_A76197F3 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Simon Horman <horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1) Setup a thermal zone driven by SoC temperature sensor.
   Create passive trip points and bind them to CPUFreq cooling
   device that supports power extension.

2) Describe dynamic power coefficient of CPUs

Changes since v3:
* Minor changelot updates
* Include updates for r8a7796, r8a77965 and r8a77990
  (omitted in v2 and v3 to reduce review/preparation overhead)

Changes since v2:
* Break power coefficient changes into separate patch.


Dien Pham (4):
  arm64: dts: renesas: r8a7795: Create thermal zone to support IPA
  arm64: dts: renesas: r8a7796: Create thermal zone to support IPA
  arm64: dts: renesas: r8a77965: Create thermal zone to support IPA
  arm64: dts: renesas: r8a77990: Create thermal zone to support IPA

Simon Horman (4):
  arm64: dts: renesas: r8a7795: Add dynamic power coefficient
  arm64: dts: renesas: r8a7796: Add dynamic power coefficient
  arm64: dts: renesas: r8a77965: Add dynamic power coefficient
  arm64: dts: renesas: r8a77990: Add dynamic power coefficient

 arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 54 ++++++++++---------------------
 arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 46 ++++++++++----------------
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 20 ++++++++++++
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 20 ++++++++++--
 4 files changed, 71 insertions(+), 69 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
