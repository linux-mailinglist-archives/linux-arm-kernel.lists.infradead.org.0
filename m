Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B121282C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 20:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVLernA90wv5VOUU32ONOWlAX5AcIVODqZ3rbj7ESMM=; b=cJRFg0+oOma+ar
	YYhiWFETi1fijO3qxkE0t38w0BXLg+g7bvsgouAFb7SneGZYQ7EJ6VXbXINWFxktWobzVh0RJ9gdZ
	Ef0rylmFELZg65808FRp9/y3mcEzvgng0hmBNA6tRqw3NpEbftALnm7JgFXk7w1p+FSzP6Z1JFPUJ
	GamalOa5P4tDTX3EAsM2O/MT3KohBA4FxnOgzy0wuY/u4VPYRYl1Hjmm2IdN/dG6kSTec1OwcLG8W
	BClaGHLeDTFZ+NrwOFLLlTx+Xaxr8VnnK+uZQmL9EMHnmAGlIXtmEV5CYF/W+ByV1GvZODq0LX0Ff
	c81RCzzIlGww8A5/021w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiO0p-0007bW-Gc; Fri, 20 Dec 2019 19:32:35 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiO0g-0007au-Cv; Fri, 20 Dec 2019 19:32:27 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 92E4DC000E;
 Fri, 20 Dec 2019 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576870344; bh=B+LKqbCq7gDzphZwSEMb4QaDDAlhmhzab+vucMT/icM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=fqJxaL03rahUfRB95dkF+VmTHONDqloVMVgsZKDnTbyS1UEIO6QvjrxUlEOaW557n
 fWPWuudce0bsLlvKh+RX3bP6DNAsxoJMO2EDGhIdWNGoOpfU8zLMJdkRY/ubA8pWn5
 B2PWM0V7WI579wPt2Wzun2AIe/2w+m1roJ6zBYGZx9PFcKJas9rgL7hwIiy1V5VmDK
 LswBjm5piy+spQEYGwgHngo6O5RJZGVDOOjPvj6FqAYGMlx0okyZbgcplRdZMRVgvW
 nLXeHVsfKEBJoNWkG/qvZIng8wNn2HVJFYYnMErkTjn4WumlU5nQ+Wobq4uWlc2zzm
 Q3+lxsdx7LmSg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 593BDA008A;
 Fri, 20 Dec 2019 19:32:21 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 20 Dec 2019 11:32:18 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 20 Dec 2019 11:32:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/M5sV31PsARxjjRPv7694C82uiKUobXzEvgd0Uvq3tb50CuVtfmCYiEDLRQEaqtRcFqyzFdB5ZajkPaiqAarxT3gStxmaEe5SqqiOoPXyNb07KEz1lreAE0NesP6N48a0H54hiQEigxq2RBr6gP5Fs0wTOunwY+XCukFEclxqQiQn1X88ltX9KRt3UmeSsa5XRufb1Gd/LFjwtzoPYJs2kC7kfgZRt4RvGBIBchVYn2qPfBmMt9LvWvYw3bTy/8fgQPdYJRr/hgpYvYJbfHZios3VLXg7Hl96S58v4mCxsEG1oN15oG4GlDTg8KBxpyROIfhTsFjN42aTaho0OJBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+LKqbCq7gDzphZwSEMb4QaDDAlhmhzab+vucMT/icM=;
 b=OIY4Nrpsfkvo63rf2Whj0JweznldNa/Cw85EjENgHHSNsSSpNfATFchAK9mcmmMAXPt12FY8GV91h6adRuykRH/pvNMxs82eFtvq86zQ+MoZ3d1Hd+SRfk5GeSVofv1K3qXKhaZ67eyW+N3d6fXfJidzHRPRIk3oKiE2PvVex+0XcuxVSRCyyaE7K4FLilpMUCOLAgbjxYj+rHQWNiYcqPNycszla8vY1sSfnKSXUOkRtHeX2eCKI+FZdRvPFu+2BGg140uK0vqsRV63q273cg4/dQvrS6GoQ6nIuYqrj/4fyzyJzqzezyfAsi5T0aMWTTW2g0TuzwBxuT1Yx1GoeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+LKqbCq7gDzphZwSEMb4QaDDAlhmhzab+vucMT/icM=;
 b=Pbq8x1JY8VrNp6pRzI5uBRp2aUru6CVnIY46zVHatuczogNqRQRfIkXRIyRcpit7FFly1STvh9MFCOxNwjiIKznzSRY1i6CRXQTszLu2Mu40awRT/0J97KNHoKY/AailZHs1JUTIhJf8NnaUPnpkAOXOjzeoPM742fkys3064Ts=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2503.namprd12.prod.outlook.com (10.172.116.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Fri, 20 Dec 2019 19:32:16 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2538.019; Fri, 20 Dec 2019
 19:32:16 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Robin Murphy <robin.murphy@arm.com>, Peter Zijlstra
 <peterz@infradead.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: RE: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Topic: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Index: AQHVtO8W17bjcgXck0Krmyf4Y6chj6fC1AyAgAA/joCAAA8ggIAASORA
Date: Fri, 20 Dec 2019 19:32:16 +0000
Message-ID: <CY4PR1201MB012011E554FC69F7B074B7E2A12D0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
In-Reply-To: <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWVdKeWIyUnJhVzVjWVhCd1pHRjBZVnh5YjJGdGFXNW5YREE1WkRnME9X?=
 =?utf-8?B?STJMVE15WkRNdE5HRTBNQzA0TldWbExUWmlPRFJpWVRJNVpUTTFZbHh0YzJk?=
 =?utf-8?B?elhHMXpaeTAyWXpNeE4yVXlZUzB5TXpWbUxURXhaV0V0WW1abVlTMDRPR0l4?=
 =?utf-8?B?TVRGalpHVXlNVGRjWVcxbExYUmxjM1JjTm1Nek1UZGxNbUl0TWpNMVppMHhN?=
 =?utf-8?B?V1ZoTFdKbVptRXRPRGhpTVRFeFkyUmxNakUzWW05a2VTNTBlSFFpSUhONlBT?=
 =?utf-8?B?SXlORFE1SWlCMFBTSXhNekl5TVRNME16a3pORFEzTnpFeE5UVWlJR2c5SWpG?=
 =?utf-8?B?U1FXeEdRMDh2VkVOSU0weHFTVTlUUWxJek1WZGpNV2hwWXowaUlHbGtQU0lp?=
 =?utf-8?B?SUdKc1BTSXdJaUJpYnowaU1TSWdZMms5SW1OQlFVRkJSVkpJVlRGU1UxSlZS?=
 =?utf-8?B?azVEWjFWQlFVSlJTa0ZCUWxSblN6QjFZa3htVmtGU1RrZFBLM0pqVDBsNldr?=
 =?utf-8?B?VXdXVGMyZEhjMGFrNXJUMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRklRVUZCUVVOclEwRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGRlFVRlJRVUpCUVVGQlVsZ3lhekZCUVVGQlFVRkJRVUZCUVVGQlFVRkJT?=
 =?utf-8?B?alJCUVVGQ2JVRkhhMEZpWjBKb1FVYzBRVmwzUW14QlJqaEJZMEZDYzBGSFJV?=
 =?utf-8?B?RmlaMEoxUVVkclFXSm5RbTVCUmpoQlpIZENhRUZJVVVGYVVVSjVRVWN3UVZs?=
 =?utf-8?B?UlFubEJSM05CUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVWQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlowRkJRVUZCUVc1blFVRkJSMWxCWW5kQ01VRkhORUZhUVVKNVFVaHJRVmgz?=
 =?utf-8?B?UW5kQlIwVkJZMmRDTUVGSE5FRmFVVUo1UVVoTlFWaDNRbTVCUjFsQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRlJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRMEZCUVVGQlFVTmxRVUZCUVZwblFuWkJTRlZCWW1kQ2Ew?=
 =?utf-8?B?RklTVUZsVVVKbVFVaEJRVmxSUW5sQlNGRkJZbWRDYkVGSVNVRmpkMEptUVVo?=
 =?utf-8?B?TlFWbFJRblJCU0UxQlpGRkNkVUZIWTBGWWQwSnFRVWM0UVdKblFtMUJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZDUVVGQlFVRkJRVUZCUVVsQlFVRkJRVUZLTkVGQlFVSnRRVWM0?=
 =?utf-8?B?UVdSUlFuVkJSMUZCWTJkQ05VRkdPRUZqUVVKb1FVaEpRV1JCUW5WQlIxVkJZ?=
 =?utf-8?B?MmRDZWtGR09FRmpkMEpvUVVjd1FXTjNRakZCUnpSQlduZENaa0ZJU1VGYVVV?=
 =?utf-8?B?SjZRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlJVRkJRVUZCUVVGQlFVRm5RVUZCUVVGQmJt?=
 =?utf-8?B?ZEJRVUZIV1VGaWQwSXhRVWMwUVZwQlFubEJTR3RCV0hkQ2QwRkhSVUZqWjBJ?=
 =?utf-8?B?d1FVYzBRVnBSUW5sQlNFMUJXSGRDZWtGSE1FRmhVVUpxUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVkZCUVVGQlFVRkJRVUZE?=
 =?utf-8?B?UVVGQlFVRkJRMlZCUVVGQldtZENka0ZJVlVGaVowSnJRVWhKUVdWUlFtWkJT?=
 =?utf-8?B?RUZCV1ZGQ2VVRklVVUZpWjBKc1FVaEpRV04zUW1aQlNFMUJaRUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVKQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlNVRkJRVUZCUVVvMFFVRkJRbTFCUnpoQlpGRkNkVUZIVVVG?=
 =?utf-8?B?alowSTFRVVk0UVdOQlFtaEJTRWxCWkVGQ2RVRkhWVUZqWjBKNlFVWTRRV1JC?=
 =?utf-8?B?UW5wQlJ6QkJXWGRCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkZRVUZCUVVGQlFVRkJRV2RCUVVGQlFVRnVaMEZCUVVkWlFXSjNR?=
 =?utf-8?B?akZCUnpSQldrRkNlVUZJYTBGWWQwSjNRVWRGUVdOblFqQkJSelJCV2xGQ2VV?=
 =?utf-8?B?RklUVUZZZDBJeFFVY3dRVmwzUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCVVVGQlFVRkJRVUZCUVVOQlFVRkJRVUZEWlVG?=
 =?utf-8?B?QlFVRmFkMEl3UVVoTlFWaDNRbmRCU0VsQlluZENhMEZJVlVGWmQwSXdRVVk0?=
 =?utf-8?B?UVdSQlFubEJSMFZCWVZGQ2RVRkhhMEZpWjBKdVFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFrRkJRVUZCUVVGQlFVRkpR?=
 =?utf-8?B?VUZCUVVGQlNqUkJRVUZDZWtGSFJVRmlRVUpzUVVoTlFWaDNRbWhCUjAxQldY?=
 =?utf-8?B?ZENka0ZJVlVGaVowSXdRVVk0UVdOQlFuTkJSMFZCWW1kQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCWjBGQlFVRkJRVzVuUVVGQlNFMUJXVkZDYzBGSFZVRmpkMEpt?=
 =?utf-8?B?UVVoRlFXUlJRblpCU0ZGQldsRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGUlFVRkJRVUZCUVVGQlEwRkJRVUZCUVVObFFVRkJRV04zUW5WQlNF?=
 =?utf-8?B?RkJZM2RDWmtGSGQwRmhVVUpxUVVkVlFXSm5RbnBCUjFWQldIZENNRUZIVlVG?=
 =?utf-8?B?alowSjBRVVk0UVUxUlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkNRVUZCUVVGQlFVRkJRVWxCUVVGQlFVRktORUZC?=
 =?utf-8?B?UVVKNlFVYzBRV05CUW5wQlJqaEJZa0ZDY0VGSFRVRmFVVUoxUVVoTlFWcFJR?=
 =?utf-8?B?bVpCU0ZGQldsRkNlVUZITUVGWWQwSjZRVWhSUVdSUlFtdEJSMVZCWW1kQ01F?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUlVGQlFVRkJRVUZCUVVGblFV?=
 =?utf-8?B?RkJRVUZCYm1kQlFVRklXVUZhZDBKbVFVZHpRVnBSUWpWQlNHTkJZbmRDZVVG?=
 =?utf-8?B?SFVVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFWRkJRVUZC?=
 =?utf-8?Q?QUFBQUFDQUFBQUFBQT0iLz48L21ldGE+?=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6504e19e-d2db-4fcd-c1b9-08d78583526e
x-ms-traffictypediagnostic: CY4PR1201MB2503:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB250338F7A0A87671C3A782F4A12D0@CY4PR1201MB2503.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(189003)(107886003)(55016002)(5660300002)(71200400001)(8676002)(4326008)(26005)(53546011)(316002)(8936002)(7416002)(6506007)(110136005)(81166006)(4001150100001)(86362001)(66556008)(64756008)(66446008)(66476007)(33656002)(76116006)(54906003)(81156014)(66946007)(52536014)(2906002)(186003)(7696005)(9686003)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2503;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WHgJD6CCtlVJFEUH+IdOzyOdI/h/avMdQyFx9Ohgf34Y4W+TYLEO9eUZb/S6bOeyhy0Gw2JE9VFBKF2EZZVvdGJOOAc0I8l3vPWMN0t0E3tQ4JdPulcYk4jMHzSf6X5RuZhfsPdRfUFNJBkduRjHpEyVl64Rn4uyCNS8DnzzxmNwF92gXweG4RXSAhKQNaJSuIY5WQ8Fd8D0vFZqmxDrtnAMQuEEUzCmlaMq2ps4597bWha+xTERQawO27AAphh+p9uq3IjEIzF37WYMdj3xQPEFJGvkd6ztBKF2hcqq+200Wp6qneSn5FInGQU0RM8EdeeS/Va/EQDBrshi6Dm1N8u2vdt8nSncnJUT4FBk4yLAcZqxcxegF/hs96eI8+4nBaBMzgAde6B+UxnA1fKhC6b2ZNToMWG5J7ZLglBb6b4BsZ6t5XHO6Ce3oY69hd9p
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6504e19e-d2db-4fcd-c1b9-08d78583526e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 19:32:16.5065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JP/s+5ROgygBmWca6rNlDfF+J+bwKsEasEp8QTrqSr2azQrRvCgYY6i+hQUOIn7cOVNrAxWUUibDFtWwuzC2gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2503
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_113226_553365_E4A73080 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, arcml <linux-snps-arc@lists.infradead.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin, Peter, all,

[snip]
 
> On 2019-12-20 2:06 pm, Peter Zijlstra wrote:
> > On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
> >> Would anyone else have any suggestions, comments, insights, recommendations,
> >> improvements, guidance, or wisdom? :-)
> >
> > Flip devres upside down!
> 
> Which doesn't really help :(
> 
> > **WARNING, wear protective glasses when reading the below**
> >
> >
> > struct devres {
> > 	struct devres_node	node;
> > 	void			*data;
> > };
> >
> > /*
> >   * We place struct devres at the tail of the memory allocation
> >   * such that data retains the ARCH_KMALLOC_MINALIGN alignment.
> >   * struct devres itself is just 4 pointers and should therefore
> >   * only require trivial alignment.
> >   */
> > static inline struct devres *data2devres(void *data)
> > {
> > 	return (struct devres *)(data + ksize(data) - sizeof(struct devres));
> > }
> >
> > void *alloc_dr(...)
> > {
> > 	struct devres *dr;
> > 	void *data;
> >
> > 	data = kmalloc(size + sizeof(struct devres), GFP_KERNEL);
> 
> At this point, you'd still need to special-case devm_kmalloc() to ensure
> size is rounded up to the next ARCH_KMALLOC_MINALIGN granule, or you'd
> go back to the original problem of the struct devres fields potentially
> sharing a cache line with the data buffer. That needs to be avoided,
> because if the devres list is modified while the buffer is mapped for
> noncoherent DMA (which could legitimately happen as they are nominally
> distinct allocations with different owners) there's liable to be data
> corruption one way or the other.

Well it somehow used to work for quite some time now with the data-buffer
being allocated with 4 words offset (which is 16 bytes for 32-bit platform
and 32 for 64-bit which is still much less than mentioned 128 bytes).
Or we just never managed to identify those rare cases when data corruption
really happened?

> No matter which way round you allocate devres and data, by necessity
> they're always going to consume the same total amount of memory.

So then the next option I guess is to separate meta-data from data buffers
completely. Are there any reasons to not do that other than the hack we're
discussing here (meta-data in the beginning of the buffer) used to work OK-ish?

-Alexey
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
