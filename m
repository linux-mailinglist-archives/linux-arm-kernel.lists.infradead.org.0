Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94671B6B93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arokTQCVOETxMyWYUtc6lQc0D19C2uU6wrw4XVv1DAY=; b=uHTJmsgszUX8+S
	G/5qilqiWiwj4KgyfO0vmXm2sV1Cc/DskqF/wmEcBIQW2px8GMDUgzDSmyJpkrj/wLJ1XuNLFcZtp
	CxBJBuxJk0xw1ghJNxQXc9MUiqr3WM6PvGrqnHM1z5iukzfTswjHH4fiJ2DrFDxdTDq4TwFfdBzJ+
	dK1gQ7Gqe9QGfWLiO7Uaz4s9KyZYmmaXND/bdLNn9xWfcf4v7ToMzJvd4C3hOywEq437Kp4Scy+iw
	IOtft5Vnw5m6KScqe2ol2QvSOAHQ9j+i6wIo1k7+yznvHPg/ynWTDFh7kt4KWP6MGDGZZ9ysE35/K
	3kofwbi9PP3USXxee1iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoQS-0006rX-0p; Fri, 24 Apr 2020 02:50:48 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoQI-0006pT-0r
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5dzQ/8nY/xBFUSbOy893AIKqvaXupsA3rfTK9Yyz3c=;
 b=uonxVElCFsIdx+RFr1GmsXcLr464Yt6OsJaCr62e2S/H9G7fEWWL6u1LnFjH6uKMQXLQWxjnDpxqyZjbHLXwCQVHFvMK33q2huaX/OSrWzW65dIgUS9UDoA9oSBqtme6mvQzGFhYLV5UShUljoFCAQhg7Eej2dE1rAdAU3ri+40=
Received: from AM6PR04CA0049.eurprd04.prod.outlook.com (2603:10a6:20b:f0::26)
 by VE1PR08MB4685.eurprd08.prod.outlook.com (2603:10a6:802:ae::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 02:50:32 +0000
Received: from AM5EUR03FT020.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:f0:cafe::1e) by AM6PR04CA0049.outlook.office365.com
 (2603:10a6:20b:f0::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 02:50:32 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT020.mail.protection.outlook.com (10.152.16.116) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 02:50:31 +0000
Received: ("Tessian outbound 43fc5cd677c4:v53");
 Fri, 24 Apr 2020 02:50:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: abc97a36b9ad8eb2
X-CR-MTA-TID: 64aa7808
Received: from f839f8d49bc5.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7D69440B-399A-4059-8480-E84E74C26EAC.1; 
 Fri, 24 Apr 2020 02:50:26 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f839f8d49bc5.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 24 Apr 2020 02:50:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGiIi/kBlOCeKZonHSy/dZr/6sfDNmxSK/+ztULskJMIiHAV94PJuM9lmQFi2qDse1dK+T5mQtuUFqN5TUCB19aoAGPPn61Zj4fVx/OccrXp3hk7uzfc3swbpI7R3SU2KNYq88DShZSdU8kHK15xLe5zKfjB2BJGNzVdLAp3MvtKn1ebGq1dbjHTGIrjXp4besrU0Bf68oSVgRwx9GVhF2VD14AyuXGo4T6P0t8bOWQOH+2YAlL+V5uihFubITUX9zpLCYTWKD28wsMO3HbGXc7lfHJsJtd8oilngo4cvDnheW8te3vpJN9z34ONuNeRBx1nMSHLJpIbCBMTGgRl2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5dzQ/8nY/xBFUSbOy893AIKqvaXupsA3rfTK9Yyz3c=;
 b=RxywWHmHCdzjvBZYMvJFGLUmlBmhHYEL3t3ljUtgbZBDe9S6kqwS5BfiC8gcaRdc5kxvkofGYpvzCQI+1jtyCawjXDXHag3WqEVVh/hf4So9IkEr66HWPyI9l9nezB6mnYQ65VoKmsNG5Ka7A6hOh4cTwnPRzKCh5jdYoqt2HLsJDkU+eyluc++OvJYqm7gkYlxLaILFuhRG1TtSHa68ZkfkXjSJ/CfOgFZbTb4XRBO44Q+2mGInG1hFl7WS0R1f6H0mn3axMWQ41nYeYmCaDnwL8xzAK1ensX8T6DU/n23iAznw8fx2MSOY663PtHbw6QJUTJ8yN89whLt5IBgkoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5dzQ/8nY/xBFUSbOy893AIKqvaXupsA3rfTK9Yyz3c=;
 b=uonxVElCFsIdx+RFr1GmsXcLr464Yt6OsJaCr62e2S/H9G7fEWWL6u1LnFjH6uKMQXLQWxjnDpxqyZjbHLXwCQVHFvMK33q2huaX/OSrWzW65dIgUS9UDoA9oSBqtme6mvQzGFhYLV5UShUljoFCAQhg7Eej2dE1rAdAU3ri+40=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2282.eurprd08.prod.outlook.com (2603:10a6:3:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 02:50:22 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 02:50:22 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Thread-Topic: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Thread-Index: AQHWF4xRpK0ubTCCx0eiqM1JOH1VE6iDV3gAgAQ/ngA=
Date: Fri, 24 Apr 2020 02:50:22 +0000
Message-ID: <ab629714-c08c-2155-dd13-ad25e7f60b39@arm.com>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-6-jianyong.wu@arm.com>
 <20200421095736.GB16306@C02TD0UTHF1T.local>
In-Reply-To: <20200421095736.GB16306@C02TD0UTHF1T.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a4355ef7-9c2e-44eb-9e23-08d7e7fa4142
x-ms-traffictypediagnostic: HE1PR0802MB2282:|HE1PR0802MB2282:|VE1PR08MB4685:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB46857977396F6B68B7C76D98F4D00@VE1PR08MB4685.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 03838E948C
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(376002)(39860400002)(396003)(86362001)(6506007)(2616005)(6486002)(6512007)(31686004)(4326008)(26005)(37006003)(31696002)(316002)(6862004)(54906003)(186003)(53546011)(55236004)(71200400001)(76116006)(91956017)(5660300002)(478600001)(8676002)(66476007)(66446008)(64756008)(66556008)(36756003)(2906002)(8936002)(81156014)(66946007)(7416002)(6636002)(21314003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Ul2EbkEB9aLkZhbQGEpLmAAyP5Gt5iFFKB+GiVzihOj3i9Kokx97EHfXbvFy3YIgIYzGdlExk0LXV4irCh1Fv/OsQLRdETO9AlHoAMe8iHsJ7RVphMXyvmQ9Pchr4JM35bT6vzdetM46GQVRhhRqvnGWGkpDg5l7Q7RDVUqn4ELuiV4lFYnpyGrf+Z27dA4jD+OZ5HKVeDf9wSZQpUPunSognOt3d61swohQ3eEqCsAhaN6gyFIqhQ0nmkdcV4Ozeul8t/BvMeo9DWHuf+uYIJVJ9P2G0w+ftMHPA0+O0JiED9TwSS+12eIXgUc5fqQBsz8HtG8/XT6HrtXRRYnOm0prwW1Z+LHFcL2jVnJ8rC8mQf72bBO3yONiJ2Uw3CeZRm3sxnH4ws6I5Ymedt2UxuiQjjvMG5Q2QRKeJwf0EvPbWiwqotrQyMMVvhcCxNfoIaTSsKbHlHgLmh19lCQ692O2en/ndPEuTfALwRjoMRsuF8a+liuk2jZ5UhqMkTR/
x-ms-exchange-antispam-messagedata: YgQJQw455x+FKo5Pt8/cC2pGRZyuTFibG1mV6kUHLPgybpA0HJZIWi/8ldW2QeqpJHcnp3/hFoj8wia7uVAviCrpjN2ykhFUnLY/xVrVJReKkkOhkjqubuPKVR6VvbzDSWXRFuFX7Kmm45ZQ7b8YWw==
Content-ID: <DF1D40F484214641B6EB9942D3DB49D8@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2282
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT020.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(46966005)(31696002)(8936002)(47076004)(336012)(37006003)(81166007)(2616005)(356005)(31686004)(6506007)(316002)(81156014)(26005)(4326008)(2906002)(53546011)(6486002)(8676002)(36906005)(86362001)(54906003)(82740400003)(478600001)(6862004)(36756003)(6636002)(82310400002)(5660300002)(186003)(70586007)(70206006)(6512007)(21314003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 33ad35b1-1bb2-4b6e-524d-08d7e7fa3b9a
X-Forefront-PRVS: 03838E948C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2qUkato4Gke3Fg+JfCu0Y1IoUD1bZDqkFVTplOCNfchgMqCdca5fN7T102pDHw7VzSFGbGi0YEmrslZe2MJbwVq92ImaMq4lunZnX5hJ/GwYuXENUQSYBeVKi+hivyYVKg7RkgJylxrSehC6OSjciDReRrqBPURtTbc5reiO+vGm4FvoZrN6lJZTkCnRPxKICL3yfU18jJ674qcH9uxhOLQ+Fr+jjQ00ZnDk2WoqekkQoJEam/DA0AikM1qASkEErnpNZimOjPnSI80EHeWEebvNLAelgYBUhaQT+Uxgdl2KK/WB0ggfMMluL8R7w3rLRFiygz0Xm2NRnH5pIDReuZfaZtn6o4MbPYoNwIsn8qtu568ORPgxA67ZGXDm0BrSAufmzpHcnmMXr8VXLRH3BI9a4p3jOtN736u7KENAdKd5mHsKj/AGFxxiP14wdrUe3Tag7KC+OuzkOabvEGL8rxR+ljEtR6VKCVQgqWWT0BHirYHbgyqro6/91P6PLEL7Nie5yAV+UQgUMo5HPGyIXC2SFynHCmoVZwQE4yQukNI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 02:50:31.8379 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a4355ef7-9c2e-44eb-9e23-08d7e7fa4142
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_195038_247766_5C5ECE17 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "maz@kernel.org" <maz@kernel.org>, Justin He <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/21 5:57 PM, Mark Rutland wrote:

Hi Mark,
> On Tue, Apr 21, 2020 at 11:23:00AM +0800, Jianyong Wu wrote:
>> ptp_kvm modules will get this service through smccc call.
>> The service offers real time and counter cycle of host for guest.
>> Also let caller determine which cycle of virtual counter or physical counter
>> to return.
>>
>> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
>> ---
>>   include/linux/arm-smccc.h | 21 +++++++++++++++++++
>>   virt/kvm/arm/hypercalls.c | 44 ++++++++++++++++++++++++++++++++++++++-
>>   2 files changed, 64 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
>> index 59494df0f55b..747b7595d0c6 100644
>> --- a/include/linux/arm-smccc.h
>> +++ b/include/linux/arm-smccc.h
>> @@ -77,6 +77,27 @@
>>   			   ARM_SMCCC_SMC_32,				\
>>   			   0, 0x7fff)
>>   
>> +/* PTP KVM call requests clock time from guest OS to host */
>> +#define ARM_SMCCC_HYP_KVM_PTP_FUNC_ID				\
>> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
>> +			   ARM_SMCCC_SMC_32,			\
>> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
>> +			   0)
>> +
>> +/* request for virtual counter from ptp_kvm guest */
>> +#define ARM_SMCCC_HYP_KVM_PTP_VIRT				\
>> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
>> +			   ARM_SMCCC_SMC_32,			\
>> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
>> +			   1)
>> +
>> +/* request for physical counter from ptp_kvm guest */
>> +#define ARM_SMCCC_HYP_KVM_PTP_PHY				\
>> +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
>> +			   ARM_SMCCC_SMC_32,			\
>> +			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
>> +			   2)
> ARM_SMCCC_OWNER_STANDARD_HYP is for standard calls as defined in SMCCC
> and companion documents, so we should refer to the specific
> documentation here. Where are these calls defined?
yeah, should add reference docs of "SMC CALLING CONVENTION" here.
> If these calls are Linux-specific then ARM_SMCCC_OWNER_STANDARD_HYP
> isn't appropriate to use, as they are vendor-specific hypervisor service
> call.
yeah, vendor-specific service is more suitable for ptp_kvm.
>
> It looks like we don't currently have a ARM_SMCCC_OWNER_HYP for that
> (which IIUC would be 6), but we can add one as necessary. I think that
> Will might have added that as part of his SMCCC probing bits.

ok, I will add a new "ARM_SMCCC_OWNER_VENDOR_HYP" whose IIUC is 6

and create "ARM_SMCCC_HYP_KVM_PTP_ID" base on it.

>
>> +
>>   #ifndef __ASSEMBLY__
>>   
>>   #include <linux/linkage.h>
>> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
>> index 550dfa3e53cd..a5309c28d4dc 100644
>> --- a/virt/kvm/arm/hypercalls.c
>> +++ b/virt/kvm/arm/hypercalls.c
>> @@ -3,6 +3,7 @@
>>   
>>   #include <linux/arm-smccc.h>
>>   #include <linux/kvm_host.h>
>> +#include <linux/clocksource_ids.h>
>>   
>>   #include <asm/kvm_emulate.h>
>>   
>> @@ -11,8 +12,11 @@
>>   
>>   int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>>   {
>> -	u32 func_id = smccc_get_function(vcpu);
>> +	struct system_time_snapshot systime_snapshot;
>> +	long arg[4];
>> +	u64 cycles;
>>   	long val = SMCCC_RET_NOT_SUPPORTED;
>> +	u32 func_id = smccc_get_function(vcpu);
>>   	u32 feature;
>>   	gpa_t gpa;
>>   
>> @@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>>   		if (gpa != GPA_INVALID)
>>   			val = gpa;
>>   		break;
>> +	/*
>> +	 * This serves virtual kvm_ptp.
>> +	 * Four values will be passed back.
>> +	 * reg0 stores high 32-bit host ktime;
>> +	 * reg1 stores low 32-bit host ktime;
>> +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
>> +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
>> +	 */
>> +	case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:
> Shouldn't the host opt-in to providing this to the guest, as with other
> features?

er, do you mean that "ARM_SMCCC_HV_PV_TIME_XXX" as "opt-in"? if so, I 
think this

kvm_ptp doesn't need a buddy. the driver in guest will call this service 
in a definite way.

>> +		/*
>> +		 * system time and counter value must captured in the same
>> +		 * time to keep consistency and precision.
>> +		 */
>> +		ktime_get_snapshot(&systime_snapshot);
>> +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
>> +			break;
>> +		arg[0] = upper_32_bits(systime_snapshot.real);
>> +		arg[1] = lower_32_bits(systime_snapshot.real);
> Why exactly does the guest need the host's real time? Neither the cover
> letter nor this commit message have explained that, and for those of us
> unfamliar with PTP it would be very helpful to know that to understand
> what's going on.

oh, sorry, I should have added more background knowledge here.

just give some hints here:

the kvm_ptp targets to sync guest time with host. some services in user 
space

like chrony can do time sync by inputing time(in kvm_ptp also clock 
counter sometimes) from

remote clocksource(often network clocksource). This kvm_ptp driver can 
offer a interface for

those user space service in guest to get the host time to do time sync 
in guest.

>> +		/*
>> +		 * which of virtual counter or physical counter being
>> +		 * asked for is decided by the first argument.
>> +		 */
>> +		feature = smccc_get_arg1(vcpu);
>> +		switch (feature) {
>> +		case ARM_SMCCC_HYP_KVM_PTP_PHY:
>> +			cycles = systime_snapshot.cycles;
>> +			break;
>> +		case ARM_SMCCC_HYP_KVM_PTP_VIRT:
>> +		default:
>> +			cycles = systime_snapshot.cycles -
>> +			vcpu_vtimer(vcpu)->cntvoff;
>> +		}
>> +		arg[2] = upper_32_bits(cycles);
>> +		arg[3] = lower_32_bits(cycles);
>> +
>> +		smccc_set_retval(vcpu, arg[0], arg[1], arg[2], arg[3]);
> I think the 'arg' buffer is confusing here, and it'd be clearer to have:
>
> 	u64 snaphot;
> 	u64 cycles;
>
> ... and here do:
>
> 		smccc_set_retval(vcpu,
> 				 upper_32_bits(snaphot),
> 				 lower_32_bits(snapshot),
> 				 upper_32_bits(cycles),
> 				 lower_32_bits(cycles));

it's better to use a meaningful variant name. I will fix it.


thanks

Jianyong

>
> Thanks,
> Mark.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
