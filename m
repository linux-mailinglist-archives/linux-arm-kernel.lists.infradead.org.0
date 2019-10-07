Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6DCCE56A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13sOjGk7qg6/igCQ+2IXGiTj9ncCZY4s1L/AuXkwKYs=; b=L2oyZPAD4t0dFV
	pEvi7CmlEXZ9Jhlk0SsTd30S3kPuYW6Nh9aDy/V/FfzhuuvzyoMktK2q684R0aBCExvaG/psokAcK
	1yqPSKRCZUZfYykk/kEF3cqOpESs+p68ky+LWwe+3dUtx1uIvKfnQy4nTgpxF0EkHkoXbb6Z+N3hZ
	U2gP5sypiLWR1t2KDi4c9Qbwp5oaGT4/7IIlBEsxKzM1uS+b4n9cruQ94IwC/lgzIDTQ5NSBEnrNM
	CbyMVaFIF0doghilsjXCuQbWkwEbc4HeQEdPsMkPYpKlPQ7SCUrM5RfaOVEWb3VvBXI9Wsj1Qa0h8
	dM9JTO4NQ7X+WfN8T0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU6p-0000tq-Kz; Mon, 07 Oct 2019 14:35:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU5b-0006Y6-5Q
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:34:20 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97EVZUT021985; Mon, 7 Oct 2019 16:34:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=s8U3If4pz6kSoHoO7elZBldrDddqWyD7m4mUvvsfdn0=;
 b=RKSb5FRIEhidJ5Ig9iqL2aAb+78dyQfKZ9LWDNuQ1HHi59CLTMHHAd878PewimsLUOXN
 akFqi6WxYNuNSnuJYnUgTz/h/r5o15J3vHhMLQvQeDnWU7YJlmQ/Kj6hpqYUU8YBZHtw
 +a1vwmiTblwP+qm7ux6fZeT+Rqa/1rmG00GLnQ1aZIHjYqMpruvBPfw7S0tE0WLJBZLn
 M2497QF0Y5vrCvEyX+2dLtOTIi0yLk6hbpA0KgKfXfVG9f6ICEBJURsZUyCrV4ETNGXr
 qHo5u8GdVbmv2ehnJ8J71pPkuMP64KlHj641fGNROz9GvvnQNY95vxAl9vDMfp88GX00 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvjtj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:34:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A4A5710002A;
 Mon,  7 Oct 2019 16:34:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 995242AC883;
 Mon,  7 Oct 2019 16:34:07 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 16:34:07
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 4/4] ARM: dts: stm32: fix regulator-sd_switch node on
 stm32mp157c-ed1 board
Date: Mon, 7 Oct 2019 16:34:02 +0200
Message-ID: <20191007143402.13266-5-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007143402.13266-1-alexandre.torgue@st.com>
References: <20191007143402.13266-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_073419_533089_3B2CF2A7 
X-CRM114-Status: GOOD (  10.25  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit fixes regulator-sd_switch node in order to be compliant to
DT validation schema.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1d426ea8bdaf..329853d9b1de 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -100,7 +100,8 @@
 
 		gpios = <&gpiof 14 GPIO_ACTIVE_HIGH>;
 		gpios-states = <0>;
-		states = <1800000 0x1 2900000 0x0>;
+		states = <1800000 0x1>,
+			 <2900000 0x0>;
 	};
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
