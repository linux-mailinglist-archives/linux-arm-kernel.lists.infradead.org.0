Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063F410728C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 13:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TU79S+mKjjAh3ntZRy8tnEWrSOYsniRvO7GZ2OqgszE=; b=lScEHyPyuaH6FP
	vNoRRBsSYDTSiKCLunQEVhPHVLzY3hEoZGiFEFW7A/Xeit9L0nMm7tAsFlo1KY0Y7dNFIYv4rIxNT
	lTq1yP0+yUsSpyUHFthd5hf4VeiZXx7vJ8YysGfZE0rFasNMlTfTslTiZvzTpn81Rt2+s8D/Zjcag
	gG5BylcoAkpANJ29uByQINdUX8L/QO1vQ+hcbWBbY/17BcdiJBxHh/BZViXqOsd5bq5VvdDWFmPyC
	x80CmvekfHFGGP2TahTmaPfg+pEXqM+7/C3AjBK3h9FFjNkMmZsat3seGc4F4rnL+c5y/8xCkvrNx
	6flskxAb0URKLMUIRh1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8Sv-0001fJ-S4; Fri, 22 Nov 2019 12:55:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8Si-0001MU-CP
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 12:55:02 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMCkwcB028665; Fri, 22 Nov 2019 13:54:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=bxiuTK+x3oPhnDKBKfKRJ01+VjbhWxaGagP881Oi19M=;
 b=HK7+USpsxZtqvR/TzymAPqh+iPDWPjX/+6rVTEImlPygNpUxuKwqo78AErKac93eyX1w
 T7zAUyTazpQG53YjdL4mN+aRCLv+tXu9G1vIFOPe18+VHI5CzOB1ssGH7bD2si4W1899
 A5eq/oFIL1QCW0mcouyDbja1yUfzAmj1SOjiHwFp2cbf07kYQO0PanywDdem6NQTh0e+
 CEV0tXdVRhU/dUk5jAyDDJ1naaORANUDwLAKCw/WAPS8Z480WkQV/z0w/N9F3vqp1Kno
 Jep5OJod/jXS5RaHF/QAIJfn61DwF5uCQqXoxKVmYUm9MxzEs8l4kr48kUVGpXoGDdqK ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usrue0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 13:54:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C67E110002A;
 Fri, 22 Nov 2019 13:54:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 99C1E2BD314;
 Fri, 22 Nov 2019 13:54:34 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 Nov 2019 13:54:34
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>
Subject: [PATCH] dt-bindings: remoteproc: stm32: add wakeup-source property
Date: Fri, 22 Nov 2019 13:54:02 +0100
Message-ID: <20191122125402.14730-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_02:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_045500_780425_048979F4 
X-CRM114-Status: GOOD (  12.14  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the optional wdg interrupt is defined, then this property
may be defined.

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
This commit is related to the merge conflict issue reported by
Stephen Rothwell: https://lkml.org/lkml/2019/11/21/1168
---
 .../devicetree/bindings/remoteproc/st,stm32-rproc.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
index acf18d170352..c0d83865e933 100644
--- a/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
@@ -50,6 +50,8 @@ properties:
     description: Should contain the WWDG1 watchdog reset interrupt
     maxItems: 1
 
+  wakeup-source: true
+
   mboxes:
     description:
       This property is required only if the rpmsg/virtio functionality is used.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
