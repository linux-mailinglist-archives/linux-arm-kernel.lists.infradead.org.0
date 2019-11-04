Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF31EE13C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=seYic+N+ffVpLLmTNSozaMe+7DfQ4YaHB6T+7s2CkDk=; b=NNPJ+/yy7/V5DA
	npGtlBlrSYkUuYosGzYjQXauIVBlnBSWvtAl70FO0nGXwH7YkrfhmjZBe2BKR0klCwQ3XBPF+DiFb
	w58d4C4ePJyAKdP7PZ3y1T04WdHs5XYK1ghANf0sgVhGw15QVSnX1dF4d3qnRXdbKw3A0GHi6rzWL
	Is2rweUIBYvMbBZSiK0HwaR03tJzfBV+g0ed+TuOmekjKqGtB6iEXZuJxrrQPhUPx+yhxXmHYIw6E
	7oBl3OCWUto8VwO6ZM45JnNnZmXP+9SF8+nC8yXseL05JWEicVxHU58l+6orIPnmFW4EGa6zhWopB
	jKQYAYioII87huzaMZHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcRw-0008Nh-Rw; Mon, 04 Nov 2019 13:31:16 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcRI-0007ua-1Y
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:30:37 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4DNH0l017943; Mon, 4 Nov 2019 14:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=I3NGuc3Rt+teCuWa84VgiyUccSUQsi2ao2vZWxXCPGY=;
 b=QNXyxE1yFylAYnPQmDlZtT6exOsIQPDCeA7Znu8TNAQhDGJcRJ1L2N6tKJ8OvV/DqFmb
 qdkcJWQDkvGStQ2i9mdI1lCMNaSIRsnAjeHan6LUMLv9MrwK72AVusRylcff0q/JAbNz
 UmxDmNW58GdFPHsnjkPu3mLQq15qMuhxGdEkfUc6AGPKF6JE1mzkl3rsNNtaSBAfR6g/
 hQgrkasIV0FrAS2OD4Jc88cC9sEDrcXmeBa74CF86D1cJ3SNwS3t2hJGSS091xxwlBpP
 JeM+TSmHRho/fanptl/sxPpIAYwRgmf4pSDu5IUASxgw0NoFM2pNk7AvxgE8gajd470H 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jn1vxb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 14:30:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 00B10100038;
 Mon,  4 Nov 2019 14:30:22 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DB3D22D379D;
 Mon,  4 Nov 2019 14:30:22 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 4 Nov 2019 14:30:22 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, 
 <amit.kucheria@verdurent.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <p.paillet@st.com>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/5] thermal: stm32: driver improvements
Date: Mon, 4 Nov 2019 14:30:15 +0100
Message-ID: <20191104133020.8820-1-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053036_411457_45944E8F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The goal of this patchset is to improve and simplify the stm32 thermal
driver:
* remove hardware interrupt handler that is useless
* let the framewwork handle the trip points
* fix interrupt management to avoid receiving hundreds of
interrupts when the temperature is close to the low threshold.
* improve temperature reading resolution

Pascal Paillet (5):
  thermal: stm32: remove hardware irq handler
  thermal: stm32: fix icifr register name
  thermal: stm32: handle multiple trip points
  thermal: stm32: improve temperature resolution
  thermal: stm32: fix low threshold interrupt flood

 drivers/thermal/st/stm_thermal.c | 367 ++++++++++---------------------
 1 file changed, 111 insertions(+), 256 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
