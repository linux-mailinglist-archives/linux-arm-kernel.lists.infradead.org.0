Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D90568A16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCwVcW6IHKFaKl6w8pD0qIYK1UxzETzqqWtPWmYV35E=; b=GMgR0jhfgEjFin
	hMmg5jtSwYLI9YOpPktg5/oYwSA6whZe41G7E95pieaLYIvmOiCbEZJxfvH4lGJVaJNuOqkBZcux+
	w3w6RvjbFKYHIpOaAg3jBPJUL1aEpiAfrZe/Q24ba1zzhGXjhUs8p7fDMilC3BV57cmJ6pJ12u0ok
	mZf7/D4QObdR+xsjbF9ETz6M+pb7RFfTfCD5TfLci2emfdOV8bLF+gTYhYsTrI9kI7yNjWwoJGcrR
	ZcF71HbKB57jx+QeF3TpISfg76y7sVYv/URzGi/68yB2C6x7jdfb6ULOYsm/Ry258e2V0cI3Wg+Oy
	EV0nulgcl0UUcpdL09Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Xt-0000R8-U1; Mon, 15 Jul 2019 12:57:33 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lq-0003xM-12
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:09 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6FCe3Xr013068; Mon, 15 Jul 2019 05:44:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=WVJMoMVl7P6W83UYT8sT7K/iqAGxdYPNKEOn2BAb7jI=;
 b=FrUgPoyglssbDvlTIkkBhOcJdMn2DML3jCEebA4dyzi/GMUGENDxWBn5lv2sysU4nfHs
 +CmnZt6IMOiQ4p/bH843HR3mnFr7edMQRx+jzieOS3P/ql5lqyX3EgNr/oKVztWm/u5Z
 evfWOs6veb5Nc+Z4YfPFzukt03SmtjEWmbXWrjEKkeLsbWrsxIpGOXtgrhF4TS74gWFK
 i1SeHKOvdk3KabehtLDI7QLcW1SoiEYD7f2TAdiCpzou3ZtmMnZQEecaUVy0F/f1mgjA
 nZPGZElR0HgmhYIopMKGAbnqwWfKdSkSmCNbhobva3/9dfL3atsOi+nQNNkrJzY4iCyP HA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tqcnpqg2v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 15 Jul 2019 05:44:18 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 15 Jul
 2019 05:44:17 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.58) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 15 Jul 2019 05:44:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=id3GnSmY9MBsH2LO6rXX4av+MahmM85QJ1lhRd/31YHRXKxVuVmMVvmM8YT00tI24w6souBfwjrxz7P58miFbO6RxfuMwb7OBSuAfIbCyS3tn+Sp5LALdWTvs0GDM5OmiUYi5pza1T3Gm1y6Qd14YmztuYFivUuiQuK79Bobc7aQTWzacOWQNP/Rj8JfCinMqK2bBNH68/aG5SUAbl4vIino0M+7RqvW4cmjnfw9/yZ6Ddbb+tmP3ZZ18uJFoBFtwSlI3Ti4/nLYn3zpPn+vkFti+Fp41HKGsXMaiO8WSqtAfpfv0F9orevVR8Dpe044sCUBLthjNZ64NUua/g0TFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVJMoMVl7P6W83UYT8sT7K/iqAGxdYPNKEOn2BAb7jI=;
 b=IN2wmcCgeeCpVR7yU3m69M9FfXtqyqjehJK7q1jJhJzQJ4SNDy67TeXC9LtM/u8wgVC5nheR6US21Eg0Zlb56wN0Xdpa2avfbb+O4nmErmdbpv0h9dnylo8FFbwnW/0ZsTx35imsaC9E/jiLrzkizikXyKV4TEqWSa8VGkBr0kb0gbaU7kT0UnD8lj0DuD57J4sQ1HbGrwNR6mftAaDTvwBjfj6oSWsvZx4ko/MPTlatOQ8BZu90DuzPCskpEqF1HJ16TUBJmG51g/lPY0TjHzq6Om910DYz6YXhRVGVZp0B7vh2D9cewKRS+qi/oCTS9wnPEYtOIzEbF4YFDIyFnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVJMoMVl7P6W83UYT8sT7K/iqAGxdYPNKEOn2BAb7jI=;
 b=jIwuh0cM37eXecuyadqmmIzZZ4nCMrg1hOQBD9oPDA2RfpZjQbDS0drkwkOke5Vs9RRqOZCDvSOYTjoOYO4vdJz2r1vsUA4F8m4TZkpLcwZMBakelxTUHEWpcKArgTPlgUjf7jDzhUV232K5ozbL81QDlxbsXkz8r4MdTLlYoTU=
Received: from BL0PR18MB2339.namprd18.prod.outlook.com (52.132.30.139) by
 BL0PR18MB2177.namprd18.prod.outlook.com (52.132.29.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 12:44:12 +0000
Received: from BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::430:a80b:100e:f333]) by BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::430:a80b:100e:f333%3]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 12:44:12 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Thread-Topic: [PATCH v5] arm64: kernel: implement fast refcount checking
Thread-Index: AQHVNxoBu+l5E3cPPk63WcWp+uMugKbLp8KA
Date: Mon, 15 Jul 2019 12:44:11 +0000
Message-ID: <20190715124403.GA14408@hc>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
In-Reply-To: <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0601CA0046.eurprd06.prod.outlook.com
 (2603:10a6:203:68::32) To BL0PR18MB2339.namprd18.prod.outlook.com
 (2603:10b6:207:44::11)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [78.43.214.147]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb3b4b80-a18d-4d21-eed5-08d7092222f1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR18MB2177; 
x-ms-traffictypediagnostic: BL0PR18MB2177:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR18MB2177A2042DD3873C99A7BAA8D8CF0@BL0PR18MB2177.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(366004)(376002)(39850400004)(396003)(136003)(199004)(189003)(76176011)(478600001)(66066001)(14454004)(52116002)(2906002)(476003)(68736007)(186003)(25786009)(7736002)(446003)(11346002)(386003)(6506007)(102836004)(256004)(33656002)(8676002)(966005)(26005)(305945005)(6116002)(6436002)(8936002)(33716001)(3846002)(6246003)(4326008)(6486002)(229853002)(486006)(81166006)(81156014)(316002)(54906003)(4744005)(86362001)(71200400001)(71190400001)(66946007)(66476007)(66556008)(64756008)(66446008)(5660300002)(1076003)(99286004)(6916009)(6306002)(53936002)(9686003)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR18MB2177;
 H:BL0PR18MB2339.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dXZXbwB41adS3tgb7DCCtm49B/6/tmK8YPAXeihDcYKX7KwtT0xDEZRK++GMk8AMHQFjNtwszs6g3lJg1pGQTF7C6z4/+hWXA8QobsKnQLIqgPTo6g7GJ4odIU7me4ONyX8nSgXVldqU7VneqKeMNMd6vE6Ft2809PiKfJzlECTWsoajp4UA1ITVrdb4LQSqSNUJFda0gPaev0R7EQa2WUzFix4nY8le9bzONBIaeYeeM2oO4pfNuzUIbZphq0cikAVzi4jIBhsH3I/8Vb3mVcE0uFio8POCK+ABd12giQB8Vck6MFsfY10+wGPPPqFe4zF4ZFXTlDBqHGkohvgEaARNR6RkzcGLAHQfbiziXLva2uUBPEVL+xDcvYamt9CuDaPzAYlBcXCmPbTqCq+6qv85GmOE3Mxa1LAdxsk5L1g=
Content-ID: <794D9ACCAE81904A9C4761AB9EFA53A1@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3b4b80-a18d-4d21-eed5-08d7092222f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 12:44:12.0890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jglauber@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR18MB2177
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-15_03:2019-07-15,2019-07-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054506_555934_8C9A6972 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 01:21:18PM +0100, Will Deacon wrote:
> I'll post the patches after the merge window, but I've pushed them here in
> the meantime in case anybody gets a chance to take them for a spin:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=refcount/full

Performance of this series is on par to Ard's v5 on TX2.

--Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
