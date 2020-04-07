Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F225F1A1752
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ih1Y5kYQ/QwaWVpvOrFCJPpfR7hb7diIfPA9a8S/2ks=; b=tmDshhT0XbQ27/
	VkTJdeU25k1tFVgryVoH9qPn6psqQE08Ca+9Jv9TuIYS/OkZzR6PpPw+KIPMEFeY4OsHdjKLEhDWZ
	JD42He/IE5JXPBkdR2Ir7PYGdiHe3/2UAmhdw43lxTt8wU2r5ZGe9QPHnUUZrpDOu/qrTHOtX+u9c
	w+JriqQBWazcwJzlAywHi7oEKnA+PxAEY2yq1NcpBzbFocQs5wlm9s5ED/msJ03mUOfLkm9XLlo1H
	hUHqkfBdYLhprrvde6vOWymoemCb8Fq835HEWRmcEA5rZfbvFkEzTRrvoWFbdXMkhZJX0Pb731R/s
	PUqBDtSC8PU6dcZ6+Ufg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvYQ-0002h3-52; Tue, 07 Apr 2020 21:14:42 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvXE-0001dq-Km
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:13:30 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D2A2DFF805;
 Tue,  7 Apr 2020 21:13:21 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm: dts: linksys: rename codename to model
Date: Tue,  7 Apr 2020 11:08:16 -1000
Message-Id: <20200407210816.866084-7-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141328_860577_633143B7 
X-CRM114-Status: UNSURE (   7.87  )
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, gregory.clement@bootlin.com,
 linux-kernel@vger.kernel.org, daniel@makrotopia.org,
 freifunk@adrianschmutzler.de, robh+dt@kernel.org,
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
device model, e.g. `wrt3200acm`. However as device tree is used and the
first item of the DT `compatible` list is `linksys,rango`, the running
device identifies itself as `linksys,rango`.

Such double naming complicates currently the automatic search for
firmware upgrade as the build system does not support such mapping.
Ideally the first item of the DT `compatible` list would contain a
string reasonable similar to the DT `model`.

With this patch set the Linksys device tree files are moved from
containing the codename to contain a sanitized model name and also use
it as first entry of the DT `compatible` list.

Paul Spooren (5):
  arm: dts: linksys: rename rango to wrt3200acm
  arm: dts: linksys: rename mamba to wrt1900ac
  arm: dts: linksys: rename cobra to wrt1900acv2
  arm: dts: linksys: rename caiman to wrt1200ac
  arm: dts: linksys: rename shelby to wrt1900acsv

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
