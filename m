Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE3DBBFF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zb5O8R+nQ/x9FPFU7DUl2+VS3UvT4pGbtztTUEUF9cA=; b=Cqg+gVCEaQmwBR
	YgvOYldWxQoP1J5/KuZQiOv1+BCTlaaJCz8Ly9xafrJMVubG0ZOXOiXAZtti4n0P6XXSaxcdJrfeh
	uWgbGfXI10foSgflsoHzWhBbqGAieRODFaIoygZ0Nrk2PnKp5KxshyUaZ+/DVZ6n/+vQD7LZNB+JM
	gqB5wwK+I3uFcPsu7Z4xmJ+sk6jVNJhcSd2s8xoTS+XkatWQMYtyu02of7joc8MyYYLeSqnzHbtYg
	fWN/LQmi8Bz2R75MVpsMYEldHBU4dlgS20IdvdjjVUn1tJGKPZuPFwqP2F0f14LIHygznm7tqWaG/
	jfRn8dTAhDYlrU2JvOwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaPA-0007hS-Q8; Tue, 24 Sep 2019 02:18:16 +0000
Received: from mail-eopbgr40081.outbound.protection.outlook.com ([40.107.4.81]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaP1-0007h3-Q2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:18:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rEB2L/0tAjILj/54hT8JROb/SyFIdf4rAQodLfrLQc=;
 b=yq0VHQm1ytJldYjP6jOzXc4TDj8qFxOb9Y0xg+41CLuNholjjqijiklscZIWENlZmQw8VbeQ2DcBxFY1acztZYY4ZXLEI/xUdwy6ZOJDUFs75VkJ/1ash/cOTWQ4gkCOGtceqQR2m0aHDx8KcJCbbxDNAi6CMdo8p6V9+RxCoks=
Received: from VI1PR0801CA0073.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::17) by DB7PR08MB2956.eurprd08.prod.outlook.com
 (2603:10a6:5:20::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Tue, 24 Sep
 2019 02:18:01 +0000
Received: from AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::204) by VI1PR0801CA0073.outlook.office365.com
 (2603:10a6:800:7d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.22 via Frontend
 Transport; Tue, 24 Sep 2019 02:18:01 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT032.mail.protection.outlook.com (10.152.16.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Tue, 24 Sep 2019 02:17:59 +0000
Received: ("Tessian outbound 0d576b67b9f5:v31");
 Tue, 24 Sep 2019 02:17:55 +0000
X-CR-MTA-TID: 64aa7808
Received: from 87cfe3be434a.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.12.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 829125A6-5FD4-41F8-91E9-19D1D7ABF78E.1; 
 Tue, 24 Sep 2019 02:17:50 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2056.outbound.protection.outlook.com [104.47.12.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 87cfe3be434a.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Sep 2019 02:17:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqF/7lYOJJdfFOcYAOIAg8jpNqsJpuuK8eDkQDyxsMBvViYaBBAoTFnRYQBZZ66XjP4nTMQfkfRr6DlOLhx/ZXJnQyTanTRz0K/wcAxT9MZN6ALQXkvcw0nADIPZB16PrwG7qTVFVHC4CxkXlXFvRVZSMCYua7Sv2ntkLpLw9DfwNEp22k26119DiVFP6M18avVcyZcvRCUX1jHR0yOdYgrZHfGSyEuZ0CeI3zycvqTdGjAVxmhFZ1Jg1X5rXMPQiAseLk8yDrwtBNBkuFoHRRtbOXaPeDl/aqyTq1JRrA9xnCfCpISCTGze/3tNoJzam9k6RYPkbby6EM4Rxf9kJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rEB2L/0tAjILj/54hT8JROb/SyFIdf4rAQodLfrLQc=;
 b=JJ9k0bLm1v/F3IGHphhbwO69N8kG2n636WIRtknpwS4S4xi8Z3g35fJenmnZO6y3kUXDP/3Bo8kEyPdFjGgrG0VaeFvwa45shVnaRuCiYfwg8Nq4W9OZeKW1SHyGNaLucNgmJ08J6Ejv3sHzfAZnjVnxgKVg6c2/eXuoOTt+F5eUS+hd5gupMYtVUR4sVEDSYUJ3MSkuEaqyawY2rMKfDj/6qp8hFmERj3W54MnZ3o4ftjZ/QMMpU0Ia9ihkMaqUPy4jGj3MTt9CEY0RcRL8MeTU52JGRKG7y4pbKwFMJ+SUif7T+xXpukqAMB5imlNvvODkJ+1hg/lo8VuxrwtWww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rEB2L/0tAjILj/54hT8JROb/SyFIdf4rAQodLfrLQc=;
 b=yq0VHQm1ytJldYjP6jOzXc4TDj8qFxOb9Y0xg+41CLuNholjjqijiklscZIWENlZmQw8VbeQ2DcBxFY1acztZYY4ZXLEI/xUdwy6ZOJDUFs75VkJ/1ash/cOTWQ4gkCOGtceqQR2m0aHDx8KcJCbbxDNAi6CMdo8p6V9+RxCoks=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3306.eurprd08.prod.outlook.com (52.134.111.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Tue, 24 Sep 2019 02:17:49 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 02:17:49 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v8 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Topic: [PATCH v8 2/3] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Thread-Index: AQHVcIOtyGW9OrZq5Euwghiy+NRN36c5dAWAgACm5UA=
Date: Tue, 24 Sep 2019 02:17:49 +0000
Message-ID: <DB7PR08MB3082F91F6502337231EDC63FF7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-3-justin.he@arm.com>
 <20190923161824.GD10192@arrakis.emea.arm.com>
In-Reply-To: <20190923161824.GD10192@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 2c10dae5-1410-49d8-8632-d8c1c48e37eb.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 2afb1ebf-b5a2-4f30-0636-08d740956bd8
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3306; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3306:|DB7PR08MB3306:|DB7PR08MB2956:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB29569B21301461A0714E62BFF7840@DB7PR08MB2956.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0170DAF08C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(13464003)(199004)(189003)(446003)(11346002)(486006)(229853002)(74316002)(6436002)(6862004)(55016002)(6246003)(9686003)(52536014)(316002)(14444005)(71200400001)(71190400001)(81166006)(256004)(8936002)(81156014)(8676002)(4326008)(66574012)(66066001)(54906003)(26005)(86362001)(25786009)(5660300002)(14454004)(2906002)(478600001)(6636002)(33656002)(6116002)(3846002)(7416002)(76176011)(76116006)(66446008)(7696005)(55236004)(7736002)(99286004)(6506007)(102836004)(476003)(66476007)(66946007)(186003)(66556008)(64756008)(305945005)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3306;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: r79bP/MjcxyvqGMc0h5QaT9Tmi3nWYoYchGq+4VdC3teFUrSFw3EwF+W/6QVxVW7U+VuPlIroh5v6ptIC5HTTJ3IFKK/03Vm5nxqbiOtDX+jZwe4o5p8CcufPoKYb1Xz+4I32j85e8EdmyNgU1LNbAtcg5GJgwCstOMvb8O335KtxUxsZGAFiT90R2rf5DDwemJZWmQD6wi7qLJcsFEUM7HfuIx5ClYPzyXkStsWPh7bRBAOF0ymjFlA7eXOEapxv4Cf+G8d0OvjdptBWK2FX8BNNTe4IGuHbOWmZRo2oG5a0xBSQ6v5bQQ/knfIPfzQvUNEWVVzT/SjN7Ddm3NKXxTQTi2SfiM9WAq640qla8OD2CmPzsh0DrV13mwwdtrB3ObP/v5dc6KixkHRnuF7vRBU0mAIExKYpgaXSJw8jBg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3306
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(13464003)(199004)(189003)(5660300002)(26826003)(356004)(76176011)(52536014)(86362001)(486006)(4326008)(26005)(3846002)(8936002)(81156014)(8676002)(102836004)(99286004)(6246003)(14454004)(55016002)(6636002)(229853002)(22756006)(25786009)(36906005)(54906003)(33656002)(2906002)(186003)(66574012)(76130400001)(53546011)(81166006)(6116002)(7696005)(47776003)(14444005)(66066001)(305945005)(50466002)(63350400001)(316002)(7736002)(70586007)(6506007)(436003)(476003)(11346002)(70206006)(336012)(126002)(446003)(2486003)(9686003)(74316002)(6862004)(478600001)(23676004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB2956;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 53faf272-0db2-4a14-3686-08d74095658d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB2956; 
NoDisclaimer: True
X-Forefront-PRVS: 0170DAF08C
X-Microsoft-Antispam-Message-Info: 5x2iB7KgAund/6KyQ+AgTjziwyOWNSF2V6uuMIm9LbzfovvRpsxfL1RxyX8mAlfGBPsnlDL5MIQjiEX89ggsheFa6iopp14tWbTMtGC2WjHJ9d66RSEyfZ97WVk81Amuit4fSDsTo2gf78pbSr87MoBWulfnUSbmh8/xKig8zGQrb7Xc73DDtlWVURXBbK4LrI5mvmVuhck8tbm6vI4MsAwGh26vmc1c0IHudxsOe+ND68FW2G3LjmzWxoYVTgNISrRoEWY00vdu8J5vt1lY1i6oR+N5QA/5Oc+kjHwpMxDVeTUiZuh5Rm378QC52YOqjD/VwLJ2mznoB/mCBsEpb3sZpAh8tdat5luXr+wuEBMDeBEeL859MNmrTfw0skZOozSdQc1MkN1jiLAvhMHfdVE9EahDWLVZbZbvb4CK/+E=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2019 02:17:59.9258 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2afb1ebf-b5a2-4f30-0636-08d740956bd8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_191807_853303_A299AC28 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.81 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "Kaly Xin
 \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2F0YWxpbiBNYXJpbmFz
IDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gU2VudDogMjAxOeW5tDnmnIgyNOaXpSAwOjE4
DQo+IFRvOiBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhlQGFybS5j
b20+DQo+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPjsgTWFyayBSdXRsYW5kDQo+
IDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBhcm0uY29t
PjsgTWFyYw0KPiBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz47IE1hdHRoZXcgV2lsY294IDx3aWxs
eUBpbmZyYWRlYWQub3JnPjsgS2lyaWxsIEEuDQo+IFNodXRlbW92IDxraXJpbGwuc2h1dGVtb3ZA
bGludXguaW50ZWwuY29tPjsgbGludXgtYXJtLQ0KPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+IG1tQGt2YWNrLm9yZzsg
U3V6dWtpIFBvdWxvc2UgPFN1enVraS5Qb3Vsb3NlQGFybS5jb20+OyBQdW5pdA0KPiBBZ3Jhd2Fs
IDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgQW5zaHVtYW4gS2hhbmR1YWwNCj4gPEFuc2h1bWFu
LktoYW5kdWFsQGFybS5jb20+OyBBbGV4IFZhbiBCcnVudA0KPiA8YXZhbmJydW50QG52aWRpYS5j
b20+OyBSb2JpbiBNdXJwaHkgPFJvYmluLk11cnBoeUBhcm0uY29tPjsNCj4gVGhvbWFzIEdsZWl4
bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LQ0KPiBm
b3VuZGF0aW9uLm9yZz47IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPjsgUmFs
cGggQ2FtcGJlbGwNCj4gPHJjYW1wYmVsbEBudmlkaWEuY29tPjsgaGVqaWFuZXRAZ21haWwuY29t
OyBLYWx5IFhpbiAoQXJtIFRlY2hub2xvZ3kNCj4gQ2hpbmEpIDxLYWx5LlhpbkBhcm0uY29tPjsg
bmQgPG5kQGFybS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjggMi8zXSBhcm02NDogbW06
IGltcGxlbWVudA0KPiBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgb24gYXJtNjQNCj4gDQo+IE9u
IFNhdCwgU2VwIDIxLCAyMDE5IGF0IDA5OjUwOjUzUE0gKzA4MDAsIEppYSBIZSB3cm90ZToNCj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgNCj4gYi9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaA0KPiA+IGluZGV4IGUwOTc2MGVjZTg0NC4uNGE5
OTM5NjE1ZTQxIDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJs
ZS5oDQo+ID4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgNCj4gPiBAQCAt
ODY4LDYgKzg2OCwxOCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgdXBkYXRlX21tdV9jYWNoZShzdHJ1
Y3QNCj4gdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCj4gPiAgI2RlZmluZSBwaHlzX3RvX3R0YnIoYWRk
cikJKGFkZHIpDQo+ID4gICNlbmRpZg0KPiA+DQo+ID4gKy8qDQo+ID4gKyAqIE9uIGFybTY0IHdp
dGhvdXQgaGFyZHdhcmUgQWNjZXNzIEZsYWcsIGNvcHlpbmcgZnJvbXVzZXIgd2lsbCBmYWlsDQo+
IGJlY2F1c2UNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeXl5eXl5eXg0KPiAJCQkJCQkgICAgIGZyb20gdXNlcg0KPiANCg0KT2sNCj4gPiAr
ICogdGhlIHB0ZSBpcyBvbGQgYW5kIGNhbm5vdCBiZSBtYXJrZWQgeW91bmcuIFNvIHdlIGFsd2F5
cyBlbmQgdXAgd2l0aA0KPiB6ZXJvZWQNCj4gPiArICogcGFnZSBhZnRlciBmb3JrKCkgKyBDb1cg
Zm9yIHBmbiBtYXBwaW5ncy4gd2UgZG9uJ3QgYWx3YXlzIGhhdmUgYQ0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXg0KPiAJCQkJCQlXZQ0KPiANCg0K
T2sNCj4gPiArICogaGFyZHdhcmUtbWFuYWdlZCBhY2Nlc3MgZmxhZyBvbiBhcm02NC4NCj4gPiAr
ICovDQo+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKHZvaWQp
DQo+ID4gK3sNCj4gPiArCXJldHVybiAhY3B1X2hhc19od19hZigpOw0KPiANCj4gSSBzYXcgYW4g
ZWFybHkgaW5jYXJuYXRpb24gb2YgeW91ciBwYXRjaCBoYXZpbmcgYQ0KPiBXQVJOX09OKHByZWVt
cHRpYmxlKCkpLiBJIHRoaW5rIHdlIG5lZWQgdGhpcyBiYWNrIGp1c3QgaW4gY2FzZSB0aGlzDQo+
IGZ1bmN0aW9uIHdpbGwgYmUgdXNlZCBlbHNld2hlcmUgaW4gdGhlIGZ1dHVyZS4NCg0KT2theQ0K
DQotLQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEgSGUpDQoNCg0KPiANCj4gPiArfQ0KPiA+ICsjZGVm
aW5lIGFyY2hfZmF1bHRzX29uX29sZF9wdGUgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZQ0KPiANCj4g
T3RoZXJ3aXNlLA0KPiANCj4gUmV2aWV3ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5t
YXJpbmFzQGFybS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
