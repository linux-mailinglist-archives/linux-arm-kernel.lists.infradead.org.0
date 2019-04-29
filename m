Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A91EE567
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lcjxgI5JAx5XxS+3R5M4sr6PVN8gvbdWV+6tVap2mDk=; b=dkld1qRWZ0nlbg
	LbpwFQzvRpP9J3y4IQMbi/Umcbdnq3er9IoQuEu5mVcJOhit/pS24WiCCa2t3iQ81oOTmXzJ8Qwkq
	sGOInEqL4YAvJXd/KbLvP8HnTa8Uj2g0BuL1rHDbNE2WQfxMNv7rGnABEdInbZHlkWJbUZaxE2Eo9
	7tOP2nb8n7Nf4g5uzEyv35lJMSBc+bOFp/Q40pD6IfK7hXtJlgoHKv2h8oeYt6GmysZWExZvAFO9T
	fmBCj5kQzEz8dNjtDFus6XhH4Hsbh+6cm70qnY06RPSStO0OSyPGlrtUwfQt0gkmkv0CV7JNbPi8o
	q6V7KM/xFQyHzgXvBTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7dt-0001Ed-4c; Mon, 29 Apr 2019 14:52:29 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7dk-0001EA-Jq
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:52:22 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3TEjDhh026164; Mon, 29 Apr 2019 07:52:13 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=zKYuXRtWmrPco44vUU7M6cwp7qYksmxALXshQyCYu4A=;
 b=dLckOGnXNRp1mVGHSOV8irXajC21SW0NtFunFk/MAbdCiPyFu6DaCheTQoFZuVItaLnK
 I03ytJDTOZOl6CTvWbMiEpCUr3q5D9m4GsjXtAyO/AU+lOkqHssuUcZBBTzk4BRTDE8C
 nDXeTbSm3fHR1W2hBXqWT0WFKCfhWCTK2b4wknVZUdbWtQwvIwYTRMvc6AwBLreAbdf3
 paezUkooPPTv7O94IcEd/ibuUPSijl6dp4C7seHevbh6haPL41jyiZ9rLOlVzIyvoBHM
 WF58E95eA4HuI0hYu6L/qf5DDSese2AjxUIWsDtoGU7j78R0lq+JKBMQKFMPVTXPKEO6 xw== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2s61eb8eer-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 29 Apr 2019 07:52:13 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 29 Apr
 2019 07:52:12 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (104.47.50.52) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 29 Apr 2019 07:52:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKYuXRtWmrPco44vUU7M6cwp7qYksmxALXshQyCYu4A=;
 b=GTTXp/GIgdrtr+UveNdNFGo2mpnALwwl0pIdHHSgu1evIFsSrLnERZrUYr+/LdzB9cJj6OZUx+vmM8QoV7K8uonJdpxkan7cFoNLeoCQDcHH8yc9EhN7jCZSFZyHwgwYRgjBfz9QM/zmbpNqnRE+2ZVkdxGZ0rrNfrGd7dmk5s4=
Received: from DM5PR18MB1578.namprd18.prod.outlook.com (10.175.224.136) by
 DM5PR18MB2311.namprd18.prod.outlook.com (52.132.208.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.18; Mon, 29 Apr 2019 14:52:11 +0000
Received: from DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::28da:f8bb:4901:b0aa]) by DM5PR18MB1578.namprd18.prod.outlook.com
 ([fe80::28da:f8bb:4901:b0aa%10]) with mapi id 15.20.1835.018; Mon, 29 Apr
 2019 14:52:11 +0000
From: Jan Glauber <jglauber@marvell.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>
Subject: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHU/psgIPX1WiXk3kG5688bmgHV9A==
Date: Mon, 29 Apr 2019 14:52:11 +0000
Message-ID: <20190429145159.GA29076@hc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0153.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::31) To DM5PR18MB1578.namprd18.prod.outlook.com
 (2603:10b6:3:14d::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [46.223.67.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e1e54d5-1717-4bf1-9c83-08d6ccb2428f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR18MB2311; 
x-ms-traffictypediagnostic: DM5PR18MB2311:
x-microsoft-antispam-prvs: <DM5PR18MB2311FDFCB23C12E5622BB7D3D8390@DM5PR18MB2311.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(366004)(39860400002)(396003)(136003)(376002)(346002)(189003)(199004)(305945005)(97736004)(7736002)(73956011)(102836004)(6512007)(9686003)(6506007)(386003)(256004)(14444005)(8676002)(26005)(81156014)(81166006)(2501003)(8936002)(33716001)(486006)(476003)(6486002)(66066001)(186003)(6436002)(33656002)(71200400001)(71190400001)(107886003)(66476007)(66556008)(68736007)(66946007)(64756008)(66446008)(4326008)(25786009)(54906003)(316002)(110136005)(52116002)(99286004)(14454004)(5660300002)(2906002)(3846002)(6116002)(478600001)(1076003)(86362001)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB2311;
 H:DM5PR18MB1578.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7jZ2YdGBMhjQ0u0cCoJMeAKLiNPYcxnFcXE+mTC1Ft+7j/i5PXNKemabX1FmWmEqTd1A63YDQHw2D2SoyPhxjxnVfgebVmIw1MJYdCh41k+5WXnzR7siSRWDnlrWmbCCjig/tc0J0KTcUuMQNbz0+YWa0CHu8Za1D6fSACA5HDPH3VHjU52DGIi+h6y6bhwplqPZodyogNYazhKltE1reRBwqrV/HnxQ2Il8Nwqnths9aEBJA1dTShcc/4Yu7cc3i9oaZH2RQLeBwrk1wOltfw9BTGyorEhOodCSz6GxTvOXqc3MzS86XkaSCuiU0heVdP7JOdrw74VdfSvBFpRofqkQ35tGYWvg1HN++S6+jVH1NMpkJSy5I25ai/7HRjUENBthsdH+4nGMRAf56Y3lo01avTPR33Az3Pt9EQ6foqc=
Content-ID: <E532FD5EC62C24439F37BEADDF53CAA4@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1e54d5-1717-4bf1-9c83-08d6ccb2428f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 14:52:11.6610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB2311
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_075220_872000_D5718A78 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin & Will,

I've been looking into performance issues that were reported for several
test-cases, for instance an nginx benchmark.

It turned out the issue we have on ThunderX2 is the file open-close sequence
with small read sizes. If the used files are opened read-only the
lockref code (enabled by ARCH_USE_CMPXCHG_LOCKREF) is used.

The lockref CMPXCHG_LOOP uses an unbound (as long as the associated
spinlock isn't taken) while loop to change the lock count. This behaves
badly under heavy contention (~25x retries for one cmpxchg to succeed
with 28 threads operating on the same file). In case of a NUMA system
it also behaves badly as the access from the other socket is much slower.

The fact that on ThunderX2 cpu_relax() turns only into one NOP
instruction doesn't help either. On Intel pause seems to block the thread
much longer, avoiding the heavy contention thereby.

With the queued spinlocks implementation I can see a major improvement
when I disable lockref. A trivial open-close test-case improves by
factor 2 while system time is decreasing also 2x. Looking at kernel compile
and dbench numbers didn't show any regression with lockref disabled.

Can we simply disable lockref? Is anyone else seeing this issue? Is there
an arm64 platform that actually implements yield?

Thanks,
Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
