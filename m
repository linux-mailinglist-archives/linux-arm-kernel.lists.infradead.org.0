Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBFB96643
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n9AFCWj0g62tH/hpYfhj+9Rd/N/zqKI4+IUksxcqzB8=; b=qYh9W1qsu4HH6G
	2KNfmo1m6OhiRJew0A0HrXABeqhYGis5EGPvVX5EEnf5Zlfr6CwJtlhCaaI8WgJ25EZlsQiJntop1
	1oWt1iNl/sr0xc5VrbYuVLJbgeQI1xXs9pc3rZsv4VDmoPvT52m7/WfOqr1R9Q5ebkTViTwSG1q9u
	FVGAbI3aS19csSWKeGFkqfe3hmWQIZuiHhlQBgN02ECc7psond4btmcoihTAxwXR9M+LnbVBIZY6+
	eb6uDXlY2RZnpHns7eJSt7oLK7A4NgaPj9GAhDcHo3ZUXN8Jx513XzFwXddtecMUZrIpatpPVcHDi
	UToXcVNemMCX8AghUAfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06wb-0003xA-Im; Tue, 20 Aug 2019 16:25:13 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06wI-0003uG-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:24:57 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: fWI45YppRXL2cpH01hnpCc35g1Ub3xWS0ia640z7pOG9bho9JkilCCrM1QxwhvGUmjrDzgDRX6
 TxVKD/N1hrAsGaHqkJwwTCXRFj78iiO+EuhUTWIlNaV+a22DTk9683gB5rTrcrK1MrVdBXq0tI
 cGp3a3Oo1oSDd6pRzUQKMhILHo9ZkQNgs9kfH6UvJAhtNprxhKE3XVe1quppvJ1/m0B3f0xvhA
 zqhDXjCFvKhzLUL+5BzajbC4DA0w55INwMA3S4OwocNZjqxFV63LtMgwm5ZF6DhAFiUQcjjgIB
 hQM=
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="47246835"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Aug 2019 09:24:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Aug 2019 09:24:46 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 20 Aug 2019 09:24:43 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <alsa-devel@alsa-project.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] ASoC: mchp-i2s-mcc: Several fixes
Date: Tue, 20 Aug 2019 19:24:08 +0300
Message-ID: <20190820162411.24836-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092455_129988_0B474B7C 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, tiwai@suse.com,
 ludovic.desroches@microchip.com, broonie@kernel.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>, perex@perex.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This pathset fixes some issues detected while testing some more the
Microchip I2S multichannel controller. The first two patches fix some
issues that appear mostly when hw_free() and hw_params() callbacks
are called multiple times. The third patch fixes a problem caused
when the controller is in master mode and both capture and playback 
are played at the same time.

All three patches have a "Fixes" tag. Although they are independent,
some conflicts might appear if they are not applied in the order
presented in this patchset. If so, please let me know so I can rebase
them.

Codrin Ciubotariu (3):
  ASoC: mchp-i2s-mcc: Wait for RX/TX RDY only if controller is running
  ASoC: mchp-i2s-mcc: Fix unprepare of GCLK
  ASoC: mchp-i2s-mcc: Fix simultaneous capture and playback in master
    mode

 sound/soc/atmel/mchp-i2s-mcc.c | 111 +++++++++++++++++++--------------
 1 file changed, 64 insertions(+), 47 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
