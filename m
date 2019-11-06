Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D967F136B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l7GU+M9bVTlSo+0JtFwfPgn4ys+0ZTGSj58Ylh/O+9E=; b=rmHF0/RTiE5DU5
	RakDPUSNbYzfXPbd7Lo51zVg5UYseANU+pScul6UaIOvsKPKnC082BJD5bWTacygt2Q4xfnS4v6Wc
	Z0tpWt7h4jBkWPbHY08M9gCByC/Rwg/E+JvNrhXyuTfg3vFsZwljE9QE/MmXZ1oDfZTlu+P9SVmY5
	/JkZcPZrStiDgJq7CfuRgpvz9v3kIuYeuA9k6ooXnd/RtqX3FWqQQSSpgayeJPAH3Jeyx/LYVEh3P
	5bKiKr8ETqZQKcBSnIIiZJz8ZIgEGT9milsv8BZcGuDzjL6YpOYHKKB/oHSeVRSOEqi3bzcwNwUOw
	LjzajdO/+xH1eRTcAlEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIGF-0000OG-EL; Wed, 06 Nov 2019 10:09:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIG7-0000Mp-4y
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:09:52 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6A7GcF003655; Wed, 6 Nov 2019 11:09:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=yLZQUtSjGSzVnw3BQOy5OFmY0CJnDZp/NP+2DESObLk=;
 b=idirxlLFT+vl2IaaPyGgU0OET9Yr/TDjr9KawtKmQq6iuKpbsbkGS30z4BzQmtpy3Tr4
 QmBdUCyjzpiS2Ik0RAcJXqwcSEQtCT8ei72WPPZ+sImt2p18GiwOtxRFWrMfz7FrCJAq
 4Lz4NOyG7Rlw6CvpVquJsFAQkITksbob04LQii9VNo1KK7QX0K5xyrhXZkcHFLXayKDV
 gQgyBWSAKJVRP6R+Nc17MANoynKaIHhmqkW+9FaoWW/kCT6YCXiEhzoroD8ZpAXhS89U
 kstsnOyXveFL25nQs0T70wElrKjitdX/IeNkyHdqF2DSGj9yeib+MNXZnrdJKsQosf0e rQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054vs3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:09:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8DC01100034;
 Wed,  6 Nov 2019 11:09:41 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 776892AD337;
 Wed,  6 Nov 2019 11:09:41 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:09:41 +0100
Received: from localhost (10.48.1.131) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 11:09:40 +0100
From: Yann Gautier <yann.gautier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 0/4] Update sdmmc nodes for STM32MP1
Date: Wed, 6 Nov 2019 11:09:34 +0100
Message-ID: <20191106100938.11368-1-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.48.1.131]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020951_566419_95CDC751 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Yann Gautier <yann.gautier@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The STM32MP1 SoC embeds 3 instances of the SDMMC internal peripheral.
The sdmmc2 and sdmmc3 nodes are added in the SoC DT file, as well as
the required pins configuration.
The boards DT files are also updated:
- An eMMC is connected on SDMMC2 on STM32MP157C-ED1 and EV1 boards
- SDMMC3  can be used on the GPIO expansion pins on EV1 and DK1/DK2
boards.

Yann Gautier (4):
  ARM: dts: stm32: update slew-rate properties for sdmmc1 on stm32mp157
  ARM: dts: stm32: add sdmmc2 & 3 nodes for STM32MP157 SoC
  ARM: dts: stm32: enable sdmmc2 node for stm32mp157c-ed1 board
  ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards

 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 200 +++++++++++++++++++++-
 arch/arm/boot/dts/stm32mp157a-dk1.dts     |  12 ++
 arch/arm/boot/dts/stm32mp157c-ed1.dts     |  16 ++
 arch/arm/boot/dts/stm32mp157c-ev1.dts     |  12 ++
 arch/arm/boot/dts/stm32mp157c.dtsi        |  33 +++-
 5 files changed, 263 insertions(+), 10 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
