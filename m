Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA7212F4B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EiSEHvnFADNgpQlB/4uSqyYPGDrc5kRXtSpHgLqHHBw=; b=EA2EJ+kDMnCGKx
	NhDk0czRZ6GoPN6Df5jpBKHJ6o9Fqj+KfQ4jqnP3owF9KKXluwAPanCpfwXpZGNs1CbOFohuAByzp
	gyPyn6vqDmTMa3UNIKopLwd2b0ftxHBJka+nk9upPG/JDeSYJEqqpw8gs67+SQ7IgvVdiJMTojAIV
	0VN2wExQM6ktLzZfbM+I5+LExSF9Yjsn4Ifw+/kT3T8oJm24uJEKQq4NRcJjAX1lMRHhXjvHCR+9O
	Bs0X95h0sQFqU800PBYFhkCAXn23WQW8+0nspqrMBes7tKrzcOw6Jg8ewwkNFVGY87MWCzIaSr7+X
	+HU0VjQDEJJpqTVjx0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGjf-0007Al-E0; Fri, 03 Jan 2020 06:47:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGjX-00077c-MR; Fri, 03 Jan 2020 06:46:57 +0000
X-UUID: 28f561b3c62d44109143704f564a42d3-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=ih+VIQfKXduOjptVm6qmEZ+ILG81EfY3C/tspmpMToM=; 
 b=QZjmnx6+7vSaqjC7GGJ5CaY5BVyCt0Kl7Tx5BKUUG9WYwzSK3AJCkZpB9VRClHNHnFD3fbWK7ITN5VO3X9qB+plVtgX1Vdk+PBUwuy7bNYkTzvj5KIJNZmqlKWYnmDkD8vAcQIqgrilsiN2t3wt6QtcuroisWKwNcctOwIYHAjo=;
X-UUID: 28f561b3c62d44109143704f564a42d3-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 954939942; Thu, 02 Jan 2020 22:46:50 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 22:44:34 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 14:43:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 Jan 2020 14:44:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH v3,0/8] Add Mediatek thermal dirver and dtsi 
Date: Fri, 3 Jan 2020 14:43:59 +0800
Message-ID: <20200103064407.19861-1-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_224655_741504_52AB73AB 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset supports for MT8183 chip to mtk_thermal.c.
Add thermal zone of all the thermal sensor in SoC for
another get temperatrue. They don't need to thermal throttle.
And we bind coolers for thermal zone nodes of cpu_thermal.

Rebase to kernel-5.5-rc1.

Update content:

[1/8]
Update sustainable power of cpu, tzts1~5 and tztsABB.

[7/8]
Bypass the failure that non cpu_thermal sensor is not find in thermal-zones
in dts, which is normal for mt8173, so prompt a warning here instead of
failing.

Return -EAGAIN instead of -EACCESS on the first read of sensor that
often are bogus values. This can avoid following warning on boot:

  thermal thermal_zone6: failed to read out thermal zone (-13)


This patch series base on these patches [1][2][3][4].

[1]support for reading chip ID and efuse (https://patchwork.kernel.org/patch/10902131/)
[2]arm64: dts: mt8183: Add reset-cells in infracfg (https://patchwork.kernel.org/patch/10908653/)
[3]clk: reset: Modify reset-controller driver (https://patchwork.kernel.org/patch/10908657/)
[4]PM / AVS: SVS: Introduce SVS engine (https://patchwork.kernel.org/patch/10923289/)

Matthias Kaehlcke (2):
  arm64: dts: mt8183: Configure CPU cooling
  arm64: dts: mt8183: Increase polling frequency for CPU thermal zone

Michael Kao (6):
  arm64: dts: mt8183: add thermal zone node
  arm64: dts: mt8183: add/update dynamic power coefficients
  arm64: dts: mt8183: Add #cooling-cells to CPU nodes
  thermal: mediatek: mt8183: fix bank number settings
  thermal: mediatek: add another get_temp ops for thermal sensors
  thermal: mediatek: use spinlock to protect PTPCORESEL

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 157 +++++++++++++++++++++++
 drivers/thermal/mtk_thermal.c            |  88 +++++++++++--
 2 files changed, 231 insertions(+), 14 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
