Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2B313A968
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSPMjJGt6op150uI6V6knhiPt3yCx/esal9sYacFcHw=; b=lXyOLRkaYbK68w
	NhN5nbsf+Shsv9oVdreys1H61rQLweE/C6mba21PcGsgWg9aNmUYJ37DnkWOrNztaT943iPolxXF/
	sM5JYsvMwO+odf6cIHLI1rLkIiPCqwwOcjef0XLj6hhRt0d2gt+wA4Y4zmK4OjGP0FW+f7eIAnlL0
	5j4ml+hiPk/vg3h2QGKwBZ5EZZx/V0NrLIVGIsAjitDgvINiwVNNHW24NOtTpf7hV8VFd94rf2iDh
	SQoRK+U0qqlRcyxFjXbRyed87Bat3eC1ntzBCe9lswYfwG9L0PBZdAjoFLUbgF8XRju8h1+F7/gv6
	/leXJdfENiep6beoHsVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLOh-000874-TK; Tue, 14 Jan 2020 12:34:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLOG-0007xb-E1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:33:53 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ECXGIh004903; Tue, 14 Jan 2020 13:33:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=NtNtpTywFRxlwwiU8XggPJSlwYsAOE1UVCac4kloP4A=;
 b=uGkZEg9TS86fMNjklnyni2wXKhu4WEum5uiTX3h/LPqCmRjhFGbTBf8ldTuM/0gCYqnJ
 VNltSZJWYGrrND67U5bwy0ygRuLxpExhqbQye5AaA8j17Bo84a8s9mlVKLP8bcg0XjEB
 FwN4CO5L+WGRpniYCvoDC7juBizu3u4yEho1ycqWY6PY7edVPJpgaKOTWrcHZUkIVj6F
 s8wiStAt53o2a2yudfTwX7oZrFQfWFSJZZ6CjYctL+QDEnjZDkMzYE0Op5e2s2lGfB5v
 fTK4cIecG3AT4Nvhj4MI3Es8Pf9B445WKMSENRMzhNakP74/qCKKaXwT2sZumxwuY7rs Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf78s5f01-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2020 13:33:38 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6B3B0100039;
 Tue, 14 Jan 2020 13:33:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 507582AD9EB;
 Tue, 14 Jan 2020 13:33:33 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 14 Jan 2020 13:33:33
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 0/2] Convert STM32 UART bindings to yaml
Date: Tue, 14 Jan 2020 13:33:27 +0100
Message-ID: <20200114123329.3792-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-14_03:2020-01-13,
 2020-01-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043348_913813_9A5E8F05 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, erwan.leray@st.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The goal of this series is to convert STM32 UART bindings to json-schema.
Since STM32 UART bindings use rs485 bindings it is also the opportunity
to convert them to json-schema.

Benjamin Gaignard (2):
  dt-bindings: serial: Convert rs485 bindings to json-schema
  dt-bindings: serial: Convert STM32 UART to json-schema

 Documentation/devicetree/bindings/serial/rs485.txt | 32 +--------
 .../devicetree/bindings/serial/rs485.yaml          | 45 ++++++++++++
 .../devicetree/bindings/serial/st,stm32-uart.yaml  | 80 ++++++++++++++++++++++
 .../devicetree/bindings/serial/st,stm32-usart.txt  | 57 ---------------
 4 files changed, 126 insertions(+), 88 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/rs485.yaml
 create mode 100644 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
 delete mode 100644 Documentation/devicetree/bindings/serial/st,stm32-usart.txt

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
