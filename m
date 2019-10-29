Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48650E889E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NCGJg1mTS9szrFRmaaVlG4n5BXqTAa3Y4kvW+UPIkZc=; b=Ez5PyJprMAh/R6
	XxLa8Tfh/z5yPFbXmPaq5V/QAi6kJ8QyvkdHXm9M8n6ORJ2lX70kAwRhRex8sWE8xs5HUxENt5KzS
	ehvbj349tAd1Qt7beVuHfkJxiuhYL1iH+UqWbg9PBzedwX/iik/VBa/kXkiZyvuVe5Qa3bcnGD1da
	M7Szj1FBKNEyBHrZwpSNxgMKKX/Hg3VhkdWP4CQ0AREvmPhW4Wn2syHktUF+MF5PQHwTA9BT3/6Kp
	6xAvOrqnalSskPKEhAVQWkS9wSj67BvNHmktY6BU4DSpHl7kEQCO6aHkeUb+Y62eFG4HPCp3d7L7O
	52OntHLLmTuJtaWo4/4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQu9-0006bS-UG; Tue, 29 Oct 2019 12:47:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQtw-0006Zu-An
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:47:09 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TCg9Eu004076; Tue, 29 Oct 2019 13:46:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=PCCjXX8CusN1LvKZ5WG/65Gg+OP0fFkvR4ovWeCP35E=;
 b=UvDQ0UxL7RFjoFqGtof5EcYaJ8mKZySVehljZXxjvRLUaeUd1gfDYvuRpUzWJg2pH2yV
 V1OrBGltg2bWpfWI+PyNYLj2HgHxioZnDASNXkeEQBa3/18oBVYDCm7qqvlUTuvy+stj
 inlGzmHsWZ5iefxsHbcErp2bYqzd03uHxmzEpFx8JxZI5tgEAuLCp8gYFxLXs+8cwJ9K
 AI/WeY3hOaVqAbxqEt8WXbsE5piPuL8c33tT6zSPCxSbT3LSHUgGsVEmuv6nLXhm883K
 ipXM7m/7mtXPnAl/WRRlwWAFx31ZqIis8I7yLTe1McgPCVfvW4DtESJbej54reLfnECV Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vvd1gqd8x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 13:46:59 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50C8010002A;
 Tue, 29 Oct 2019 13:46:59 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 236FD2BE234;
 Tue, 29 Oct 2019 13:46:59 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.44) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 13:46:59 +0100
Received: from localhost (10.201.22.141) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 13:46:57
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/2] STMFX pinctrl definition updates
Date: Tue, 29 Oct 2019 13:46:49 +0100
Message-ID: <20191029124651.12625-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_04:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054708_839989_771430B7 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since a502b343eb ("pinctrl: stmfx: update pinconf settings"), pin
confuguration has been fixed in STMFX pinctrl driver. Moreover, gpiolib now
fully handles "push-pull" configuration.
This series cleans up stm32mp157c-ev1 stmfx pins use.

Amelie Delaunay (2):
  ARM: dts: stm32: remove OV5640 pinctrl definition on stm32mp157c-ev1
  ARM: dts: stm32: change joystick pinctrl definition on stm32mp157c-ev1

 arch/arm/boot/dts/stm32mp157c-ev1.dts | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
