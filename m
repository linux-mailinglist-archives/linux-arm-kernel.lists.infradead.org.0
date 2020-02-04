Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A3F151897
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzS0pKD3d6wP6Bn0xcSqtvP0LUFK5Npe6NkLZRuFRa4=; b=HrsetBpb57eE8G
	5gtCqJ8yC80xeOT85jLWMJpYlOxHqeLGH9Rr5PD9FwAoA8rToyW4ZDJXRUwnhuoHd0YKS+bwDXlRi
	bAeeUAztrcSw/MOyATJo/Hkp4s/ZiZJZYSGtoTFPsbfKI/dJ8bQkrmtap/mVy9P0sIljKo29XzASJ
	HqahjbQOjnKPvX0yQuGjxVBCm39s44XxIdYibrXWlvG6bajKF+XQCo3KZ4rL6EtGqjAZHbcgvIa0/
	CH3T+yvwTQtKnBBCSeHBLEWY1iZBFEEn3nJezPjc5m7eg/yXCik0SDUoTUxim7NIHbd0urkD67Ewa
	6QiDE0HiCT3ZabR4P5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvAs-0000jG-O2; Tue, 04 Feb 2020 10:11:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvAL-0000RC-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:10:49 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014A908D023221; Tue, 4 Feb 2020 11:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=bynwKHOvmYrMdBjWIN3mSQft3h1Fd9t3e5EyZkaHA9g=;
 b=jb6ZJy99dPXxMR+ZgY85UOP7tZ1hkEEGmJa+dqeER6ysYB89DgS7P1KsngOwjBqXeR8Q
 qBGTNSpTE107VY0DRI/TQgLa0RN5m53AFg8ckzb98qAY+DiY3+Rj+8ojoW1ICZAQ/Zdh
 PqHYXGh3je0EzRCa3qDtwuEQCyk6JgKOHacr47iYXbgMBTG/H/w1K0XL5m6j0qBvlZ0k
 y4fUojNS4A06PF4db/dRnVgFrv/5QbWaSUvPX2i55L+a2h0sjLtN9UE6WCfEJGNS0OJ2
 vfWEeKmxSUxUcOPMPfo8fPhkOo9CVgUXUemqs5Au3cYsbHpzVyKXVn6ebMra+RCrx37H xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvyp606r1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:10:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9C95910003A;
 Tue,  4 Feb 2020 11:10:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 884552AD9DC;
 Tue,  4 Feb 2020 11:10:32 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Feb 2020 11:10:32 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 3/4] iio: adc: stm32-dfsdm: use resolution define
Date: Tue, 4 Feb 2020 11:10:07 +0100
Message-ID: <20200204101008.11411-4-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204101008.11411-1-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021046_526076_E1BE9FDF 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use resolution define instead of hard coded value.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 2aad2cda6943..07b9dfdf8e76 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -1440,7 +1440,7 @@ static int stm32_dfsdm_adc_chan_init_one(struct iio_dev *indio_dev,
 		ch->scan_type.shift = 8;
 	}
 	ch->scan_type.sign = 's';
-	ch->scan_type.realbits = 24;
+	ch->scan_type.realbits = DFSDM_DATA_RES;
 	ch->scan_type.storagebits = 32;
 
 	return stm32_dfsdm_chan_configure(adc->dfsdm,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
