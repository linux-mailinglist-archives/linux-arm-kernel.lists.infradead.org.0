Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83748132662
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S/Xveuh8n/687QY0xLWy8lROqpoSnsiUKt7grGdvk8A=; b=eaPtkbGs/MBXEM
	lt7eeoLRbMrHn6cNr267dqyBoWj0DgsiCtBTM0puYzJD9vlLnPhDa57j7qqFP9UEUND9WTgHZOgqC
	F5kwD1LjSttKDKZ/zCrde6k1P0tvFPMqaBSbS6cmIIxT4wVpC3X/Dxt+rEhEyPwgMV101ocNbhxT1
	GBEMCFJCWIr8065+aVRkwBrcuI63SFU/eshoh71RyLRtcCrjTKWG8zsfBUMRfs07Ot7MSLxN3xkeV
	kb/WsaqekVrEaU79kxTr+Js0vs3SsieQA8wccXhxO7OQwNqwxRFfd95vtJqRpE3cOYPpI8NsbOSiC
	DmOG+dYu93z2JPIffXSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo8R-0000ED-KB; Tue, 07 Jan 2020 12:38:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo8J-0000DG-6O
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:38:52 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007CbTRF018497; Tue, 7 Jan 2020 13:38:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=LxTGVUsDWtY2YxgGD5UmI2rW8W4vNcqPH5eDldr9TMA=;
 b=mCKy4VfifgLqBEmMC+JyM2wd8xHWWRPlfcO9tBULwvB4WSZGM7dqwD+ZdYdGjdkeABaw
 nzDFGUMuy4C1JeFL2hIYMOJa9TcNUhsGsXov2xL5hSGELcis4+ql5PVmwdasX+JGROR8
 QtUcRhCki+UVzJ2zYIqaNS1S9Rw4q4xtXwtoV72cBOVn8DtRPDUTgIulVvj6NMkAzxd8
 +604ZsuyIvYnHFIQXCgHXUpZxohVMWMCIZOhUsBdP1e/Wp41MWH/CY5yXJrzzhN2gcI8
 3sg5Cod1EhmnclLCrwaGpj/YlTQbb+BTiZ97E4B12pWVViHkf1pZU17FgUXgqBozMSKZ wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqp4c2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 13:38:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 95642100034;
 Tue,  7 Jan 2020 13:38:31 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 67CB52AFAB3;
 Tue,  7 Jan 2020 13:38:31 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 7 Jan 2020 13:38:31 +0100
From: <patrice.chotard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <linux@armlinux.org.uk>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH 0/2] ARM: dts: stih410-b2260: Fix ethernet PHY DT node
Date: Tue, 7 Jan 2020 13:38:26 +0100
Message-ID: <20200107123828.6586-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_03:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043851_604716_A5FC3AD0 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

This series is fixing a kernel Oops and is removing deprecated PHY properties: 

 - Since commit 'd3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for 
   platforms without PHY")', a kernel Oops occurs and ethernet is no more
   functional.

 - Some deprecated Synopsys phy properties was always present in DT, 
   remove them.

Patrice Chotard (2):
  ARM: dts: stih410-b2260: Fix ethernet phy DT node
  ARM: dts: stih410-b2260: Remove deprecated snps PHY properties

 arch/arm/boot/dts/stih410-b2260.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
