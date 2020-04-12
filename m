Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA01A5FA9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 20:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4TJFBek2GLaBrZJ7GtbqvtXLFph/O4aVJ3seNSKS+/o=; b=bo7
	5YPqBOLDElPGv1ikL38S0EEhlqzHWLadPrBEPoNMDWXmjsqGNmXEUZLwx1sH5THazPjNqRnoeMmIF
	qVTP5xXvV0BhF0nZLw7Jpd8NXnHoXLPVB2TwU6Ea6QJilKcHFbeD30LJrJVVz1SK7kPRS7WECT82E
	sx4UjvpMNbzFIuTh3dml9RcUS4MBuARH10rRM9vMOghxKdcOgwagApjVxlG5Eo5xnMImFiDDTPKLn
	sCQ+psCFwSLH28EZtjJYxDLop4JZ/XvJT79KUYk78fGboxA00E3sJqK5eEKvgrnVn+bUxSOydDh0D
	GktK9x8FamEd9eySWV9Gd8tk2u92S5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNh3U-0007PQ-VU; Sun, 12 Apr 2020 18:10:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNh3K-0007Ox-SL
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 18:09:56 +0000
Received: from localhost.localdomain (unknown [157.50.0.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CFA6206DA;
 Sun, 12 Apr 2020 18:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586714993;
 bh=KvvVL4O/277aJbdbXBvwqPERBOm9+Bv6KLT8QTuv4zM=;
 h=From:To:Cc:Subject:Date:From;
 b=w+3hJt5/xqWcvDyO97BZEb7+ZEa7zW4Mbf5oiloYlbd4WzthZF/hm1ykeDka3C5w+
 rHcMPFBC82G3Vrd48IF1ABsAKL8i7DaTXzEs2IIKlrQQ+NiD57WKPlUimhh3DR69ZJ
 /QWLrfeWOkTcCxbPXNtaGpeMhV+jg5jDKpp3Dpu8=
From: mani@kernel.org
To: gregkh@linuxfoundation.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH 0/2] Add software flow control support for STM32 UART
Date: Sun, 12 Apr 2020 23:39:21 +0530
Message-Id: <20200412180923.30774-1-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_110954_936832_1223E49E 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

Hello,

This patchset adds software flow control support for STM32 UART controller.
This is necessary for the upcoming STM32MP1 based board called Stinger96
IoT-Box. On that board, a bluetooth chip is connected to one of the UART
controller but the CTS/RTS lines got swapped mistakenly. So in order to
workaround that hardware bug and also to support the usecase of using only
Tx/Rx pins, this patchset adds software flow control support.

This patchset has been validated w/ Stinger96 IoT-Box connected to Murata
WiFi-BT combo chip.

Thanks,
Mani

Manivannan Sadhasivam (2):
  dt-bindings: serial: Add binding for software flow control in STM32
    UART
  tty: serial: Add software flow control support for STM32 USART

 .../bindings/serial/st,stm32-uart.yaml        |  15 +-
 drivers/tty/serial/stm32-usart.c              | 143 +++++++++++++++++-
 drivers/tty/serial/stm32-usart.h              |   4 +
 3 files changed, 155 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
