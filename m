Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F8EB7697
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gB+5ZvZKOqZyXEJRsU/S7wuMOHN6/lVmN1dFAou41x4=; b=NxoBN9P6y+dmM6
	pjysnB12U45NoOMrb7me8IOhVrdOZ4rBXTJwMjNjbvMoP9qbtqz2sqsrPR7SuNRUYhcVYDqGb8Lu1
	IwFxsSWJC/Lx1WK41FBs/8cZOLpEjLeJKRvb/Kk7OUZl9o/wvpnsir1zfmrutK1RJmQt9AqBg1zXD
	kJGimdjZP2iwRQQubLWFm7n28YYM9xXgbVkPxvPPNiY0JNR64oplSDKp08eCK8z//14HoC3+UCOS4
	/obVDvH94QVFt6Fp5B4AGXjnUiXQzqwNiROwTlEoWIJHJmfxx4zJ0kKG3Wn6HLnUndIsOgcF5OAlR
	yrNuCBesmdJWTOoNaBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAt1V-00031H-1g; Thu, 19 Sep 2019 09:46:49 +0000
Received: from mail-db5eur03on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::621]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAt1G-00030L-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:46:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2j3RWGXGUS3WpdJ7KP2KwCH/OYvngwX+b/395TqE64=;
 b=hwKzPH+TRMnjEPQaRZfebutqofsOwMhV7l+nfLVSmrlsvIuIkKHI3zR7lsBvO5vyxipPrAitom5+gCrIRytVpNeoUzXWu9vmcFcy+K44Rq/t8dnuwBm3Uoe4tYjlc7oyjUkc4J/5KcRm8AnZIZZE9bXt3/TgpEKK6U58QdNiGm0=
Received: from VE1PR08CA0034.eurprd08.prod.outlook.com (2603:10a6:803:104::47)
 by VI1PR08MB3453.eurprd08.prod.outlook.com (2603:10a6:803:7c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Thu, 19 Sep
 2019 09:46:27 +0000
Received: from VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by VE1PR08CA0034.outlook.office365.com
 (2603:10a6:803:104::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.21 via Frontend
 Transport; Thu, 19 Sep 2019 09:46:27 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT029.mail.protection.outlook.com (10.152.18.107) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Thu, 19 Sep 2019 09:46:27 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Thu, 19 Sep 2019 09:46:17 +0000
X-CR-MTA-TID: 64aa7808
Received: from c001fcaa8126.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.6.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B0D9F232-FC9F-45B0-A428-E7604FD6AEC4.1; 
 Thu, 19 Sep 2019 09:46:12 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2056.outbound.protection.outlook.com [104.47.6.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c001fcaa8126.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 19 Sep 2019 09:46:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFxSFP5kKoptOwh3rPNu/ZqjX7HJpHZEmVX9aTtfqL2mjT0/NlgTrkwuXO9N00Lw6Su1nkMptZX9X/h5JhHCd++GART7qTLABJJUcC9/kvmUNzKskMxSHsM84i+sM9D9dK58gvDh3WOri+87gxQxS0AiWBT1Z0XsRohO7GzeXYMP5LjS1fGeAEUsYR4b3WJXT4+CMDfm5gy5dzfG85WIHDGIVMLgnSmMat+4BLZN9GY8sx049lOnzN4bclX4lJUL/8T/iW5IvhjCc3ylHcVQQOscr33SVeMvZdD9QfA66f9cZr5USvVTpyh+n9Jxmrb9A98iT1oVDMu6QnKe84KKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2j3RWGXGUS3WpdJ7KP2KwCH/OYvngwX+b/395TqE64=;
 b=Npd/Z2vI0GI46l/bZ7NycbFXfGFa1DlYuwYoDEjOjMEoGJNQTbByfe5mwsUZLIdr5JufWEpF065h3u9p2TmVBSBuUvRHj61tIjw2l4H46EJnWCwi9Nzz6vfmlB7xowko/9j8tjkivC2VScDiaEN+tXAsLfyVo+BBQbCMzSFVNd3NbVr8JQN/NimpSv7nLjP21E/yhqkvXQ8xS7axI95N7Yzu9DghsEDa3kguR7ju2DEjBHcLdqbMIiTuFjGo6UqQjoD+G4XG8sWqAiApm51yYZz8D/jWWsXEvBBry4873UJWAABOzsYO7QcnPZawv3fXTfz6tnPyjVNJ0xUbM4rrDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2j3RWGXGUS3WpdJ7KP2KwCH/OYvngwX+b/395TqE64=;
 b=hwKzPH+TRMnjEPQaRZfebutqofsOwMhV7l+nfLVSmrlsvIuIkKHI3zR7lsBvO5vyxipPrAitom5+gCrIRytVpNeoUzXWu9vmcFcy+K44Rq/t8dnuwBm3Uoe4tYjlc7oyjUkc4J/5KcRm8AnZIZZE9bXt3/TgpEKK6U58QdNiGm0=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2028.eurprd08.prod.outlook.com (10.168.98.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 09:46:09 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942%10]) with mapi id 15.20.2263.023; Thu, 19 Sep
 2019 09:46:09 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhA
Date: Thu, 19 Sep 2019 09:46:08 +0000
Message-ID: <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
In-Reply-To: <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 2e0a5818-cc41-4d73-8165-d60d3ba1c970.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 89a285f2-4567-4dbd-b52b-08d73ce63db0
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0801MB2028; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2028:|HE1PR0801MB2028:|VI1PR08MB3453:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB345391A3A6E2150109EB55F8F4890@VI1PR08MB3453.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 016572D96D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(189003)(199004)(13464003)(55236004)(66066001)(9686003)(26005)(4326008)(256004)(55016002)(74316002)(229853002)(478600001)(25786009)(6436002)(7736002)(7416002)(6636002)(71190400001)(6246003)(71200400001)(305945005)(14454004)(66556008)(64756008)(76116006)(66476007)(476003)(11346002)(446003)(81166006)(8676002)(8936002)(81156014)(66446008)(2501003)(66946007)(102836004)(6506007)(186003)(86362001)(33656002)(316002)(53546011)(99286004)(76176011)(7696005)(2201001)(5660300002)(6116002)(54906003)(2906002)(3846002)(52536014)(486006)(110136005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2028;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: p8uNAZGXspSUZHH/OmMePywXIMOnnaHJBOctabF6nM1dosVkcnfZdLIF3iXTzY+RCDLft+GJBe7nqEvOXoTU2OrSUQQaoL6b/wNzu4haeDI681+U9IpSa4x6yLO7EXCAA38wKuWRjv/l0fNEpfQR8RxQFnwwuja5eGwPCUm2VdlqMGZYqcx7mqTrCGrS0+x9jBD9zF5CvYF7acrugEbExxiz8utNbbbJuRW9r5xll7j+2b83y7G2fyrUZqRN3PG1KQA5JmRkLjWlL8WDyS3NNIG0HYy0bEG8ngRXrM591gcyVw369r6UR0EjaHoOOqM0eihvpTBZn5ThfdVNvm1N139HGEB4V5Nn0FJyEAH/qnLktCZNfeYMJ7OISflTvbqU+HZWCdqd3Uh9T70NVjYilZNt/wFqFXVl8a7w0LuoCR4=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2028
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(199004)(189003)(13464003)(33656002)(2486003)(7696005)(76176011)(52536014)(4326008)(6636002)(229853002)(25786009)(23676004)(99286004)(14454004)(8936002)(2501003)(336012)(476003)(26826003)(478600001)(81166006)(81156014)(8676002)(126002)(5660300002)(86362001)(9686003)(11346002)(6246003)(55016002)(70206006)(436003)(53546011)(486006)(316002)(70586007)(63350400001)(446003)(2201001)(22756006)(6506007)(47776003)(186003)(2906002)(26005)(74316002)(356004)(6116002)(3846002)(305945005)(110136005)(76130400001)(66066001)(7736002)(36906005)(50466002)(102836004)(54906003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3453;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e77ef40a-80c9-4255-b6e3-08d73ce63323
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR08MB3453; 
NoDisclaimer: True
X-Forefront-PRVS: 016572D96D
X-Microsoft-Antispam-Message-Info: JpsvTjP8LTv8FFh4ZRS41SlkCIB/4oJfMUlJNq7FQx5bnO8J81L2+4TIEegyo1VnGEfJcgq7LnAF4bXdhkvb67OldFuDU31IqUejFSTymSz4E8UtDSvosF8UKGcVXr7zOQA56P+svxiWrB7VIYimadYvaWpMfQzy12bR0SOdoyXo2zYuahiz2rBoSrD2qVg21fiuSkUiT65kRkROoy4P+hv3AnkAEokz5lJlcEb2OuGCJehO9Ey1Gd7DYXsN461v7cDJm9EveXgJxDMP+tmjDmoOQylvYw0QpbLRVFUfvFb1xiy7JuEjR2v3L0x/h8J+iE3UWyvVb57jw1p8oT5jPuMOpmTkhZmx1mXZuXGIDJDySt9CQhoJsNt1EEA2q1osomk1jpxjNv19MV3KIkOkMwf69wumqe9W8dnBaPftRwU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2019 09:46:27.0008 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a285f2-4567-4dbd-b52b-08d73ce63db0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_024635_096682_ABCDC8A5 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Wednesday, September 18, 2019 6:24 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>; Will
> Deacon <Will.Deacon@arm.com>; Suzuki Poulose
> <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
> 
> On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
> > Hi Paolo,
> >
> >> On 18/09/19 10:07, Jianyong Wu wrote:
> >>> +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> >>> +		getnstimeofday(ts);
> >>
> >> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead, and
> >> split the 64-bit seconds value between val[0] and val[1].
> >>
> > As far as I know, y2038-safe will only affect signed 32-bit integer,
> > how does it affect 64-bit integer?
> > And why split 64-bit number into two blocks is necessary?
> 
> val is an u32, not an u64.  (And val[0], where you store the seconds, is best
> treated as signed, since val[0] == -1 is returned for
> SMCCC_RET_NOT_SUPPORTED).
> 
Yeah, need consider twice.
Val[] should be long not u32 I think, so in arm64 I can avoid that Y2038_safe, but
also need rewrite for arm32.

> >> However, it seems to me that the new function is not needed and you
> >> can just use ktime_get_snapshot.  You'll get the time in
> >> systime_snapshot->real and the cycles value in systime_snapshot->cycles.
> >
> > See patch 5/6, I need both counter cycle and clocksource,
> ktime_get_snapshot seems only offer cycles.
> 
> No, patch 5/6 only needs the current clock (ptp_sc.cycles is never accessed).
> So you could just use READ_ONCE(tk->tkr_mono.clock).
>
Yeah, patch 5/6 just need clocksource, but I think tk->tkr_mono.clock can't read in external like module,
So I need an API to expose clocksource.
 
> However, even then I don't think it is correct to use ptp_sc.cs blindly in patch
> 5.  I think there is a misunderstanding on the meaning of
> system_counterval.cs as passed to get_device_system_crosststamp.
> system_counterval.cs is not the active clocksource; it's the clocksource on
> which system_counterval.cycles is based.
> 

I think we can use system_counterval_t as pass current clocksource to system_counterval_t.cs and its
corresponding cycles to system_counterval_t.cycles. is it a big problem?

> Hypothetically, the clocksource could be one for which ptp_sc.cycles is _not_
> a cycle value.  If you set system_counterval.cs to the system clocksource,
> get_device_system_crosststamp will return a bogus value.

Yeah, but in patch 3/6, we have a corresponding pair of clock source and cycle value. So I think there will be no
that problem in this patch set.
In the implementation of get_device_system_crosststamp:
"
...
if (tk->tkr_mono.clock != system_counterval.cs)
                        return -ENODEV;
...
"
We need tk->tkr_mono.clock passed to get_device_system_crosststamp, just like patch 3/6 do, otherwise will return error.


> So system_counterval.cs should be set to something like
> &clocksource_counter (from drivers/clocksource/arm_arch_timer.c).
> Perhaps the right place to define kvm_arch_ptp_get_clock_fn is in that file?
>
I have checked that ptp_sc.cs is arch_sys_counter.
Also move the module API to arm_arch_timer.c will looks a little ugly and it's not easy to be accept by arm side I think.
 
> >>> +		get_current_counterval(&sc);
> >>> +		val[0] = ts->tv_sec;
> >>> +		val[1] = ts->tv_nsec;
> >>> +		val[2] = sc.cycles;
> >>> +		val[3] = 0;
> >>> +		break;
> >>
> >> This should return a guest-cycles value.  If the cycles values always
> >> the same between the host and the guest on ARM, then okay.  If not,
> >> you have to apply whatever offset exists.
> >>
> > In my opinion, when use ptp_kvm as clock sources to sync time between
> > host and guest, user should promise the guest and host has no clock
> > offset.
> 
> What would be the adverse effect of having a fixed offset between guest
> and host?  If there were one, you'd have to check that and fail the hypercall if
> there is an offset.  But again, I think it's enough to subtract
> vcpu_vtimer(vcpu)->cntvoff or something like that.
> 
Sure, counter offset should be considered.

> You also have to check here that the clocksource is based on the ARM
> architectural timer.  Again, maybe you could place the implementation in
> drivers/clocksource/arm_arch_timer.c, and make it return -ENODEV if the
> active clocksource is not clocksource_counter.  Then KVM can look for errors
> and return SMCCC_RET_NOT_SUPPORTED in that case.

I have checked it. The clock source is arch_sys_counter which is arm arch timer.
I can try to do that but I'm not sure arm side will be happy for that change.

Thanks 
Jianyong Wu

> 
> Thanks,
> 
> Paolo
> 
> > So we can be sure that the cycle between guest and host should be keep
> > consistent. But I need check it.
> > I think host cycle should be returned to guest as we should promise we
> > get clock and counter in the same time.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
