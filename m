Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A2012650F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p7AVJV2RMwfn3BY4DjWjFdtQT0w3nCVIkCnTQfNXyEA=; b=ExW3rM45JSICk1
	K1yt5P6l6SoogIEM5gUs+KsYPwzdar0hN5tQSOM8kudLPNBth+QG3zDAC7KH7bL5aCtYiMOeZopJ5
	ZkAPxMQz3GYRkLQO5ekmm70zqQGMeRZ68/C1Y/KUlHGbWAzrIi1bLk8taESHwxoO+3fM1C6HlU4ms
	KYpE1IkmX/lJWLHA2BArT3H2ON6t0AmBMm5OMpwAIBWimS2J2q6kYioXNmeEhXJoNl4aviQs46WeG
	2uo2FcpNBOu6MGPPbA6dx5OAlVNet6+IdW4s15/gleL2IoFQo2yPZOLNQD3zt37Mdy+610Mp66FtS
	B+BNmvej171ytQ+FRmcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihx0p-0001C3-HY; Thu, 19 Dec 2019 14:42:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwzj-0000Dn-8b
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:41:42 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJEaUs1014020; Thu, 19 Dec 2019 15:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=dvDHlMKXIT3mKaoz1fvmQkfLjyvErJdO/1Lw3VdRWng=;
 b=TyYw57o7h/qRs/RT2N469j/oU12+YyQpKx3Vu/j7wCJJlY3xps85rdE01xjC58dEt0Mf
 5l9qj3QH54Sil3Tr3GXJn81cyYvnmbQsvqO2O8GhxXRrX5zZPgfO7XFB2rhMcC/+KbE/
 dceugvYdqCPWuEp5AohO5gCNM1FG094LLwh+7lswWgsHeQdBebCcKYhtZ05kZyI/3f7X
 U4mjtxLHQlb2+IW4lEvikar/zMPDPdD2+SEsehbKwyJFq+Vh2eRz1y+5X4tVK0pGIbcc
 b+DutMHjlDCMQ8oWA8SU/ujCycoxmU21k10wuNQ3vC+JEWy0rxbha4g60LzvqCY+SNbi 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp37a8h1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 15:41:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EA692100039;
 Thu, 19 Dec 2019 15:41:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0B6452C6B5E;
 Thu, 19 Dec 2019 15:41:19 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 15:41:18
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>
Subject: [PATCH 0/3] Convert STM32 ROMEM to json-schema
Date: Thu, 19 Dec 2019 15:41:14 +0100
Message-ID: <20191219144117.21527-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_064139_666258_CA7F4CCE 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert STM32 ROMEM to json-schema and fix the issues detected on stm32 dtsi
files.
Note that stm32mp1 patch should be applied on top of the stm32-next tree.

Benjamin Gaignard (3):
  dt-bindings: nvmem: Convert STM32 ROMEM to json-schema
  ARM: dts: stm32: change nvmem node name on stm32f429
  ARM: dts: stm32: change nvmem node name on stm32mp1

 .../devicetree/bindings/nvmem/st,stm32-romem.txt   | 31 ---------------
 .../devicetree/bindings/nvmem/st,stm32-romem.yaml  | 46 ++++++++++++++++++++++
 arch/arm/boot/dts/stm32f429.dtsi                   |  2 +-
 arch/arm/boot/dts/stm32mp151.dtsi                  |  2 +-
 4 files changed, 48 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
