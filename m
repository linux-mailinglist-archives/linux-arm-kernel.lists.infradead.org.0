Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7D01C4DD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66BSI6Qrz1nop7BWsTMuIhAGeBrfn/ncSbFF2W0Qe1k=; b=rNMBO30noX6oAK
	pKIHlqHGQAa6ASLa08rWVD3C3mCNtI/B1je4Asl2wmAL6h+Cx8/4FUjBUYeKGZJiBpPIMIwPd7D47
	lDoqFaVDipCC8+Q5y2vbhFVKuStF7FJD8vdhA8Rpo4H8vfz3vdDOeRT+w/nHCK53ydY2ysTzCIaNP
	uipnklVjwXikbkOGqmxFrva7d3pPtweFAJ1Rv5ohlwLu6GC+YqEdiMX/aIDPbYSlhx0ACTWuXLw4G
	PawZQ7t513zUo1wSonivxeurhLNe1qtONLydNEMjZ7dpOYsSuNATF124DJg0YSEKInV12dietiR7r
	9PqD9tSrkJ7s/iE7RmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqVS-0007TK-Eh; Tue, 05 May 2020 05:52:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqVK-0007Ry-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:52:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0455lBeA027132; Tue, 5 May 2020 07:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=/RG1jmnvaQFJTmB5c3f4Wt7K8CWp+WbtLlXwa1U86qY=;
 b=Mu+zXVFRC3qGokaDcoghATVQ8pmNONE6Cjbzr/DwCxry1ftwv0uNxLgtR5L+GS2lmWch
 jlhMN2cO2EF/nXRICAJ0E/+PEkt+bbhCj09CWVvnqeWxEufybzeBhR7e3Vg/XdakGJUK
 PCTXgC11Ma6F4PLY/LjxmocXVurNc6Elkn5Bhum77xZ194mvG9kDNV4yVg6xCPBprY55
 PMbK1NuYlMemW0aXjUOTBZkWycoPPWIFxivPKJBCHsnE8UznFKJOKioAm0xrck60yIVg
 5Jr4rNgW3sMhqLtHXyVLGKG6EO0z42TiW1fQ5azQd6wEPoRW3RdliN143gqiXTeP9tcL xQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb1wy0s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 07:52:21 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2EFF610002A;
 Tue,  5 May 2020 07:52:21 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 21AC021CA74;
 Tue,  5 May 2020 07:52:21 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 07:52:20
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 3/4] dt-bindings: i2c-stm32: add SMBus Alert bindings
Date: Tue, 5 May 2020 07:51:10 +0200
Message-ID: <1588657871-14747-4-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_02:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_225231_121742_D64D52FC 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new binding of the i2c-stm32f7 driver to enable the handling
of the SMBUS-Alert

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
index b50a2f420b36..04c0882c3661 100644
--- a/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml
@@ -36,6 +36,10 @@ allOf:
                 minItems: 3
                 maxItems: 3
 
+        st,smbus-alert:
+          description: Enable the SMBus Alert feature
+          $ref: /schemas/types.yaml#/definitions/flag
+
   - if:
       properties:
         compatible:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
