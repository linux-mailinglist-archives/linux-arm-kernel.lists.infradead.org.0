Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A97E1DB550
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asmxRc8si9Nw6+woXqLLHqlq0K7Di5sF3kHjHucBaHU=; b=q0+hjhFlg5/IWn
	lPb412ax1L5ABTohBhKrYkcWf9s8mB0XAlVkcMM1fdp06RoAkZRO74d1OUl07liyB11gVEHOf1AsG
	qs7OyWxO8JE6NSwS1HMlHFtZe9eOfEiQmBYpczslruIHp8oO7BCjIU7vLXTFxJ4kp/7jkhp969+Rl
	yWvtE0pL7/zR4eL37sAjsI7ThGFbXjVOWdikgUKXxGhJiwC2FYI+fufwXQUjYnqn9d3Me1nrHpmV5
	m/8xRBT2949FCRxQkzpQCNvtomjsCJ4ON4JJCPRlmHrqDD1a8XJhN6UCSkgRmtETyNfS9nPS+iqXH
	EqprAqmg1/ANsZjkK59w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOxJ-0000Oa-MK; Wed, 20 May 2020 13:40:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOws-0000Mg-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 13:40:00 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04KDZUki013233; Wed, 20 May 2020 15:39:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Ra6W9fZReLRTQrx+lu7bVII6kYd76LIwYkwWDAY0Cqo=;
 b=L3lFrasvXkvpYdrWyPK63OLsSj360TP3KX1jqMA1OYkfPfFg5x7bT4/Ad0J+1XuhTBY9
 6WvSEt9LMyK06Yt1nEwXV6AOFuk/fTCRZBgSqdRmC03uPiw2ADxAPEYEQ6njiJAv1fhJ
 V9yBftCK6A1UFE2Pdx5tgFvQTmR9kE0p/nMArswPm2lF6SsF3Bo6/GpffqLXvinxOAfX
 eKIEpVbyAIlCgV1i7CcJMl3KuODXi0sTIeVlCFMVsjfUK367TvdNmWbjKZXvwp/qWHSM
 toBRKt6rM74mhhV51wulH22H22wVznKZyjFqIxjPdOiyOyidIvI7mzmfbKGA3/gKTYbQ WA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125xy0jfg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 20 May 2020 15:39:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 72FE310002A;
 Wed, 20 May 2020 15:39:42 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5B0B32C38AA;
 Wed, 20 May 2020 15:39:42 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 20 May 2020 15:39:41
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH 2/2] serial: stm32: Use generic DT binding for announcing
 RTS/CTS lines
Date: Wed, 20 May 2020 15:39:32 +0200
Message-ID: <20200520133932.30441-3-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520133932.30441-1-erwan.leray@st.com>
References: <20200520133932.30441-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-20_09:2020-05-20,
 2020-05-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_063958_969030_0195C2F8 
X-CRM114-Status: GOOD (  12.22  )
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

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 17c2f3276888..9cfcf355567a 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -1033,8 +1033,9 @@ static struct stm32_port *stm32_of_get_stm32_port(struct platform_device *pdev)
 	if (WARN_ON(id >= STM32_MAX_PORTS))
 		return NULL;
 
-	stm32_ports[id].hw_flow_control = of_property_read_bool(np,
-							"st,hw-flow-ctrl");
+	stm32_ports[id].hw_flow_control =
+		of_property_read_bool (np, "st,hw-flow-ctrl") /*deprecated*/ ||
+		of_property_read_bool (np, "uart-has-rtscts");
 	stm32_ports[id].port.line = id;
 	stm32_ports[id].cr1_irq = USART_CR1_RXNEIE;
 	stm32_ports[id].cr3_irq = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
