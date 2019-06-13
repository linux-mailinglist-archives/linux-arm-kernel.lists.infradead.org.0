Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155ED43630
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QiSqeuJGxKwegZIdo0Pp0YMxkDFRPwj8PrGtIcyi79w=; b=b9NICedJsbx4lXqu49PbRTDIV
	kbu1uTPuBMOBWoX4pInZVurDGoOZR3lAFewfhOIFvalNRkII0h9CuTcvqXnY8MXTZyK21GfLS2/NW
	x4bC1yhfiR78cU2N69gj28TEoKjCBJ8jrImlQgG5bj5f2yaWGRsqQaET6NowD5vFzxBMnyKHKxjU3
	qVIKE3zZ6dQMkopr+30PG7A3NZR4Jz8OK6oSGmC2E3XtcMpBH0bg5YZ3fi9Im3gaUdC593NP1L1kd
	aCQXQaakDz0LYdXeWzBA///6XcLy7u1NLYzIHwYQ5g41h2nmbJTLjUtpG8JzMG7nXh4trHjwyTSOr
	5/32KRlVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPNA-0000wB-Az; Thu, 13 Jun 2019 13:02:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPMv-0000vb-At
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:02:19 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DCuqlD015993; Thu, 13 Jun 2019 15:02:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Dn/GSx8oOSdqicVsHAm1fovUZXgcL2YgME4MVY/Qjls=;
 b=p2IjvnhiN/FcNRbhaIg1lhrdvfWacg0fAHNZsSLbHECrbVZ+DKSOAZHrDmSfGyeGbXTz
 cbulaWATzSgherwadBy2cvsyIcGcn0HOr/dJr5/BbQXQcPMQ/m2MUT3WoKmzsIR1qNC1
 HTDu/W0jH7vSHEdtIjtvdRQnq8vEuCapW9IeRhn4orunu2XSaz7pVmzPUcukjR8mVyxa
 ox2Y0H/mHPtYpawdV5uOL7yTyjjzAM+e2TICpftmQb6QSATdKH6kCjv10WM9KCi26EWM
 0GJtfsjIHqUkRpiVWzKC9QIvFeu4SwaxIc67s0qgq/3zthgCSlNTEs2RhWlp1ZPTFeFX 2g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t2gxebr13-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 13 Jun 2019 15:02:08 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 91CA534;
 Thu, 13 Jun 2019 13:02:04 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5FCD72AC5;
 Thu, 13 Jun 2019 13:02:04 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.45) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 13 Jun
 2019 15:02:03 +0200
Subject: Re: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
Date: Thu, 13 Jun 2019 15:02:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_060217_835736_5F9FA270 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Ulf

Just a "gentleman ping" about this series.
I know you are busy, it's just to be sure you do not forget me :-)

Regards
Ludo

On 6/3/19 5:55 PM, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch series adds busy detect for stm32 sdmmc variant.
> Some adaptations are required:
> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
>   different.
> -Add hardware busy timeout with MMCIDATATIMER register.
> 
> V3:
> -rebase on latest mmc next
> -replace re-read by status parameter.
> 
> V2:
> -mmci_cmd_irq cleanup in separate patch.
> -simplify the busy_detect_flag exclude
> -replace sdmmc specific comment in
> "mmc: mmci: avoid fake busy polling in mmci_irq"
> to focus on common behavior
> 
> Ludovic Barre (3):
>    mmc: mmci: fix read status for busy detect
>    mmc: mmci: add hardware busy timeout feature
>    mmc: mmci: add busy detect for stm32 sdmmc variant
> 
>   drivers/mmc/host/mmci.c | 49 +++++++++++++++++++++++++++++++++++++++++--------
>   drivers/mmc/host/mmci.h |  3 +++
>   2 files changed, 44 insertions(+), 8 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
