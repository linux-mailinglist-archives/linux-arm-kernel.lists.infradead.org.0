Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C493E482E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m5W+r87CdzPz0ZzgFAUdwPkiRJLEL7/pm66FFDw5fNg=; b=bPkdc1HvG0pc0MM8ynVX3ZjB9
	l1NiMQDkQ8sPq7m0MJTtoXs+PMJoW9wW3VTYafz168A81GsznxfHZQPL1pkh/q2z+3GoWVTWaORLu
	VXsdr0PH7JKjnAl4vAD18m90Efv/v6944OWnTcYeuAP2M6U/t6J5ghvFxPLsqKa72Wl0m9r8BH0D0
	vKHmIEecWCSaHMMEHdosB/0Q2+GHo8lvQlFMxFvkxymZxvgNxfqvYBUp7QDfHt6Z4rBRk8y/EBmhm
	BBT/69tQk3/3IbTUqs4fK9sMK8sKkVj2o7DtG4ew4he555/HUU2YdmrvG9RYUHh8uoCl1KXRAx0Gp
	WYc9vZaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwXV-0002nn-B0; Fri, 25 Oct 2019 10:09:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwXK-0002nL-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:09:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9kJ7s013500; Fri, 25 Oct 2019 12:09:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=3CmaVffBxE3uJFrNAgwHUb+zxRINz2K1o3h0Psd77+A=;
 b=ME0YWFZWHlV0X3KTUfj053wzdl9tyR1xZ6jkn11lXi//vssFQMNHcByMdjkDZ7RwKm/g
 CAcSY6FL6pxYxqjueeZojXh6EThZ5vsj8rrqZ3LoAHwe7iD6GHVITT1NOQOR/lpKXh13
 12kc0me3h+wV8Ye2CS+q4+uM3bks2tKRQC6sjHk/K1S9ugz0TlyToFh26rY54sF/MoxO
 cSqqEFLTHO023gDA+Dnnk9mWj4YXrWC78Ioi5EOCESR1SQ9z9OKw+mvu7+LDglpr++Z6
 NolohpTVRaF5jJOpR1pQ1kcCYp9t0noNDy1ZR/Df4nAH2y5jpaKPwaxKRKEPMZQlKajW LA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s7f0yr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 12:09:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A37B210002A;
 Fri, 25 Oct 2019 12:09:31 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 951842C38A0;
 Fri, 25 Oct 2019 12:09:31 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 12:09:31 +0200
Subject: Re: [PATCH 0/4] update regulator configuration for stm32mp157 boards
To: Pascal Paillet <p.paillet@st.com>, <mcoquelin.stm32@gmail.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20191011140533.32619-1-p.paillet@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <cd4f7f4c-1919-acbe-489e-5021fb8499d8@st.com>
Date: Fri, 25 Oct 2019 12:09:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011140533.32619-1-p.paillet@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030939_098376_EF69F2F9 
X-CRM114-Status: GOOD (  14.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pascal

On 10/11/19 4:05 PM, Pascal Paillet wrote:
> The goal of this patch-set is to
> - add support of PWR blok regulators on the stm32mp157 boards
> - undapte various regulator configurations
> 
> Pascal Paillet (4):
>    ARM: dts: stm32: add PWR regulators support on stm32mp157
>    ARM: dts: stm32: change default minimal buck1 value on stm32mp157
>    ARM: dts: stm32: Fix active discharge usage on stm32mp157
>    ARM: dts: stm32: disable active-discharge for vbus_otg on
>      stm32mp157a-avenger96
> 
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts |  8 +++++--
>   arch/arm/boot/dts/stm32mp157a-dk1.dts       |  9 ++++++--
>   arch/arm/boot/dts/stm32mp157c-dk2.dts       |  8 -------
>   arch/arm/boot/dts/stm32mp157c-ed1.dts       | 25 ++++++---------------
>   arch/arm/boot/dts/stm32mp157c.dtsi          | 23 +++++++++++++++++++
>   5 files changed, 43 insertions(+), 30 deletions(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
