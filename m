Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806261A8191
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLnA5XxPl3QQb419blADbjeT0QuvPFEAicY2utg/lPo=; b=hedkVTZBGA1ruv
	mc69lZIVsFGKWJytN64SIJpquFzgG5/mDcsQgJ9vQG/uoSAxbKRkU3XEBd+dQg3l+iUOnaES4czbp
	Bi36kuu+6//NWfFs7tpysVmR6uryCpHYUNTbXTj9jjRdV+Xja5ffDw99GYl1AaDtJQiE/YjZ1xRNh
	48s1W0oDZknioye4zqvGLrGiBmcXQ5ZYhINHa2EwrXjjnpYqKTrYCGL7LBPQKOWycC/Li3xjKafH3
	x+q894IuWyQ72/vytNeP5K8eAck55nruGF37tQIrp7pWFq1BZVZlxGRDI0WAggfoeIjk+UWTbbI/y
	9WZCX6tq6ytpvrGPkHhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONDw-00068K-HJ; Tue, 14 Apr 2020 15:11:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONDi-00067c-Ad
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:11:27 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03EF3kr3007845; Tue, 14 Apr 2020 17:11:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=o5lIOijZ0sBDI1z56uPx6r05q0wzqh69VOMPcYsYYzk=;
 b=TET6vAJBhoV6cQkC6NNV3nmXZSkyPqi/T3KqxtfXDzzyhwXjn7i24IujVy7CHIvbQEub
 l2JYjM3ld5bHY1R3iI5sCEMSBOMX3fteDFT7hHkwRNOm0TuxhBQcileaL7BgXdkPNHxo
 yO5jbqDjmcIIIuzruaPHWZXRp//AsR+3WiK9dmCwIM6aPcMIlBgdZu5v27k+t3TTxz+p
 xiI8vR06XEWSrFW/eClYUHeIE+ijgoHEEIzQX6d8aP8pOkinUYwYWokLL/cB2mwRUowi
 ElhW62kV0+on4+O9sH4dhWHdkw1QSjF/W5yRKlS2gYXKhGOaUFW9WM/jJtwtTumuLDon tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30b5sjxe4c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Apr 2020 17:11:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B4E1F100034;
 Tue, 14 Apr 2020 17:11:03 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96CB12B2F95;
 Tue, 14 Apr 2020 17:11:03 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 14 Apr
 2020 17:11:03 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 14 Apr 2020 17:11:03 +0200
From: Christophe ROULLIER <christophe.roullier@st.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH V2 0/2] Convert stm32 dwmac to DT schema
Thread-Topic: [PATCH V2 0/2] Convert stm32 dwmac to DT schema
Thread-Index: AQHWCcDK5mbO73L43EK/JlozUfUcxahn5iUAgBDCpAA=
Date: Tue, 14 Apr 2020 15:11:03 +0000
Message-ID: <df446a1a-c651-caa9-6086-9d84b11f3159@st.com>
References: <20200403140415.29641-1-christophe.roullier@st.com>
 <20200403.161414.635525483978443770.davem@davemloft.net>
In-Reply-To: <20200403.161414.635525483978443770.davem@davemloft.net>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <B6C78A97C0A16440BDF6F6D6EEBB6B79@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-14_07:2020-04-14,
 2020-04-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081126_661850_D30BA2D4 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Gentle reminder

Thanks,

Christophe.

On 04/04/2020 01:14, David Miller wrote:
> From: Christophe Roullier <christophe.roullier@st.com>
> Date: Fri, 3 Apr 2020 16:04:13 +0200
>
>> Convert stm32 dwmac to DT schema
>>
>> v1->v2: Remarks from Rob
> I am assuming that the DT folks will pick this up.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
