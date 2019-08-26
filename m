Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30E19D348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sbqkvi55Jk3Hyw+8MBU+W2nLi7ox8c65fGbWeWQLMPk=; b=dj+XzVxsXvbyZT
	QOk87psNieyQH2z+Llh/fowgDeoLm2EKTBcdLf100dADVjFp5gGr+5QTf+mBZAXttOe6WkcYhOxds
	GwU+wA9J8BSS7RIzOszRYq5EWAmQlkHON4ermVdwkkwKSdmBsZR7ZrEXx7HyxKR4Qmqhmtpq0hgou
	B0UjzimVhpxsVQ5Z6wPmhgHZBhshFYmRnjayD/0o6j3Rz4gv3DO5VurshRY42WltLx1IwdgI0nAiG
	O3eNq0ToGyWrHqjFbFWbaIyxHEcLZtEpzQFFjg7pflpRC+OSlKv4SGn+N2Ias5t3mv+On9LAMLJG1
	xd8NbSPTeMSm1ak0c5VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H9q-0007qO-K6; Mon, 26 Aug 2019 15:43:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H5c-0003N3-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:39:30 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QFPrAb018373; Mon, 26 Aug 2019 17:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=G1q9jXeOe+jObYadbTKDBN2nCaQ4doShrwDMtgHwCfo=;
 b=kgo2lgzxQKE25bsuS4y4FQwg+AF0ctGg/uEnPyfmNh9pUqZkRZcv3f7fE1QoBOG1jX+v
 93oONfwSE0K5hgnpW8ChGifG4bSX8cQ1b9GYhb6Fl56rViAmXT0ZRknFPxKsQAkB4Cmr
 xpsRK2P0Ugi3JSEa0CRWsBo1gBFZSk+R/EPaN7vkM8xrFOC2x7EW/KohqnHsZj09luyo
 mkpE4NGpaxspIAz4l24bRJGyqtkkhkD8yE3qcvbg6fnrrL795TQBX/Yni/hjI2XCKfGv
 6CUrvrlLZ9MDi3XXWyi1F6SyUOsnK33gWyJ3kdorzPCyfJx/yVg1SUhyjHlVgd86Erxi 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vmgkd-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 17:39:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5FA49235;
 Mon, 26 Aug 2019 15:39:07 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2CD062BC1CE;
 Mon, 26 Aug 2019 17:38:52 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 17:38:52 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug 2019 17:38:51
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: remoteproc: stm32: add wakeup-source
Date: Mon, 26 Aug 2019 17:38:42 +0200
Message-ID: <1566833923-16718-2-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
References: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083929_157882_02C37F7E 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the "wakeup-source" property: if the optional wdg interrupt is
defined, then this property may be defined too.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
index 5fa915a..ac54b5b 100644
--- a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
+++ b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
@@ -21,6 +21,9 @@ Required properties:
 
 Optional properties:
 - interrupts:	Should contain the watchdog interrupt
+- wakeup-source: Flag indicating whether remoteproc can wake up the system by
+		the watchdog interrupt. Only meaningful if the "interrupts"
+		property is defined.
 - mboxes:	This property is required only if the rpmsg/virtio functionality
 		is used. List of phandle and mailbox channel specifiers:
 		- a channel (a) used to communicate through virtqueues with the
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
