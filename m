Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352561BE218
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3G/ba3u+HPKkw22xfYbCNqZXYtLSGz8UR5y7/4hui8=; b=Br20Px+rdES145
	JaPEw+8a5YLaDzkeqHBMB8o1NyVOgt9QGjOHe0lfmdSNFQdk4rZU/LgEsWSKaOevMeQaPwJh6a0fE
	U5oXlfRxADXsz/qyomny6D+XX6og/KIV5WdkGOnp1T2UDn9ZrI0oZibGRLnMZAifbAxKFCwqaIdRD
	c2Wpg1YdBowHic3XeGnuinHL3l+LzB3Nbulm8U75iJy1KIKn+auPgJv3YaoACTG1ttgHfu0Nh6HZQ
	+qeOHYtoyrVKPpyrWrjZ986xCfiTXeEbXby/mAtppCAS4FFHexLWSIXQxYB/WlsPUyjAjsXLGnTlU
	RTzj8gHlpN0K9o+r3trQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToKS-0000mf-Cc; Wed, 29 Apr 2020 15:08:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToKF-0000m4-AF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:08:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TF8PQB004369; Wed, 29 Apr 2020 17:08:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=OrHsueskmIs43EdFBn1E0vUvKJn0/dh6AJ0xQ3uCkUU=;
 b=WU/9l2NUHJH3flwUdt93RKlSOQmpi7VFr8JCg6CpOnWjmxuv0b7ar/GvhNXzDhytHw6O
 bD9La1Beo83P0GFaqGWCOKMbllfsqlZwUQmfQqVEWZOqnGsECGZ5OwE0eKPy8MoiwS8l
 hzEuVg5D9cWA1zgd6h/nGnyOBmZByzpgribLJrtwFUQK+1mCd2wiHhG9nqDvb4XQRwDG
 nd7PUINXfID6uHt30ZPMQWW7a3x6XdTxL6GEsalwwGEaXz3v5V/QXkbaLsC27xc4TJaM
 zH1s/QnOFs7NG/c775sAO6DcdcJqJ7PzUDVQ5Vi6yHZ915hYmedzryzE30fgHiVzuToJ IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq672ft-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 17:08:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4F1E310003A;
 Wed, 29 Apr 2020 17:08:34 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3CE062AB39C;
 Wed, 29 Apr 2020 17:08:34 +0200 (CEST)
Received: from lmecxl0889.tpe.st.com (10.75.127.45) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Apr
 2020 17:08:33 +0200
Subject: Re: [PATCH v2 00/12] remoteproc: stm32: Add support for synchronising
 with M4
To: Mathieu Poirier <mathieu.poirier@linaro.org>, <bjorn.andersson@linaro.org>,
 <ohad@wizery.com>, <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <219771d3-b0a5-0ec7-7f20-d2055bcb0217@st.com>
Date: Wed, 29 Apr 2020 17:08:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_07:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_080839_704816_269BD063 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 4/24/20 10:24 PM, Mathieu Poirier wrote:
> This patchset needs to be applied on top of this one [1].
> 
> It refactors the STM32 platform code in order to introduce support for
> synchronising with the M4 remote processor that would have been started by
> the boot loader or another entity.
> 
> It carries the same functionatlity as the previeous revision but account
> for changes in the remoteproc core to support synchronisation scenarios.
> Some RB tags have been removed when the content of the patch has strayed 
> too far from the original version. See patch 3, 8, 9 and 12 for more
> details.

I reviewed the series, and made some tests on my side.
FYI, I do not answer to patches when tagged "Reviewed-by: Loic Pallardy" 
and with no extra remark. So consider them as Reviewed-by me but not
necessary to add the tag in commit, Reviewed-by: loic in commit is sufficient. 

Concerning tests, it works find except the crash recovery from a sync start.
But i suppose that you know the limitation, waiting Loic patches[1] update :)

[1]: https://lkml.org/lkml/2020/3/11/403

Thanks a lot for your work!
Arnaud
 

> 
> Tested on ST's mp157c board.
> 
> Thanks,
> Mathieu
> 
> [1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=277049
> [2]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877
> 
> Mathieu Poirier (12):
>   remoteproc: stm32: Decouple rproc from memory translation
>   remoteproc: stm32: Request IRQ with platform device
>   remoteproc: stm32: Decouple rproc from DT parsing
>   remoteproc: stm32: Remove memory translation from DT parsing
>   remoteproc: stm32: Parse syscon that will manage M4 synchronisation
>   remoteproc: stm32: Get coprocessor state
>   remoteproc: stm32: Get loaded resource table for synchronisation
>   remoteproc: stm32: Introduce new start ops for synchronisation
>   remoteproc: stm32: Update M4 state in stm32_rproc_stop()
>   remoteproc: stm32: Introduce new parse fw ops for synchronisation
>   remoteproc: stm32: Introduce new loaded rsc ops for synchronisation
>   remoteproc: stm32: Set synchronisation state machine if needed
> 
>  drivers/remoteproc/stm32_rproc.c | 262 ++++++++++++++++++++++++++++---
>  1 file changed, 244 insertions(+), 18 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
