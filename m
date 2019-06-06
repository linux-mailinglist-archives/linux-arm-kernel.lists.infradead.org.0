Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057BE371AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+yIyKmJfmzRg7qTipze0NS3AZobTVV4LQ/S2BthurU=; b=asRvtl38+cij7k
	cj3rWwDUsiCf3VwZgPMHNgKIYehA3S+bN8XhsazrFoExdKupB+O2hx4b0mww9djkZKwRaKSlXQlT2
	hAQOCnEIUcfuntG+77R48hfVdQIlUcBCiTZJnzPQIqtlrRmhhzwYX/7O3VK5nB9Lxsoht4ROpd8zm
	v19rdbM9d1dZ78jBGVHr7ijBJsQZDma/okV1ky/t50ypDLgZeDtJ2jjeZBY8U6/5Czk/8Cu5Y32hC
	AfxXFbbLb779z3O5/zt2odnLA+rJ11BJpmnJxceyEh+vzt554KL9ij6FUYvvQxMy26Wrpe7iY6pD0
	9dauij5wVdNSzOCX97MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpdg-0008Bi-Ne; Thu, 06 Jun 2019 10:28:56 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpdZ-0008BI-KR
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 10:28:51 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56AS0Qp020856; Thu, 6 Jun 2019 03:28:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=PJW5FCm4KNKc7kzRgtW87TanNY+ZKLlMA74V1Kk66qQ=;
 b=aUbCbCIrnPKvvB0QLPSshzwLGOHTGbEFNBCuyQkeRftsdpuBroHPAjC+OlfQvFRvAw4i
 RKQxwNR3De14bvatYaNsTKLnW7iD9odz/G6Hn+MPMFX/+TNIueFK2FSoQ3Qv/1TLpks9
 /REfa4IpMw4/nJqkoFVGKkLTuB+ojDMm/rNtT0yNYEBdik3X7CuecWUn3dEamNA14j5t
 Nju/7Er8nZgQNgyINileK9rp/Z2s0aGTTnaEnU+m+XnGJtKQulVDs4sGUSMkLc6fv652
 M80WO/KcOpipkV+7e8FI61/+2g6vvkY8rPolrBLVfvyutuqs6BlQLcmjYUM1yOzApMU5 6A== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2sxthehbv8-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 06 Jun 2019 03:28:44 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 6 Jun
 2019 03:28:15 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.53) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 6 Jun 2019 03:28:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJW5FCm4KNKc7kzRgtW87TanNY+ZKLlMA74V1Kk66qQ=;
 b=tVLHzGayHBP2gDRB0Yxi+QRAk5+qBJ+dJ4U+nIc7NiMImIblpLi/X64rFBw0OpsI+oxmyn7ZwrR3Ana42EZAfIV3BFcDTa3Kpracxf2dogk+CEql+6Xsb433OHdFUlDL33DFk1uUs9vDx0SaVEqn4vjAY4eN2plSYAn+PxHefGM=
Received: from DM5PR18MB1578.namprd18.prod.outlook.com (10.175.224.136) by
 DM5PR18MB1306.namprd18.prod.outlook.com (10.173.214.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.21; Thu, 6 Jun 2019 10:28:12 +0000
Received: from DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::e42c:8f1f:ac4d:c16e]) by DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::e42c:8f1f:ac4d:c16e%6]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 10:28:12 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] lockref: Limit number of cmpxchg loop retries
Thread-Topic: [PATCH] lockref: Limit number of cmpxchg loop retries
Thread-Index: AQHVHFKKV4nY33iz10+fZHwc2kb4SA==
Date: Thu, 6 Jun 2019 10:28:12 +0000
Message-ID: <20190606102803.GA15499@hc>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190605134849.28108-1-jglauber@marvell.com>
 <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
 <20190606080317.GA10606@hc> <20190606094154.GB6795@fuggles.cambridge.arm.com>
In-Reply-To: <20190606094154.GB6795@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P193CA0007.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::20) To DM5PR18MB1578.namprd18.prod.outlook.com
 (2603:10b6:3:14d::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [78.43.112.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b43f5648-0a2c-44fe-420a-08d6ea69ad38
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1306; 
x-ms-traffictypediagnostic: DM5PR18MB1306:
x-microsoft-antispam-prvs: <DM5PR18MB1306536481A8409834F2E397D8170@DM5PR18MB1306.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(39860400002)(136003)(346002)(366004)(396003)(189003)(199004)(64756008)(8936002)(6486002)(66476007)(478600001)(73956011)(66446008)(107886003)(446003)(1076003)(11346002)(186003)(99286004)(486006)(386003)(76176011)(33716001)(81156014)(316002)(3846002)(52116002)(4326008)(6116002)(66066001)(6506007)(102836004)(66556008)(71200400001)(71190400001)(6246003)(14454004)(26005)(476003)(33656002)(305945005)(25786009)(53936002)(66946007)(53546011)(6512007)(14444005)(6916009)(9686003)(8676002)(81166006)(86362001)(7736002)(54906003)(68736007)(2906002)(5660300002)(229853002)(6436002)(256004)(40753002)(133343001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1306;
 H:DM5PR18MB1578.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6oJYmYwikHxdJVTdQCqMkIX3IAX0KEASVliUaaqaXWFPjx1SYuaB6XmvoSrML0nApj9jvQP/EXi7DlLxAqrwrUj765nQ7IrN0Jl6Mk3zIVj8o7PigYERPYFEsK+DsSjXRBMtGUIy+sWQrejtvS1J4qLANoTJ35QyJkSVRWMI8egV5Q9ELMUxiTCZPVocz9T9ZfjqUtB19bno8VrysLm7gz9P+W4e8+TEQrje+VV6Tko2yVgbCzjLVhWEJ5oqZ6uY1mfmvw8dMKVDWff3nx9Wn+VydHqAeRxBLUFH54wXxVb0s6eFpGDmhxLhfHlUN8Ab9DzstAbzhzhUC1n5ozjzvbX6DTt8Fo8o99xsqtEJxKjVphev9AgQxY8jNZ0Ths2JrjgmSKrbfDej6WuHcwTqbuBywFk9YSIvMgtAYCHbpe8=
Content-ID: <2CD44727C3FE914C978967DCAAB861D3@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b43f5648-0a2c-44fe-420a-08d6ea69ad38
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 10:28:12.3899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jglauber@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1306
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_032849_856374_4754D9EF 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>, Jayachandran
 Chandrasekharan Nair <jnair@marvell.com>, Jan Glauber <jglauber@cavium.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:41:54AM +0100, Will Deacon wrote:
> On Thu, Jun 06, 2019 at 08:03:27AM +0000, Jan Glauber wrote:
> > On Wed, Jun 05, 2019 at 01:16:46PM -0700, Linus Torvalds wrote:
> > > On Wed, Jun 5, 2019 at 6:49 AM Jan Glauber <jglauber@cavium.com> wrote:
> > > >
> > > > Add an upper bound to the loop to force the fallback to spinlocks
> > > > after some time. A retry value of 100 should not impact any hardware
> > > > that does not have this issue.
> > > >
> > > > With the retry limit the performance of an open-close testcase
> > > > improved between 60-70% on ThunderX2.
> > > 
> > > Btw, did you do any kind of performance analysis across different
> > > retry limit values?
> > 
> > I tried 15/50/100/200/500, results were largely identical up to 100.
> > For SMT=4 a higher retry value might be better, but unless we can add a
> > sysctl value 100 looked like a good compromise to me.
> 
> Perhaps I'm just getting confused pre-morning-coffee, but I thought the
> original complaint (and the reason for this patch even existing) was that
> when many CPUs were hammering the lockref then performance tanked? In which
> case, increasing the threshold as the number of CPUs increases seems
> counter-intuitive to me because it suggests that the larger the system,
> the harder we should try to make the cmpxchg work.

For SMT=4 the top hit I see is queued_spin_lock_slowpath(). Maybe this is more
costly with more threads, so trying harder to use lockref-cmpxchg makes
the microbenchmark faster in that case?

--Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
