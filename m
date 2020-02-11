Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23595159318
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1rIJnreUVXgUOKEHV0rOBhNfCoMiaqB3vSxjpkCwtE=; b=X+tUpNR/cGeovo
	GA0MY0OCbJXdyWo8mfDwvnCuCes/fT1h6DAiz0V6zkBmn2WQWrmu4D5Kwvx2L0VQ4eAyIa0Q5uBAA
	N1U1D89sWwXqJPY45gwTZz9l3Wefzdji2HKXvQMb2WHr5nPFcW/BKlLwSxFWBa38Uxi8u0pVcqr5c
	a7twHlHmVZjEPojCLJD+N4c3VIwRYASljadp2UCiwc6y8TYj4Z0JzyeMQVA13bYL1bc4gQNfuS6Y0
	ANz+EZeFal+y2obBikbSw0ej6Vz8oxXO8xJeMB10iNTchuVu+m0X+VEQveWd0VLPJzFlO+MU4qtQV
	LHH0cJSdqn1IGtu0kimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XOs-0001fr-F8; Tue, 11 Feb 2020 15:24:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XOj-0001fM-Ob
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:24:27 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BFClE1006474; Tue, 11 Feb 2020 16:24:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Ezoe/G+jJX5I3pY7QRbq/bcM4zPDwuqJPks4FpvMtAg=;
 b=LJQq/uiVV+asoDaiAIWJc4GnWWL1dMo86OQyN3S/EZepubJjjcFGw+/nO/8AwKkCz8Q8
 6jbAdWOtrTqk2wQN1FKPjpyiFHVO42Coaxy8UGb7jikQoJZf1B6Cxmzk2DbJF1Nnw5Yo
 gne+/y5LxnTcM1d/S5EGtdBc55790jTXh6krFOdWpEM++9AqxVoKoDrHspAhHTvXrcS8
 w3lGm+loV14d4GC2vnUVxtvuI98wU4jchGI4TwhiN3H243OjwK1YohlbULKLAneCEA0W
 vbT49ombzjku4t65J/VQ849dK2F1ooEZlDEsaB/1o3APzQmA+fEtN/TZkbhYHhvEFMLv /w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urh68mj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 16:24:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6353110003A;
 Tue, 11 Feb 2020 16:24:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2C9D12BEC69;
 Tue, 11 Feb 2020 16:24:20 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 11 Feb
 2020 16:24:19 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Tue, 11 Feb 2020 16:24:19 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: sd modulator: add vref support
Thread-Topic: [PATCH 1/4] dt-bindings: iio: adc: sd modulator: add vref support
Thread-Index: AQHV3qHoiCGlg6dSeUqjiNMk6pDzMqgWEKCA
Date: Tue, 11 Feb 2020 15:24:19 +0000
Message-ID: <a2a738c1-4080-be91-a8bf-3aebe20b27f7@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
 <20200204101008.11411-2-olivier.moysan@st.com>
 <20200208160454.0f153bfb@archlinux>
In-Reply-To: <20200208160454.0f153bfb@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <BB4AC24A2811754EA7AC0E65DB67844E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_04:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_072426_096674_B3E1C71E 
X-CRM114-Status: GOOD (  17.96  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/8/20 5:04 PM, Jonathan Cameron wrote:
> On Tue, 4 Feb 2020 11:10:05 +0100
> Olivier Moysan <olivier.moysan@st.com> wrote:
>
>> Add vref supply support to sigma delta modulator.
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
>> ---
>>   .../devicetree/bindings/iio/adc/sigma-delta-modulator.yaml    | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
>> index a390343d0c2a..2afe0765e971 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
>> @@ -8,6 +8,7 @@ title: Device-Tree bindings for sigma delta modulator
>>   
>>   maintainers:
>>     - Arnaud Pouliquen <arnaud.pouliquen@st.com>
>> +  - Olivier Moysan <olivier.moysan@st.com>
>>   
>>   properties:
>>     compatible:
>> @@ -21,6 +22,9 @@ properties:
>>     '#io-channel-cells':
>>       const: 0
>>   
>> +  vref-supply:
>> +    description: Phandle to the vref input analog reference voltage.
> I note this in review of patch 2 but in general I'm not sure we should
> be introducing this for generic devices.   It's fine if we have an
> explicit compatible but there is no reason to assume a generic sd-modulator
> uses an external reference.
>
> Jonathan
Ok, I will remove reference to external voltage for generic 
sd-modulator, in v2.
I will add it for ads1201 compatible, instead.

Thanks for your review
Olivier
>> +
>>   required:
>>     - compatible
>>     - '#io-channel-cells'
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
