Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D465CE47D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bkq8fiiuE956CF34JHk1K3O7ZlawTsleFJx6vGvMGP8=; b=J6KPVCvPpsuR8aHWJNFIbYi38
	ioTjMlBedLvWAkq6lDvPKoyum4xeFUBqKPC7Dd8llts8N1mLoGSN9awtsGBZa9ngQrWfO5xPAznNC
	LhzamHTrMYCz4ybbdO8Bv+oMOHy3BjsZJB5eHZyDEjbAUoY44ypfha1mI+Xi3zlxSFsnyoArqtgz4
	3lDBPUKFmpzIsPJDN/VMt6X5FXDRHZVx+ZeXHF+xuvkRLlUxVgVHUAH6mNoRX+evysAo65tc1uU5X
	B9kMOSBpFeN9go2wsoReib6pC4U2RY0SHL/I5DUt0hPdsrC7qACYaxV4JFxG/6i2wHRdRwcrk3T81
	/HOBsOxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwFP-0003yQ-OA; Fri, 25 Oct 2019 09:51:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwF9-0003xr-Gq
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:50:53 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9kDaV017184; Fri, 25 Oct 2019 11:50:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=QLmQ7NG6Rb6GQwzM3It23TN1eLiUzLgrVwcFTuDKfVY=;
 b=aMwI8klDD8OHXRbQDkKmUSJYL1BJAGOs/xEFuqPNo0MHhZVqVd1mu45I1V+MPcaY7Gig
 KJCqbeKu/FLKDH9m6ZImsPIFY/KbfIS+/B75CvqmQXBIUHlcYyG8R4hSPVPzVUDbGCV9
 h89gL+XE38aFBQiBf3gX3vRxGdoTGhpUYBDaDG22R6r1+8aPS61e7PcI7fIpD6FOcV3O
 TCukUg4kLi74WfgFHoVSMAdsiXbPawYEQJS0tpfuGLXeujT2CdeWZWj4pta3xL7QMIAQ
 IpUA+evHHgEjD0dOPCCAUv4aRZHlxb73Tmvkj1upqdxUmH8Q55l5AK8UrP1P2vkLY0k2 Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s56xa7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 11:50:45 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7AE4610002A;
 Fri, 25 Oct 2019 11:50:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 484B52BF6B3;
 Fri, 25 Oct 2019 11:50:41 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 11:50:40 +0200
Subject: Re: [PATCH 0/2] Add support for DAC on stm32mp157c-ed1
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1570630372-24579-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <28a4fc8c-9dd7-3139-c569-4749a6a47664@st.com>
Date: Fri, 25 Oct 2019 11:50:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570630372-24579-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_025051_846349_9A14129B 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi fabrice

On 10/9/19 4:12 PM, Fabrice Gasnier wrote:
> This series adds support for digital-to-analog converter on
> stm32mp157c-ed1 board:
> - define pins that can be used for DAC
> - configure DAC channels to use these
> 
> Fabrice Gasnier (2):
>    ARM: dts: stm32: Add DAC pins used on stm32mp157c-ed1
>    ARM: dts: stm32: Add DAC support to stm32mp157c-ed1
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 12 ++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts     | 13 +++++++++++++
>   2 files changed, 25 insertions(+)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
