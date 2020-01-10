Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C780F136AD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bN9XcFJ9DK/Hf0X7Zfg1pkfWLgwqu1YXgtMy3QN10ws=; b=rNEpUwsbevtKUY
	0lR4cbCi3Joc1gdvEEmQUGEe+YdfgUAeuEE/QTAck9ruNy0hcneBSr90LZwnUJAioqYZwp0q9fRFI
	eGtRuLJ0RgExdP1X5q9EFtBAABwMGptNxRs6QV5BFshASV4bzjFBbwzPOGmrNgFXxPCCaefzNU5dZ
	Ii3HNTmtQWBWSNyUKLOljECnih3zbKZxpYQEQ5qytkhYElWE5r4j4/5v4tF0IJyxn1XANRbVO5CFl
	kMLVAYAtzgNZ6iny3oZ2AsR7vWfi+jdl44hgmcqnse5OP8g4UA2zW+KYvWUxEmMi7WU164vRFSV55
	RgQYYIv2OPzvWkscmhOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprLi-0001Nu-Aw; Fri, 10 Jan 2020 10:17:02 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprL0-00014l-On
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:16:20 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AAE9Ns029506; Fri, 10 Jan 2020 11:16:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=I+2Jh41DPPQg0BnU2mDecRhoZBPH5KFuDv0ySmlY5mM=;
 b=C9kWgr3JnhtXeBgg64jBh4ZkGIxHXsbcoS0w93qJi4SoOAJAd+WaZsqlFIj6/1v4TpSl
 D7huim9bk+A0nONC1MsMXoKASpTz5Yk/7idwzkbBRWrhTd2NeIyLz/OBOfJoKdQ+lfSh
 4ye2xHMmOZpWPB8nQtRlL48zke3pZ8VApjnNNH4+FzjRuxO5gyf0fG5Ab72qtfys8K70
 sn6JlZzJE9vBo2JBiteyWvGsru7LsZ6sjAJEvFAnubbWgJ6G88Y0ErseyPYbLgCG6lbx
 4saIAHxLe4chevMmleIRgq1AFf2SzMKPenAW3OmAi9WvxFL/oZWARFYehuTIaPAI/4Oh FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakkb742b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 11:16:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7466B10002A;
 Fri, 10 Jan 2020 11:16:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C6B52A6197;
 Fri, 10 Jan 2020 11:16:08 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 10 Jan 2020 11:16:07 +0100
From: Pascal Paillet <p.paillet@st.com>
To: <rui.zhang@intel.com>, <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, 
 <amit.kucheria@verdurent.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <p.paillet@st.com>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>, <linux-pm@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH_V3 0/6] thermal: stm32: driver improvements
Date: Fri, 10 Jan 2020 11:15:59 +0100
Message-ID: <20200110101605.24984-1-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021619_103986_CDDF3A13 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this patchset is to improve and simplify the stm32 thermal
driver:
* let the framework handle the trip points: it very is hard to split this patch
into smaller ones and keep each individual patch functional.
* fix interrupt management to avoid receiving hundreds of
interrupts when the temperature is close to the low threshold.
* improve temperature reading resolution
* the dirver is backawrd compatible.

Pascal Paillet (6):
changes in v2:
* Split "handle multiple trip points" patch to make ones:
*   rework sensor mode management
*   disable interrupts at probe
* "remove hardware irq handler" is squashed in "handle multiple trip points"

  thermal: stm32: fix icifr register name
  thermal: stm32: rework sensor mode management
  thermal: stm32: disable interrupts at probe
  thermal: stm32: handle multiple trip points
  thermal: stm32: improve temperature computing
  thermal: stm32: fix low threshold interrupt flood

 drivers/thermal/st/stm_thermal.c | 388 ++++++++++---------------------
 1 file changed, 120 insertions(+), 268 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
