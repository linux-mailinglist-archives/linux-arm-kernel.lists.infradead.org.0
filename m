Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56D0D36C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 03:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JqnWAzgry58PX26EeDN5p5A3udIdfTdRJQSTbOSqhA=; b=tcNYgv+70haMJB
	bP9AWLwoUIeOqynmbSM4QBLoyhES6ziUpt/ENknS/C9YmfZUqG1xbVrX8f+V8UToJdscqQr9sh/ka
	LDLqNyKm0eV/t9zgRnk4eeNyk8J+wrizsFI6FGyr+L2L9gbM1X7H3/DxtrE3jASQuA34ntyOkS+9p
	uTx+H45/YR0rdw1xxQbLda+zn1oLsTyDq29LKqiZH1n6lh0AzXj7gSDC9kWerVkf7aUdpp6J3xBiG
	/tZX1XUsaGlpM41TIeSfLmXQIBZtteJXjCsUH58aYB0asYd2LQW0mjMB6Z5fqjtOsMDMvWsMk3zpt
	TFB9ickWx/siZalYeI3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIjYI-00011I-R2; Fri, 11 Oct 2019 01:17:06 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIjY9-00010Z-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 01:16:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGj2HS8mrLbW5trr1i++mH/TbBuewd/EaqI06wBs7wQ=;
 b=7QIUuyjsDmxOd3inBkR7uFunyKQrStVV1Sb7ODxJkRM0A9PXYamlqmVg/zl5h+1nVLKq9S5A4myUeP+7wroVZYUZzM21y4ojzPJ+b7t0Dqeg91Wdm6DraI5pgv50van7OQ0CykBXYBc6V0uRpqKISjmQtHjm+SEMBOqAILm4bX8=
Received: from VE1PR08CA0027.eurprd08.prod.outlook.com (2603:10a6:803:104::40)
 by AM6PR08MB3190.eurprd08.prod.outlook.com (2603:10a6:209:46::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Fri, 11 Oct
 2019 01:16:50 +0000
Received: from AM5EUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by VE1PR08CA0027.outlook.office365.com
 (2603:10a6:803:104::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18 via Frontend
 Transport; Fri, 11 Oct 2019 01:16:50 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT043.mail.protection.outlook.com (10.152.17.43) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 11 Oct 2019 01:16:49 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Fri, 11 Oct 2019 01:16:45 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5907c512596c.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 31010DF8-6BE6-4F02-89F1-EC088F28A22B.1; 
 Fri, 11 Oct 2019 01:16:40 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2053.outbound.protection.outlook.com [104.47.5.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5907c512596c.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 11 Oct 2019 01:16:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VPK7mu8nHve4zFXtn31+5CHBhBzWyQdvZYhljzZfczmYtWw8sTagfb0VGmXs9yrN5plwjDbQjSCKAaJZRd4UEcljFWJwY0rY3aHXGqaAZvRAetzG/iB6ywx4p16cZY5CKxsSV/Do1uRKgh4hi+bCURMQJbjfl/79wcsFUSIoBuHumL/mw8ohtvEDrvAfQccKDUcErt00Shwt7Uc028hTZvvNWVVyRF2TVl6BfoW8ZwBahIPqHvPYTBY1wHheVfPJtXPXk7jCpuO1azEoBSoEDi/CxriLSgU53JZQLmQoLtYsgp77HSF1uMclRaQRvDgYlRe67dFoQp+lXweC089vyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGj2HS8mrLbW5trr1i++mH/TbBuewd/EaqI06wBs7wQ=;
 b=hXy6/4ZpanRvMNNfgpdrxLQW3yPqLN904FmieVqfh5dXcYvFe0rH/Nt3eEN/RRVX9HdzWfjzTJVBDR+LkMVXMVkjidCEvxCq4oldIwWGhaDtbjegtRTxp36Esj8xM+kg0wL81R15w7bnl9lUvEMcxyyEdmugSrM1PbN7CaNogo/o/JyRDTxXuJEmtoMOBwmVqPEfERz4H97DOOdqcf0enZIsV7/i/rVZ15NtQcV+S4nmn4gp6tklkx2Z2saqoyYyFpaGJhEOnl+mfQInj/5p2Fyn6PSNIMaYrCIc4X2FIxZvFUmpTMjotnvlstwpOoBP03TjK9bd91oFx3aG1yJHcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGj2HS8mrLbW5trr1i++mH/TbBuewd/EaqI06wBs7wQ=;
 b=7QIUuyjsDmxOd3inBkR7uFunyKQrStVV1Sb7ODxJkRM0A9PXYamlqmVg/zl5h+1nVLKq9S5A4myUeP+7wroVZYUZzM21y4ojzPJ+b7t0Dqeg91Wdm6DraI5pgv50van7OQ0CykBXYBc6V0uRpqKISjmQtHjm+SEMBOqAILm4bX8=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3483.eurprd08.prod.outlook.com (20.177.120.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Fri, 11 Oct 2019 01:16:37 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 01:16:36 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Topic: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVfn2fVz/WJ52EYEizqdXPogUta6dUFqAAgACNw7A=
Date: Fri, 11 Oct 2019 01:16:36 +0000
Message-ID: <DB7PR08MB3082E71F1FF5FE8462F88B8BF7970@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20191009084246.123354-1-justin.he@arm.com>
 <20191009084246.123354-2-justin.he@arm.com>
 <20191010164312.GB40923@arrakis.emea.arm.com>
In-Reply-To: <20191010164312.GB40923@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: d7bb498f-8d05-424c-b473-90d1d87356a9.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 7d510d3f-45e3-41f8-784e-08d74de8b0db
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3483:|DB7PR08MB3483:|AM6PR08MB3190:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB31907859CEF3C5CEC1651C19F7970@AM6PR08MB3190.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0187F3EA14
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(52314003)(13464003)(9686003)(6306002)(86362001)(186003)(33656002)(6116002)(14444005)(6636002)(256004)(6246003)(11346002)(3846002)(8936002)(66066001)(316002)(6506007)(446003)(6436002)(55236004)(476003)(54906003)(6862004)(53546011)(4326008)(26005)(102836004)(55016002)(486006)(7696005)(76176011)(64756008)(66556008)(76116006)(2906002)(229853002)(7416002)(74316002)(71200400001)(478600001)(66446008)(66476007)(66946007)(71190400001)(305945005)(81156014)(52536014)(8676002)(25786009)(81166006)(99286004)(7736002)(966005)(14454004)(5660300002)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3483;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: xV74x7btxdj0NPHje7ZSMIftpX3PU0iuErUnUIY67rJ2Bcg6mAXaVD36jn/V41T+gG3ShMrcl8dQnA3k2SKIUgVpvj8iCO3r1f/R4UDLBjXCLprSWUfdtJEBV7gC9jNsAhaFD9LekZcJF0E35+Mnf0lgCrdiADf1Bjr+hABY3dJwQRsiEJk/FTC5gsQ2cbmcaK1uXn3/ontbIT5hBEkPB0jMapRs6j/xuXX3CYr8n8HsObXdnkEumQIeoL5Z8VIAUmeRz5+tSZH2MMFpz1xNO7jcA8B5mKw6AbgdjLbUKnPywGF/SuEkQy1IQcphpXoAuLfF6pc1B9tEBmmhpykObhmOFIBkvpQNc8NBCjeTraw7t5oddNXMjIcrzyEUCvcO3OoGo470NnkiPp78yclBa0TPNBrZ2z5tF9lfR0u7Hn9jtviQI7wEaRIKuthbL12DjKzZ4O3DiTaYJnKKO1neCg==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3483
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(199004)(189003)(52314003)(13464003)(25786009)(81166006)(966005)(6636002)(478600001)(26826003)(47776003)(66066001)(70206006)(70586007)(4326008)(6862004)(33656002)(14454004)(7736002)(74316002)(305945005)(86362001)(76130400001)(8936002)(6116002)(50466002)(5660300002)(3846002)(316002)(356004)(81156014)(8676002)(22756006)(54906003)(26005)(14444005)(6306002)(99286004)(52536014)(36906005)(23676004)(6246003)(2486003)(7696005)(336012)(229853002)(9686003)(76176011)(126002)(476003)(486006)(2906002)(63350400001)(446003)(436003)(11346002)(6506007)(186003)(102836004)(55016002)(53546011)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3190;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e22d04bd-ec4d-44d1-bd4b-08d74de8a99a
NoDisclaimer: True
X-Forefront-PRVS: 0187F3EA14
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4xvPIo72kregdYPVZfSEp6j12TrSKV+cvQJinGVROtBLaXd7ezUrgRz26OsvRS8+aps+b39qh9/nt90BwPYhBfvt8W6jhE8OWQspOQpEK3tcz3ni0eQJQQaJxYkvMhNdQ9MW2u4K1N0UG++0T0vbzwVPTJn+660BUsFjmsmlSwzbo0J0I5+1wf9cSNdzU9Q1+Dlo2yyMRwHY2lGify/c8X9PzsXs+353jQdgGnQeN1h2qxY7gBxTzRdBNVoT24B8yEH7BzeoNfi+JYHN7G6Fin704YDxNYCKLxArG9Pv3d7V37PxzFKImOUs+ZQc7dKl9kyNNTdGw0BrdZbslp+0m+L9I8UNZpYq/5WKw9MC4rBf8zdK+NAW8rzuzLPVZ0LpPsdXMbcxrjTvFK9Z8A/5LD2D/subnwgvi4gJQ+8uRAxNUFzNf6v6CaY6ZDiqzr/30/Ula856yGokeaFCjZJmYw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 01:16:49.0588 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d510d3f-45e3-41f8-784e-08d74de8b0db
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_181657_214354_53921E7C 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.49 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, "hejianet@gmail.com" <hejianet@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2F0YWxpbg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+IFNlbnQ6IEZyaWRheSwgT2N0
b2JlciAxMSwgMjAxOSAxMjo0MyBBTQ0KPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBD
aGluYSkgPEp1c3Rpbi5IZUBhcm0uY29tPg0KPiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVs
Lm9yZz47IE1hcmsgUnV0bGFuZA0KPiA8TWFyay5SdXRsYW5kQGFybS5jb20+OyBKYW1lcyBNb3Jz
ZSA8SmFtZXMuTW9yc2VAYXJtLmNvbT47IE1hcmMNCj4gWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+
OyBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtpcmlsbCBBLg0KPiBTaHV0
ZW1vdiA8a2lyaWxsLnNodXRlbW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFybS0NCj4ga2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LQ0KPiBtbUBrdmFjay5vcmc7IFN1enVraSBQb3Vsb3NlIDxTdXp1a2kuUG91bG9zZUBhcm0u
Y29tPjsgQm9yaXNsYXYNCj4gUGV0a292IDxicEBhbGllbjguZGU+OyBILiBQZXRlciBBbnZpbiA8
aHBhQHp5dG9yLmNvbT47IHg4NkBrZXJuZWwub3JnOw0KPiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhA
bGludXRyb25peC5kZT47IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtDQo+IGZvdW5kYXRpb24u
b3JnPjsgaGVqaWFuZXRAZ21haWwuY29tOyBLYWx5IFhpbiAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEp
DQo+IDxLYWx5LlhpbkBhcm0uY29tPjsgbmQgPG5kQGFybS5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggdjExIDEvNF0gYXJtNjQ6IGNwdWZlYXR1cmU6IGludHJvZHVjZSBoZWxwZXINCj4gY3B1
X2hhc19od19hZigpDQo+IA0KPiBPbiBXZWQsIE9jdCAwOSwgMjAxOSBhdCAwNDo0Mjo0M1BNICsw
ODAwLCBKaWEgSGUgd3JvdGU6DQo+ID4gV2UgdW5jb25kaXRpb25hbGx5IHNldCB0aGUgSFdfQUZE
Qk0gY2FwYWJpbGl0eSBhbmQgb25seSBlbmFibGUgaXQgb24NCj4gPiBDUFVzIHdoaWNoIHJlYWxs
eSBoYXZlIHRoZSBmZWF0dXJlLiBCdXQgc29tZXRpbWVzIHdlIG5lZWQgdG8ga25vdw0KPiA+IHdo
ZXRoZXIgdGhpcyBjcHUgaGFzIHRoZSBjYXBhYmlsaXR5IG9mIEhXIEFGLiBTbyBkZWNvdXBsZSBB
RiBmcm9tDQo+ID4gREJNIGJ5IGEgbmV3IGhlbHBlciBjcHVfaGFzX2h3X2FmKCkuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKaWEgSGUgPGp1c3Rpbi5oZUBhcm0uY29tPg0KPiA+IFN1Z2dlc3Rl
ZC1ieTogU3V6dWtpIFBvdWxvc2UgPFN1enVraS5Qb3Vsb3NlQGFybS5jb20+DQo+ID4gUmV2aWV3
ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+IA0KPiBJ
IGRvbid0IHRoaW5rIEkgcmV2aWV3ZWQgdGhpcyB2ZXJzaW9uIG9mIHRoZSBwYXRjaC4NCg0KU29y
cnkgYWJvdXQgdGhhdC4NCj4gDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vY3B1ZmVhdHVyZS5oDQo+IGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgN
Cj4gPiBpbmRleCA5Y2RlNWQyZTc2OGYuLjFhOTUzOTZlYTVjOCAxMDA2NDQNCj4gPiAtLS0gYS9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPiA+ICsrKyBiL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oDQo+ID4gQEAgLTY1OSw2ICs2NTksMjAgQEAgc3RhdGlj
IGlubGluZSB1MzINCj4gaWRfYWE2NG1tZnIwX3BhcmFuZ2VfdG9fcGh5c19zaGlmdChpbnQgcGFy
YW5nZSkNCj4gPiAgCWRlZmF1bHQ6IHJldHVybiBDT05GSUdfQVJNNjRfUEFfQklUUzsNCj4gPiAg
CX0NCj4gPiAgfQ0KPiA+ICsNCj4gPiArLyogQ2hlY2sgd2hldGhlciBoYXJkd2FyZSB1cGRhdGUg
b2YgdGhlIEFjY2VzcyBmbGFnIGlzIHN1cHBvcnRlZCAqLw0KPiA+ICtzdGF0aWMgaW5saW5lIGJv
b2wgY3B1X2hhc19od19hZih2b2lkKQ0KPiA+ICt7DQo+ID4gKwlpZiAoSVNfRU5BQkxFRChDT05G
SUdfQVJNNjRfSFdfQUZEQk0pKSB7DQo+IA0KPiBQbGVhc2UganVzdCByZXR1cm4gZWFybHkgaGVy
ZSB0byBhdm9pZCB1bm5lY2Vzc2FyeSBpbmRlbnRhdGlvbjoNCg0KT2theQ0KPiANCj4gCWlmICgh
SVNfRU5BQkxFRChDT05GSUdfQVJNNjRfSFdfQUZEQk0pKQ0KPiAJCXJldHVybiBmYWxzZTsNCj4g
DQo+ID4gKwkJdTY0IG1tZnIxID0gcmVhZF9jcHVpZChJRF9BQTY0TU1GUjFfRUwxKTsNCj4gPiAr
DQo+ID4gKwkJcmV0dXJuICEhY3B1aWRfZmVhdHVyZV9leHRyYWN0X3Vuc2lnbmVkX2ZpZWxkKG1t
ZnIxLA0KPiA+ICsNCj4gCUlEX0FBNjRNTUZSMV9IQURCU19TSElGVCk7DQo+IA0KPiBObyBuZWVk
IGZvciAhISwgdGhlIHJldHVybiB0eXBlIGlzIGEgYm9vbCBhbHJlYWR5Lg0KDQpCdXQgY3B1aWRf
ZmVhdHVyZV9leHRyYWN0X3Vuc2lnbmVkX2ZpZWxkIGhhcyB0aGUgcmV0dXJuIHR5cGUgInVuc2ln
bmVkIGludCIgWzFdDQoNClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2NwdWZlYXR1cmUuaCNuNDQ0DQoNCj4gDQo+IEFueXdheSwgYXBhcnQgZnJvbSB0aGVzZSBuaXRw
aWNrcywgdGhlIHBhdGNoIGlzIGZpbmUgeW91IGNhbiBrZWVwIG15DQo+IHJldmlld2VkLWJ5Lg0K
DQpUaGFua3Mg8J+YiQ0KPiANCj4gSWYgbGF0ZXIgd2Ugbm90aWNlZCBhIHBvdGVudGlhbCBwZXJm
b3JtYW5jZSBpc3N1ZSBvbiB0aGlzIHBhdGgsIHdlIGNhbg0KPiB0dXJuIGl0IGludG8gYSBzdGF0
aWMgbGFiZWwgYXMgd2l0aCBvdGhlciBDUFUgZmVhdHVyZXMuDQoNCk9rYXkNCg0KLS0NCkNoZWVy
cywNCkp1c3RpbiAoSmlhIEhlKQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
