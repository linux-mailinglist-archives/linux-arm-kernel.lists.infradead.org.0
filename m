Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9659C12E3F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAOe/Af/1uDZ+Mt2X9myb+MqPXfJ8fT2S2ACxHReIJk=; b=ufjQ61oBoV05Hk
	l3EscVorwByWg1cZ7gTE3hB0W0s9apI1aCY7m6laXzXFo14ZwbMklUAy+yOph0nz75rDEWsx1QBcQ
	P+WZdiEiNN24NNrGy2QZdTWZJedVRFZATVGnObHi7+78AJROb/Z5cbBY1tPsyqRvaZZW5WpHntDst
	LhkSGailZA+o/Ps/BdHvBuMVm/jAmJyORPxAGUjHykyfFRoReZS2wLdcftXH9XrZnkZ4MXyxemls1
	mkHr9x/ZkAUQZqugy55AcSJzXi7dAnPHINrvna94jLZVRbqDjPOerNl0H2c8dg7OzDsWgBE4luuwD
	WCyiYcyMkdUNG0x/YFpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imw5G-00040h-D7; Thu, 02 Jan 2020 08:43:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imw59-0003zq-EG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 08:43:53 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0028Z1nj022070; Thu, 2 Jan 2020 09:43:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=OS+yDpqq7SyVkVspEB/RBh0yAJda6QqIhoTkhDJ6UBk=;
 b=K14Npc1SGCwL4TFz2snFFL7TQ9itMUDnjpjXZy6l8L2FA7qqeesT/oGwUz5v7nseBZRI
 fx7wsI++iFevb4UCN/gF4GGCIdSYlHKAzUs7QoR0J7YMd5iMQ6NrpORi9i09n6j7IfjL
 GDe6dfemNZmY652wtVyO0IPfDx/0+uW8qYW/G32NCVjLYXg6fkycaJSdWOpGfBoYNwH7
 XkrccgRpLoDH9YzjiKczOSA2hyHbppdqt2/Ko1jtmiMyJmG3m+BxWs955A5d9vrNkNZM
 FVzgGqYyF9hG0/nn9hUhK6DGsxVtCvOOH53u4yR2clZ41+rYCWruXZLzS05rv2pO+A1o Hw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2x5wd6a3g7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 02 Jan 2020 09:43:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 52C3710002A;
 Thu,  2 Jan 2020 09:43:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1C5F92A6E01;
 Thu,  2 Jan 2020 09:43:41 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 2 Jan
 2020 09:43:40 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 2 Jan 2020 09:43:40 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: Convert DWC2 bindings to
 json-schema
Thread-Topic: [PATCH v2 1/2] dt-bindings: usb: Convert DWC2 bindings to
 json-schema
Thread-Index: AQHVtlgPPJ7kqTKWikGryQVd+VmeDKfS0A0AgARD9IA=
Date: Thu, 2 Jan 2020 08:43:40 +0000
Message-ID: <b9b1b18f-b331-de6a-1622-ad43143eb56f@st.com>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <20191219103536.25485-2-benjamin.gaignard@st.com> <20191230153524.GA4918@pi3>
In-Reply-To: <20191230153524.GA4918@pi3>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <37C7D06533EBC444B8B03560F4795446@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-02_02:2019-12-30,2020-01-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_004351_841375_787572DF 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Amelie DELAUNAY <amelie.delaunay@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "hminas@synopsys.com" <hminas@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 12/30/19 4:35 PM, Krzysztof Kozlowski wrote:
> On Thu, Dec 19, 2019 at 11:35:35AM +0100, Benjamin Gaignard wrote:
>> Convert DWC2 bindings to DT schema format using json-schema.
>> DWC2 is widely use but a couple of compatibles and properties
>> (vusb_d-supply,vusb_a-supply) were missing in dwc2.txt, the
>> patch add them.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>> CC: Minas Harutyunyan <hminas@synopsys.com>
>>
>> changes in version 2:
>> - put Minas Harutyunyan <hminas@synopsys.com> as maintainer
>> - remove type and description from phy property
>> - remove description from compatible items
>> - simplify samsung,s3c6400-hsotg compatible handling
>>
> (...)
>
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +      usb@101c0000 {
>> +        compatible = "ralink,rt3050-usb, snps,dwc2";
> Does it pass dtbs_check? Should be two strings.

Bad copy/past from the original text file.

You are right it should two strings and dt check tools don't detect 
because they see it as a different compatible.

Benjamin

>
> Best regards,
> Krzysztof
>
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
