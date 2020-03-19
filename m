Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C5418B15D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:29:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dh37tzXI59U95O89p+XtbS52e9BfQpNSytRntF0PJHg=; b=C4+g+VXMaM/uHf
	4PeUe7v0BCwcdOUSySVLRFBNOQiDARwHBf74BKitVOAuTTC11Uxum3Xg3o17MDU6bfIn4dLZENLEL
	BhbHUvpmKLzzcBUvJ4r53qgs1WHoYpnCKqt86IIYeMz+qq/JwhPpvRyojyvGvAgjIxDgrsNrC20uv
	XpMFRA+kD9hy1YTYxKJDZPSjPB++r4NKU1CexPWh5CwG6uRtBMzuXVK8BauhnUHriebe+Ymj9eQNj
	VavqPb0Qr7Ys3KEqQUep07jQla6V7AKnH93GX4LsOBy6XUojZjLcQBnuy2SifrJvyeOqnel2Ub/YT
	hUEBXAHgr8iLocnd2utA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsQ3-0007YW-Jl; Thu, 19 Mar 2020 10:28:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsPq-0007XY-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:28:43 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JAR7eY032209; Thu, 19 Mar 2020 11:28:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=a8IUIDV/simADAYkwM+Njnv3lTBx4k59GizTkWNN6Ss=;
 b=bkBlNCmUITsQYwAIxDnXxiof6dfStcMQbxGYnOstUEFFI+V/ja+pfnndlQ3ZN8hLH0B3
 b+QUBAtxCj5IBu9RWXHrpB26PYPUXuwmSsNqlJ0vJPFIMC3aTdGOm8K0qDGsC+pmPEtG
 +bHO3dOG9podOt62m+JmVlBu4y/NdkbfPyzjTPxFmIj9dc5ff3ShkYAqCHLc90RrWQ98
 EKW3VeunwewQVQWDDkyE+/ZLYcZPzfQdsyVdZX7tZQRwedRHYkD6IElxfdceTVH/iu/k
 EfgP2ECx8WZiBoSrWIexJtYkgZw1zVGEexLxS/quRrB1UkYUrakRbQwdSYfSmosiKuIb YA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu95us066-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 11:28:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 996FB100034;
 Thu, 19 Mar 2020 11:28:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 80D312A5810;
 Thu, 19 Mar 2020 11:28:23 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Mar
 2020 11:28:23 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 19 Mar 2020 11:28:23 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Lee Jones <lee.jones@linaro.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] mfd: stm32: Add defines to be used for clkevent
 purpose
Thread-Topic: [PATCH v4 2/3] mfd: stm32: Add defines to be used for clkevent
 purpose
Thread-Index: AQHV5ZiQaom2ANb1fkS0EaDa85E9JagjxuwAgCwKSQCAAAURAA==
Date: Thu, 19 Mar 2020 10:28:23 +0000
Message-ID: <b21ac320-080d-3995-1c63-ca5c187224c6@st.com>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-3-benjamin.gaignard@st.com>
 <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
 <20200319101014.GA5477@dell>
In-Reply-To: <20200319101014.GA5477@dell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <85765BABAB3113468E684283C64674E7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_02:2020-03-18,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_032842_567202_D58DADAD 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/19/20 11:10 AM, Lee Jones wrote:
> On Thu, 20 Feb 2020, Daniel Lezcano wrote:
>> On 17/02/2020 14:45, Benjamin Gaignard wrote:
>>> Add defines to be able to enable/clear irq and configure one shot mode.
>>>
>>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> Are you fine if I pick this patch with the series?
> Nothing heard from you since I Acked this.
>
> Are you still planning on taking this patch?
>
> If so, can you also take patch 1 please?
I will send a v5.
Daniel could you wait until that to merge all the patches (even if this 
one won't change) ?

Benjamin
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
