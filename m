Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E86F146DFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QtZuDKxTgbXuwHGlpM9xS4z65Y+MRi0VYrYmA1dPEo8=; b=gjulyNvtAxJEUH
	Bh549md++R8rQaz9M793q0vJj7VqDKTp9SpHG4pn589qFFIrfSP6FBEBJA4KmxgxWm5HPZnRPTIBa
	gdcOR/eaDP85+8TbchbXL0EcWoH6MgAQKfFkB0V9LdX5lkj/e3mzPJP3NzYb0NifuLOpqYQoBbWOp
	0tilOj+i8qvwl5lKvQJ3iyvNRLbMM56aphEbpMS9ij67hcpYfdm5ZgnXi7/1lOHkgs50Ko8mCaOr9
	vK/mFwMFyn/qxvm8eAlqzLbbx+O+A9ltg6B2ElDBaXD2F3fg+7weRDcgvnf6krTRKeDrOmt999uvv
	j749yAUt+tZfRp5vlwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf70-00015I-U9; Thu, 23 Jan 2020 16:13:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf6l-00012r-4p
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:13:28 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00NFve58031431; Thu, 23 Jan 2020 17:13:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=r/6c10V8HCc+Fjz5JnvPVy9a3NtCwRdREVfF/KVqSgI=;
 b=mflejtxGm2ZsR5E0/hbbcq1Oo447wSLkEP+G3mDuj0rX49pqJ9zqYU2mwjm4xrX2jvJr
 KrCUGIzhfBYBAb0++x80C6DT4bOeLYpQq2g+8LDYfFC9FW9kI2vPeUBK80s6jiiR4Pov
 QCwBti+In5y6kpMIirp/8v8Kum09D+GcHq7aWQzY09tXJheXLZkHs7+TieIPnUwxrRi0
 bpBT+2ejWoA/Fnc3r2zjRTnAjOgCF6Rk6kZSs+KC0nwSomLvEH4crhh7pC2z+m/BIRX7
 WDi4sNaWAJd6d2tO3RigPp3atGuzGONQD6tt9HmP/uAk6Fd+JI6I/A0Tf1bmSBycgjxW kA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xksspaynq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 17:13:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 457BF100038;
 Thu, 23 Jan 2020 17:13:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 290DF2BC7D5;
 Thu, 23 Jan 2020 17:13:16 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan 2020 17:13:15
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 0/5] i2c: i2c-stm32f7: enhance FastModePlus support
Date: Thu, 23 Jan 2020 17:12:45 +0100
Message-ID: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_08:2020-01-23,
 2020-01-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_081327_560151_D8663A22 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This serie enhance Fast Mode Plus support in the i2c-stm32f7 driver
(support suspend/resume) and add the support for the stm32mp15 SoC
that has new syscfg bits.

Alain Volmat (5):
  i2c: i2c-stm32f7: disable/restore Fast Mode Plus bits in low power
    modes
  dt-bindings: i2c: i2c-stm32f7: add st,stm32mp15-i2c compatible
  i2c: i2c-stm32f7: add a new st,stm32mp15-i2c compatible
  ARM: dts: stm32: use st,stm32mp15-i2c compatible for stm32mp151
  ARM: dts: stm32: add Fast Mode Plus info in I2C nodes of stm32mp151

 .../devicetree/bindings/i2c/st,stm32-i2c.yaml      |  6 +-
 arch/arm/boot/dts/stm32mp151.dtsi                  | 18 ++++--
 drivers/i2c/busses/i2c-stm32f7.c                   | 75 +++++++++++++++++++---
 3 files changed, 83 insertions(+), 16 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
