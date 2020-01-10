Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0630136ACB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tcPgbDpijaZMvNPz52C1Ge2BzWtEtgYJJJ96foRkAE=; b=pQd/krSSAQuQWp
	doH0GSrCEj0ZlcxSuthmpzYDeCIvU3JmTy8xvNuTSLexHYCXR2DJLYkKvNtAdSV56BQM1yTDpaG42
	jXSAHRROuUSp9Bffw3ACTkweNfYesUCAUTRnWYu67+2RdYVFGCk1dGAS7npTUd5sXqTYsKo3z7fkz
	I48pojygsMT1mRi2on5k6jvqfTrHitwWQu5akrM4tEatGM4lLcrBeOdt2FUgsIsZfS/HhSwSrvBgX
	WbGHMA5TWqRELxNvGPpUi3F97ma7ZMleqZw2LjvHA+IS0d9dEl50Oh8oWxsNhU+eKHThge4ej0vjO
	JKkihkO2kQ2WQ3afOPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprL1-00012I-59; Fri, 10 Jan 2020 10:16:19 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprKs-000117-Lu
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:16:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRE7Zl5f7Lm34o24x9NnMLeKFUg+FHxtJnk+Krctn90=;
 b=9gTJXiXLl9OK7wSveqze0hj3T9F6vzp2NfQ6jc6KY0yy8I5/ml72TGV+NXgrkdcoWU7MJuUhttCD9ru+SiRqNBXcxbKx8yAvJNfz6d9sZyxPc9O6sD0MRyj6dOAjhZFCPMB/+4jb6Uir5/HJvDmbpcHElpm2914lCOpG3yNBB5o=
Received: from AM6PR08CA0045.eurprd08.prod.outlook.com (2603:10a6:20b:c0::33)
 by DB7PR08MB3883.eurprd08.prod.outlook.com (2603:10a6:10:76::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.10; Fri, 10 Jan
 2020 10:16:06 +0000
Received: from DB5EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::208) by AM6PR08CA0045.outlook.office365.com
 (2603:10a6:20b:c0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Fri, 10 Jan 2020 10:16:06 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT004.mail.protection.outlook.com (10.152.20.128) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Fri, 10 Jan 2020 10:16:06 +0000
Received: ("Tessian outbound ca1df68f3668:v40");
 Fri, 10 Jan 2020 10:16:06 +0000
X-CR-MTA-TID: 64aa7808
Received: from e13ea9f64c11.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6A4CD541-862C-4798-AD23-8866AB6F8AE1.1; 
 Fri, 10 Jan 2020 10:16:01 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e13ea9f64c11.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 10 Jan 2020 10:16:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PimcnmjlFKqHkQseE7/uWtYpL2qfItDg+oI7ATCrDRx4HdcJWnw7iBbTkhNbrqQzVFhCJJrLao4cu6H6VhgrsRAUvoghSZ20fG2g+QCEQPuluqltMN5BDAMQiw8mLi2/bFtStrGsUfy3wCgBYy6FRkVA1NAI24uBhklKMhbWWiVbYAx8UP+W3LD3cBOFYZbmT4nCqsut9qVnRBSeBIrTuyJgARNoSJUu75pvw6hHRbufWc/hClwau/ErDahzB5Bgiipumpc+QynyGtI2lv2S111yFCMuBlZu2qFYZ0nlMZWzydfvMHTPS4sGQbbCugLsopaDSwV6WwqeuxhIfVbVBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRE7Zl5f7Lm34o24x9NnMLeKFUg+FHxtJnk+Krctn90=;
 b=YmpkpaioyNZletgdRHITmEP7qnqXTx3DWm/TPjwWE+3DyBJPPArOXshjmPQ6BcSPxgA3GWgLUBPU1Cf1qcdYKYgjzcr448VPsy2d8+KjkZWkL1vQzVm43eCQovtM9x/fQ3aLeOn6xB/DfO5C8V7kITi7j4lx0N/fFaYvT6+9gjWLKvu0SVA2y+Y6uw1pJNsn0lYHoF49uzGa8yo3ldh0ulxaLDsj6y8rE0gkwWg48fwanYv0Cfdfi0Vfj2zoxD2VXmelH0JZyf3x9GNyFnX+no9ZXLF88jBjh04U4+GBCeuNHNfx2pntrwQ7DnvkLqZ9CGZsPdZuHxF+k384BnfLXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRE7Zl5f7Lm34o24x9NnMLeKFUg+FHxtJnk+Krctn90=;
 b=9gTJXiXLl9OK7wSveqze0hj3T9F6vzp2NfQ6jc6KY0yy8I5/ml72TGV+NXgrkdcoWU7MJuUhttCD9ru+SiRqNBXcxbKx8yAvJNfz6d9sZyxPc9O6sD0MRyj6dOAjhZFCPMB/+4jb6Uir5/HJvDmbpcHElpm2914lCOpG3yNBB5o=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1883.eurprd08.prod.outlook.com (10.168.94.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 10:15:58 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 10:15:58 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVrwu1ZTEnzkrQbEOo/hXDFqaU6affG9SAgALmpVCAADyUAIAABh4AgAGacqA=
Date: Fri, 10 Jan 2020 10:15:58 +0000
Message-ID: <HE1PR0801MB16762CD153C2D598AD8C8E1BF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
 <a5f5fc5bf913c9a22923d1a556f511e6@kernel.org>
In-Reply-To: <a5f5fc5bf913c9a22923d1a556f511e6@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 3da94c0b-a9a0-4647-94ff-272c69f57211.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 642d319d-0256-49ff-b596-08d795b61add
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1883:|HE1PR0801MB1883:|DB7PR08MB3883:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3883171C7250A4B926DD76F7F4380@DB7PR08MB3883.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:3631;OLM:3631;
x-forefront-prvs: 02788FF38E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(346002)(39860400002)(376002)(199004)(189003)(13464003)(55016002)(316002)(55236004)(26005)(81156014)(8676002)(6916009)(54906003)(8936002)(81166006)(5660300002)(4326008)(7416002)(64756008)(71200400001)(66946007)(66476007)(66556008)(66446008)(7696005)(2906002)(76116006)(478600001)(52536014)(86362001)(6506007)(9686003)(33656002)(53546011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1883;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KJ4Pb4rCMI33BSd2IvzdCFP+LYurTqxbP5AkGBa1cn3DGW8sS3+tYDSM/a+bw3IhYbedMez1Xl9vSMJhuEdbk48iCCoxMJWwoIyuxt/WTssFBQZaeg7MVsi5pVkhp+idB21QltxqM7jUCG2ZnAT6OpX/YKl6F/CYp2ap3WmYjypEHUJK7ZUNB4CH1DNn1hdru8DIdsLxbiZ0cSNLRG9stKzLpilZm1ilkO92HV3gDNIqJyuGbP631Zr5gk2DeQO5gmnCn8dtspYLuyiNBJ8o3ADl68NLn06fTTOEfFlmfD0GUE98OUYr/JsjzwsjywZic02h2PYlgoCURrechuPM9EQ/+5Pf8gPKMxiSiGMQkk5rfCt3OWpGyly30dhxaPOaBYEFNFvcmt7PYHViuulN3KYH0+OyeLYWPAmKvw0epnO4qZgALLewgM9nTtg9nNSB1Txxnqr26pU0AJ/aOf/BQ2AhnYU4umq9MdVA82GcyBjXC50pTOIDNOyBomXhKCrh
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1883
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(13464003)(199004)(189003)(4326008)(53546011)(26826003)(54906003)(86362001)(6506007)(55016002)(7696005)(8936002)(107886003)(186003)(9686003)(478600001)(6862004)(26005)(356004)(5660300002)(316002)(70586007)(70206006)(33656002)(81156014)(336012)(8676002)(52536014)(2906002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3883;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 403b40da-4dc9-46dc-347e-08d795b61608
X-Forefront-PRVS: 02788FF38E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Z4OwoFhRyaucejbkC0Z6MqLVIRfi+qwcqSRzQE8IY/ZBLiCURAb/1HQRZeWFJbQrDL8NUoReqoxVhkJ0ba6GdDKKPK2W4mE/X269pEhmuTduX/4vyviGOSzwAi0+mGialzMmFk1VxtVrAmDx0/g2yazpGakzuNXz8GffgC9XRP+fFoRvhOJlZgZhvb4mrf94haQy93dF19j5JJVphRNiDYO+4GKI54Ty3yWYuxq2w1Ht3peRWqWOpQffGbg0tqWp0TZzuFQFhqYfu/5ZgDAHGarVfp7XXcGZuO2WtfvSvrOrtQbDquh6fYGYKjtnun5zGzNL01JshjJ/ZzJxVfHyoDTNbVNhBXMxpjSGgePRtRacOCpbwKfCS7P1zAiBR68yDSpluhyZqrGqpgy9IB6KUG6wadWXYY4N6u5ob6Qss5zLmjjG+ohpZOrigCkV7j9M3fQOx6meg7VBi2e96q7ky3Q3dLLc8iImxYS2CwXc8oC567UgdvMXldp9qjQGsgj
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2020 10:16:06.3008 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 642d319d-0256-49ff-b596-08d795b61add
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3883
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021610_714765_FB3E1F83 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 "kvm-owner@vger.kernel.org" <kvm-owner@vger.kernel.org>,
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

Hi Marc,

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: Thursday, January 9, 2020 5:46 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd <nd@arm.com>;
> kvm-owner@vger.kernel.org
> Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
> 
> On 2020-01-09 09:24, Marc Zyngier wrote:
> > On 2020-01-09 05:59, Jianyong Wu wrote:
> 
> [...]
> 
> >> So we focus it on arm64. Also I have never tested it on arm32 machine
> >> ( we lack of arm32 machine)
> >
> > I'm sure your employer can provide you with such a box. I can probably
> > even tell you which cupboard they are stored in... ;-)
> >
> >> Do you think it's necessary to enable ptp_kvm on arm32? If so, I can
> >> do that.
> >
> > I can't see why we wouldn't, given that it should be a zero effort
> > task (none of the code here is arch specific).
> 
> To be clear, what I'm after is support for 32bit *guests*. I don't expect any
> issue with a 32bit host (it's all common code), but you should be able to test
> 32bit guests pretty easily (most ARMv8.0 CPUs support 32bit EL1).
> 
Get it

Thanks
Jianyong 

>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
