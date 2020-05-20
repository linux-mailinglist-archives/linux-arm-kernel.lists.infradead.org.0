Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DF01DB552
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qvm/fXb2p6H5JLybdfsgg7qiXc/W0ebSHCxrVWVQsZ0=; b=Ab95+4+s3Ix5XX
	E72hFYXbpYDe354VcN6z3j7wKD6AkLjFEdTeMR+K1fYQyhIOasotPkPORGXKxJt7o9thoiCdnbVi0
	zXvpWH+MxZHXu6R5lXnCmwjJMwOzQC2Wz/pE8g59Da5KcnTdlK5Y3ijH/olRWGg+cQ10mwmcDeLdR
	1yQiNAZQ3qaP9SjY76cgaREfZpiH2n/68136NycGs1gdAcHYkXikEyIGK1ij+eUhw0wlXNXUDx48l
	4W/HNo/RUICg0yFMFW+YdVbfVRCBf0onSAiCA/Tx71eZSP52o1mKzOB6hAgR0zFCwel5dYs8uV/eO
	/exEpEfhw/V73Hy2toug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOxl-0003Ea-Ln; Wed, 20 May 2020 13:40:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOws-0000Mf-BL
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 13:40:01 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04KDZU1M013236; Wed, 20 May 2020 15:39:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ArUV+HFn/C8Z3UZZJNpc9RKgx2vqaUmmaj6fhlTfivg=;
 b=rwnlnI1GXtCJVbfrq5wfodJRg2QzJ/tkJ60vGTW98FkJKUFXPl/Lrm0mWdeW8O9/JP6u
 nO+Jq/QZERPXnmPQMOwxNp6pPzCi6vtnROWzsN5o0xKmAwEEXprf+M1SVscv4jkpEEGw
 KHCb9FWDyHOtdjKQQPdrMnkHM0GGvFTN0/Z547EjsctIhwAayY/dBm4bs7W2JNr8KAKg
 SI1HD/aEADQE7GXk7Grq5DJXZkM3VGfPNGgX4sUfkqxMaT8FTqHSmjriCiNoaxfUrvx/
 ast7T1HhJKpfwOxqDTP0flKL8sgJk2TKhH97dhBx6N7NVmcB6+eFnOunGxxgmhxj4IyP UQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125xy0jf8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 May 2020 15:39:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8029210002A;
 Wed, 20 May 2020 15:39:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 667EA2C38A9;
 Wed, 20 May 2020 15:39:37 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 20 May 2020 15:39:36
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH 0/2] add generic DT binding for RTS/CTS
Date: Wed, 20 May 2020 15:39:30 +0200
Message-ID: <20200520133932.30441-1-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-20_09:2020-05-20,
 2020-05-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_063958_973405_1EFB2260 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Erwan Le Ray <erwan.leray@st.com>,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support of generic DT binding for annoucing RTS/CTS lines. The initial
binding 'st,hw-flow-control' is not needed anymore since generic binding
is available, but is kept for backward compatibility.

Erwan Le Ray (2):
  dt-bindings: serial: add generic DT binding for announcing RTS/CTS
    lines
  serial: stm32: Use generic DT binding for announcing RTS/CTS lines

 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml | 4 +++-
 drivers/tty/serial/stm32-usart.c                            | 5 +++--
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
