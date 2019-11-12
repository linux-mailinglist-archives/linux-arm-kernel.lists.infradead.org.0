Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491DEF9077
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k1+AA3zn2ktlYib+WBWoPXN9YAQA2UPWdEaHo43EAKc=; b=sLTWcGZUsyYG9A
	GiEaVdZt2PJM0BTIRtREkoBmvcBruaZDAiV7pTKRelm7GozNvSjl2b37ZMJrv76vULhdYQ5EjeAq7
	ampJa/1dr8Clw3fCjgPNxSFlyGg70DkJlJwZ2Hs/GaExfpGIs3jmFQ86o9/guy+pZJf58dkgMPKju
	l3okhGPmTQ/4YeJzd2/4nbTpBj4+lPsFMV6/DGRtZU5oZ0gRvRoyCfsBYIUtkwxwyWK7sc/PPqVdu
	vUPmvakMr1sqJkdXAH1sqG3IAhVeRS2xjNhePZYOryk4uXp42swTAKrZisuA2GH85CsQFdl4ayxvQ
	JI6ugnLgBmzLzYYCC1lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW63-0002NZ-2J; Tue, 12 Nov 2019 13:20:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW5l-0002IU-Rm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:20:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id q28so12843129lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0pZeHJXrkcOE52JT+BLqoRf59jEWL/uBcfxLoGjjwKQ=;
 b=DUMIM24ILNaW7JrnAwsV7kKLEPHiTz/bkIaUMXL4XqBJHjuXVhmATdQWCeqUl5qDbI
 DAujvN5K84e2xlLvUUPHplVV0UMkPQ/36Bw4nTkvDua5kXv8zQBupu0HgUApQbTJ17nw
 +00cRK0IBB3mWLN4xaktL/eZB4w40NTQYYGXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0pZeHJXrkcOE52JT+BLqoRf59jEWL/uBcfxLoGjjwKQ=;
 b=SpidGK7jcjNfgl8XTp6no1ydzB+fotHQYndbGJr8iNABx63MJhZAmdPN7wfjobBdTf
 oOJ9KJ52YaG5F2c4dcI4l59oPs/7iAxBwsWMm2lcitKX1ViWxda0wEiTzKOOxj3PIRDs
 vh7Cvf2HC4peb4cV6G78z92GnzsbqctAHVihEiYbEbmDxiYxAH43ydal7vt6fl0cJCbv
 8SrXwl9DqyyH9IPQ2gmv0WSHO59sKKVB2y8RWHZ3BcaRgrSm5dLvdlRziC7CSgPfAZz/
 2WQd20fF6C33x4K1nf6I10lSRgWg7uP2zhpH4KF+3KbhKmOM3XAvKpvPS4XBzRY7uYz2
 ITog==
X-Gm-Message-State: APjAAAUEpisTXuKW4bhBbnLd9ZklkySg+d/n/mYmhjnWwQEAWSeIZkxU
 PpQV2Meck1sRy78P1w3GufKttA==
X-Google-Smtp-Source: APXvYqzxHffr4e1+dAJjjPz5zrGyAj/4YB2n45y1G8UEWMUh280NYl3CkA9jXpQXK6Xr81MsFj7yfA==
X-Received: by 2002:a19:5e0e:: with SMTP id s14mr19338765lfb.30.1573564814637; 
 Tue, 12 Nov 2019 05:20:14 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id f20sm869050lfc.75.2019.11.12.05.20.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 05:20:14 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] ARM: dts: ls1021a: define and use external interrupt lines
Date: Tue, 12 Nov 2019 14:20:08 +0100
Message-Id: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052021_913325_EBA3CE16 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A device tree binding documentation as well as a driver implementing
support for the external interrupt lines on the ls1021a has been
merged into irqchip-next, so will very likely appear in v5.5. See

87cd38dfd9e6 dt/bindings: Add bindings for Layerscape external irqs
0dcd9f872769 irqchip: Add support for Layerscape external interrupt lines

present in next-20191112.

These patches simply add the extirq node to the ls1021a.dtsi and make
use of it on the LS1021A-TSN board. I hope these can be picked up so
they also land in v5.5, so we don't have to wait a full extra release
cycle.

Rasmus Villemoes (1):
  ARM: dts: ls1021a: add node describing external interrupt lines

Vladimir Oltean (1):
  ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs

 arch/arm/boot/dts/ls1021a-tsn.dts |  4 ++++
 arch/arm/boot/dts/ls1021a.dtsi    | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
