Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1A1124953
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsBGw3n58UkrVaFDX7I+d0QPixiMYbXIiLY2r1cUZQQ=; b=AJjtoL3c14pK7K
	thuPTYfhrHF7DiL0Ty8vCTnAPCXb4rEXVNgn68JijK8xa7KoSVb6iKYFHuS/yibtjTfwlpIxYkuv/
	6LIydfOE27kSGE5nwy+Jx8gw5/mS25Lmhvce/fJdhvku6Vt7KbWKb0EOkrKRq3SkxH+gwXJ0TuWwJ
	nY1y1wYVuLDNBVByW6YsuX2MxqdRlbH5VYBRuQ7IX0SQRy2Wqsw30aUIH1iz/d2SIA5OvqUY8iPCs
	hcY96VR8nq1xnFvVqnBA3Pymo6E2J1A+AhvVIk0uDHbl5dCv+o8BIkQfR02C9vQQqc5ysaeSVUlx6
	NNH27vSBuf1L6JS/59tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaCT-00005n-Tx; Wed, 18 Dec 2019 14:21:17 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaCH-0008WD-Va; Wed, 18 Dec 2019 14:21:10 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AC053C0D6B;
 Wed, 18 Dec 2019 14:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576678864; bh=jqkMqtDyIJsbntjNa5bJoJRCgpnMgOWRCSWsGx25myM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=iuALou3tDrctT5FzUzlpn/E1FFWSfM3pWSI4onRgQzeGeXKOOD0Lw3YRvkecPz5QW
 VV5IdpCJBw9RxCeSF7YM32cV9XtUgsDOQ1t+2hALGPW7XKlPsHsaL8Ed86jY34URqh
 E2Igw3CzH+8muQVT0B3QQouyh0hKMx7A/jPoqW6xJXQQE7SlHonYvi3+XOL30ruv2p
 8FIkpr5YGAB9NMlCV/dDvI8arr05KgwedbOC5p7LBF7wf5JVcyg8xymMDvYaPDecsc
 xYQmuWYFdTh8rqlDvfLtHtS26COh3DOcLAj0hYjdoXuh5NRgBNF4PWxi7p7bzQi7Bo
 tTzF1HgvzXblA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1A7C7A00AE;
 Wed, 18 Dec 2019 14:21:00 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Dec 2019 06:21:00 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 18 Dec 2019 06:21:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=huOPaxSSkX5MAgxJ5a0e35BLVsQDQF5N48umrX1DwIdnGYlUkYmikmWO1tWziE/xBVF2jtC9e9ee2MYA0ZbasguAPKJeyXrnPOq4kJ9Reqm8qk/njoqbjFRiZiLrxXUj9mz8Yen6fgPqm1u8vSQ3fXaPxlto5yWA8uyfyWHGkkpRkNJLdUlk5qJSLUY7aHz+M/X4hBbv5w3aEPrHNsg+88nkThiox0w8gqUMX7ufkMX8eOLmZP0dGEWUIFjE3WPwcnvp+bBuqh5jbQmU1gO9TRpOZozML7Bj5707VVoXYbt0Y8YpH4VUyrZLyELLJk1cC4QDamwRDtulRZjFIaHIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqkMqtDyIJsbntjNa5bJoJRCgpnMgOWRCSWsGx25myM=;
 b=GjleyuAO+VQRkXAIkZpmFopLs+SmznZidgaEaPuL5AIGxeu6MOj48eKcS7Ax692QmVZhAC65YctJWyDz6CmNO48fPU3p1r6+v6Mn/OEIMI7IMG0UGdUK/aieO9bmblxLzBHTgpmFU7opKAwm8hU214m5ICg4bpci+cCQ1tJal18smoliWgr9RS4mQNuEDMA4BvtQwd+ku4Cog1A2LksQBKVbvIM4ywTs1QtIz3/DWKZjIkL1ZH2K0nahp/DNmEkI4tHbEam4WlejO2hdtid0ScpvOaBbgsKpfGrrGRnas4Sv26pOkm6JopnYB06jbj0Q1jmm46eF+pSm73JRZsiIFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqkMqtDyIJsbntjNa5bJoJRCgpnMgOWRCSWsGx25myM=;
 b=i0ZdwuWgkiPfAXMOnPP0cWHG6+Izj/mcA7TrSfCj8jnmGvuYOO7tScfqOoZeAiQ0hvgGeY7RszlY1nEZY++bwzGZNlTDafWeyccT7oF4K96T3Xj0GlHhVfgYASh39Uh1QP/yAE/KJD9JzNTrNVG48iLjY8PyngP/XRUdsFC4dts=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB2549.namprd12.prod.outlook.com (10.172.121.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Wed, 18 Dec 2019 14:20:58 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 14:20:58 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: RE: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Topic: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Index: AQHVtO8W17bjcgXck0Krmyf4Y6chj6e/7bLA
Date: Wed, 18 Dec 2019 14:20:57 +0000
Message-ID: <CY4PR1201MB012059FF6735C3EDB7E1F8E9A1530@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
In-Reply-To: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWVdKeWIyUnJhVzVjWVhCd1pHRjBZVnh5YjJGdGFXNW5YREE1WkRnME9X?=
 =?utf-8?B?STJMVE15WkRNdE5HRTBNQzA0TldWbExUWmlPRFJpWVRJNVpUTTFZbHh0YzJk?=
 =?utf-8?B?elhHMXpaeTA1T1dJMk1HRmpZeTB5TVdFeExURXhaV0V0WW1abU55MDRPR0l4?=
 =?utf-8?B?TVRGalpHVXlNVGRjWVcxbExYUmxjM1JjT1RsaU5qQmhZMlF0TWpGaE1TMHhN?=
 =?utf-8?B?V1ZoTFdKbVpqY3RPRGhpTVRFeFkyUmxNakUzWW05a2VTNTBlSFFpSUhONlBT?=
 =?utf-8?B?STBNakEwSWlCMFBTSXhNekl5TVRFMU1qUTFOVE16TVRZeU16Y2lJR2c5SWta?=
 =?utf-8?B?elpXZDRRWEV6YTFnM1ZIRklSMUF4UWpkQ1FXcDRPRTlIWXowaUlHbGtQU0lp?=
 =?utf-8?B?SUdKc1BTSXdJaUJpYnowaU1TSWdZMms5SW1OQlFVRkJSVkpJVlRGU1UxSlZS?=
 =?utf-8?B?azVEWjFWQlFVSlJTa0ZCUTA1c2VscGpjbkpZVmtGa0syTldTREZOVm14YVJE?=
 =?utf-8?B?TTFlRlZtVlhoWFZtdE5UMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
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
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b501e6d-9807-4cc0-f3c4-08d783c58055
x-ms-traffictypediagnostic: CY4PR1201MB2549:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB25490478A9EAD7C11AF84161A1530@CY4PR1201MB2549.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(346002)(39860400002)(366004)(189003)(199004)(4326008)(7696005)(478600001)(54906003)(26005)(52536014)(6506007)(66556008)(6916009)(33656002)(316002)(5660300002)(76116006)(186003)(9686003)(7416002)(8676002)(71200400001)(66946007)(64756008)(66446008)(66476007)(8936002)(55016002)(86362001)(107886003)(2906002)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB2549;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r+YaSM+rMQGe3OXVvgHUsUXzkhOZxWDROv74GkK9jkYuM2iFF1rXRDI1O3ozVm8+iGQXNprckGe7gqdaOT/1QEyKyfeHIZFNB/xm89/cOvodY/h/s0Xh3fCD2nTqyZ5xCaheLJqNccq+EIUAb7nt/WfBSjVqZQCJH8EEm6RLB5rR+FZnZrjX0HVQ6b3E7QiOT9FcKbfg6kGwAeiV4O7xcKjfJNmF0OgZZXgPR0djOihUwJtXlV/JbexaDyBupWUwvZML3krQq/nH0zMyeSahSbYSMFCKQVe7W93Qy24WTU8SF8AZETXzyjgsXeAZKIknQPEoQRrAUhodhJmf/4q/QFNilqs/7WQfc6uhdRPz9sqG6nhPiGNBWpIYLF+aZio5+RJpklnoMDMzyARHSnKuwN7904FulZrvVHcM06GESy+WEv/GSVlY7FOmguuOhele
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b501e6d-9807-4cc0-f3c4-08d783c58055
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 14:20:57.9457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5fNXm9mZVzSNFjbtTT5sWtY7myUZE905MuHdnyvRtWTmJnKHJbkr8AsnIPtdHN9UfoTIr7pQBdCaxFh8V09rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2549
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_062106_242578_5EB05AF4 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Peter Zijlstra <peterz@infradead.org>, Robin Murphy <robin.murphy@arm.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn  Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark  Brown <broonie@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, Will  Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

We sort of expected something like that to happen at some point.
Funny enough it's been a year since my change was accepted in v4.20
and only now somebody noticed :)

Though quite a few questions below.

> Commit a66d972465d15 ("devres: Align data[] to ARCH_KMALLOC_MINALIGN")
> increased the alignment of devres.data unconditionally.
> 
> Some platforms have very strict alignment requirements for DMA-safe
> addresses, e.g. 128 bytes on arm64. There, struct devres amounts to:
> 	3 pointers + pad_to_128 + data + pad_to_256
> i.e. ~220 bytes of padding.

Could you please elaborate a bit on mentioned paddings?
I may understand the first one for 128 bytes but where does the
second one for 256 bytes come from?

> Let's enforce the alignment only for devm_kmalloc().

Ok so for devm_kmalloc() we don't change anything, right?
We still add the same padding before real data array.

> ---
> I had not been aware that dynamic allocation granularity on arm64 was
> 128 bytes. This means there's a lot of waste on small allocations.

Now probably I'm missing something but when do you expect to save something?
If those smaller allocations are done with devm_kmalloc() you aren't
saving anything.

> I suppose there's no easy solution, though.

Right! It took a while till I was able to propose something
people [almost silently] agreed with.

> ---
>  drivers/base/devres.c | 23 +++++++++++++----------
>  1 file changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> index 0bbb328bd17f..bf39188613d9 100644
> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -26,14 +26,7 @@ struct devres_node {
> 
>  struct devres {
>  	struct devres_node		node;
> -	/*
> -	 * Some archs want to perform DMA into kmalloc caches
> -	 * and need a guaranteed alignment larger than
> -	 * the alignment of a 64-bit integer.
> -	 * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> -	 * buffer alignment as if it was allocated by plain kmalloc().
> -	 */
> -	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
> +	u8				data[];
>  };
> 
>  struct devres_group {
> @@ -789,9 +782,16 @@ static void devm_kmalloc_release(struct device *dev, void *res)
>  	/* noop */
>  }
> 
> +#define DEVM_KMALLOC_PADDING_SIZE \
> +	(ARCH_KMALLOC_MINALIGN - sizeof(struct devres) % ARCH_KMALLOC_MINALIGN)

Even given your update with:
------------------------------->8--------------------------------
#define DEVM_KMALLOC_PADDING_SIZE \
  ((ARCH_KMALLOC_MINALIGN - sizeof(struct devres)) % ARCH_KMALLOC_MINALIGN)
------------------------------->8--------------------------------
I don't think I understand why do you need that "% ARCH_KMALLOC_MINALIGN" part?

>  static int devm_kmalloc_match(struct device *dev, void *res, void *data)
>  {
> -	return res == data;
> +	/*
> +	 * 'res' is dr->data (not DMA-safe)
> +	 * 'data' is the hand-aligned address from devm_kmalloc
> +	 */
> +	return res + DEVM_KMALLOC_PADDING_SIZE == data;
>  }
> 
>  /**
> @@ -811,6 +811,9 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>  {
>  	struct devres *dr;
> 
> +	/* Add enough padding to provide a DMA-safe address */
> +	size += DEVM_KMALLOC_PADDING_SIZE;

This implementation gets ugly and potentially will lead to problems later
when people will start changing code here. Compared to that initially aligned by
the compiler dr->data looks much more foolproof.

>  	/* use raw alloc_dr for kmalloc caller tracing */
>  	dr = alloc_dr(devm_kmalloc_release, size, gfp, dev_to_node(dev));
>  	if (unlikely(!dr))
> @@ -822,7 +825,7 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
>  	 */
>  	set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
>  	devres_add(dev, dr->data);
> -	return dr->data;
> +	return dr->data + DEVM_KMALLOC_PADDING_SIZE;

Ditto. But first I'd like to understand what are you trying to really do
with your change and then we'll see if there could be any better implementation.

-Alexey
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
