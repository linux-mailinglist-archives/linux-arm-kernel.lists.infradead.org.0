Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B285314B1ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hxu2mKr0S+vaT+Ncr62jGjRhlmMw1eXRd30af/632oE=; b=h3etiIHmIr6lmB
	4Id5NL0O1aLdFp+BxJa5+MCm2+dv4Xmcdw0N7P29aYfTUGpySHovKh49HI8bGbiqA2m/lmhOUOsmO
	tSpswSd477Yyj71hbCZ2LNZ8Ky+I0DDtZ8TcKoMRaw9ymUUxtKfutG9GvOUcd+DLYwAwcjXt+Gdcy
	EXUedM3+J0l3zA66OTppuHbYoKTNaUYscWiQIxMuVT6DFRDWpNY8TxvlDE3nlm/VJnrQAN/xcqfFz
	G/l85WSgxUlh2S6enifdHAZVBbUOI6CIIbWdcaCi4tYfWS2dQu0qn94kIOcFp4sfEvRgIr9b80v0C
	RbESaNGyHQ3486UxDmmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNOm-00082q-Lx; Tue, 28 Jan 2020 09:43:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNO0-0007ZU-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:42:23 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S9XRJJ026097; Tue, 28 Jan 2020 10:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Kmmsnt0GP19LNEdrBchAyZ2FdgB00aCxXbF9RNsjpVY=;
 b=L75TFrdwxinDcyog/Ny+M12HWHDQn6p/hu+wpK++jUkFR3mHiXuSzx1jJUgXOLmowAly
 SbpW6ULAXjmvz8CVKMRvE5OmhJH5990xBQaD/dfxgKbksxwsm6MaALEd1S20HQeE5TES
 aEXQ9UL3jNu6m7zFcU7XvXRIcsyg7VoVviwEE3ky8D69BEiI1hUoqGNRb3owDfq2h9KE
 jsImpwzSBBEMEDDxr0Mb1NQQEh7MBOLYGeGmF/eolceW84EvpOkHIS4kvdn4e/5mHmlG
 38Cx7W3ogTGatTcYpMp8+qkOvs2KQzjeo9+YiXPIbpwDPeJrTlmyHTyIUx6k5j+lsITO sg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpaw9xb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:42:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C18FD100034;
 Tue, 28 Jan 2020 10:42:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B396921D3C0;
 Tue, 28 Jan 2020 10:42:07 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 10:42:07
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>
Subject: [PATCH 0/4] STM32 DMAMUX driver fixes and improvements
Date: Tue, 28 Jan 2020 10:41:54 +0100
Message-ID: <20200128094158.20361-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_014220_926884_6D938D78 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series brings improvements to the DMAMUX driver with support of power
management and probe function gets a cleanup.

Etienne Carriere (3):
  dmaengine: stm32-dmamux: fix clock handling in probe sequence
  dmaengine: stm32-dmamux: use reset controller only at probe time
  dmaengine: stm32-dmamux: driver defers probe for clock and reset

Pierre-Yves MORDRET (1):
  dmaengine: stm32-dmamux: add suspend/resume power management support

 drivers/dma/stm32-dmamux.c | 93 +++++++++++++++++++++++++++++++-------
 1 file changed, 77 insertions(+), 16 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
