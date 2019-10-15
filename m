Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D8D7698
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RGZHFWNeKkFv9WhUUpysCvydRCVr433HDqkFNhiOJRk=; b=GLdnPEJrdhDs7G
	RdreMRa0lr/XNjL3vl46kjbL8CrLbDDlKzvJcnET2601SFTVvUjTwGFTa7I25eUvzJtPCdiP/OI+r
	o0a0tXxNxKZ9cHY41TrG8rb+5fsBWRuYJUbaaeM8CdG8/CMaHSyjUsyytaNA0ppLi9NxW0KtwzzRu
	HigLMBxQPZ4TIHIZNky6t0r8o1ZDK1DzF659edXcy+grEVXVODerG4JfsNtI/7HCVQ/cvDuA6aSBV
	PGgf7QRtdt7/tx2wPy4R7McGkSWCTO0ow8rg+WgtHyK/LlWuN/FISIkBeBTT9v53Dk85r0Q8YZy3G
	bhBvtzOpCzb59rrRXXOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLzA-0003gq-4o; Tue, 15 Oct 2019 12:31:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLyt-0003YQ-Tz
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 12:31:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9FCFiFX020740; Tue, 15 Oct 2019 14:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=C/kzveCydwhm/NSFFbbmhm40wMyVsaHpKZ6dysDlYG0=;
 b=qyuKPHoeTpOW3iueqds4b/gZvPAxhVUcK9So+HFG+eldZacdjcWHeND1gDmE85oUoSYn
 UJ5DieWVV5C73w8PSyW5bCGbC9eFU/it5YT7dZqaEhoqEniIJqr4bpEvtPFAxw7UuJwK
 bKefzXdgx9k7WWSktRdMQ9QEC8IecSV0pUNPaYiO++nMUImGpAn41CSY87abBH+PGYc9
 bJONXibjSpSo1HnKljA0SOF05ESnvCO+4GvyYdxy8eFhUqugk4Ia1fIxNZWv4bCsYMqm
 xqDW+YeICJBOMPF+CKqUwbzvxs3h2F6uwy+VrIhB46w/VRbTuCYVgjyVBlye1of6INU3 kQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4kx04f4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 14:31:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 24DA6100034;
 Tue, 15 Oct 2019 14:31:05 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 106AA2C7EA9;
 Tue, 15 Oct 2019 14:31:05 +0200 (CEST)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.44) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 15 Oct
 2019 14:31:05 +0200
Received: from localhost (10.129.4.186) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 15 Oct 2019 14:31:04
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32f429: remove useless dma-ranges property
Date: Tue, 15 Oct 2019 14:30:57 +0200
Message-ID: <20191015123058.14669-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.129.4.186]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-15_05:2019-10-15,2019-10-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_053116_293340_A0D6CE22 
X-CRM114-Status: GOOD (  13.31  )
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
 arch/arm/boot/dts/stm32429i-eval.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
index ba08624c6237..21bc657f21c3 100644
--- a/arch/arm/boot/dts/stm32429i-eval.dts
+++ b/arch/arm/boot/dts/stm32429i-eval.dts
@@ -234,7 +234,6 @@
 	status = "okay";
 	pinctrl-0 = <&ltdc_pins>;
 	pinctrl-names = "default";
-	dma-ranges;
 
 	port {
 		ltdc_out_rgb: endpoint {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
