Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B4E1D28F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrvNDbb40euXQKeOYZCjhsBWm/s3wE/vBL8wgdl2FQU=; b=P0yxjMFwN57n/D
	6FDBJdLxbJ+o8azErqK457g3xMxXs6XgYX+3UoGJ5Nvdrpz3rWmh4xyCRBww5sY3/ia1+NL3GTqOQ
	QDdm21e3AqXHW+wQaP5o7QZ1FnCwsWW1OU9tQgI3ht+O9mQDjR4GmFo/bOeHW++8u/WxWZahctNlW
	FTATzM038CjtfUcG2t+v5C3QU+10RHiukCYEaOhcHGyXmdtu4MqkKxaJa6D+38ggrrnuXBdx4CRyX
	kgZtiseo/e4NR2+93M8oSXU9wWJAno3uib9qbG86bJtXsXLg91Crut5d6MRWf4Mxs3MkQDOH7A/N4
	0LotPgxixFtckUs6WjNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8Tk-0004XX-Ih; Thu, 14 May 2020 07:40:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8TU-00037f-Tp
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:40:15 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04E7X8dr013496; Thu, 14 May 2020 09:40:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=SpEvreKtB+MBazylqO4KkqjFJKRyk5rMPdajWCqdW74=;
 b=yCM4XEEXFY9SoRsTSHZEY9AEh57E74V74fmTZXm3ck9QbjUUud4TOF6GD4yR33DLlOC4
 3MlDS1Y/SNxkbP3U9iYJiwjihRZ4AguTw6iLZxUmefK9etQZphd0rK1DIE3yKtaFKOSy
 CTzIAKDrjVaBA3H388fZT29cVei7U/T/btNO+CO56VPMk/Y+gY0XGDLLPgNFUMER/AM+
 wt0ewGUjoWttF5l8Zr+LzseFAzU6K1KK5XRJMWMCxF+6+nj1DzY8MrdxVntnS8tQggYx
 uofT9FaTm2lVVxeqc7LFLn2CJ8YS7EjV6CeOBfXEEMeyNYjoO6NJ7kge80OCiyZDPybq 1w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vyhjd7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:40:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AC3A10002A;
 Thu, 14 May 2020 09:39:55 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E1C3C2A594D;
 Thu, 14 May 2020 09:39:55 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 09:39:55 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 14 May 2020 09:39:55 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to json-schema
Thread-Topic: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to
 json-schema
Thread-Index: AQHV6An9BN3fbiJe+Uu+wK6+EyGnQqgtoL2AgHnzXwA=
Date: Thu, 14 May 2020 07:39:55 +0000
Message-ID: <70ee04c9-4f65-6909-32bc-a379c21a031e@st.com>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
 <20200226162125.GA13349@bogus>
In-Reply-To: <20200226162125.GA13349@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <38B5556472D33343A6C2240B0D499256@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_01:2020-05-13,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_004013_431299_B3A70B63 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.co" <mark.rutland@arm.co>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Amelie DELAUNAY <amelie.delaunay@st.com>, Alexandre
 TORGUE <alexandre.torgue@st.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/26/20 5:21 PM, Rob Herring wrote:
> On Thu, 20 Feb 2020 17:22:46 +0100, Benjamin Gaignard wrote:
>> Convert stmfx bindings to json-schema
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   .../devicetree/bindings/mfd/st,stmfx.yaml          | 124 +++++++++++++++++++++
>>   Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 -----
>>   .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 -------------------
>>   3 files changed, 124 insertions(+), 144 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/st,stmfx.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
>>   delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
>>
Hi Lee, Rob,

I haven't been able to found this patch in -next branches, can one of 
you merge it ?

Thanks,
Benjamin
> Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
