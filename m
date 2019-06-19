Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71DA4B953
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyxgp9J+Ax0hkNX0hLUSP6N2hPGxISwPTHf2Jwp7Jdg=; b=eiLS7axf6fPbIm
	awon3yY02a6CEuYJODbj51Dw9vGkveX9RG1bmAxnwAi7MAt1kETqJ01ah0/7Sj2hiimYz4zlm/gzz
	7CNbVW6R98SaQdFmlDxZrD9KzLa8PWu5yYtSq/RXw+c7C9yulgUN33ghs369pglG7vwFTA86MWG2b
	qesswzVU0Ud2knfsS9AjTDkDaBt8+KF33lZ3V+FR9yBhRK6RWLQkx48j/kgI5zYF+U9hTu/g9mk03
	oaJUN5Mc/4ukJpDXhAkyIkcwOsvg4XT4CswdDWaNhWlrpksLpVjX9yLiMy7PA9zweHZpJIP+p7eFF
	yre/3WwklZs3mhQhsHzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaH9-0001fL-IS; Wed, 19 Jun 2019 13:05:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaG0-0000GV-Dp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:04:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCu1vs023624; Wed, 19 Jun 2019 15:04:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=1RIed4PSnLNoF/Qg8Sp7JJ0Sajo64o3gdxbSWUs/b4M=;
 b=0xenS9bcGVcF8713j77nhv9uVF0N+3rssP3bIA4M00CmyUSAdrwem78TNJJNHfTMdReb
 hibMRJP0HII90WclTnhXFen799MWDD/raHoZnqsHbOBbPWUJFplV8tYCsdK8h7BOWAgB
 xk1FVwbkGYx828MwMagijwfaNOg1olBktgZfIZ5utfW8B/d5l+iFdSI+juK5e5c9iuKR
 x4dpT76VUixZ5pa0Yz+5LRtRPnSyXKu7GCWx+etdZhJt7Ei2O0LF3lXSLgV/jD/V4e1U
 Rs27nGZcFT54Z0W4601g8h6Ui5MHlqxcEanwRD+C6rqGePLtRs9XHJiNAg7pWbj8FW+J cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813c0aq-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 15:04:03 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DC7D638;
 Wed, 19 Jun 2019 13:04:02 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B5A452834;
 Wed, 19 Jun 2019 13:04:02 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 15:04:02 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:04:02
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 5/5] iio: adc: stm32-dfsdm: add comment for 16 bits record
Date: Wed, 19 Jun 2019 15:03:51 +0200
Message-ID: <1560949431-22948-6-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060408_773655_5EC9B88E 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a comment on DMA configuration for 16 bits record.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index d855a605eab6..ee1e0569d0e1 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -918,6 +918,11 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
 static int stm32_dfsdm_adc_dma_start(struct iio_dev *indio_dev)
 {
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
+	/*
+	 * The DFSDM supports half-word transfers. However, for 16 bits record,
+	 * 4 bytes buswidth is kept, to avoid losing samples LSBs when left
+	 * shift is required.
+	 */
 	struct dma_slave_config config = {
 		.src_addr = (dma_addr_t)adc->dfsdm->phys_base,
 		.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
