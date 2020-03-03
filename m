Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B141779C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ENzDQka/oAYVCBcSK1Q0zM4V+j2L+rGKjpR7Aw7DtRI=; b=WQCrru6n5jNJ1k
	wZO3sfWs/8R090wCU9esQn+MpCG8nf0WfXUEwIKSV7swB9h4l8NU0/dOzBdnthlO8XlpUEDDIcrLz
	E7Wsg3a8qlPjLv9fViIO4zB3A3Tt20gmgRHsv1eKwbE2zOXg+5qhixz1Hr8G6RfG4lgNwBpva6qms
	S7VzVI0Sp6SPvNczHPcQ6Eslm1IHM8UXsOCZuNrNvynQVSomBHLF6TPQAPRn7SPo+iIC58bNFJrUY
	caUpuC14a0MMaOm27oRu154kZV5UKAsIddLBu9AhITvz81IaURa2IqvXj6IUnO3Mp+rzgr4MT7o3V
	IAKp8rfWAwtbytY7zFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j993Z-000211-Ek; Tue, 03 Mar 2020 15:02:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j992w-0001bP-SI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:01:24 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 023EiDGa009513; Tue, 3 Mar 2020 16:01:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=sQZms2KpwGhICX1i5AR/ERDQJKt0Y33jSUSaeXNRL6M=;
 b=v8bvGCY9YKwall0neJq7k1xISp5SkrkCtnHTR2aC/i/w7p8AJ/yndaLObVLs0/4QsV+u
 Oqug72qYjFRwiMfnueoRHCP+7CLb2oOiNFCyB5tUYjRjZ00qukVzem/i1DY8sAlerHBy
 1MQuQ4I+BGvtkxotaZzpnmS9HNCZNBO7m/Jedzh9As7V5GAnnGkFDOD8p9FE9L26Wjde
 mJ6mp5sVxST7L9jBr8N6DN5ofndYNdy5ZU5UBEKW9JubyAFAh6fBXA7nt7YyrSt2DnUJ
 kLEljh259s9dPSjKgIL2Vfy+Nws9IB7K6nUcpxkxejd0mb6ytzsWUYL6AUJPgizbdGLa 3A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfea6twgg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Mar 2020 16:01:12 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C7354100039;
 Tue,  3 Mar 2020 16:01:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B01602B4226;
 Tue,  3 Mar 2020 16:01:10 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 3 Mar 2020 16:01:10 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH 0/2] iio: trigger: stm32-timer: add support for power
 management
Date: Tue, 3 Mar 2020 15:59:43 +0100
Message-ID: <1583247585-16698-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-03_05:2020-03-03,
 2020-03-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070123_209240_336FC786 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds power management support to stm32-timer-trigger driver,
it adds suspend/resume routines. A small precursor patch is used to rename
"enabled" flag.

Fabrice Gasnier (2):
  iio: trigger: stm32-timer: rename enabled flag
  iio: trigger: stm32-timer: add power management support

 drivers/iio/trigger/stm32-timer-trigger.c | 91 ++++++++++++++++++++++++++-----
 1 file changed, 77 insertions(+), 14 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
