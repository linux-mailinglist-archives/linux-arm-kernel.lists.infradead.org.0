Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC1036E10
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcTMMihBEClK/UC/BPFtSgtusX5RwbvupYTbTsxoaWA=; b=AE5MrLtRfM4GSx
	4aREPhN54A93CG1ePTaEONKp0pGTg+UglgBLTj+B18HMzriZzC2E8V4P50iYWQxQ3dXsHBkLg1Ht+
	5OfhoWzc58ora0zQ1XlANP96IEVWyS9BcBKads0tPwYipLEWWmUvjVDUImzsQJTDhiv8QwLtGhvNc
	aZhRO1FpiSQLuRmBJsTwTD7ANFaqo6hzD/QKn+HJoUc0zO3/y1UyISv3DJ9zdXVysXs/AYX8Ogfzp
	Ye2aeTJuYHrWGHsCxTTEPxhAiNLdTFtKVE0KMvN2kJiYr3JM7V1wB2EYrRg02hFf8B6U3vo5qUQM1
	TKji7cgF4BeWy/Gi/NRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnNA-00019B-HJ; Thu, 06 Jun 2019 08:03:44 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnN1-00017W-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:03:37 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56815em030473; Thu, 6 Jun 2019 01:03:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=tSTOVvQ1mAWagoaWboJkfjzIFNrg7rzULkPK4Im436s=;
 b=pdSJvebrjSYa6omKUxAIaa9nuxvbzOjETlTRX9LueLaUHdvHBKj1UNkyzPGH2RJuTq7D
 ko7LFNlcunz6cDTzXZXEUPuUzSYeSNwF6keW09UfO3NhqJOOTFtVewluhtGYEsS8kTVL
 kvt0ErgyAAMxXMokOqHveV9h0Zxfvm7lIgexjOZ84+uUJ47WVrgyLsDwyD/0A7tuP+v7
 46YEldEqi4LjF1yMIu+mERzOqrldjZrF9NenRI7zIKIlNaMva5LxumkvmDmpQ1EujzBL
 xAmkyJubZwNMAlquvqnKYKM4TZOL84Pt6PsI7Okq5d32qkYDeaOWuF1eZlSxk7xE3aUI hA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2sxthegwqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 06 Jun 2019 01:03:30 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 6 Jun
 2019 01:03:29 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 6 Jun 2019 01:03:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tSTOVvQ1mAWagoaWboJkfjzIFNrg7rzULkPK4Im436s=;
 b=dnMSIisquh7tCLbh6wmWTCjWV/AN7o0myqpFvR8Dh0MaIO1/+3fTR/pn5vPnBkZQuQYwQzeu9a0s1+NK7TPKVyM/3QR1S2svIkZTMyM2obcwdSAIDFUyGkWR3EsxyEViTtHwqdAbKB+RFg8MULRsHfknRQo+nEofU4t+IH/ojuM=
Received: from DM5PR18MB1578.namprd18.prod.outlook.com (10.175.224.136) by
 DM5PR18MB1274.namprd18.prod.outlook.com (10.173.213.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 08:03:28 +0000
Received: from DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::e42c:8f1f:ac4d:c16e]) by DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::e42c:8f1f:ac4d:c16e%6]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 08:03:28 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] lockref: Limit number of cmpxchg loop retries
Thread-Topic: [PATCH] lockref: Limit number of cmpxchg loop retries
Thread-Index: AQHVHD5S/Fy6pcse0E6tWtS4S5X27w==
Date: Thu, 6 Jun 2019 08:03:27 +0000
Message-ID: <20190606080317.GA10606@hc>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190605134849.28108-1-jglauber@marvell.com>
 <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
In-Reply-To: <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0027.eurprd05.prod.outlook.com
 (2603:10a6:800:60::13) To DM5PR18MB1578.namprd18.prod.outlook.com
 (2603:10b6:3:14d::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [78.43.112.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8efe314f-1f10-4603-c912-08d6ea5574c1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1274; 
x-ms-traffictypediagnostic: DM5PR18MB1274:
x-microsoft-antispam-prvs: <DM5PR18MB1274179E8A36494E230FFEBFD8170@DM5PR18MB1274.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(136003)(366004)(346002)(376002)(39860400002)(199004)(189003)(1076003)(68736007)(26005)(478600001)(4744005)(66066001)(8936002)(86362001)(4326008)(5660300002)(76176011)(66556008)(53936002)(2906002)(186003)(14454004)(3846002)(6116002)(476003)(486006)(6246003)(11346002)(25786009)(9686003)(6512007)(446003)(256004)(6916009)(316002)(14444005)(71190400001)(71200400001)(107886003)(6436002)(66446008)(66946007)(33716001)(66476007)(73956011)(64756008)(53546011)(6506007)(52116002)(386003)(99286004)(102836004)(229853002)(33656002)(305945005)(8676002)(54906003)(7736002)(81166006)(81156014)(6486002)(40753002)(133343001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1274;
 H:DM5PR18MB1578.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gMHOnDx/6LzIM9HHdKwMFGZhpEiCQ2PeH2vg2AqQxCdID1jP5LEHlX6TfW+AjXNjqdm+QIIYBdJ0dA9x1syusmLJQCMbzweh96pflB6psZ4kDmO9nKyz5RuTBeesfwI1b6vBVgf+0/p1CjBWKtwpBCRdBH9qWLrG3DlZILd1Pu2O3CY86JgiBN+aiZXYfdTiM/SgbG0iiPC2cKLrCbOjgp1wdDvVLC/b2DxnqNEsBGqTkCJqcj6+kcTWb5/D0+bTnpIrd3QkymdwpXkqKmHkW2ePzzcCigV4YkXn4LqjOdhp1D/U3KZzvln3/gPRaY74rVJAmdmAlIfF8wabilUu/VIhk4C/Hg936OWhGLWcOoSOIsEmSO05frZJwmKpThAO7DAQx0cqvMIOVWIv7y0qp8dc064QAr9tP774SzLjhTI=
Content-ID: <4EDECC1AD149F64AA2F5FC6090A1140B@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8efe314f-1f10-4603-c912-08d6ea5574c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 08:03:27.8636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jglauber@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1274
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_010335_887312_25ECB02D 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Jan Glauber <jglauber@cavium.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 01:16:46PM -0700, Linus Torvalds wrote:
> On Wed, Jun 5, 2019 at 6:49 AM Jan Glauber <jglauber@cavium.com> wrote:
> >
> > Add an upper bound to the loop to force the fallback to spinlocks
> > after some time. A retry value of 100 should not impact any hardware
> > that does not have this issue.
> >
> > With the retry limit the performance of an open-close testcase
> > improved between 60-70% on ThunderX2.
> 
> Btw, did you do any kind of performance analysis across different
> retry limit values?

I tried 15/50/100/200/500, results were largely identical up to 100.
For SMT=4 a higher retry value might be better, but unless we can add a
sysctl value 100 looked like a good compromise to me.

--Jan

> I'm perfectly happy to just pick a random number and '100' looks fine
> to me, so this is mainly out of curiosity.
> 
>                        Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
