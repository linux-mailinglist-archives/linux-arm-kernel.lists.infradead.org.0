Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C8159410
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw3Sl73EoK++k/yo+NkHgZHqI08KKjZ9daa/gCBTnbU=; b=OdDZFCcwNVAaXz
	2n2KlMSbYS65bBnmzyARsJ/1s2o+PI3zw/YXOY+/dRaUaiU9N84X+qC7GK8Ihq6PQwjxoK16MZ7bZ
	OEk6nH/Sehs2mYrmezzhzD3zYb8HBs7sFiWhe7rXNqUf+ULYMHGyrurpDYXltwDFESnG0MAkP91Gv
	8Ru4Qnt2dBGdHP8f5ZkOcz4vo2rSEUkrSPCEVXnAzFAWzVVkqPh8ZzOaxVD/nD+7CaZq+eZVzcRVZ
	HwdIdTfzeUfy/0Fd0PDUew8jBRWVOIoyKY5L/UfslY7pqKdt38SeYo9iYcgZ9GC69WrE3f26Jsi5w
	Zu3ZUJ7aoqWeE2Z3lsoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xus-0000WU-1N; Tue, 11 Feb 2020 15:57:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xuj-0000Vx-8d
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:57:30 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BFgiWh005066; Tue, 11 Feb 2020 16:57:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=bbFYX6l2oHqcB37HwIrG102ruoCSat6PEqciFlehfTo=;
 b=PKySJ8G8AbrJ4k583iDjQs5mLCntymoL0h/H00hNilX+pwgwuQ2Y3AM2dzjvJS4kEKof
 wBxUShCEKlPOAdYvT0452DmMw1ng8n4h3Ey9HKxwVYVoHS7i0vq5YJjaGQM29EzKMfSe
 otegXhwK+aJeZ5YCKBCW0OlkS94QYtBbrNzBEk9IAqCC0znPOihKq2852TEwpMu3UxO0
 09yiRVJk7CfMny2D48ELea1BddTYrDxvAfSp+56dgCNXgxmhqC78b5AqSgUA3WIZ8Y0v
 mVnb2rdOAdOXi77/pkSBhz7PZTqFBFMl5NvtUiIgB+RzLYWOE+NnzeJnPTw8cupkUu0a zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urh6kvb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 16:57:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A09910003B;
 Tue, 11 Feb 2020 16:57:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7B11D2C2801;
 Tue, 11 Feb 2020 16:57:19 +0100 (CET)
Received: from lmecxl0889.lme.st.com (10.75.127.44) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 11 Feb
 2020 16:57:18 +0100
Subject: Re: [PATCH v4 0/5] remoteproc: Add elf64 support
To: Clement Leger <cleger@kalray.eu>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn
 Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, <linux-remoteproc@vger.kernel.org>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <5b8045be-0942-2ecf-5dba-dad58071f6af@st.com>
Date: Tue, 11 Feb 2020 16:57:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210162209.23149-1-cleger@kalray.eu>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_04:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_075729_669078_363A3C92 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, s-anna <s-anna@ti.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Clement,

I tested the series on the stm32 platform for remote proc firmwre load: no regression found.
I do not test the da_to_va feature as not implemented on stm32 platform.

Regards,
Arnaud



On 2/10/20 5:22 PM, Clement Leger wrote:
> This serie add support for elf64 in remoteproc (elf loader, coredump). 
> First two patches modifies the type of len argument (in da_to_va) and
> boot_addr in order to allow loading elf64 segment with a u64 size
> and a u64 entry point.
> Next patch introduce a set of macros to access elf64 and elf32
> transparently.
> Last two patches are the actual modification in the elf loader and
> remoteproc coredump support to add elf64 support.
> 
> Changes from V3:
>  - Adapt coredump to elf64 file format
>  - Rename remoteproc_elf_loader.h to remoteproc_elf_helpers.h
>  - Update copyright year in remoteproc_elf_helpers.h
>  - Rename macros elf_hdr_* to elf_get_hdr_* for coherency with elf_hdr_set_*
>  - Split elf64 loader patch in 3:
>    - boot_addr u64 change
>    - remoteproc_elf_helpers.h creation
>    - elf64 loading
> 
> Clement Leger (5):
>   remoteproc: Use u64 len for da_to_va
>   remoteproc: Use u64 type for boot_addr
>   remoteproc: Add elf helpers to access elf64 and elf32 fields
>   remoteproc: Add elf64 support in elf loader
>   remoteproc: Adapt coredump to generate correct elf type
> 
>  Documentation/remoteproc.txt                |   2 +-
>  drivers/remoteproc/imx_rproc.c              |  11 +-
>  drivers/remoteproc/keystone_remoteproc.c    |   4 +-
>  drivers/remoteproc/qcom_q6v5_adsp.c         |   2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c          |   2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c          |   2 +-
>  drivers/remoteproc/qcom_q6v5_wcss.c         |   2 +-
>  drivers/remoteproc/qcom_wcnss.c             |   2 +-
>  drivers/remoteproc/remoteproc_core.c        |  69 +++++++------
>  drivers/remoteproc/remoteproc_elf_helpers.h |  95 ++++++++++++++++++
>  drivers/remoteproc/remoteproc_elf_loader.c  | 150 ++++++++++++++++++----------
>  drivers/remoteproc/remoteproc_internal.h    |   4 +-
>  drivers/remoteproc/st_remoteproc.c          |   2 +-
>  drivers/remoteproc/st_slim_rproc.c          |   4 +-
>  drivers/remoteproc/wkup_m3_rproc.c          |   4 +-
>  include/linux/remoteproc.h                  |   7 +-
>  16 files changed, 252 insertions(+), 110 deletions(-)
>  create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
