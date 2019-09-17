Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0704B4E07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Uq4GU2UjZMi6ceKjcEBsvKgq32IGtuxbxai+0p+Py0=; b=Z0Bniqjoh545PE
	CQlEvalTB6uAyOAdA6l3na7mNA2WkG0umInVKR/wIzzqhc6Q68SUycer6xm+mHssoAeE373vmPC5L
	qDIsq2BxY3YkJwvegyx+CYHhHj9JGo9dPGMkhsHf5fa6QEim48OwcS9fqzac1a5+2X9TBYdsUjiK4
	BfNDhX0UAPLjH2RAfS6Gh181En5X4hAsKMVNK8Le3kwmooKynCmBNS/xV98pOCt11CIzuhGiZk3Lb
	lXrBl5S/ExLDuVM/u2hu6WPpOQwtLVM3BmHc4gDkR29HuENqDDR4x5IXeCc8FVQ3Hsbu5a/zE1ENT
	J66bxK5h8ll0I9Wplfrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACmt-0004aO-2u; Tue, 17 Sep 2019 12:40:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACky-0002i8-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:38:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8HCVred000451; Tue, 17 Sep 2019 14:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=cOyzcoGBpVBGscxdizJshAfCpisInpaxvUv0kh4n7UA=;
 b=hs8Q69x5uVUWDQzS2+p3YDWMe3MHcsv37AZeQ3/0xoguP34cw7Za/Do82lGa69wlPong
 X8Spmagds8nN6KBS31/XpP1tvHJK6x+gGpB3fOtQw20MFfwiJloVOZrxG5ykp4NoOfS8
 /le8tsuXyZhJXCptBSWxeYMui10Wgpufzu9EtEdqlXDLFrxGt9Gyi0GrgqVisvDIxsOS
 jtm71AHG6V1jp3snHSjYWxyg19leJI/8yKsbnPNBIifPWYmNdwYMOfQGdbMQA9gQmAs4
 RoD5bv5Rqg0HESvBG5rafAEhSb35U+wgxG6Y4Y0VkB5xcIUNb+hAiEmVpbrGITiJ+smP lA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v0nb9hpgw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 17 Sep 2019 14:38:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 5491C23;
 Tue, 17 Sep 2019 12:38:34 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A1C7C2BDA7E;
 Tue, 17 Sep 2019 14:38:33 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 17 Sep
 2019 14:38:33 +0200
Received: from localhost (10.48.1.232) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 17 Sep 2019 14:38:33 +0200
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 0/2] iio: stm32-adc: fix a race with dma and irq
Date: Tue, 17 Sep 2019 14:38:14 +0200
Message-ID: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.1.232]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-17_06:2019-09-17,2019-09-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_053856_402017_9F5B02EF 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes a race condition observed when using several ADCs with DMA
and irq.
There's a precusor patch to the fix. It keeps registers definitions as a whole
block, to ease readability and allow simple (readl) access path to EOC bits in
stm32-adc-core driver.

---
Changes in v2:
- Add a precursor patch to follow Jonathan's comment on readability

Fabrice Gasnier (2):
  iio: adc: stm32-adc: move registers definitions
  iio: adc: stm32-adc: fix a race when using several adcs with dma and
    irq

 drivers/iio/adc/stm32-adc-core.c |  70 +++++++++++---------
 drivers/iio/adc/stm32-adc-core.h | 137 +++++++++++++++++++++++++++++++++++++++
 drivers/iio/adc/stm32-adc.c      | 109 -------------------------------
 3 files changed, 177 insertions(+), 139 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
