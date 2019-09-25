Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCF2BDC2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 12:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Il2Hs4Srnq9lbddpPCxiDwPFx7wAk+40dxIslBJPw6c=; b=NZM/xSBooMhWfe
	bEp8smYF2ENomrjIsPNjRR5ty037wBwLIOrgVMd4xB0tuOQpKNB8lDVw0kahKDmQr/3ni8s2PjcU3
	A5K/++nsbcOOH/RlD18E4AE/wn/JHl5JjrU0dqm4ks0Y83cSdviihogBeJYUjGmwGg2wkfMfgm1X9
	BySIbfVXLKuxpd9F74hr3MisYTgz0dUs1kAGtpyeFDc5hXfsLCG1xNgikt19YNkZYH0RnZqOiJUKZ
	GPZEpAYCiPyU907CJ3elLRRAsoVLSiyhtZA2WmwMBkT/Dmuk5Hs9hfKAgdFNG1eSV7tbeMFXUT3jI
	qUZdnFXEh1GFVRFBpyBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4YK-0003ay-CJ; Wed, 25 Sep 2019 10:29:45 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4X5-0003Zw-CV
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 10:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAjTpao5+0Hp/Juoc9CQrR6WLEqdnvSOeoD9jc22Qyc=;
 b=y9UYUhhLb8DtBCHt1wkA8aYxaxwpHM3tlEKppNDExJ6h/d8q9DGXczDGurqNzSf1gKBnDgsMrph5+f50+rQ3QJrIzx2cJfA+GDS0WpnxNgOERtLRIf8pfC1O7cB5HYX42pLrZP76qhnSFh9bkJCKPZjlHR04C1zugZgPYUwtyMA=
Received: from DB6PR0802CA0044.eurprd08.prod.outlook.com (2603:10a6:4:a3::30)
 by HE1PR0801MB1753.eurprd08.prod.outlook.com (2603:10a6:3:88::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Wed, 25 Sep
 2019 10:28:20 +0000
Received: from VE1EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by DB6PR0802CA0044.outlook.office365.com
 (2603:10a6:4:a3::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15 via Frontend
 Transport; Wed, 25 Sep 2019 10:28:20 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT046.mail.protection.outlook.com (10.152.19.226) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 25 Sep 2019 10:28:18 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Wed, 25 Sep 2019 10:28:07 +0000
X-CR-MTA-TID: 64aa7808
Received: from 4e352b48b49a.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.8.57]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 59D1CCE6-F83D-4F1C-960C-F7CCB0E36958.1; 
 Wed, 25 Sep 2019 10:28:02 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2057.outbound.protection.outlook.com [104.47.8.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4e352b48b49a.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 25 Sep 2019 10:28:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a2IL33rmRiC4srH3uBFua9Pi2/Vb2Y0Hu8JZ/i9U6Hnq4RsoEQMRnXz0SXRF3vhuAUU8Q/RWl0GSpDYG+CBpU9RLZoaPUanPaUfSlwZ9sNiLCE5W9decYIMrKb39+Rzw+n97u5ITv159MUME9tyoECrWPClB6PYNB5+i3ab/iD+kIpabshE10XX3N6BYZNhsXFEKlHGxA61edyvVmzK0t5XxG8itVUIiPCLhymv1kd590VBoFIg8GNoI+s9ZDCQV/s59xY6en0crp1NG7mdv++E4pppKFfDAodxLUVR2ePyd9o5BZwbhvvYyPk1fqgGxEr0xoqz9jLRqI/QCioC5gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAjTpao5+0Hp/Juoc9CQrR6WLEqdnvSOeoD9jc22Qyc=;
 b=RjqOMSZoJ2/U+oqONSYXc9yrchvDRk52Ln4pY4VhnEq6P6FjsXQm21KtauSZ+9eWGaizC4SbaaR5nAl2nXUNo3UURgNd7hTJSiiXx81l+teE8T2IMtntdYVPNtdTlfKSGRQfdPjC8XjhO4VeL0K6XOBarZpo8Ff9E+jZW8dkZ7oPi86Ps062EMt9VNAVO47tD1iIZaVGMThIrOvmj08TbNdZY+vAif+y9Krg2yB9npQXBxgTJDlYSlv0A4m48e7YYVTkQXBNc6q6kTIjwWDWVqluJi3uvh1GKBAkPrpmrsrOAlZdQAhyHWvNGN6tP/OiSj46HEl3SwsAC8Ul27stXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAjTpao5+0Hp/Juoc9CQrR6WLEqdnvSOeoD9jc22Qyc=;
 b=y9UYUhhLb8DtBCHt1wkA8aYxaxwpHM3tlEKppNDExJ6h/d8q9DGXczDGurqNzSf1gKBnDgsMrph5+f50+rQ3QJrIzx2cJfA+GDS0WpnxNgOERtLRIf8pfC1O7cB5HYX42pLrZP76qhnSFh9bkJCKPZjlHR04C1zugZgPYUwtyMA=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1932.eurprd08.prod.outlook.com (10.168.94.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Wed, 25 Sep 2019 10:27:59 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 10:27:58 +0000
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
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACABcbzoIACSpYAgAFMRoA=
Date: Wed, 25 Sep 2019 10:27:58 +0000
Message-ID: <HE1PR0801MB1676F76AE58C379A9E9006C0F4870@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <HE1PR0801MB1676A9D4A58118144F5C7B54F4850@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <06264d8a-b9c0-5f19-db2c-6190976a2a05@redhat.com>
In-Reply-To: <06264d8a-b9c0-5f19-db2c-6190976a2a05@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: fb9f5950-c99b-469f-90d3-cec3667f6fbc.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 01829ef0-0719-4416-cc9d-08d741a31544
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1932; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1932:|HE1PR0801MB1932:|HE1PR0801MB1753:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0801MB17537C52F3B60415AF1ADA35F4870@HE1PR0801MB1753.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(199004)(13464003)(189003)(64756008)(74316002)(9686003)(3846002)(2201001)(81156014)(81166006)(7416002)(8676002)(6436002)(446003)(2906002)(71200400001)(71190400001)(54906003)(11346002)(66066001)(6116002)(6506007)(55016002)(316002)(26005)(186003)(66476007)(33656002)(66446008)(305945005)(476003)(2501003)(102836004)(86362001)(52536014)(76116006)(55236004)(4326008)(110136005)(76176011)(5660300002)(256004)(7696005)(14454004)(486006)(66946007)(14444005)(6636002)(99286004)(53546011)(7736002)(8936002)(25786009)(6246003)(229853002)(66556008)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1932;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: MO+cEpXAsLLWMbJxuzjFb0IPGLpGXoEJEskpAne7HzjeBylFCISZyglD+HVOspPPxjbp53e4URBKyem8c+CTXI+b1xUCbPXESljcXmaeZOvqJI/PXj3C7sCGH8+E1dtM0qNYD+c6yWS5UVRg6+R94bRB26Qd3lifbioOdaNNzqQ/1dHN31jXmT1qcqysJ0QkMds1O4VIM92QysY3Po0Clt4MIRFnYWlHGcWp7NfAcOSjV3kUq/j64iTiov1h91ZEvce86hFEcNAqIQkbDSnXS+KsCR41GUQ4T+pCp+u5y3ITEBZ65IZl++AfkPPZTT5FIS0HtHjs8m1khVlVDhmHQw27CIx/vLTY0AWEEE5ZysG8pTmzRDVpxr8/xZcaEolbSBaXSf9nmO9zAxpDBDYAFULMrtX3gyTBjvvUOJeuBL4=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1932
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(13464003)(54906003)(7696005)(356004)(436003)(47776003)(70206006)(26005)(316002)(126002)(102836004)(305945005)(6636002)(229853002)(76130400001)(6246003)(25786009)(110136005)(7736002)(70586007)(2201001)(336012)(4326008)(186003)(5660300002)(11346002)(66066001)(63350400001)(8676002)(478600001)(99286004)(23676004)(8936002)(33656002)(53546011)(2486003)(22756006)(2906002)(446003)(476003)(74316002)(2501003)(486006)(14444005)(9686003)(36906005)(6116002)(86362001)(52536014)(26826003)(50466002)(3846002)(6506007)(76176011)(55016002)(81166006)(81156014)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1753;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d424805f-e3ea-42f8-026e-08d741a30969
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1753; 
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam-Message-Info: Xbq8hj1aC0TuPo5PpyRxI27GDmTiN2JmKVCbDdNL3Q3ooFjueyd9qp7ZAD5nkCsMNtDOwbhF9l3PmsvDbhtbKyVB+6po484mOPKS653jx5SspEPk4LAbfWTtv4keUQ4KIjX+IJkTuoUxFrc808Qntb8xD5bngY/DOmIl0qv8A7qmjY0lSWncSGRy6Ov1ik597b108U0QP9mJrxqRwcE93fe8Xd1VyxKiJ2NY1gdoemqQL5PTJyc/mK2Vm6rBul0e19feoy+uKB7zEgozHd3sLBSuj6BUy+jfxh0juicxJZnY1jwH111J56RyBd3f6A/xLooW73aerNOBFD8lbPI0DyBk75WHYQQjpktjcla8c77plvHWiMAaKLpFN54RVmAg6HqfS4NM2muWQC2a9fmj0MyvgzwT1zyAbp4eRVggbew=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 10:28:18.7118 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01829ef0-0719-4416-cc9d-08d741a31544
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_032827_691054_9B5A1F99 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Tuesday, September 24, 2019 10:20 PM
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
> On 23/09/19 06:57, Jianyong Wu (Arm Technology China) wrote:
> >> On 19/09/19 11:46, Jianyong Wu (Arm Technology China) wrote:
> >>>> On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
> >>>>> Paolo Bonzini wrote:
> >>>>>> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead,
> >>>>>> and split the 64-bit seconds value between val[0] and val[1].
> >>>
> >>> Val[] should be long not u32 I think, so in arm64 I can avoid that
> >>> Y2038_safe, but also need rewrite for arm32.
> >>
> >> I don't think there's anything inherently wrong with u32 val[], and
> >> as you notice it lets you reuse code between arm and arm64.  It's up
> >> to you and Marc to decide.
> >>
> > To compatible 32-bit, Integrates second value and nanosecond value as
> > a nanosecond value then split it into val[0] and val[1] and split cycle value
> into val[2] and val[3],  In this way, time will overflow at Y2262.
> > WDYT?
> 
> So if I understand correctly you'd multiply by 10^9 (or better shift by
> 30) the nanoseconds.
> 
Yeah, 
> That works, but why not provide 5 output registers?  Alternatively, take an
> address as input and write there.

It will be easy,  if I could have expanded the store room. But these code is the infrastructure for hypercall, I can't change them at my will.
I think only value but pointer can delivered by smccc_set_retval call.

> 
> Finally, on x86 we added an argument for the CLOCK_* that is being read
> (currently only CLOCK_REALTIME, but having room for extensibility in the API
> is always nice).
> 
IMO, I will be limited by the design of hypercall on arm64, I can only design my code under it. maybe it will be better sometime but for now I could just obey it.

Thanks
Jianyong  Wu

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
