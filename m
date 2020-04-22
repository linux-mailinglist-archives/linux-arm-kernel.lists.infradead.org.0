Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3E41B3AD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CtZrlOuOeG/ql6FYdBMNFabqyjsGwGcvtAiyyoeri8I=; b=JboZ3iBsk4PLBf
	xmSl3A3FZz6bjuQHxNvXKvv9Kpns8sMXB4gS5LXNgNQD1wqEpeZdb6qa4KG8gP7v2fCaFOzDW4efv
	az2M65R2awXJVka1IwNi0kEgIQGUH56mOt1KIx1CMZSgmCjuHVVpphKY7WJnuvPrET1lUJAx4nDuR
	JVQilRdtgG25Q8ZH40zxwDdjUo2BuhNhlS3WiZ5JPDo3CScvH08XldLhXJCXss1691qqJz6ciknxC
	kgTK6zN+hJBQooVVfJd9hdxat0qck2w5zySJaESCidS2sNC6dcXTJUKmcS6RWaHWqbhFmPsLCal2S
	zhM7IHsRbYPtuVSY6T5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBNP-00013r-Qt; Wed, 22 Apr 2020 09:09:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBN5-00011b-1n
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:08:44 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03M8wB7n011347; Wed, 22 Apr 2020 11:08:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Ps7TvwTK/0SEKTWJDXvtpJV0GLq5jnv18Nnlhcp4Kx8=;
 b=TcD0zJerMIjUUHkkZn3jX9sw9yQukoX0mUJx29wBmDDP7x7W8vh2fL7gE1wfUI6eTmJZ
 D9rkMmTbkYSocZCkGDmXWFv1Ogjk8qfHGBbp49WFeyJh0TNIVjuww3XMVmGuY9jfJQqZ
 bSYz6Nw/7QID6U+pUtlbn8hsWnavvWx5ZnQGdA9brMrEiejTNZBYpXbrYed1+bJhuj+t
 leCA1x4jro7K+BccK8+BdqqTIQSGCq4G31OcrDz5kjTl3QKZcNfEcNeyMmAIh2Ez84v5
 2WFps4uf7iSIv9T164oENzsixFepdm/Xb2xkwyzwjolYszuV3hP4lPpGZSb85kiarWFE OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11nbvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 11:08:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 625F410002A;
 Wed, 22 Apr 2020 11:08:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 55FCC2A4D94;
 Wed, 22 Apr 2020 11:08:38 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 22 Apr 2020 11:08:37
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 0/3] STMFX power related fixes
Date: Wed, 22 Apr 2020 11:08:30 +0200
Message-ID: <20200422090833.9743-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-22_03:2020-04-21,
 2020-04-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_020843_460910_BAC18C17 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With suspend/resume tests on STM32MP157C-EV1 board, on which STMFX is used by
several devices, some errors could occurred: -6 when trying to restore STMFX
registers, spurious interrupts after disabling supply...
This patchset fixes all these issues and cleans IRQ init error path.

Amelie Delaunay (3):
  mfd: stmfx: reset chip on resume as supply was disabled
  mfd: stmfx: fix stmfx_irq_init error path
  mfd: stmfx: disable irq in suspend to avoid spurious interrupt

 drivers/mfd/stmfx.c       | 22 ++++++++++++++++++++--
 include/linux/mfd/stmfx.h |  1 +
 2 files changed, 21 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
