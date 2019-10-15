Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A0BD7699
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9dpJll62CY80bHc+q9kDLg8sbgOKQTdNfGnuHICVlo=; b=nWOcc6SWpMI9pE
	gzZ4naPjXLJaNVedxh6/N/5WYyebmxcamQ+x8cxiw1z1DkCBMV9ak6YCt289nL0BWCpinhjpFy8wJ
	TSynUcwQUrlJ2UZ8yAN3I1fTog/NWP3Mal3D8s6Nl3X47PbC53auY0AHXKjN692dfiQibxsMDDlNk
	BCAqSo3N8Be2zz7dGHDx/OR/jWfUK1QIzxJpK+cW+cjH68feW9omxibqhfl5Hrja1F75e+IXSaD7w
	8E6rZi4jpXprEBFZoTHhttSzgo/YMh86YoXB7vGAwYwD3p/GgVAEljNRDZVIncAeT8V+7HHLq1tL/
	BF04znbireu+tRpG/VGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLzR-0003uq-DL; Tue, 15 Oct 2019 12:31:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLyu-0003Z2-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 12:31:18 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9FCG5YL004950; Tue, 15 Oct 2019 14:31:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=+GjgENcAkDTPR2yM3bgmWF3aAKS3dbofBQg0yNbTFkc=;
 b=ExuPmFlPOX1rNbfPHOuK+LXPbeoDHm5YfR6qwbcsoWg9B5MrUD4QBkYUC/flMmdgHkLO
 nLFy5NxEitnXVJzVQOefdwBEPEY3xc+e9FduxbqQ66yQQH3M0FPeOQBLSoqpMLkGg2wR
 GCO7DNFyQ/WMVH+NmdsqvMYpLlybn77f3p76gBdk5r8flP3JL2LLOeGI5KWnlB+5+zn4
 V8BJikIW/vq7s/lWx5RjG8jJMg4idXpOWoOp6gbqNs65Y+0/PRxUVEV1aOn6TcoZdOrM
 pJxRjcJ55dm+MRXfyVgpzPxIpL+167KXdKJ/XXQlGW/wbkWMfra2jokSsfh4K83mB6xM yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk3y9rhh8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 14:31:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E5275100034;
 Tue, 15 Oct 2019 14:31:06 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D611E2C7EAA;
 Tue, 15 Oct 2019 14:31:06 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.44) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 15 Oct
 2019 14:31:06 +0200
Received: from localhost (10.129.4.186) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 15 Oct 2019 14:31:06
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32f469: remove useless dma-ranges property
Date: Tue, 15 Oct 2019 14:30:58 +0200
Message-ID: <20191015123058.14669-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191015123058.14669-1-benjamin.gaignard@st.com>
References: <20191015123058.14669-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.4.186]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-15_05:2019-10-15,2019-10-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_053117_055345_6B3ED906 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove dma-ranges from ltdc node since it is already set
on bus node.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f469-disco.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
index a3ff04940aec..c928126d5b7e 100644
--- a/arch/arm/boot/dts/stm32f469-disco.dts
+++ b/arch/arm/boot/dts/stm32f469-disco.dts
@@ -166,7 +166,6 @@
 };
 
 &ltdc {
-	dma-ranges;
 	status = "okay";
 
 	port {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
