Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C0B8D55E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+ASQIdCLhZhmoep25hXk1oZmB8JhuFndZtWLrvat5Q=; b=O81vy7fBFLU8pR
	rTUzGAjqV6uPvVJWPNCbJjbcg/rFucTsmzB7rnlC/1sHUM/TAkZVcBsQNknDQZgulDLWqx1NfYak6
	uCg85iep67ScFoy+OtiA+2OJ9vjOE1+bNxtu77mNTCfRos2T0DpCH9zPqDO235UXWdprvNJs02Lwi
	5foDCWhrTSDOpKaFqYOUQYLwaQMdNZ/mPDFcUZAetbs/GAwoo++0d/H+MTqzv+nehnE4sRxMvvyNL
	Q4o3mX+kyGDJy78Y8Vbqyr7YWthhIGjPfWH/cUAXjjRq2cunhNr0GxGydrzsshw98IOgggpA1pExP
	6flgLDBm64EBf/F15UHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtf2-0004Hi-8k; Wed, 14 Aug 2019 13:49:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxteF-0003lF-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:49:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EDkcHo006975; Wed, 14 Aug 2019 15:49:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=slMLXdPQoz50nbYXXEAIS+qRi2WwHJGTB8Kau2ylpuA=;
 b=sKoioVNIJcFY7eIQaZMla6zyN/Zfw4zwH23x5OhAJLLmz4TkrEV/AeaUT+VVHVGKET/I
 1JD+/GcQULhZCrbqSpXHrSAT/FXjRYrUiiv2Xx2DMdl+z2c0wQd9kFI6lH3VYcoEFyiy
 HCxeaWvwyfX/DYGT3IPysatJXu6Tfhuckl/tkOKSTHBKcY/w/KzmWPIN/8dHDFBxX0Qr
 z9XG6oI05OMcxPkiFpheeCbkhtRPgej1ZoF+WZSa1c5D8IepmfAhvbBemDg3qdkLQhqH
 YDCMJRjuxMPYvgf1HzgPJwb/kTZpIziFLEQ4DxB9crEhjym8TvwALrf3mqHE5hX6L1jN fQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ub679ue8m-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 14 Aug 2019 15:48:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 69A2434;
 Wed, 14 Aug 2019 13:48:59 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5A90F2FFE88;
 Wed, 14 Aug 2019 15:48:59 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 15:48:59 +0200
Received: from localhost (10.201.23.19) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug 2019 15:48:58
 +0200
From: Hugues Fruchet <hugues.fruchet@st.com>
To: Alexandre Torgue <alexandre.torgue@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
Subject: [PATCH v6 2/4] media: stm32-dcmi: trace the supported fourcc/mbus_code
Date: Wed, 14 Aug 2019 15:48:51 +0200
Message-ID: <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.19]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_064908_204695_A9E61B7C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Hugues
 Fruchet <hugues.fruchet@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a trace of the set of supported fourcc/mbus_code which
intersect between DCMI and source sub-device.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b462f71..18acecf 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -1447,12 +1447,20 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
 			/* Code supported, have we got this fourcc yet? */
 			for (j = 0; j < num_fmts; j++)
 				if (sd_fmts[j]->fourcc ==
-						dcmi_formats[i].fourcc)
+						dcmi_formats[i].fourcc) {
 					/* Already available */
+					dev_dbg(dcmi->dev, "Skipping fourcc/code: %4.4s/0x%x\n",
+						(char *)&sd_fmts[j]->fourcc,
+						mbus_code.code);
 					break;
-			if (j == num_fmts)
+				}
+			if (j == num_fmts) {
 				/* New */
 				sd_fmts[num_fmts++] = dcmi_formats + i;
+				dev_dbg(dcmi->dev, "Supported fourcc/code: %4.4s/0x%x\n",
+					(char *)&sd_fmts[num_fmts - 1]->fourcc,
+					sd_fmts[num_fmts - 1]->mbus_code);
+			}
 		}
 		mbus_code.index++;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
