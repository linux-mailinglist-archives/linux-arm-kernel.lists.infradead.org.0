Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41A21FB237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di3QpXxgS6G32/9qb0WH/Rfk/cj52imqkDZUnNGso/k=; b=FJ7K1s60fRBJ+D
	0GfKLxCRKRyQFqhazy9IDeftaRs1qFEK8sF1YuyJbJQQjMMEHm3tmLMSifB67XDSLh0BjoyOPPJYj
	KUhSf6ZJaQ6ivKudfs/UgGh1xjGEyQaAN1M4QMSctRvV9F+kfd3SSE8I6ioHkWPz8OsICQrsURyyK
	h1O7UwMYbW6d8qgrL8Roft48ufIw4U0GFIH43L1+QKdQSqFoiNb0Zm8y83FekoAaphrZTDZZbF8KA
	h51xoo4QmAXD2/+ufeXZsd5v9hWcLK/XThZ9jMK3ds1C+tnLjfHCBtMlyRbwyC2A0yT0/9LthWc+K
	YX2253XkIaBtwhjr6Wsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBjX-0005SQ-MU; Tue, 16 Jun 2020 13:34:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBjL-0005Qd-9X
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:34:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GDSuXw015301; Tue, 16 Jun 2020 15:33:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8Zqu22QzzYb9zFOTMzGzv0s5kLJ9DJfwjRSOOCg3wiU=;
 b=Z7Whu9W3CnukVE5BhvVBZNXcK9GFSDhAwpxS9uQ9p4/TF8njS7UNjXvjd1xgU2VoioeP
 3mEqXyvsEmcNmmTgismCPjFb0j3LTytXUn14ub+vJAsVDsKx4dk6C2a9DWqmGeAvmLen
 EcHuxzmqybXM26XYmfaPQawFNIcxDR0jrZIeqqfzN3/pVw30RZXfPrts6le6XblcvFql
 mU2tpNe3/dgOMfeNBg3InjBdNfP/ozRcekII0sVmHoZnW3zXf8RtRyOQmP/Xytfp3ctF
 sZKGPW0ATAfhxaWrJ8lru0AagkKlNqpxBpLPDSdhXGrHJMXSF6Fzg5sK6SbfKKnvTcc8 JA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvyjx6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 15:33:16 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D432110002A;
 Tue, 16 Jun 2020 15:33:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8801F2B663A;
 Tue, 16 Jun 2020 15:33:14 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 16 Jun
 2020 15:33:14 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 16 Jun 2020 15:33:14 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to json-schema
Thread-Topic: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to
 json-schema
Thread-Index: AQHV6An9BN3fbiJe+Uu+wK6+EyGnQqgtoL2AgHnzXwCAABZ/gIA0KSeA
Date: Tue, 16 Jun 2020 13:33:14 +0000
Message-ID: <f0e8c6fc-a5fc-b621-1c7e-251bafd2f46c@st.com>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
 <20200226162125.GA13349@bogus> <70ee04c9-4f65-6909-32bc-a379c21a031e@st.com>
 <20200514090025.GE271301@dell>
In-Reply-To: <20200514090025.GE271301@dell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <CB381301BD63D446B3798EA4A53A2647@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_063423_701777_9D1FA8FD 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.co" <mark.rutland@arm.co>, Rob Herring <robh@kernel.org>,
 Amelie DELAUNAY <amelie.delaunay@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/14/20 11:00 AM, Lee Jones wrote:
> On Thu, 14 May 2020, Benjamin GAIGNARD wrote:
>
>>
>> On 2/26/20 5:21 PM, Rob Herring wrote:
>>> On Thu, 20 Feb 2020 17:22:46 +0100, Benjamin Gaignard wrote:
>>>> Convert stmfx bindings to json-schema
>>>>
>>>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>>>> ---
>>>>    .../devicetree/bindings/mfd/st,stmfx.yaml          | 124 +++++++++++++++++++++
>>>>    Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 -----
>>>>    .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 -------------------
>>>>    3 files changed, 124 insertions(+), 144 deletions(-)
>>>>    create mode 100644 Documentation/devicetree/bindings/mfd/st,stmfx.yaml
>>>>    delete mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
>>>>    delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
>>>>
>> Hi Lee, Rob,
>>
>> I haven't been able to found this patch in -next branches, can one of
>> you merge it ?
>>
>> Thanks,
>> Benjamin
>>> Reviewed-by: Rob Herring <robh@kernel.org>
> Rob,
>
> We should agree on a process going forward.  Do you take DT document
> changes or should I?  Up until we moved to YAML formatting, I took
> them but responsibly seems to have migrated over to you since then.
>
> I don't mind either way.
Hi,

Any news on this yaml conversion ?

Benjamin
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
