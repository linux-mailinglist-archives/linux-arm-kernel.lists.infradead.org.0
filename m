Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEAD18BF36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBWuMyHCLyIHPIUYMCA/FhBVLiHWyrskrdEdDsg1ZBE=; b=b6jaw2zGoxeTil
	d/R+nvph/Gih3fkBnEGgXdwYbA0GksDHOJOB3qxO+iuDSTVfdCr0Es/v3OLvbknE/VCyGgu1H9Lq4
	fbCBa24VjxxcND/Sfg33p2ngeLyU84XvP3qoye+6Ra7AARhzf4+vkXd0zD2w1quLHywtehYXXvbBf
	Lkl7ptSZQ4jz0G5IGAm7pdXbuAycVXd4DJ16kW6TpDKR1Q34IrJCz87m8TjDZ1S9VXQBNUZUitoPZ
	oIG5MgxhCkouaI3mUZ4rBz1eZ1BbEwxgWaOXjLjKwq7Qjv/wa7vwCClPcQBaLOb93lnguZGSdLLwl
	9OwYWQ7VM2J5DKMPgtsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzlE-0005J8-5b; Thu, 19 Mar 2020 18:19:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzl1-0005IP-8H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:19:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JIEBPw006390; Thu, 19 Mar 2020 19:18:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=/NryDuotj7GwNZeRIKiNEE04efcoGmBTQAarcZjEeEM=;
 b=ilA6UgYTk/SDj4tn5Z6fnFBav5jjz1+QPUuhykOWCICXnTQbuN9lCImuGO5mfM74pK5G
 zwHzIGNe8OZtgvP8b5h5uHX0X664bbc8r2oBXBCViIyVq6UU8eCUfmYGPO8UL857euAg
 Gl2bMIbLLfn8BKroKXWRAudQVM0xht+L59+g07dQg8c9X9ox8mDre43QM2mDXwS8j4Ck
 v6Pfv3qj514b276Bct9qyAKQAjVmywK3rRSN3IDEN3TU36uvbU9i3ZJugxrVWoWsB56w
 SGT5h/Ct2mhkqEEqorqZVUL2hJ2XgJY3U4MJC3z/gG+fMxSwKZdKbI9BlZoXv0KbXF4e +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu8etkc0q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 19:18:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 733AC10002A;
 Thu, 19 Mar 2020 19:18:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3AC7A2A70CB;
 Thu, 19 Mar 2020 19:18:49 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 19 Mar 2020 19:18:48 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <robh+dt@kernel.org>, <jic23@kernel.org>
Subject: [PATCH] dt-bindings: iio: adc: stm32-adc: fix id relative path
Date: Thu, 19 Mar 2020 19:18:27 +0100
Message-ID: <1584641907-8228-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_07:2020-03-19,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_111904_591711_4FAD2A5F 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix id relative path that shouldn't contain 'bindings', as pointed out
when submitting st,stm32-dac bindings conversion to json-schema [1].
[1] https://patchwork.ozlabs.org/patch/1257568/

Fixes: a8cf1723c4b7 ("dt-bindings: iio: adc: stm32-adc: convert bindings to json-schema")

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
index 933ba37..dd8eb15 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/bindings/iio/adc/st,stm32-adc.yaml#"
+$id: "http://devicetree.org/schemas/iio/adc/st,stm32-adc.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
 title: STMicroelectronics STM32 ADC bindings
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
