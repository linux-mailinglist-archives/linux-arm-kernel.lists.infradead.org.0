Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE12015187E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F9Zmj/7U8wL07QJ4JhGsupiY/zt9UfKSr/PIi4iIK88=; b=D+TgwWecdu5ezH
	n1v53L9rAhfQbNgKRonM8zZHXEc5+63jszzyiW7TfosRawPKOs4LksSLMvZRJF0SetKZhXVY+Yv1B
	S6wsXhn6EfGsSacLkpFs0E4lJYqB/zafD8YLOBEKc/u2k2UAJ1U/EGAwislULH/SWxnsc5bCPH5wR
	6DqYeUmNIm9ySRFYobTrtXoUsEPy6LNvgB/eTw36vv+sh3iuM+xDPHOY7A1yhL6h+sK6hM+W+xYBf
	Btsra85h/80SPKqs4DJsa2bcqYHGIodxnHMB/k9jkrf+zYsVLSiHDpOJEVM5D/lo42+R9K9ffKGAQ
	V+dICAG1monEaAsc8EvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvAU-0000Ss-Kw; Tue, 04 Feb 2020 10:10:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvAM-0000RJ-1Y
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:10:47 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014A7H6a001051; Tue, 4 Feb 2020 11:10:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=TnBSytEiuHjckJKgIBTRVB3ZknyBFrwKpM8hL2Jzguk=;
 b=wb3Mffm5nr64Cy7DS5Ugp9NJ58r5+3SliuunDgsZmtp4Uzt5Y/crEAjOJKw/Z1ONOIrv
 6Z40Oa04gMOmNrdxiYLAGZreVnLAOSDMi8nllw6SvVPo45PdJr93LPs1wtso/SP2lMfE
 73WSgSPjhB1OnB1x4eC6iHgjopnetFwVp+E16aSLEOBN2Phr1dAoQmX0xa08U90hTzNg
 7lv4S7UmFwmxC1jIOlp+qm3l4YcfIoCIyUBReFFgfKXkH5aU0uArkEcmGYIz9nwfA3z0
 Q98loFxGqyD3N1W3Z3NcWpNjnqEG+LfzxbnOtfzpiVT6262tDvAMFVGdQ8V20MGcMAkI Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw13nr6wa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:10:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7F5F810002A;
 Tue,  4 Feb 2020 11:10:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 631C82AD9D8;
 Tue,  4 Feb 2020 11:10:30 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Feb 2020 11:10:30 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 0/4] iio: adc: stm32-dfsdm: add scale and offset support
Date: Tue, 4 Feb 2020 11:10:04 +0100
Message-ID: <20200204101008.11411-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021046_518159_6321B1FE 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

Add scale and offset attributes support to STM32 DFSDM.
Also add scale support to the SD modulator, which can be used as input for the DFSDM.

Olivier Moysan (4):
  dt-bindings: iio: adc: sd modulator: add vref support
  iio: adc: sd modulator: add scale support
  iio: adc: stm32-dfsdm: use resolution define
  iio: adc: stm32-dfsdm: add scale and offset support

 .../iio/adc/sigma-delta-modulator.yaml        |   4 +
 drivers/iio/adc/sd_adc_modulator.c            | 108 ++++++++++++++++--
 drivers/iio/adc/stm32-dfsdm-adc.c             | 107 ++++++++++++++++-
 3 files changed, 207 insertions(+), 12 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
