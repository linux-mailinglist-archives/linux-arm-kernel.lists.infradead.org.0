Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5F21391EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DRdcgE/r+ZNi2KSATNqqqWa5Tj/LYn2dKulwQdCpxgQ=; b=OaSacai/BheqLS
	Vv5olLHsuQGNrW/XNNN/x96zot5q5BiObbP90ErceDmxJrbH8pJNPC5O2SQJf9uhuo6OoLgLqWNo2
	tC9HJAZfgnJ1cwhmCWwconym4jKvvLLzViZHl4kRzMpSTuw5+8BV6vQCA3P+sX/BVkw7o6mSCL8Zv
	vUvIIikRZDXyn7mAf66PcBEogwdhkFQBeZJ4K6Efvy5WRcjGLpbamblwzLRM1hTFLco5bP2VVqspo
	PPU7QvlUo1/pP8OiO/IhV1j3Fifz/70MD5a1+sGJiHPpE9NwsV3zl4gZ/fMqoOi2X8hY5LNc8Skhs
	M86dkuA7P0Hb12XPLYpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzZR-0000bS-Oh; Mon, 13 Jan 2020 13:15:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzZG-0000YY-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:15:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00DDCaGo007821; Mon, 13 Jan 2020 14:15:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=O+MJ9qBjNJqJgFNGVwTg0BXY0E/KsooKUuDgdHOTWEQ=;
 b=TGNjHycrAY30719TczLelyFBJzsNKGpS/wbYvNgDeX1YVwBQKnPHlgN6sH87SAFIsgup
 bz1E2ZHRnnqxb0BhBht6Cmzj6rOMkiKGOm+DKfWYV5+8Rxbk2DJjLJG2YR8xh21cOVH3
 j9d4x/iRjzFv176f12F4qUN4wqjlQ4aFxmYkK5H38nvLvVz7KAM158EYZz/pw3NjZgVV
 bAJWMdWgsc8cEJBOYgQgAv5RTwalczpUtJeuXnTjyiwA8y/3ju8uf/fcU2Ypd06buhQC
 NHVlWEIZtE/Bf88PFcYDxVaUBY51tjD6N/mc9nS1J661WokJTaEKtlxhcHPSgzYoV6Dv 5Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jp85wr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2020 14:15:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 64FAA10002A;
 Mon, 13 Jan 2020 14:15:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 51D7F2B8211;
 Mon, 13 Jan 2020 14:15:33 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 14:15:32 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH 0/2] iio: dac: stm32-dac: improve reset controller use
Date: Mon, 13 Jan 2020 14:14:24 +0100
Message-ID: <1578921266-6025-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_03:2020-01-13,
 2020-01-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051542_751145_F529240A 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: etienne.carriere@st.com, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does some cleanup on driver private struct (precursor patch).
Then it better uses the reset controller API to propagate errors to the caller.

Etienne Carriere (2):
  iio: dac: stm32-dac: use reset controller only at probe time
  iio: dac: stm32-dac: better handle reset controller failures

 drivers/iio/dac/stm32-dac-core.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
