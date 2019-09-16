Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF18B3FA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 19:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEMTGVsIqF0H3HgRErJxykPo5Bl7q6JyQl44Qh+xVJY=; b=mVX0pC8AZ6BpOv
	9ic0Z9LKl2jMoVTY2tTdF2ujtgKCqmHaknnKvBobSfWhMyy2//m7eVM4l1JkO36gm97PPSZSoHtcV
	zZ4FHkIONenboUSIumTO+WE29hz4YlhleFNIw/Dp96DtNS8140ukbAt9lay9vSJtukfZXJn2Dks5H
	KfLCsVzBc8ZVU/YMOkr7mIBkO7Wk6//FP+bOHNH9CkoSK7JDk5R5i75IpccCVT+mFRpNLv6ssUWjE
	TEjW0fqllpkVrCrOhU5H5nWw7kKzECVAHxe/pH8N7sg0KaCm6B430zhm1E94sdyH5tvnmnnZ8PcWp
	uRDIWrgoz2HoEomFw8bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9uw2-0001LW-SN; Mon, 16 Sep 2019 17:37:10 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9uvn-0001L6-RT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 17:37:00 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8GHZR8D024090; Mon, 16 Sep 2019 10:36:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=LuKHDxmQEjIpUDJiv7bYD0FLOsjRgR34+oWJYrjuvYI=;
 b=V2TRTRVGE8DtWlAJAAPB4BxbjpJZCPtSQLm9CkB9cauZGmTemeC3GXTDWVnIApEu7vbm
 qfWhLyFpVSDaQoK17vbDtBowNpNaYAS/HL0ZbCOzeEzWT3rBwiLcULjV0j/YOfGEeVSE
 jZpRxITYkD/2DtOeMmkrTBW+Lh7fJSzlfiiAHx8iPCF1s5tUEbcd9ZZyLv7sYJa17IPV
 yyaDv/duJpcvwsbNN28saUQJTMw97McZOKachAAI2hdaOvPzx/B/nK1q2pIA70IZ5rTA
 DlLRSJNm3wC7Isf+WObfUlfqjaotgZuGzXFbQApnKawlPRukQIPcq1anYzmaV4YGWUNF HA== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2v0yqkqf4e-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 16 Sep 2019 10:36:42 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 16 Sep
 2019 10:36:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.56) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 16 Sep 2019 10:36:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1mayRmjprQn/3av7fBanvZ5+AWDxwcFGHvyEEq40hr0vMpAPPh+3NW8dW4MCVN11hiu7IBYhFmAhLe8hKn0sBoZOAs6bnTsI7yf7LVC8Dvm/Z7vnmjoWKfkoOnJ4KcAmKD5avG1FinUASUWJm9Mh6G3KfJN88e6oUCM0r4U0VZkF2i9T9bEb+jdYIYiQvHtyhLtzhYLGW0ZYHQeROR9V74T/jpyiHcOSA5f1Yu4l29IsQq4RMVw1PWDGEbLzJFr8Z8ehBSKxMBmeov4pptub8etjxGrwZCFgSzkFzoCTnmeRckvx/sNue4AYsTYxDygU6yFpjz8vOh/NR5CjejiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LuKHDxmQEjIpUDJiv7bYD0FLOsjRgR34+oWJYrjuvYI=;
 b=dxSMrtoklS+AFS+YLb6b7Cnve87On6Y9FoQC3oXezwyL+yo9ALaDf3BC1833YLBXcCVlxzFeM4E4IzeSZv1NntT5kyTjwgfbzQFULqd7ihAloGJCfOtDCwbyoyiUZJ/9Q0EwsqaB2aZN0X0+S8wfrmNSespzGuzjX6ssn5Y7q2cCTg51r+gVE9JWM50QThL+A5LND6B8W/rVWvorSjotzAzzg/agogvW0eVx9b5jiVY0zg0b3j5wJsZQfCVXzuzGBzmSlmb1YkFwJdM+s/RGluB3GVJFzE8otwckfmSPL8MVSPFwdhIChXOkSJrZbpDaAvZJE12Sk6OHqAaT9FfTWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LuKHDxmQEjIpUDJiv7bYD0FLOsjRgR34+oWJYrjuvYI=;
 b=KfvzY1P6LVc5HJI0PuY1stcdLE9whxQ4zYft378AlNn+FkWyR/je+whTTixghqwTvXPChBMaDXT8+MTT7J+4lTvR+vCIJKB/JzX70Zjc0BLbjVdMeCv10J2WZb46lohuTXC7i13bElA+M13n3DtKj7tpS1qNvlbEnMA/GMsDhwo=
Received: from BYAPR18MB2438.namprd18.prod.outlook.com (20.179.91.207) by
 BYAPR18MB2503.namprd18.prod.outlook.com (20.179.92.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.24; Mon, 16 Sep 2019 17:36:39 +0000
Received: from BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7]) by BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 17:36:39 +0000
From: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [EXT] Re: SCMI & Devfreq
Thread-Topic: [EXT] Re: SCMI & Devfreq
Thread-Index: AdVpmcIOOnWimjPqQIW4YU3Z3/EySQAg3ggAAIw5QkAACl8sgAAPZ0vw
Date: Mon, 16 Sep 2019 17:36:39 +0000
Message-ID: <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190916101505.GB6109@bogus>
In-Reply-To: <20190916101505.GB6109@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 791a014e-f541-4af4-6d23-08d73acc6e94
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR18MB2503; 
x-ms-traffictypediagnostic: BYAPR18MB2503:
x-microsoft-antispam-prvs: <BYAPR18MB2503A9964319404F6AEE1CCAAF8C0@BYAPR18MB2503.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(189003)(199004)(51914003)(13464003)(76116006)(476003)(11346002)(14454004)(66476007)(446003)(64756008)(66946007)(66446008)(66556008)(6246003)(6916009)(74316002)(305945005)(99286004)(55016002)(52536014)(229853002)(6116002)(3846002)(53936002)(256004)(186003)(102836004)(6506007)(53546011)(76176011)(7736002)(86362001)(25786009)(478600001)(26005)(4326008)(66066001)(5660300002)(71200400001)(71190400001)(486006)(9686003)(2906002)(6436002)(7696005)(8936002)(8676002)(316002)(81166006)(81156014)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2503;
 H:BYAPR18MB2438.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4S8Uw/k/laU47P/X7hKBN9GlGELaVdb7PeDkWLJt4bLTzpZ3YQtqg/DpF+yw807AaRXSEoSLeS4mgxIg9hGxEhc+UHCYPwhD9KD8gK5/TizulVuf0qa4taQpAhh2Nl9j/hiiVUCvQVPKZLGXBIOFuZIemBdcutgaxLYb2cfg8VXlrpiH+4RAKlm268npUhwO5aBmsvMB4bqyFfdUv+yX9f84Wpsnlty7BH6F8TvzyRgYPTaCTL/zppQIqoevsV98gkbt8oeoILwNYgxc2a1tv3HVQTO7slrdUTQBqLyLOHwJRlI2+KsvyF//oGRSWgWQtaEFUk/kANIZEUYhbbRQMKBp/E7hydS59Q5oL2/ydtn/8ESCSigiCPOi+TAhbo6yQk2GcEKhkpwMuTpMEG0JUWqR8xuLBBJpJ32wDyrYBFk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 791a014e-f541-4af4-6d23-08d73acc6e94
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 17:36:39.7485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: atA/3QHASEH0cK5Q3qEkMowL4j2kOz9mkU7eqmzOb8SlShIojqTZUTI32rK3uOG0eCBvL50ZCltlvc2yc8M7SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2503
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_07:2019-09-11,2019-09-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_103656_216769_BCA5E35E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ok, Sudeep. I would wait for your mail.

Regards
Sujeet
-----Original Message-----
From: Sudeep Holla <sudeep.holla@arm.com> 
Sent: Monday, September 16, 2019 3:15 AM
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org
Subject: Re: [EXT] Re: SCMI & Devfreq

On Mon, Sep 16, 2019 at 05:22:02AM +0000, Sujeet Kumar Baranwal wrote:
> Thanks Sudeep.
>
>>> Good, but just a quick question to check if this is ACPI or DT based 
>>> platform ?
>
> DT based.
>

Good.

>>> Yes it needs some work and I do have some prototype, but with no 
>>> users in the upstream, I haven't added it yet.
>>> What kind of devices are these ? There was some work around generic 
>>> devfreq driver that I had seen >>on the list and my plan was to do 
>>> something similar, I need to dig up details as it was while ago.
>
> These are devices needing dedicated clocks like dsp engines. There is 
> a need for a userspace dev governor controlling the frequency in 
> different situation.

Okay, thanks for the info.

> Could you please share your patches and any instructions if needed.
>

It needs some polishing before I post them externally, they are still hackish. I will do soonish.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
