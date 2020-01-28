Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C6514B16E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 10:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WThhaaGy0W07qjGWZdMnjZ4QKKjKWVktddIs/NEjzPg=; b=Jhk5BnAWBAXK2Z
	8Orfn5eM6QGpydC3NUgwYvNkkt7m497Go/t6TW12Xa9vo1F0mMPeO7HcjjYk1Obv/CII4QRnZFJ6h
	6bDdSPcOoDDfSg+foNa0f7RqE/1ljtV1kimYD/5jRd/g0PciYTTqpcxar5Ixq/WFUthIl/YAI2WOg
	G8eeXeG4tghx+GgjAb/dfWmomkWA0Pu7G8dRslB2TRE820MwzNZ0pIy8NWF0HH07jrmCQkIYGF4LL
	e1XyxHP2ohsc6TnvYvPHgntnEmvf7uVA8e2gqjc196QQGyCUaxO88Oe91oLQAH/ivD7jOQNNPjTz6
	1ginAlPBvNkQOwjl2wRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMqG-0001RU-P2; Tue, 28 Jan 2020 09:07:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMpd-000111-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 09:06:51 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S92kWS021535; Tue, 28 Jan 2020 10:06:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=dM4EBFGBDxEbKJ3rgoXqLG+/SBlJ9gkuXeRvPF/9krE=;
 b=nMdIWhzp+SqKhb3FySeBN89jovlV4Q/x1JwFEEwrgv+3cy6ssAqH+0H6NsD2ne8AtCj4
 Ln5lX3LBrfaIsjlMfJjazhItRY8/UbmCL2Sg19FstvtIcZZMpiYvvlMDIf7URiGKIEp1
 Dn0jSO0kf02NMdJi89lywq/Ch4VaWk1OaaCUjQZZHjtGDz3ftv5c7zZxcbiJnJJRXSpn
 Cot4u5++wXTHxmRAnMUOdPHM8BZM86JqMosORJUrRLP7QLW75BrBFef7xK+lNcyE5Tq3
 5wSUAZBezsgnEj+RRbbGxS9dZnaAu4DG6LFr6GP5ND5X1/zlATJvHEPGnXpUPfunpafI KA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdekcugb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 10:06:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D790100034;
 Tue, 28 Jan 2020 10:06:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8B6CB212A35;
 Tue, 28 Jan 2020 10:06:39 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 28 Jan 2020 10:06:38 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
Date: Tue, 28 Jan 2020 10:06:27 +0100
Message-ID: <20200128090636.13689-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_02:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_010650_127048_084AABEC 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To support the sdr104 mode, sdmmc variant needs:
-Hardware delay block support for sdmmc variant
 with tuning procedure
-Voltage switch callbacks
-sdmmc revision 2.0

V2:
-regroup host->mmc_ops & mmc->ops assignment
-add timeout define
-rename prep_volt_switch to pre_sig_volt_switch
-rename volt_switch to post_sig_volt_switch
-add 'why' comment for "mmc: mmci: add volt_switch callbacks"

Ludovic Barre (9):
  mmc: mmci: sdmmc: replace sg_dma_xxx macros
  mmc: mmci: sdmmc: rename sdmmc_priv struct to sdmmc_idma
  mmc: mmci: add a reference at mmc_host_ops in mmci struct
  mmc: mmci: add private pointer for variant
  dt-bindings: mmc: mmci: add delay block base register for sdmmc
  mmc: mmci: sdmmc: add execute tuning with delay block
  mmc: mmci: add volt_switch callbacks
  mmc: mmci: sdmmc: add voltage switch functions
  mmc: mmci: add sdmmc variant revision 2.0

 .../devicetree/bindings/mmc/mmci.txt          |   2 +
 drivers/mmc/host/mmci.c                       |  42 +++-
 drivers/mmc/host/mmci.h                       |   8 +
 drivers/mmc/host/mmci_stm32_sdmmc.c           | 204 +++++++++++++++++-
 4 files changed, 248 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
