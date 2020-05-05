Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17501C4DE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bxDLR17sytxdkppKT5Er2U5a7gUVuquIlIh0eQ+ncGQ=; b=Ma7fRCuLckMDWx
	BXDt1o4BKDgDouhAkLeOkA8cmt9y8fY3F2dH40DusAajXM0poqSLD4Gt0uMGjLnG/iOK8T28LMcan
	VJaqfOBS+SGXMp1+sNMHDyOaYPyyrd8GrUwpoLTJYq07i+y3q1Ebnn+rpDSpjUPJ0sVtXUJ5gXY2P
	5tRetTL6gQk+jQEgMB1OB3Dpxpurdo9RY7hTrRmsxTsiaMd5zwRBn024J2Lp1uF4Lj51hXP6WP3xk
	Uwqgjt8lKN61TxlSnQq0fotuZMtm8Lffnj3m4JtuGIJE/juC0Aa++5IixMmcLolX7B5AhxL1QsjkF
	3NYrJ+16CuhwNl0zmDXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqWe-0000AT-5N; Tue, 05 May 2020 05:53:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqVP-0007TJ-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:52:37 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0455lAIt026985; Tue, 5 May 2020 07:52:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=mYm1aPGrb5Sqtq3pKPGZgvor7iTnX4e9UCvFT95c2cI=;
 b=pPfbSQIn3uVS+P4qi6urtq5nSV+ua/tIE9mhET/ZUw5Uas3suoH+HSTtZJXfEY/USViN
 YhOEhBaO9PXiUnyfhgC+Pq6w3QN412EJgXJApEyU06dybvmtOWZ9i2UmFH8TjY2SmLc9
 hLNdhXxZZaCIfUmxep9AYNbaJ2ffRBJHxvRLzClz1ZNd0wRra6FKEu317HTwC7WkLQRT
 sMnu8iRwcl7aUaqqZqj6IewvKYMbuG7D+9CTSy7/6QZhMTGh3fow9oy4NtX7kGM9b1Kj
 QTAxgqTmbhvn9snOfYXUTm7g6F6Lj5XZPw5R7dTk6VYWZB6W2mIG9XkasspJhL81H4MX Rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rx08e845-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 07:52:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31E3D10002A;
 Tue,  5 May 2020 07:52:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 00B7621CA80;
 Tue,  5 May 2020 07:52:19 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 07:52:19
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 0/4] stm32-f7: Addition of SMBus Alert / Host-notify features
Date: Tue, 5 May 2020 07:51:07 +0200
Message-ID: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_02:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_225235_654690_F4378FE2 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie adds SMBus Alert and SMBus Host-Notify features for the i2c-stm32f7.

For that purpore, I propose two enhancements to the i2c framework.
1. Addition of host-notify client handling as part of the
i2c-core-smbus so that any other i2c adapter can benefit from it,
even those without specific HW support for Host-Notify.
2. Addition of two i2c_algorithm reg_client and unreg_client allowing
adapter to take some actions when a client is being probed.
Indeed, in case of host-notify, the binding/flag is related to the
client and the adapter might want to enable the host-notify feature
only when there is a client requesting the host-notify.
(Since SMBus host-notify is using the address 0x08 which is a valid
I2C address, keeping host-notify always enabled would make the 0x08
I2C slave address non usable).

Alain Volmat (4):
  i2c: smbus: add core function handling SMBus host-notify
  i2c: addition of client reg/unreg callbacks
  dt-bindings: i2c-stm32: add SMBus Alert bindings
  i2c: stm32f7: Add SMBus-specific protocols support

 .../devicetree/bindings/i2c/st,stm32-i2c.yaml |   4 +
 drivers/i2c/busses/Kconfig                    |   1 +
 drivers/i2c/busses/i2c-stm32f7.c              | 198 +++++++++++++++++-
 drivers/i2c/i2c-core-base.c                   |  11 +
 drivers/i2c/i2c-core-smbus.c                  | 105 ++++++++++
 include/linux/i2c-smbus.h                     |   2 +
 include/linux/i2c.h                           |   6 +
 7 files changed, 317 insertions(+), 10 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
