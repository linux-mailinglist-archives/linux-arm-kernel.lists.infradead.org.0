Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17A7125F2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+uqwqyi7nq3zkcNLY82s0Y3NL4HaXv203fTM23pclQs=; b=Y118MmgmGJTGWh
	RASG1UJl8e2zlI4bpT0ppDkz2MWAMMvezCRPsV5qkUMQYrJRfiIgvO9IdSSdtO+6xyZzuzIUSsG4T
	bIzh0G3qKXX41allil5reN3aFJF/C59km6yKZnK/ybw56qd9Wz14VrQ8s/6QzDzmB9tTApHpGWr5L
	INninDqTWoKf6HHMF+LMVLOK77xJPp8N+evk/c+RlR0TYfeOoJf/HinoDnvpHxWuj+nbN0sYNmH/9
	uLvysKXOk//uVePCaRJqbdh8T1dvMf7/92do89IbyiftEd/Tg5q71qI46JW82KwImPCe4xsoj/Xeh
	1b7MWysTEl+mGcPcgH+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtA9-0005tX-Sd; Thu, 19 Dec 2019 10:36:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iht9x-0005sS-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:35:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJAWcHB023188; Thu, 19 Dec 2019 11:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Iemh3RU/aIK2iehtIHFQuSP9XvVK+0CTJ21s2KN63yo=;
 b=gXqqZMtt1rmXVv8DSNqowaaZF4CP5ipsS+CfHYPDclIlhMGNjgvC3kxymw3NCIhfk0KE
 T5DvKrwgHt3a+8s7URBKXpykwiUPAMK3ND/B8JIsTjaSzhs11IldghDLHb7J32f4H0oV
 HN63TEwVe7Q/GTCM9a0I6k4LJw07OtB+vRgmRELcvlpDBuVwr2fFpheErYYIMNRwoMMf
 4yIAMuw+E/LXFw1zUPZjrMFDr9RzHyub6GyY0sk7hCH2k19PaQjA8M2hp1SQ6fAu+Ikb
 HA9Z9SBVGmO0SeWO6+dfv5mERJaEyTuUtbNucceK3ZAinG+jADU2H12If5VY7dmHL35H tA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1s21e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 11:35:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 04B32100039;
 Thu, 19 Dec 2019 11:35:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C51142A467F;
 Thu, 19 Dec 2019 11:35:40 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 11:35:40
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <kgene@kernel.org>, <krzk@kernel.org>, <hminas@synopsys.com>
Subject: [PATCH v2 0/2] Add yaml DWC2 bindings
Date: Thu, 19 Dec 2019 11:35:34 +0100
Message-ID: <20191219103536.25485-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_023558_104671_278BD8B0 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert DWC2 bindings to json-schema and fix issue in dtsi file.

Benjamin Gaignard (2):
  dt-bindings: usb: Convert DWC2 bindings to json-schema
  ARM: dts: exynos: Remove unneeded "snps,dwc2" from hsotg node

 Documentation/devicetree/bindings/usb/dwc2.txt  |  64 ----------
 Documentation/devicetree/bindings/usb/dwc2.yaml | 152 ++++++++++++++++++++++++
 arch/arm/boot/dts/exynos3250.dtsi               |   2 +-
 3 files changed, 153 insertions(+), 65 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/dwc2.txt
 create mode 100644 Documentation/devicetree/bindings/usb/dwc2.yaml

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
