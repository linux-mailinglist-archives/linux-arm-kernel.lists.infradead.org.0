Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966DCB6F7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 00:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsRIj5IS6QTFG0YZw0et4+KkbQSwgJtLC6Y0jK6u2xY=; b=KTnwd8o0adPb83
	PiYUjv26HJ9R+bXVWIE5XmMrPvdfjJmWNxbc7TXGpGoZ5UnxSxWMYjuRz62+lHHSioH3360vSKsBR
	l3j+33aQhzB6gWeKH226MmdDZW/1lQSSrSTmoICWFgpndg0URUUS6yAKeZCUVaGX9scsyYvEfMUcQ
	5SC1aSTUJ0MKF6BAwhseO9xlAtw6AyVHcbiSmic7uQ2ZOZRSR5fCJqpA6xm9AZByP9GV2TNx9Swdo
	I6vDQ2LZb27TYTlUGzmShtwR075z3OfY391oH9xpt0ThDUlN3DtvdDSRLUB03J8hFg40TRhGxKoAV
	zlnwKY6RcZti0pUfjbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAipX-0008EX-Ce; Wed, 18 Sep 2019 22:53:48 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAip2-0008E7-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 22:53:18 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8IMoj1s016581; Wed, 18 Sep 2019 15:53:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=N1SJhmbcVoCqCIRJVSR+iFjAyvg86bui8GQoq9ycEvc=;
 b=YHtr+HBY/ybp3FkK8xI+XLp7uiXubDSScGx4Hm8eOaIIHIcSKuJGVmSd/syafmpd32Ys
 hltttMSJ1uCkrdT93B29wZMnFHs2pJcSnoQ1T5uGuYq1Bs6T06qpCTJqCyUjnn3GY37h
 GLm3y/nPGsd8TsMxV9vt2dd0JbDtolWKkUqS0LbQdOyNAwsRBxkl1cpkPP3c8gFNIsvQ
 m7KLHyZz3c2g7HKLtPQZDksiMDKSnwF/DVKWNh0Ul1pBUbK89e+vvbPYUvioPQyc0Cp3
 e2qb3a+DJUIYZU9HmeW0s/aFN6NhI9ucZzDBUYgCzW5RHK4vnAItDkPwWnHTAFBSHbYN AQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2v3vcfg8ps-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 18 Sep 2019 15:53:11 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 18 Sep
 2019 15:53:09 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.54) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 18 Sep 2019 15:53:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIIHLqTf1P1LKTUldD650B5Gy7zMTpbKozXQlx3z7Oqz2iBFKkM+ezTSoT/pFc7c8BXLe22QbwphBhXEoWWoFftyUZ+H7BjwSZvBnZYGvfG3h57wMULtC4/O97/FRR48jW5HJNt6oWSJSiIzZ8BjaKnOmddf8sPZJLLIPgLAyqmhPZucKU4ibhoGj4T9q33JjTLCg+ZuIZlmvLhzyZ12QplSQxKonLPA6tixEvZUA4blbkbFYlH0INO8CXsQxSAyTaOU6JNilb5f72rkVkCPawD3AoZk7gPiYYk6Nj/v0RG8Utcq8R85cdQBC8SAPKFOga/tvvKMjNWzWAaB/VLiyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N1SJhmbcVoCqCIRJVSR+iFjAyvg86bui8GQoq9ycEvc=;
 b=HZOsF8+uWRU5XfheehHW4ZG8U7Lto0LDM8PqHcp/guhV1rCapxte8uWa+sFyHO0q5tGX2KKPATMrgU9QWZ54FLMjI9TgSGt0xbaNWDGyVNBoJopc9PixAivEC7eNDJcxSX4DVxGOxtSjod+tG5gJAkWUcOhHU5GYzU4pKZjuicaucyGVFShQhv2M4LszIbepRJrarWBpACsQ4s1GhEnoAKE3X+qAx1fNjLFZGbA9TAvVM0nNuVhXov6hFTt6q0JnqFYm05jzs/4i/xfdD5EhOCARpDvKt1lqUfFwIRfm+17359SuH7ROQ9vFFc5JETrHYmHFplImAVm7w9bxUcxYVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N1SJhmbcVoCqCIRJVSR+iFjAyvg86bui8GQoq9ycEvc=;
 b=A6lyJZuXh2FiX88flH9eRL3zy9aqwrCy1ABP+gjcGf+6jVMoLxhMFbeWSMxuI0QpahwjEXulYo6qhJKlxLc4N7FOnOwqFLLXp2kvRlUZxa5cz0ojcGpechUlimkCicQ7/u7mUHmy6lvVT1A3NzAjrixgod3yvj079BTFI2yEZu4=
Received: from BYAPR18MB2438.namprd18.prod.outlook.com (20.179.91.207) by
 BYAPR18MB2967.namprd18.prod.outlook.com (20.179.56.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 18 Sep 2019 22:53:07 +0000
Received: from BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7]) by BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::edaf:9c09:bc17:6ee7%3]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 22:53:07 +0000
From: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [EXT] Re: SCMI & Devfreq
Thread-Topic: [EXT] Re: SCMI & Devfreq
Thread-Index: AdVpmcIOOnWimjPqQIW4YU3Z3/EySQAg3ggAAIw5QkAACl8sgAAPZ0vwAG91siA=
Date: Wed, 18 Sep 2019 22:53:07 +0000
Message-ID: <BYAPR18MB2438047B622951C6EFE92FABAF8E0@BYAPR18MB2438.namprd18.prod.outlook.com>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190916101505.GB6109@bogus>
 <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
In-Reply-To: <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84055531-5dce-4d4f-5ada-08d73c8af90d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR18MB2967; 
x-ms-traffictypediagnostic: BYAPR18MB2967:
x-microsoft-antispam-prvs: <BYAPR18MB296773CD25267484680E2076AF8E0@BYAPR18MB2967.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(366004)(376002)(13464003)(51914003)(199004)(189003)(186003)(102836004)(6506007)(86362001)(11346002)(476003)(446003)(66446008)(64756008)(66556008)(66476007)(33656002)(76116006)(66946007)(8936002)(8676002)(81166006)(81156014)(5660300002)(3846002)(52536014)(486006)(316002)(53546011)(2906002)(99286004)(76176011)(7696005)(6116002)(6436002)(25786009)(7736002)(256004)(478600001)(66066001)(26005)(14454004)(9686003)(74316002)(229853002)(4326008)(6916009)(55016002)(71200400001)(71190400001)(6246003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2967;
 H:BYAPR18MB2438.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GeVlm5LvDR0kgS2u3kdRaBiGNcr2k4g6T+NHwsHkysK9sxzeFCWqH3gnevJy+dFl898ZHYUEIKJw5mynm0l1bI8l2sp5EwIx3HyHjpzknWkwEKkl33JGlsRIJxhDaqn067NNZqv16l8nhm6HAkjOSj+QIVUkAKWzIH+Q3n/kf77zSxJicsy1VPSsM+mLV3VbfEuy+qM9Ub5KriB5H0CwgavpCPy28YngU6TWGKwt4DQeke4wDZtjrmkMhvxojhXw/e45M2uQpJerrzE+IHZ5UgkbP2Gv2QbbHrQQVGCfIRH/Nf1za9HbPnwZDID36m1ceknoAZ0ewhdPJ4d9S0Cax8USZRTbAUoyxokm2gSVVZz0Hp/q/kXSq1M94vABbMi4Mg5B7yAIUASsQKnlxjHNVpMJoBmQeUqKk2UyGkO8ppA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 84055531-5dce-4d4f-5ada-08d73c8af90d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 22:53:07.6110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H7fkcsSHM3aKSGEmIBERm0NNujTp4YDMeWlqW+f0jvlh8ZtuzyzdFMwft2DkGqrS8NuZrDFfe17BF3NxRXqqGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2967
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_10:2019-09-18,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_155316_798370_1A67B1AF 
X-CRM114-Status: GOOD (  15.85  )
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

Sudeep, One trivial question wrt SCMI-CPUFREQ framework.

The SCMI perf protocol would tell what are different frequencies the platform support in the beginning.
For example, the command :
cat  /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
shows:
280000 560000 840000 1120000 1400000 1820000 1960000 2240000 2520000 2800000

/* Attempt to change the frequency */
~ # echo 2240000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
It works.

But in a scenario, where user tries a number which is not listed, SCP applies its own logic to get a nearby value frequency for CPU and returns.

My question is that could we add some print message in kernel that user wish is not exactly fulfilled, an approximation has been done so the user explicitly knows his command has been partially met.  If this to happen, a patch might be needed in kernel. What is your opinion?

Regards
Sujeet
-----Original Message-----
From: Sujeet Kumar Baranwal 
Sent: Monday, September 16, 2019 10:37 AM
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Subject: RE: [EXT] Re: SCMI & Devfreq

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
