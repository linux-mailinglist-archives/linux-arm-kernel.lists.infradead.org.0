Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B72815A311
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvkT75VaK8k5VEnC+Lv/b9exgpvNFAX3iYSfVSUKlRs=; b=OPRIz/v/YM1eQl
	B53EfRywNLYxuOlpRqjyI7lPzQybMOrLSRyGifAwgoVQlLCx1vWYJWvdYSvKpJtwMQs1leIzFMxQQ
	WtkAXJOZ6fErwoidvWadOhj6DqFQ8hQ7CLqwRfn1Trq/mgK4BAyrSckV+zh4u9jM1+bo7VJt1IKI2
	mKITXFwL8HAP364y0xI82n+MIGwagT8gL7dYLslhkFYzteZQzadtPhgNd/yQUxO1hth3Hn91Eyi8Z
	WfM86rTrcRYGt4AgsffDtiTr9DRtO2xCjAKK5KLS/XL8JF2I+ahTBTSLk5LzJ4/Ia8sAo0SH6q08/
	uRY2D71MH6iQhhAJYvBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nBH-0006fG-34; Wed, 12 Feb 2020 08:15:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nBB-0006dt-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:15:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01C8E565008026; Wed, 12 Feb 2020 09:15:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=PtC6MNcf5VPs91Jldvobvz5GRjrwYDD84llnPUFRTL0=;
 b=fLOmkqx94vwZALx+mLsgvtHIr0HUe1cy2XPFcoRq/OGj8RfZPNe/0NtjNzT7mjnPzGKs
 fYiiua5hrBMKV3MUONUDB+gRAg6EkgbcQNJ5wTLQ0iQFHIGPILin7PC3at4HRHN1Yyhi
 R3dCv/56cWP8qThjbbPC94tDPiUVPiwPYlKpFK7mK5hI2p8bVd0PENBEDarz8UL2tF9V
 yjHpWrHLGZRq6C7bBBdFJrJACXi+OCwx1pXQfk2MjTS57fxsJxaKNx6XhMG9FWO4w/kN
 P0BGAkLLjJNkC/JNq2XzpInfWM02EPZoXtyEbvcQfOEETYFSgMgDqqFv2KE8PD65eqoJ Tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1uvdmhmx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 12 Feb 2020 09:15:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DCCAE10002A;
 Wed, 12 Feb 2020 09:15:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BFBE3220BCC;
 Wed, 12 Feb 2020 09:15:21 +0100 (CET)
Received: from lmecxl0889.lme.st.com (10.75.127.46) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 12 Feb
 2020 09:15:20 +0100
Subject: Re: [PATCH v4 0/5] remoteproc: Add elf64 support
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
 <5b8045be-0942-2ecf-5dba-dad58071f6af@st.com> <20200211231253.GC27770@xps15>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <8fa9ed3c-240f-1b82-913e-a4393013d333@st.com>
Date: Wed, 12 Feb 2020 09:15:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211231253.GC27770@xps15>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-12_02:2020-02-11,
 2020-02-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_001529_400107_5C099D78 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Jonathan Corbet <corbet@lwn.net>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-doc@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Clement Leger <cleger@kalray.eu>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/12/20 12:12 AM, Mathieu Poirier wrote:
> On Tue, Feb 11, 2020 at 04:57:18PM +0100, Arnaud POULIQUEN wrote:
>> Hi Clement,
>>
>> I tested the series on the stm32 platform for remote proc firmwre load: no regression found.
>> I do not test the da_to_va feature as not implemented on stm32 platform.
> 
> It would be very interesting if you could test the coredump, that would give us
> a lot more confidence in the implementation.
I also tested the coredump generation. LGTM

> 
> Thanks,
> Mathieu
> 
>>
>> Regards,
>> Arnaud
>>
>>
>>
>> On 2/10/20 5:22 PM, Clement Leger wrote:
>>> This serie add support for elf64 in remoteproc (elf loader, coredump). 
>>> First two patches modifies the type of len argument (in da_to_va) and
>>> boot_addr in order to allow loading elf64 segment with a u64 size
>>> and a u64 entry point.
>>> Next patch introduce a set of macros to access elf64 and elf32
>>> transparently.
>>> Last two patches are the actual modification in the elf loader and
>>> remoteproc coredump support to add elf64 support.
>>>
>>> Changes from V3:
>>>  - Adapt coredump to elf64 file format
>>>  - Rename remoteproc_elf_loader.h to remoteproc_elf_helpers.h
>>>  - Update copyright year in remoteproc_elf_helpers.h
>>>  - Rename macros elf_hdr_* to elf_get_hdr_* for coherency with elf_hdr_set_*
>>>  - Split elf64 loader patch in 3:
>>>    - boot_addr u64 change
>>>    - remoteproc_elf_helpers.h creation
>>>    - elf64 loading
>>>
>>> Clement Leger (5):
>>>   remoteproc: Use u64 len for da_to_va
>>>   remoteproc: Use u64 type for boot_addr
>>>   remoteproc: Add elf helpers to access elf64 and elf32 fields
>>>   remoteproc: Add elf64 support in elf loader
>>>   remoteproc: Adapt coredump to generate correct elf type
>>>
>>>  Documentation/remoteproc.txt                |   2 +-
>>>  drivers/remoteproc/imx_rproc.c              |  11 +-
>>>  drivers/remoteproc/keystone_remoteproc.c    |   4 +-
>>>  drivers/remoteproc/qcom_q6v5_adsp.c         |   2 +-
>>>  drivers/remoteproc/qcom_q6v5_mss.c          |   2 +-
>>>  drivers/remoteproc/qcom_q6v5_pas.c          |   2 +-
>>>  drivers/remoteproc/qcom_q6v5_wcss.c         |   2 +-
>>>  drivers/remoteproc/qcom_wcnss.c             |   2 +-
>>>  drivers/remoteproc/remoteproc_core.c        |  69 +++++++------
>>>  drivers/remoteproc/remoteproc_elf_helpers.h |  95 ++++++++++++++++++
>>>  drivers/remoteproc/remoteproc_elf_loader.c  | 150 ++++++++++++++++++----------
>>>  drivers/remoteproc/remoteproc_internal.h    |   4 +-
>>>  drivers/remoteproc/st_remoteproc.c          |   2 +-
>>>  drivers/remoteproc/st_slim_rproc.c          |   4 +-
>>>  drivers/remoteproc/wkup_m3_rproc.c          |   4 +-
>>>  include/linux/remoteproc.h                  |   7 +-
>>>  16 files changed, 252 insertions(+), 110 deletions(-)
>>>  create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h
>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
