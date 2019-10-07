Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35673CDF4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B/OKOPR9VJ18FUpr2i4z1B/cNX5HZem9ZczWBql/mIQ=; b=BS/Y0aMjnOo57g
	ZKSGz4MT3wpakSrk7Oso6jD6cr+i6559k8oSP3P/3/BI9MdVjCwsuBr9Fs3ZlTa+jM8b5qEoAo71R
	fly3++i1mN+tIsGEm4A0YoQf+xXQ+K8bfLjLMlo+aytj6A9DgfC74cvny4vp9v2rc2QcoIjbAfvMD
	cBrhlZG1dRAlhMq2dK9HEBxAwIfgWi0t1HI3dOfxfkmXEJYW0Y8OmLSjEKECfcVGAWATMe6q+52UN
	uhusL/lnQ7o/9S9hGS0ru08+Q9fJ/MP9QP0jgrndUqDbtQRbOYSPWbQ+8LZwRZC4ILkoZ3qgL/Tas
	ThC/8r0Pfn+qCN2+s77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQDz-0006jA-On; Mon, 07 Oct 2019 10:26:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQDT-0006Q5-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:26:13 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97AKd9X026094; Mon, 7 Oct 2019 12:25:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=H88ogHBdYtQHjzt8PI+xIbOfTqIYK6OWrNfyZ8b/qAQ=;
 b=XF8ipVvWR7wHVIQa/++Se+C0jwQK0IKDcwaKQVrQyX8bg6ccdzBfNMfpZOghZiHEDLST
 IdTLx7eNun+TCRkcAWdjKHoO9oMn6tSY/sv76KQGSVxVBnCR1JGxK029fsZvn7bfxRYE
 43u5jYwHnFR02DBkb8tc2oZTH8nqhpMZEcCr1a/S9xyUm2O9X32JWXL/0905WTUmuc84
 6B1HjmOQU1a8Ay+qrDvKOVhOTVxbxO8wEpaWgwxsL/yBsinOnVAfYz/pmWlh4xgREfwP
 4+n54iLjrQl8x+lA0c1I0Ia+60ZLBk6cBkY6qjozUK9vyIGow4i/gkdJTwotGmeY3LEd Jw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvhrn3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 12:25:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 006FD100034;
 Mon,  7 Oct 2019 12:25:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D8E782BFE0A;
 Mon,  7 Oct 2019 12:25:54 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 12:25:54
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, Alexandru Ardelean
 <alexaundru.ardelean@analog.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>
Subject: [PATCH 0/3] Fixes for dt-bindings verification
Date: Mon, 7 Oct 2019 12:25:49 +0200
Message-ID: <20191007102552.19808-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_032612_223495_80652582 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using "make dt_binding_check" on top v5.4-rc1 some errors are 
reported in several schemas. Those 3 patches allow to execute
"make dt_binding_check" without issues. Most probably those patches
have alread been sent.

regards
Alexandre


Alexandre Torgue (3):
  dt-bindings: media: Fix id path for sun4i-a10-csi
  dt-bindings: net: adi: Fix yaml verification issue
  dt-bindings: regulator: Fix yaml verification for fixed-regulator
    schema

 .../bindings/media/allwinner,sun4i-a10-csi.yaml        |  2 +-
 Documentation/devicetree/bindings/net/adi,adin.yaml    |  6 ++++++
 .../devicetree/bindings/regulator/fixed-regulator.yaml | 10 +++++++---
 3 files changed, 14 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
