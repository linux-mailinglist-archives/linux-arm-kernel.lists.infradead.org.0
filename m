Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E529F91F33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1C6ABW3W/Kd28vazCJXvhIvRYIAOVbBUV1PyFaFvRKs=; b=gABh1UYNtiYHXR
	4xg+Z0c55iVXhH3vcIcu0MADMgw/0BoM+ZDvhkxmCNSbE3LCYlXooVz8AvWs9AOmPKGLLLnX3PwpD
	AsyHUDmS1/m9oevSklaZD61TiIHO47oqK+iOc18VjqX0chCr/s4IHnFe+LFmgYTpB9SnX8pmzf4aA
	F8TAQ3kNK+3WX/oXOxiSGKE47zAVk0FaPlnx7ve/HPGxQtwMmaECjPKhFHHzreTIm+qnGRoBDXXMr
	XFHgLoqRBSFxUAJ7vYyuD3JBjjh5h81xrC94dxk1IVbYupf0L6XV5hGvjS4VppyDczOWPXqudfPpp
	2C639CCOcGpnovDYTRlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdEy-0003TP-1g; Mon, 19 Aug 2019 08:42:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdEN-0003EK-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:41:37 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7J8ak2h002858; Mon, 19 Aug 2019 10:41:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=E0Wx1Y9QpRHdm+N2pBALeuqn+It3hed1+boIz8hDojM=;
 b=bFLe4ALZNQS3OPB4VYdjAGYxVbWShXrZvhrpPLpQiqri5dpAaQAAVP0NPqFsmVaUd+gA
 Do3uWUYyho1FZn2G4hwy2SBUFoDqUIdz3M/n8JzAkTNBZo+DxVnHCfvhmWCbkbat+5kw
 /rCd1a6j8NiAf/iRzvVNdzqsBgZpYE/0VEuMeCIIpXyIWbi8PxFIzA6BI6hH2u5ELSC5
 w78d/tKRAWgmM5zexR0P1Jk+x50AE3vL/NAJRujhzoJ/C2K18I47o0YtQTMkjDleaq6t
 5SRkfMFr2JMMCUgjr52k7Derhbl7ZErVXuF7qK/0bqzWIVZtRRBJrXpKWUNz8ggWB4Kw qA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ue8fghsww-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 19 Aug 2019 10:41:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 39FB134;
 Mon, 19 Aug 2019 08:41:25 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 24E532BF4F2;
 Mon, 19 Aug 2019 10:41:25 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 19 Aug
 2019 10:41:25 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 19 Aug 2019 10:41:24
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v7 0/4] DCMI bridge support
Date: Mon, 19 Aug 2019 10:41:17 +0200
Message-ID: <1566204081-19051-1-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014135_572600_591B685C 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Hugues
 Fruchet <hugues.fruchet@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch serie allows to connect non-parallel camera sensor to
DCMI thanks to a bridge connected in between such as STMIPID02 [1].

Media controller support is introduced first, then support of
several sub-devices within pipeline with dynamic linking
between them.
In order to keep backward compatibility with applications
relying on V4L2 interface only, format set on video node
is propagated to all sub-devices connected to camera interface.

[1] https://www.spinics.net/lists/devicetree/msg278002.html

===========
= history =
===========
version 7:
  - minor fix on 80 char trace message

version 6:
  - As per Sakari remark: add a FIXME explaining that this
    version only supports subdevices which expose RGB & YUV
    "parallel form" mbus code (_2X8)
  - Add some trace around subdev_call(s_fmt) error & format
    changes to debug subdev which only expose serial mbus code
  - Conform to "<name>":<pad index> when tracing subdev infos

version 5:
  - Remove remaining Change-Id
  - Add Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

version 4:
  - Also drop subdev nodes registry as suggested by Hans:
    https://www.spinics.net/lists/arm-kernel/msg743375.html

version 3:
  - Drop media device registry to not expose media controller
    interface to userspace as per Laurent' suggestion:
    https://www.spinics.net/lists/linux-media/msg153417.html
  - Prefer "source" instead of "sensor" and keep it in 
    dcmi_graph_entity struct, move asd as first member
    of struct as per Sakari' suggestion:
    https://www.spinics.net/lists/linux-media/msg153119.html
  - Drop dcmi_graph_deinit() as per Sakari' suggestion:
    https://www.spinics.net/lists/linux-media/msg153417.html

version 2:
  - Fix bus_info not consistent between media and V4L:
    https://www.spinics.net/lists/arm-kernel/msg717676.html
  - Propagation of format set on video node to the sub-devices
    chain connected on camera interface

version 1:
  - Initial submission

Hugues Fruchet (4):
  media: stm32-dcmi: improve sensor subdev naming
  media: stm32-dcmi: trace the supported fourcc/mbus_code
  media: stm32-dcmi: add media controller support
  media: stm32-dcmi: add support of several sub-devices

 drivers/media/platform/Kconfig            |   2 +-
 drivers/media/platform/stm32/stm32-dcmi.c | 318 +++++++++++++++++++++++++-----
 2 files changed, 268 insertions(+), 52 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
