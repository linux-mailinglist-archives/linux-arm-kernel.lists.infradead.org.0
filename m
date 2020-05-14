Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD71D3100
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3EQgvQ/t67nKShFpa/d/d/kcUU+dg+iujlD4BQaxToI=; b=VkY1Gow2xflUWz
	B83skS7fqcxgAR3c90Rvpq5wr/cVuqvjmQQyhq068UNumUizHWG8iuDVQyODKxXOEsbvt7CAK1OYU
	Kmh5u+woRHbXteOxDgloWyL8ZQdlbHVliolEw4lsAgj6XjkcD1vF6T7ofU8WR6tcfqCY1d1DEtaf1
	Av+Pg8RPpxzHeaPu7pstMJQ+IfJSFMktFIv2wtXYTijlVCxf/rgtXiE0Mu3rAXCQgdEtXnEzqj/vd
	hCH0XPCdha+xsm9Fy8kC4zbEFsTL41QP5tqzdPUW7rSC2IwScL/LQLANErcC3OOBjnXZJxF39O7vG
	SqCTT8btWNvdEcMtv7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDkh-0001bO-BL; Thu, 14 May 2020 13:18:19 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDkA-0001Qk-3L
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:17:47 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ED9cC4020505; Thu, 14 May 2020 09:17:38 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 3100x5yeav-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:17:38 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04EDHadV059571
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Thu, 14 May 2020 09:17:36 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:35 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:19 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 14 May 2020 06:17:34 -0700
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04EDHUaj017033;
 Thu, 14 May 2020 09:17:30 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/8] iio: core: wrap IIO device into an iio_dev_opaque
 object
Date: Thu, 14 May 2020 16:17:02 +0300
Message-ID: <20200514131710.84201-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 cotscore=-2147483648 mlxscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061746_143091_2140CE95 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change starts to hide some internal fields of the IIO device into
the framework.

Because the iio_priv_to_dev() will be hidden some pre-work is done to
try to remove it from some interrupt handlers.
iio_priv_to_dev() will become a function call and won't be expandable
into place (as-is now as an inline function).

Changelog v1 -> v2:
- add pre-work patches that remove some calls to iio_priv_to_dev() from
  interrupt handlers
- renamed iio_dev_priv -> iio_dev_opaque
- moved the iio_dev_opaque to 'include/linux/iio/iio-opaque.h' this way
  it should be usable for debugging
- the iio_priv() call, is still an inline function that returns an
  'indio_dev->priv' reference; this field is added to 'struct iio_dev';
  the reference is computed in iio_device_alloc() and should be
  cacheline aligned
- the to_iio_dev_opaque() container is in the
  'include/linux/iio/iio-opaque.h' header; it's still implemented with
  some pointer arithmetic; one idea was to do it via an
  'indio_dev->opaque' field; that may still be an optionif there are
  some opinions in that direction

Alexandru Ardelean (8):
  iio: proximity: ping: pass reference to IIO device via call-stack
  iio: at91-sama5d2_adc: pass ref to IIO device via param for int
    function
  iio: at91_adc: pass ref to IIO device via param for int function
  iio: stm32-dfsdm-adc: pass iio device as arg for the interrupt handler
  iio: stm32-adc: pass iio device as arg for the interrupt handler
  iio: core: wrap IIO device into an iio_dev_opaque object
  iio: core: simplify alloc alignment code
  iio: core: move debugfs data on the private iio dev info

 drivers/iio/adc/at91-sama5d2_adc.c |  7 ++-
 drivers/iio/adc/at91_adc.c         |  5 +-
 drivers/iio/adc/stm32-adc.c        | 10 ++--
 drivers/iio/adc/stm32-dfsdm-adc.c  |  6 +--
 drivers/iio/industrialio-core.c    | 75 ++++++++++++++++++++----------
 drivers/iio/proximity/ping.c       |  5 +-
 include/linux/iio/iio-opaque.h     | 27 +++++++++++
 include/linux/iio/iio.h            | 24 +++-------
 8 files changed, 99 insertions(+), 60 deletions(-)
 create mode 100644 include/linux/iio/iio-opaque.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
