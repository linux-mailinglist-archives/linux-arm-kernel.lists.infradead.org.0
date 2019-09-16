Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90139B3459
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5s7GxSgFu+y5x4bQQk5El8+lA1Ci7LF1ggksxfZz2A=; b=htdpK9PXzPkkn4
	hKs2z2RJz3izjGY3pXDeGZOdPgu6AxbCV9YRMeZKSfuGN0S2RofNsdAUeNjodjr28Fw8LqtoY+IPB
	jioKjsopHYpr+DTl2xRNbLJ953QXdqaJoeNG/Pt9v2HsBHK91lu0ArzyB2QyGwG3LPGt2+dCFAidQ
	rWqz+HenhNEtX242ZmxupoSqkF30/HJTnB20VcZ7WwVTJE/y7HwB9BoMWM3MbtaU6zMdspqj0VUQu
	zdEbzty91kRO7As5GTwR5QuVjI1n4mjuKBEmaVExl6p25h6G1397qK5IVl33D+yiDlgk0tZ4brpuf
	m8X5k3fPcTRDGrb3wAeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jSx-0000cx-VE; Mon, 16 Sep 2019 05:22:24 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jSl-0000cU-Cf
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 05:22:13 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8G5JrqF012152; Sun, 15 Sep 2019 22:22:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=Xyu2jbk+xw+JDbYha5jmzY5MI5dfP2Kv+2sDRBx1qsg=;
 b=ZrgBVNvTs+s1IlHYLsx3hxK8aGcr/9eMbUwG72bDQ6qZbu4RS529K2qGeas+8CnjdVAT
 S56czGrc1a/NQ1WBZj5YaEj9TxGOYNPR9UJx9b/4KNSF9MbYkcPSa4S7msef8/EyxJiY
 q0nFVqqRVWfcvd3AeqW2vnwbvNip64I4EjGUqGsI2jMwZUXGlnxYrq5/A4t56ktQ9Vpp
 IgyXtOI4FNhtb3fw/VpuTKdIbmq/sxN070KjsjHdrmAokLb0TRMK475nvbcowIFTYDIe
 9jNHbaLWqaAFoXf6a4F2k6yi5yIlrr58FNYYHVbr11QigXiB8PnG0qWDiHX+SD+YB7mq 2Q== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2v0wjpdrax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sun, 15 Sep 2019 22:22:05 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Sun, 15 Sep
 2019 22:22:04 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.50) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Sun, 15 Sep 2019 22:22:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjxoazR3dMxLviRaWfc6+Ky5PE6SBnvpqUDqd0paVU5AnowNNGsz2pt3IeenBvb1SSbDY0SjXf6hQv1nc4Kts0Hjh55i9EAwOpFxkA9CbPCjnY+nDtkl0Eb1eY8eE3SwkglcGnJAAH1bYBJJEsS6J8vyIFoe42YX5HQzCwo0lM8qc9scyv5vQ0f0WzvUNNQEgy82Q5cJYnTRTbBSOCb/vnB++MmzPxie+qhr4nNVVpIv7RSzyW+fFrPKmEYkGgZ1hJ3CL6EIQO7VbknpkDx3eF+fwwGGQQx3rw91TcMBnC9CgM5U9+DUtBa/KmFGXeG9TkOq6NyWZfKjnz7l4X+wPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xyu2jbk+xw+JDbYha5jmzY5MI5dfP2Kv+2sDRBx1qsg=;
 b=WY+0YwEFSNOcokV4JBSbnzuwzBlEctNZHaBC3EvY7x4nfcfBnZk4zm53ftCFSPe6ikNiqNaJ6r5O1yvQ3oJk8ea234g1gCpHJWZZ5ErWLmZUOIL+wIBgfNEp3FoMgja4GpWAG+BzpZqxPtsCpAu7N7zIrIt4DpGjsGCT/tJIcDO3kRUzUWwN0aCfsgvx7zin+FRUpkAKWxSrNNY2S96TRnUBFgC6tTX49VFi2WXoUK9mwMgu1mCARjMR/4xgvR0mmZJLJgKD3O8O1JSSvLid4eOD9kKZfid+BGNIOZ3wFCmL5dqs3UMBWmCBL2NBJVDcVsY22LuulOkyNWlsE2kT0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xyu2jbk+xw+JDbYha5jmzY5MI5dfP2Kv+2sDRBx1qsg=;
 b=Y2q0vBC0ZWiIpr4eUilgW2r6xRaaEnX7jv4e6RNn+MF9tWhpXXVqE8NHco9gyFXMSJ8lqKESP2Bgvb3BQxSFLyqjyLTl3Pf5hOdy7Xh0zvODjOnkVnUy5JCactbaZSAt58EsNFRMaGTLDJLDf4DwMGfaPYnaRUvCfroD6PhLg9s=
Received: from BYAPR18MB2438.namprd18.prod.outlook.com (20.179.91.207) by
 BYAPR18MB2424.namprd18.prod.outlook.com (20.179.91.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 05:22:03 +0000
Received: from BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7]) by BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 05:22:03 +0000
From: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [EXT] Re: SCMI & Devfreq
Thread-Topic: [EXT] Re: SCMI & Devfreq
Thread-Index: AdVpmcIOOnWimjPqQIW4YU3Z3/EySQAg3ggAAIw5QkA=
Date: Mon, 16 Sep 2019 05:22:02 +0000
Message-ID: <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
In-Reply-To: <20190913102304.GC2559@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [73.223.119.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e208a145-a993-48cb-9fdf-08d73a65cecb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR18MB2424; 
x-ms-traffictypediagnostic: BYAPR18MB2424:
x-microsoft-antispam-prvs: <BYAPR18MB242440E7D5CBB0E0F0B6F608AF8C0@BYAPR18MB2424.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(346002)(136003)(39850400004)(189003)(199004)(13464003)(14454004)(8936002)(305945005)(256004)(86362001)(476003)(74316002)(7736002)(486006)(446003)(11346002)(5660300002)(6116002)(3846002)(2906002)(99286004)(102836004)(186003)(71200400001)(71190400001)(6506007)(53546011)(26005)(66066001)(7696005)(76176011)(52536014)(25786009)(6246003)(6916009)(316002)(33656002)(6436002)(55016002)(53936002)(229853002)(9686003)(76116006)(66446008)(66946007)(8676002)(64756008)(66556008)(4326008)(81166006)(81156014)(66476007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2424;
 H:BYAPR18MB2438.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kBr8qw8FjcfPgs6kSMiC/L9rMBeMw3FBGkPNpJhfsRXbBfk2T3iIRpeStUt/vvM+StTJxolArNegVeVZ2k4vbl/qOsc4vY2RIIlGOqQ8o8h2XZGxvFRP0TcVdD5y+yE4gsVO/9mo37frxeNJFmuuZPYRY6X9D1EPE7FkY4XCceFFFkjp17/biSO1u5+Zzblozk9lOqq0m5WJf9rSjiLI58S7LtqWg80sIHcUziJbk/yCkotMKY/Rbp0/8PF9LP2WHToqZOr81Etl7dCva7vh6OhABeSnh2oIyQDaBh7kQw2jZ7JGn4+SDi1VCyJinUWImtHP+UCkGusiAJTW/LatET4Rut8DurC6MxgK5A+WYp8kEwWSvT3TeUKXT703O/tCPYOQdkvWwMQvy02hvA0qyR+z+rBtsXGR/CzcaqAstic=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e208a145-a993-48cb-9fdf-08d73a65cecb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 05:22:03.0064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /uypVaY4ytj1AUbhSwNKiPKvnFlu37h95t0kpYtBS4RslOutQGgftPfsr6sdqEYas6xRDlksKtgXDqQzfdkw/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2424
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_03:2019-09-11,2019-09-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_222211_506533_47D146D3 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
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

Thanks Sudeep.

>> Good, but just a quick question to check if this is ACPI or DT based platform ?
DT based.


>> Yes it needs some work and I do have some prototype, but with no users in the upstream, I haven't added it yet.
>>What kind of devices are these ? There was some work around generic devfreq driver that I had seen >>on the list and my plan was to do something similar, I need to dig up details as it was while ago.


These are devices needing dedicated clocks like dsp engines. There is a need for a userspace dev governor controlling the frequency in different situation. 
Could you please share your patches and any instructions if needed.

Regards
Sujeet
-----Original Message-----
From: Sudeep Holla <sudeep.holla@arm.com> 
Sent: Friday, September 13, 2019 3:23 AM
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org; Sudeep Holla <sudeep.holla@arm.com>
Subject: [EXT] Re: SCMI & Devfreq

External Email

----------------------------------------------------------------------
On Thu, Sep 12, 2019 at 06:55:36PM +0000, Sujeet Kumar Baranwal wrote:
> Hi,
>
> I am a recent adopter of SCMI protocol on marvell processors and has 
> been able to use cpufreq governor using scmi-cpufreq frame work to 
> change CPU frequency.
>

Good, but just a quick question to check if this is ACPI or DT based platform ? That matter a lot to answer you query.

> While SCMI_PERFORMANCE_PROTOCL allows multiple "domains" to be 
> created, each domain representing one clock with several OPPs, it works well.

OK

> For sysfs command like "cat > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor".

I don't understand the context of above statement.

> I am trying to find how SCMI could help in similar facilities when it 
> comes to devfreq for device specific OPP variation.

Yes it needs some work and I do have some prototype, but with no users in the upstream, I haven't added it yet.

> If someone did similar work done or doing, please enlighten me too.
>

What kind of devices are these ? There was some work around generic devfreq driver that I had seen on the list and my plan was to do something similar, I need to dig up details as it was while ago.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
