Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575CD1A1743
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OXIvuN+ItfmAtnzKDECCHIOsq+YDRZuiIeQj6Qu5S9c=; b=Bm9xOed1vWIwsA
	+W22jKswwInOlvh3yrPwxfdLnQ5vvsbz9cLtyGot0htMST/emZO92gghsZqSdIQGq5hFpL2gnPEKi
	ad1ZiUsjj6zZfbb8MsV7f603xYEj6oZ+YLIhTedTCrekT4IvK132pEAzA3d3X1N5pIA0mLX6xppPb
	2LPJMF5+j6s/NC3JYx57x2aSzXp4xKFNxYW6eFkjClRNhyKT8V580et2hV6V5+A2bwMWuR9Ez6l4b
	gmdKdM/299ai3JPSBhuYePfXtXWgfYFBledkrwcLNVDT8MLAhQfA562MCX8OI6qKlGDb6sey5C5HC
	WUzI404Kcxi6APRNWfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvWp-00017N-0F; Tue, 07 Apr 2020 21:13:03 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvWh-00016L-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:12:57 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 13A81FF802;
 Tue,  7 Apr 2020 21:12:42 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm: dts: linksys: rename codename to model
Date: Tue,  7 Apr 2020 11:08:10 -1000
Message-Id: <20200407210816.866084-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141255_588744_BE26E734 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, Paul Spooren <mail@aparcar.org>,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 daniel@makrotopia.org, freifunk@adrianschmutzler.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linksys chose to use codenames for a few of their devices and sell their
them under an entirely different name.

codename  model name
rango  -> wrt3200acm
mamba  -> wrt1900ac
cobra  -> wrt1900ac-v2
caiman -> wrt1200ac
shelby -> wrt1900acs

This introduces some extra loops in OpenWrt, a distribution specialized
on embedded Internet facing devices, as both codename and model name are
used within the build system. The double naming requires developers to
keep track of that mapping and introduces inconsistencies:

To build a specific device in OpenWrt profiles are used, named after the
the compatible string for targets using device tree (similar to how .dts
files are named in the linux source tree). However, the first item of
the DT `compatible` list in this case is `linksys,rango`, which is
inconsistent with the model name and not what common users would expect.

Such double naming complicates currently the automatic search for
firmware upgrade as the build system does not support such mapping.
Ideally the first item of the DT `compatible` list would contain a
string suitable to be used as a filename recognizable by normal users to
belong to that device.

With this patch set the Linksys device tree files are moved from
containing the codename to contain a sanitized model name and also use
it as first entry of the DT `compatible` list.

Paul Spooren (5):
  arm: dts: linksys: rename rango to wrt3200acm
  arm: dts: linksys: rename mamba to wrt1900ac
  arm: dts: linksys: rename cobra to wrt1900ac-v2
  arm: dts: linksys: rename caiman to wrt1200ac
  arm: dts: linksys: rename shelby to wrt1900acs

 arch/arm/boot/dts/Makefile                    | 10 +++----
 ...n.dts => armada-385-linksys-wrt1200ac.dts} | 26 +++++++++---------
 ...ts => armada-385-linksys-wrt1900ac-v2.dts} | 27 ++++++++++---------
 ....dts => armada-385-linksys-wrt1900acs.dts} | 25 ++++++++---------
 ....dts => armada-385-linksys-wrt3200acm.dts} | 26 +++++++++---------
 ...ba.dts => armada-xp-linksys-wrt1900ac.dts} | 27 ++++++++++---------
 6 files changed, 72 insertions(+), 69 deletions(-)
 rename arch/arm/boot/dts/{armada-385-linksys-caiman.dts => armada-385-linksys-wrt1200ac.dts} (80%)
 rename arch/arm/boot/dts/{armada-385-linksys-cobra.dts => armada-385-linksys-wrt1900ac-v2.dts} (78%)
 rename arch/arm/boot/dts/{armada-385-linksys-shelby.dts => armada-385-linksys-wrt1900acs.dts} (80%)
 rename arch/arm/boot/dts/{armada-385-linksys-rango.dts => armada-385-linksys-wrt3200acm.dts} (83%)
 rename arch/arm/boot/dts/{armada-xp-linksys-mamba.dts => armada-xp-linksys-wrt1900ac.dts} (92%)


base-commit: 7e63420847ae5f1036e4f7c42f0b3282e73efbc2
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
