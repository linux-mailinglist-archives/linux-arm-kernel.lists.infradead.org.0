Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC03A102BE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epftqR2PtV+0E1vkaRRFO4cggw+jO4nbcBQZTQAfr6Y=; b=a3yEmjdS9pbB0k
	B+2qlQF7NhcGuasd4UN9H8FE66JCT45d6RouTWEf6uLed+gZwAC/9p4xNacm4zwZThCwOCZmLWIty
	hcOxgyTRseojJOKA10lTxE3p9gbKGUls/hwCRpUIlgE4/RdzuFKC48V4O97PGylmW7uwx0LQMrPmo
	wPCWIdyWQ9ySrnK9GSBz5utCGkfldD5wMmWuzPz6mUxaUkmBbs7Y/jUfnApYwLIwtjoQ33K/gYMAh
	4FTazrEJzDxe6F7iH+lodOH5BFFIvZwCwvaZMaq1xqBCsMfZ72BHPYwrq2+3kp4P8hCnjN0HBJrHi
	jVIqAL9YiTdChkBRqYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8XB-0003Nq-W5; Tue, 19 Nov 2019 18:47:29 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8X3-0003NW-P0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 18:47:23 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJIjtm9029041; Tue, 19 Nov 2019 10:47:14 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=fVwou1cwdHpI7+SoHixSqd70XiclbDxRh1WpAM9L4ek=;
 b=kPt8IbHBnXaeiKgoR0baC6+Ztbh+zQDcBpm+P36kV5XYVSEO03r82UQgQDj+T6QS0VMi
 6QeF/HarUxHeeegJTFKVLZtJhwLbFqKO+grjTvAiSpvFuG3vg6EzGyd1nYz98SE5gNeQ
 10nIUjONi4w03Bd4s9tbGvW6g0daQ70gziXghYhbG8mSV9qhkezp7gCzKwMNf4Vpzs17
 Vd6GXbSjd4fcRbHc09xexqywd3SCWZfli0Z04/mIqttxLSaUaZsy9bZAFydLV7A6CEVO
 dr1rrOcrJjfbmmFVJr2zcRDwc9vxL6r/AbUMfaf+e33+5KUCBg5Encf4D8cy+NkBPsuH gQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2wc8423j0m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 10:47:14 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 10:47:13 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 10:47:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bEJxem/CCLiZdVbNCDmOdUq3mc7qZ1OpTigYuLnfdF6/PPdeIN53rCYqY1m8MQnmaaRCWldE8huMz6fwdX5oXHi8eBzPxApQLoF4Kx2YQdOoLp7ZJzcCNBoopxYJCPYUhSSe+bZ2Wv+DNT7cqC1tYjTPgZLfcCFVv9VhUK1ENxJfYrSJ/GjPMSlHAwAL7T4HF1W59h5undPFEQNnNuHss+zqYKQi3jwrQNqUuzO3C4XwK/YnYeh+A69zeBPUhzO/njPAd807XbuvkAkT8LF5xke0vkDajgzePwnOOYNpuSgYfXhgsjmO0Bm7p8RFJgooXy32F0pUOjJwffXLaSF3bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fVwou1cwdHpI7+SoHixSqd70XiclbDxRh1WpAM9L4ek=;
 b=WboR907Fby7+YZK1kYvQ1oQ/4EdP48VrslBNmXJ8LxScp3p/N6QtrVSlQxvGk3GECI06ysyYjSEHODjy6qtnO3TOMs0yUecIh+c+3jczWHfEpUBbj97F6qQC5K3MSk7bsYEBs/vgPm6D/VL3LzBg+Hyc7uBFLmU9s7zD02w3n9PTnWLxMkzM/pM2JtKY5bpMhjlHLxVQ3Ae70p0HGLf9iEk7kT4LUnrzBsYM5CFhUAcsKPX2SuOk0pipJ21nCPqhkjv20+jzbAGndmeJ7VmdUJYQOwkIeorSj94jxfGPeOlxwK7tL5Wl+YPutJQv14aJPm7e5h59VGen81D9Muzllw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fVwou1cwdHpI7+SoHixSqd70XiclbDxRh1WpAM9L4ek=;
 b=Ns9eWvNM6IWUsObRhqDUVffrhhXrj54up6JUoa5xnW9kRDrr2ZG8Sw0dleeJ8VF+C8K3JF1jXh4l8huusQRPIezydJ6rdLa8FqfioIcLfARq7lPQKZGMIyu2hbgqO3J6GSnFpBeHdIY4iyAFP/oz/j0SAuOn2LlNfow3OlHvN0Y=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB3328.namprd18.prod.outlook.com (10.255.237.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Tue, 19 Nov 2019 18:47:12 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 18:47:12 +0000
From: Robert Richter <rrichter@marvell.com>
To: Baruch Siach <baruch@tkos.co.il>, Jan Glauber <jglauber@marvell.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Update Cavium ThunderX drivers
Thread-Topic: [PATCH 1/2] MAINTAINERS: Update Cavium ThunderX drivers
Thread-Index: AQHVnwnBWbWzqpNF6EqB5ClGRnz9uw==
Date: Tue, 19 Nov 2019 18:47:12 +0000
Message-ID: <20191119184657.2g5v36rq6p4nm5pr@rric.localdomain>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-3-rrichter@marvell.com>
 <20191119170207.cwfowgc57rvhg2td@sapphire.tkos.co.il>
In-Reply-To: <20191119170207.cwfowgc57rvhg2td@sapphire.tkos.co.il>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0701CA0043.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::11) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56bcf628-3f96-4114-d37f-08d76d20e381
x-ms-traffictypediagnostic: MN2PR18MB3328:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB332854E3A827A4BF91014EA9D94C0@MN2PR18MB3328.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(366004)(396003)(136003)(199004)(189003)(186003)(25786009)(6246003)(81166006)(107886003)(102836004)(478600001)(76176011)(66066001)(14454004)(52116002)(6636002)(7736002)(4744005)(305945005)(6116002)(3846002)(8936002)(64756008)(66446008)(256004)(66946007)(476003)(66556008)(14444005)(66476007)(26005)(81156014)(6436002)(386003)(53546011)(1076003)(5660300002)(486006)(110136005)(6506007)(86362001)(54906003)(71200400001)(4326008)(316002)(2906002)(71190400001)(11346002)(446003)(9686003)(6512007)(6486002)(229853002)(8676002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3328;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tulj+FbYeIBizla2v1EiSJ57+upKpTOaLtkROh00BssvvnQv3U5ytbU5Zs+O2x61kq83kXuWvap/shjkIRyw7Tt/lw7XB0aJOURYTgWZPMKXr1EYBVCGT65LGqUqGlRH/Uu9grV1oSNULjMzf/yf/MWnRgT1N+GIZ9X1a0AkPdu4YZLtbuwGNuAS1rGiQVW1X8t4An48WQpSgSEGuD8dw09nTdpEaI5MtUNSXZJoYamZRZyeySh5jCvDXsbc9JRUIKCeS1LEkfXvSDcjYha4XsblBhr40EqA/LrTQo355+iqjpSkFgQ20RL70YwqFrEsuM/XTOr1VjBsfHRq6IoIX1u6As47ZlTU1z0mBU8Mp3OKmTZ/7j/N4hz58E7k1Q7gExFWcS39R2K+AN60nEFbvzsrKJ3tveXJVAupvZaWUi6th1yNZOWElY/1z9N388y7
Content-ID: <682405F23D2E6A40995A8BAB8B467197@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56bcf628-3f96-4114-d37f-08d76d20e381
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 18:47:12.2050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbeJiSHtarFsdKGVZIseZbtLdJRHoTZYuv2nXnvtJgU+Wf+TB66CBZj5A2+Q6PlCzb8S0URH0d0Y1VnOAmCRWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3328
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_06:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_104721_870077_5B6038C1 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ganapatrao
 Prabhakerrao Kulkarni <gkulkarni@marvell.com>, Arnd Bergmann <arnd@arndb.de>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, arm soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.11.19 19:02:07, Baruch Siach wrote:
> On Tue, Nov 19, 2019 at 04:56:26PM +0000, Robert Richter wrote:
> > From: Jan Glauber <jglauber@marvell.com>
> > 
> > Remove my maintainer entries for ThunderX drivers as I'm moving on
> > and won't have access to ThunderX hardware anymore and add Robert.
> > Also remove the obsolete addresses of David Daney and Steven Hill.
> > 
> > Add an entry to .mailmap for my various email addresses.
> 
> Couldn't find that part in this patch.

Right, this got lost during patch flow, have fixed that.

Will send v2.

Thanks,

-Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
