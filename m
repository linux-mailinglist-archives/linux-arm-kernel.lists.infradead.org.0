Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16CF189E1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qCeqbhTP0sXSPd7POKGCD7HFdhSLWm1EQN9dvMxejDw=; b=L+1NXDOQNFj75P
	IpK9rFvmkLeCAX9ZN3E4d9rBTQIbWZtOuyRZtuxQEbhgX2YSzzIMviXxAak4xbQORs31CWbfRKXTF
	3TRG6vrWYS1A+wMy8vZgv1iv+uWzJ/u7mNoitSzsQXG3pf9mA5gvjRA0DQ7vO1347kQEgCCL1VmNp
	G1Niq1KiQN1pFQhGI9zmkdPq8QzhUH/oYcFfiynwbhcky9ubbb4u++OzG4TvR4/JnEcy331Jpy8uN
	upK2Y1chmOyiXZ/yXz8+4WGx5CcJvPnxV6D65tO3m/kYjrfEi0sHIMsQYB3FJcFsCgpLFOzeLU+tD
	yMAx5gdsiPGRlDbnXX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZtp-0006zG-Li; Wed, 18 Mar 2020 14:42:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZte-0006yX-9Z
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:42:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02IEd4n8021917; Wed, 18 Mar 2020 15:41:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=glh+neVr3hU2AAir3F/WpKodtMms5/f6uoCBtXe+P8c=;
 b=ouvh+62OJe3TfAiCI3m+1utTHcf0+n0+PwUyMaC51xx1MRrpwgRVOZHfFR2ZI2uBDzKX
 V9TjJMuu1J9syUeui1OAKjBSIran8uX/kpO1GKqA7qs1nmLIeFmBIi7JQzz5pfPpTt3B
 OtQENCymMCPqevX2g9CP2gWdYZk/oHz9twgDr8FkaHpbEt+voEZDrelvENYyM0/GIwg9
 M9GslGgGxm64uH0oo7M9pWaRnapzSDOxKmK4Of1OS3Jd1PXBqDNJf4OO9XMN3U51FQL0
 Fvh1ZDoBCXoCVZE2v6ObneNoqAMwNtJp2uox96wATUJjBo5S3DQ9NM5/dNnL4zF1BoGD Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yua4wbscg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Mar 2020 15:41:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 56C2510002A;
 Wed, 18 Mar 2020 15:41:57 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 206962AE6C9;
 Wed, 18 Mar 2020 15:41:57 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 18 Mar 2020 15:41:55 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <alexandre.torgue@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 0/3] ASoC: stm32: manage rebind issue
Date: Wed, 18 Mar 2020 15:41:22 +0100
Message-ID: <20200318144125.9163-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-18_06:2020-03-18,
 2020-03-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_074214_702797_92BC4B69 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset corrects a rebind issue on STM32 SPDIFRX and I2S drivers.

The same correction has already been applied for SAI driver:
0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")

The commit e894efef9ac7 ("ASoC: core: add support to card rebind")
allows to rebind the sound card after a rebind of one of its component.
With this commit, the sound card is actually rebound,
but may be no more functional.

The following problems have been seen on STM32 drivers.

1) DMA channel is not requested:

With the sound card rebind the simplified call sequence is:
    probe
        snd_soc_register_component
                snd_soc_try_rebind_card
                        snd_soc_instantiate_card
        devm_snd_dmaengine_pcm_register

The problem occurs because the pcm must be registered,
before snd_soc_instantiate_card() is called.

Modify the driver, to change the call sequence as follows:
    probe
        devm_snd_dmaengine_pcm_register
        snd_soc_register_component
                snd_soc_try_rebind_card

2) DMA channel is not released:

dma_release_channel() is not called when
devm_dmaengine_pcm_release() is executed.
This occurs because SND_DMAENGINE_PCM_DRV_NAME component,
has already been released through devm_component_release().

devm_dmaengine_pcm_release() should be called before
devm_component_release() to avoid this problem.

Call snd_dmaengine_pcm_unregister() and snd_soc_unregister_component()
explicitly from the driver, to have the right sequence.

Olivier Moysan (3):
  ASoC: stm32: spdifrx: fix regmap status check
  ASoC: stm32: spdifrx: manage rebind issue
  ASoC: stm32: i2s: manage rebind issue

 sound/soc/stm/stm32_i2s.c     | 40 ++++++++++++++++------
 sound/soc/stm/stm32_spdifrx.c | 64 +++++++++++++++++++----------------
 2 files changed, 63 insertions(+), 41 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
