Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072CB9D345
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lV8OB5oLQzzXodSkaRjcLnmjAKFYpFwD9WPOKXeWX3o=; b=XkmdI7RqkSRXfZ
	1r94qd4Cmyyn/c1q8i+6iQlQ8HwRNZ8kEftdn3bRqeAM81EhrqYPjBKEizAjK2LnKioUrgcX3sTKr
	LZ8ap7tRjLtTLyCqGN7I0PMKxbopLhJ2Lnrde16blElu21OQIqA7xA8BGYXgAAoJwHcEuWQdiD2md
	ZDIdaAeOvfnb5YddD6dzBuBHHWfutnNbIGVhKbe1bXBGXwSB0gI+BQ0tIniPuHifEIydUrASuBqcm
	rL2hXzU0Gax9ygBReYQf7u83UZeB1JXjtZdSZ7oAhBaS1xpcIcIJHJa9LrXMpriuvV9DQmhwj7o3W
	QUELbFolMkfVVPRPv0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H9K-0007YD-Cc; Mon, 26 Aug 2019 15:43:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H5c-0003MG-1u
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:39:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QFPrAV018373; Mon, 26 Aug 2019 17:39:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=H7DnCfFp0iZ60ErGpkBa9fhjxQJ8KQ0RkkUvFpbyyJE=;
 b=0pEDxviXDpGIDzD4OPyXYWY7GFp4XjkoggbCd8Fbo1rkG20JDMTsOjlWWxakPE3kP3bB
 3vTeTWoBjJUPPDiNSNS/v3wWr4RJK8pnK5IUYBsEDmPPMLgZt8fHeQwHNK1M7OvXQ5aT
 k6h55iqH2bjfVW28WNkGrP3rCbw2xTAt0W6oz/TGeMxh+L3qNEwzOp3o1uE0l0BUZI+7
 FE0L0FpxveE0PufaVubCe7grXDgJlhaodk/Gxppje2FS0bAkM1hKKvamWDWiSpMDmSy3
 vJ6y/qWUQrF+OtU9iuj2cRA+FVRqGnmzYemjYWoEM0JrgqQdWrge45wdRMllQLl9UUL3 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uju0vmgh6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 26 Aug 2019 17:39:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 48F9886;
 Mon, 26 Aug 2019 15:39:06 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 912742BC1CA;
 Mon, 26 Aug 2019 17:38:49 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 17:38:49 +0200
Received: from localhost (10.201.23.25) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug 2019 17:38:48
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH 0/2] remoteproc: stm32: allow wdg irq to be a wakeup source
Date: Mon, 26 Aug 2019 17:38:41 +0200
Message-ID: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083928_453391_868E6CCD 
X-CRM114-Status: GOOD (  11.32  )
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

The watchdog IRQ which notifies the remote processor crash is used by the
remoteproc framework to perform a recovery procedure.
Since this IRQ may be fired when the Linux system is suspended, this IRQ may
be configured to wake up the system.

Fabien Dessenne (2):
  dt-bindings: remoteproc: stm32: add wakeup-source
  remoteproc: stm32: wakeup the system by wdg irq

 .../devicetree/bindings/remoteproc/stm32-rproc.txt |  3 ++
 drivers/remoteproc/stm32_rproc.c                   | 47 ++++++++++++++++++++++
 2 files changed, 50 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
