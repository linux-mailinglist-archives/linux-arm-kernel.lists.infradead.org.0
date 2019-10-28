Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A2E75E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxksgMyfjuPrhO9Gvgz5p5KUGVKUAuzGWiOcS3SXtyQ=; b=p8SQgzmPLA5DTC
	JaUBRZwPCHJsIQZ/TiOAnTGiU/nIakkT6cWMFvNG0DTDDV4M/pwTb7+nT3p4fdLHwmmyDYa1TvLyi
	O7qU7UnP0Zn3Fr3Q1cd9nMgyTrvdIIuHDUak6XuUbhnJDl+Pt+g9EAa2+hLTnqr7RJp2EgjTETwBV
	x5zrbnMGtFDYmNty84shjgzL5QTYObqv24Xtwhj8z9OHuqHXiubsRPQfWHcwW2GIky7gE/rLiwBb9
	XP3MoRr62I6WAFnGQEF/Bie/83PcGvD9ttk4G8bOjhBUJ7yP/GKcrCf9WCh0IhciluHOnhr04KjaQ
	foRG+uNbE2lP3VYTymlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7dB-0006oZ-9k; Mon, 28 Oct 2019 16:12:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7ck-0006fi-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:12:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9SFuC3Q007135; Mon, 28 Oct 2019 17:11:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=hs9ioC3FUJXhQf7N0szd3cgJObNevzhxvfuz9gmEXh8=;
 b=Wpap3FJf02ByLfmEWx9FQx24YE+6nbvxX+EN3K5zctz/trU6NDbryNX/JyB1H3gE2ek0
 dMPzjXS5+0UNs5glJx6oenf+5J2GngjIF6W6FNzEJHcle1jkF9Ou/9pP9DX6fnXqaUYw
 cvHq1pbCilG4b42kPTIpNmd9tirQPM+Uxet39c04osMVx9YetBlsVzXcjJan65YtInrB
 puMnJYmDkQNXGguQ0/Wtx3MKsDpFBdeVGj7TjsLV0v9/R4ozcTZlE/3HwDKFTanm1Ynq
 IewwaAMIjqBxe0P4LmeDTNrMXB9P55iufz7iZEUGxEKxtlzQ3Cj1eBtOU7GKLXkzXwFU QQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vvbm0b68j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Oct 2019 17:11:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 861EB100038;
 Mon, 28 Oct 2019 17:11:55 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 713B32B1E79;
 Mon, 28 Oct 2019 17:11:55 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 28 Oct
 2019 17:11:55 +0100
Received: from localhost (10.48.0.192) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Mon, 28 Oct 2019 17:11:54 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: iio: stm32-adc: add max clock rate property
Date: Mon, 28 Oct 2019 17:11:47 +0100
Message-ID: <1572279108-25916-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-28_06:2019-10-28,2019-10-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_091207_039202_CAE96EC2 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, mcoquelin.stm32@gmail.com, lars@metafoo.de,
 alexandre.torgue@st.com, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add optional dt property to tune maximum desired analog clock rate.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
index 4c0da8c..8de9331 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
@@ -53,6 +53,8 @@ Optional properties:
   analog input switches on stm32mp1.
 - st,syscfg: Phandle to system configuration controller. It can be used to
   control the analog circuitry on stm32mp1.
+- st,max-clk-rate-hz: Allow to specify desired max clock rate used by analog
+  circuitry.
 
 Contents of a stm32 adc child node:
 -----------------------------------
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
