Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177C9102BF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybYNYizV+IE4GiJqUnfPXX5OVw24oE7PKqmSzLw04I4=; b=gcd7z4bJwTfJy1
	Fl5p60BFe0ayDt6xhf6JCKrApl7SSPAHWD408+NFRBbqbabSrMoMs+OrxLDi9VZGx6BQ36PeRSytf
	SyiTWNHtuYsy0xNwzPpsOiKzxrWPPD5OVM7GPHLZtn6TcFFjSevWP8ihTAaEYW7zQqPwxkBzcj+cP
	lIo4brIRomjYnYQ9/8dUSF6Ndv8eJ7+QWa5u5qJn3Tga5axupNx+93hvLjzcWXpWN4VyP+b+UNzUZ
	UIYep8V/NA1vSH/7W1hgR0wzkgCRm3fWhKdhnx9qV7YTlg0Ar7m6wdHAdLy3vt9PIR1+419UgynTD
	1DbXCPhxVFjQJJGpa8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8aH-00052F-6P; Tue, 19 Nov 2019 18:50:41 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8a7-00051v-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 18:50:32 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJIj8f6032282; Tue, 19 Nov 2019 10:50:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=t2utk7jRgMdzMa6B9QIWMPnjxilkHQ1sGtdesDqPklk=;
 b=RAutYT38OnhzdD4P2LtX/pV/y0MociDuHg7OCVwqB+qdJ3PQR5QxhPXtCdw6vyO2IWr1
 ZqME8MYnxpPzoHA6s8g4LTFdX7H5xt2+M/yEzHN7WKRd+Sxul2WPLiYA1iM1JQ3Y+2nG
 ydNn/E8C3Lyr2x50xFf7UHKVW0/Mzh4ef/WFHxFs5PiFglf70Q6tEbS9QqkEv6qpXLiB
 N26OCXCR//LyBY+pgOUFBciuPzjbroVdZfb73wTc0iaW5I7SccAldL87CE4BNVBNA1wj
 N7J5sfaYRiuFWRLa8zbT/wFfp2oogTTcDkOFRxWapI4xlKA4XPEijWUxVx/JcMjaPzw2 xg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2wc82vkdc3-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 10:50:24 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 10:50:23 -0800
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.59) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 10:50:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7Zm1AKudi2r+FiIZMBLMR46kNzZ1xGGpXmWxOX48Gsui/fTOWl76qdTBg4ulYYylbxls2ALLZwGANsKAHPgjw/nkQoJaC9llO4TlqOLXj4M64Kuc/1ePoG1VxyYrcTMnHfpxayTRCDcRFPl3NBIEinpX/8ZjSLIbgQgKTtVtkeWyOOn5wCKBsCRdUOhRdrsWsZcqnr/GTQmJ6x8hIW0cZMld/JqyZsStsWBMSk4jsVfIw0cne8VKnbQEHf1Ha5MjnJpGumVI42BiWhXvsZPPRXCYsA5es478cAntjWNQhDw3lKj0RhsS/EISXb/R7mpIe2iuHtWgxg9iagQuQ1nCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t2utk7jRgMdzMa6B9QIWMPnjxilkHQ1sGtdesDqPklk=;
 b=LBKKrNBueOnrqVK2nhv7yLinw18K4XPzo0ITByj+lchLYgjqQhZycscls2JhFMIJwbbldTn15MJiOrYU71PAgAahq1xW6cKxlc+/pDvL0o253vlZI3QL8dQbEXimu6MeKc/Ous6B60AHYR+3YONfJbn/QT+PtM0214iV//GGVgVglFmPEpGWJw4gSsxklTClMZvfAow3x+C0gSZ8j4MiCItxfOtIG+oPizVmKIciRh7V3vcrE4+/5/kdq6QSAxhduuFDW2pr1Pqcb2Y1iJwFn5WLAerVwJpJJRngdZc8AtqmMHyjTnLr3lC8V/FB1X7EzU/XS8Nhxvw4HOAyIj6NJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t2utk7jRgMdzMa6B9QIWMPnjxilkHQ1sGtdesDqPklk=;
 b=GJtog1JAKvCW41U4COUr/q7I4y+F/Ijq0aGPX0sDjW28GhOcIeHYJ06fjAkp/hRR9o9B1ZZufHo71Z2dxkMNDwcL43NQB6b19G5N8I5qDN056LYUkFg2g03/vrqOYNJzeMC/Pkc2FV1eR9gX9IvHvJ7XPb4pwdiJAFqdSbn0sDs=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2368.namprd18.prod.outlook.com (20.179.81.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Tue, 19 Nov 2019 18:50:21 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 18:50:21 +0000
From: Robert Richter <rrichter@marvell.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Topic: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Index: AQHVnwoyOUu8jC+xRUykoOW1j9ALcw==
Date: Tue, 19 Nov 2019 18:50:21 +0000
Message-ID: <20191119185012.2fekd6f5gbpflpqe@rric.localdomain>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-4-rrichter@marvell.com>
 <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
In-Reply-To: <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0001.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::11)
 To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99a5eb26-6d7e-46f7-4a16-08d76d21548f
x-ms-traffictypediagnostic: MN2PR18MB2368:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB236894D1C244CE225750D994D94C0@MN2PR18MB2368.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(6246003)(6306002)(6512007)(66066001)(9686003)(52116002)(76176011)(8676002)(6916009)(81156014)(478600001)(25786009)(3846002)(6116002)(14454004)(316002)(4326008)(99286004)(6486002)(1076003)(256004)(6436002)(66446008)(7736002)(86362001)(64756008)(5660300002)(102836004)(66556008)(66476007)(53546011)(54906003)(6506007)(386003)(186003)(26005)(229853002)(2906002)(476003)(446003)(11346002)(81166006)(8936002)(4001150100001)(71200400001)(71190400001)(305945005)(486006)(66946007)(558084003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2368;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dtCO2ZBnCIQzqi5pTiFeHxe6/S4MOCQx3d1GWy0yLlPp+fpw08smGo7HVAU2sqRE7eL6adaRHCKd51/O2i2R2rxaD8Q+CHmVea+7vzUlksSbUYPc3U1Xty2SEtnMx10iJONv7I9T1rZnZ7vEr1sSdm1sCz1HSi1WoqQgom4+bTF0ErIkuRCMFlhWvy1AHp8yhPBIAd+jKCbZ5QFbnaQ16FeLa7dH23N7lmVuJ4oqRYwV38h4rUEmFQd2LXGVn2UMOMeDUnnrl5Rkuu2VQOdCziZBoReqgZ2Q+XdhKR1oc+VZpNvOqEplgpCFTS1Dgb2UkbKJRUzEk8lFa5DWhqx9hI70gMfApwdCY+HGDFa08Il5MduVZazhWzf0dC868mVDJAoGiGtZCViSzBxcO+sc9bedpdiDkiWEURLBZ7nROcpqbI2YlaCRA12Iw8C4sAtxsDeNcBP0kz+ZRCrdeaLIP8BO5LCGiHen110JpGzQ870=
Content-ID: <F4CF08D96010DA46B0C46926B28EBD96@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a5eb26-6d7e-46f7-4a16-08d76d21548f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 18:50:21.7948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96hr3Gnsz9PGVpIH+0J8pEsLHh4BjJI/g3aGkWdA9/iYKBado+Pb6sDfcrVAEjU22cRbZZ/GPHzpdp12f2knxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2368
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_06:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_105031_541266_F01351ED 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, arm soc <arm@kernel.org>, George
 Cherian <gcherian@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.11.19 09:14:36, Joe Perches wrote:
> On Tue, 2019-11-19 at 16:56 +0000, Robert Richter wrote:
> >  W:	http://www.cavium.com
> 
> Might want to change these W: links too

Yeah, good catch, was searching only for @cavium, which did not work
quite well here. Fixed that.

Will send v2.

Thanks,

-Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
