Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B197619918
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z29dNytgKzx7RacEVEOJgQsGvxrLHVPA+NnphLjRgmg=; b=dSL+UhENFf+7gK
	sSQs3Rwd9oXq3tdSs8TxmVTJ5RsWJhZoV0MMD3bH7ev8dBK3TU0sRwl08XEQ2mBSzqZYohGr9L6Gg
	BnxM4S4HLgu1xg61b6K9MeMb0QE3+OypjrTS6RCe9DLNEf+B7YZ/C3jwruqtys7du07ea1nQSFbTN
	gdvQoW4DWMWQSU2jL8EkaSW41gtFyYmJEH/HA01IEqW+MkGQPNPJmqu84XzjlBx2I51mupn3eMZO/
	dZR8ej2xA7a0nmBi0y5sq2QKK2tj+7IBgW83PhVHsOvI3x7OKHYbj02N4F+Y0Y7D8B81orBE8Yzel
	M9bG+hVqY7c+Nh7soIKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0B4-0003sv-OZ; Fri, 10 May 2019 07:42:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0Ax-0003rX-Gq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:42:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4A7cYSq028701; Fri, 10 May 2019 09:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=N1v+zxTZE44tr6xZHlbxMHCvWy6h3ciCGaY/rbHViTk=;
 b=a3QCQoY3R8nEO8Y32dWwA5wH5/dpmNaO2RWr6VTmU7jIFh7vyzTNByjPUx4/8sSFFo0v
 dUAUkMCoQ7Abuptg4YLoUf7Icw2NDODJs4UH/o7Sy+whdv7qTsWtYUJvBQgkz0BYx2kl
 yih3y6T17fxLnL96mLWfALBw7a/4WvR9ANOzySz1AZgK6NdWOiUFodUIepPWGnFuwoZw
 PowJnbuKFkqqrGk+c+oFRxSf79vCD3VmlIaHsVPsjCDda7jWNU06NduMlwo5R8vThEIM
 UspZc+xoPOeUAJ5XTEARNg+F0eSZ26/Vy9nqcOFPiLDgQUDYnyPhabkKjyc94GYy6sZU KA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4gpn3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 09:42:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 07FFA3A;
 Fri, 10 May 2019 07:42:35 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B752A15AD;
 Fri, 10 May 2019 07:42:35 +0000 (GMT)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May 2019 09:42:35
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
Subject: [PATCH 0/2] pinctrl: stm32: add suspend/resume management
Date: Fri, 10 May 2019 09:42:28 +0200
Message-ID: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_004239_890909_665F5119 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During power sequence, GPIO hardware registers could be lost if the power
supply is switched off. Each device using pinctrl API is in charge of
managing pins during suspend/resume sequences. But for pins used as gpio or
irq stm32 pinctrl driver has to save the hardware configuration.
Each register will be saved at runtime and restored during resume sequence.

Regards
Alex


Alexandre Torgue (2):
  pinctrl: stm32: add suspend/resume management
  pinctrl: stm32: Enable suspend/resume for stm32mp157c SoC

 drivers/pinctrl/stm32/pinctrl-stm32.c      | 132 +++++++++++++++++++++++++++++
 drivers/pinctrl/stm32/pinctrl-stm32.h      |   2 +
 drivers/pinctrl/stm32/pinctrl-stm32mp157.c |   5 ++
 3 files changed, 139 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
