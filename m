Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D894FCE412
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JHOtva0rPd3ndFOy3Q9Xyu8s6d2IWcITlpOAQsWVt80=; b=ABiLMkYL1TZvxT
	TeyvGoy32K0vRg9Uc6aVcNWdrkUYnFirZhRjmEMGepjfVZoknuu1HxzojlxOmlGwex68EVSve+HmY
	8PYdOGUSn05Ey/9FWfaNhhyMI/96scItmdyGRcTJ8puTO2zfMZ40vK4LxEOw1Mj7eViHZWQ6Q6+oF
	Xxshom/59FzZMOhkJEhs9ypeNX/CzCIEZdyhZUxs+6WmmhV+ym15djqAlBfBlt+2qw7k5naZ0vIL6
	oxkA6pnNs0jcDWGN+zzzdI4zGR6pZQzymLe9g6QfgjF6DPv3It+RYbUChh2lSmO0fyXFnVEeFbnyM
	Sh98RewmqwFyzhN07j3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTKG-00023b-I5; Mon, 07 Oct 2019 13:45:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTJJ-0008Nw-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:44:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97DfgGC028131; Mon, 7 Oct 2019 15:44:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Zgu7CgUTWBRiwjLIz2RPkFnnw9oE35cPJi/V125/2YA=;
 b=rKt3LHc1Qv6MsCK7bvNvvOmuO1+FwV4jQj7yEZWErWQi8Jy+iGrgbcCz4MxN+/aUMFEh
 AJN/3qyPJ9wF1KSVWvfSYUNEp5rHPJz4g8ltTzXJEpMYYeTYdQGo/zdgHWFWnQD/bqzP
 i9ECsG9TsM9dXSgO8PjarAEf/De/rzIZ1w8GJ+KzCzGFmNySGsr3if3mm7geLh9ZmN1U
 g83u72LpoGvZX4Llb5KRd3AJvK008C8rtKF8o5qQ6Yu23bNuE/gzk8hDFlCJlXcij45Q
 0OLoCyGJAoyNFp+k0Lb+M9cMBi1abw5I9Misw8j23iv4er7M8EuPbI/0bR7mbsJdwS/h UQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvjk6h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 15:44:12 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 26AF810002A;
 Mon,  7 Oct 2019 15:44:12 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E65A2B8A5E;
 Mon,  7 Oct 2019 15:44:12 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 15:44:11
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] dt-bindings: fix issues seen during STM32 DT validation 
Date: Mon, 7 Oct 2019 15:44:07 +0200
Message-ID: <20191007134410.10337-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_064426_162783_2080A666 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series updates yaml files to clean some issues seen during STM32 device
trees validation. 

Alexandre Torgue (3):
  dt-bindings: arm: stm32: Add missing STM32 boards
  dt-bindings: pinctrl: stm32: Fix 'st,syscfg' description field
  dt-bindings: usb: generic-ehci: Add "companion" entry

 .../devicetree/bindings/arm/stm32/stm32.yaml  | 27 ++++++++++++++++---
 .../bindings/pinctrl/st,stm32-pinctrl.yaml    |  7 +++--
 .../devicetree/bindings/usb/generic-ehci.yaml |  5 ++++
 3 files changed, 31 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
