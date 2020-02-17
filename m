Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1C11619C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 19:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QNsGElBhqdnOuYIAkYSEKlGpzjD6TSwR23hKGFWiE5Q=; b=mmwcL2MSkfPzDp4YTEfgu9dyi
	CXx8KekdIEHUcDEw0bNn33Fy8pHlcGBRClgAVNjSywpJgxE0pmjuUSmGOSuaWUavhPiDs/1jrNrD1
	JVVFx3E+BLKuckxLXPgU1d93GVKn+1gx07+ywJV9CREh5NyuTFDdygZyWiGVv0KGs+pFDrqfs3gjZ
	s52C5q0/WoBuXyb9Ngnum7vAnDjmbwuT/HBaXJOTQk6zsOvh7zToAzWfQ4byScpdz7zCVn2R2D155
	aBP+xNdzf5A7dA12Nbzox33PIXh1QMLrpNThjhOUM6UKD6kk3qPU9EB2FdwmpcygVgLl+2O9ivg33
	Afxv8bvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lFO-0000Yz-IP; Mon, 17 Feb 2020 18:35:58 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lFG-0000Yd-5E
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 18:35:51 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01HIUxDf032516; Mon, 17 Feb 2020 10:35:41 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=15xYWZeFBjk4Rhv9AQ469MhHFA+IXhOHiZk+CVfsMco=;
 b=wD6kWsmU8JML0ZVsWw4SdMqzkcMp0aPlphjfPw6QAjVwQX7dCDheQpDEE50i2wx7cNZL
 gVZab/d4cCAe7IYGTX9PprXr1b6wAfF5BSMEVzrMrJneYwkZcS9D4DX6oF6UlCoIHUUn
 ebF4JDZNX7ysG2ZnUa3/TbpjAADZEvEQeXoI1/9UUFvCKNp3qzspZ+5fBGHGpNIiz51b
 +sZPo/1+Y+nELK/w1c1/W7VdxUDTuF4pGmUmRLcWqRFuJaLeu73F87QVa6MfITZaHpPj
 ZwoeQSEx1pBYaudFepmlsKfJ387QpWVQsQBlyxv9Y1GcbII/eyIa5Ygv4coyX47pvFnX Og== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2y6h1t00ku-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 10:35:41 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 17 Feb
 2020 10:35:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 17 Feb 2020 10:35:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOSqU/qtpgi3rVRd5ljSpEkiwNmzFCWbiFCvKKqoSsv0hFgYb1RLPGWEU5XDeLE1erAxuH+w6eZnDEcsQBHU/OHBUzX6LrNv5Z7AsRfgh6MudtcjRRqmOBo6oO7X4z1eJBKsG/OSKeIZksk2n4QKiL8EMnofT9vzZyCn6AmpN+qMXLGLIWljJNoUEk3bWfWZ7QweUbGJxIWUxO2GpQ7yO1Pyh/ONiqpFy2xxsfGQ506A5ahGmszKwNsauEFYj6jwuWaPQby/CbGirtCdjx5JZbvXCyi1hLb88NoCISSIOnU1mMnpQfD3gAFdiX7Co1YZXli7vXdn2VOz5ppLYe/Tbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15xYWZeFBjk4Rhv9AQ469MhHFA+IXhOHiZk+CVfsMco=;
 b=l06X9+LEqR6FNiHWWpQWVqKZyeTYDzHYFjmoT1d3AnxYhp6BRmWLK6DF3fv7qBBbUUp8LSRwgvjuclYngRzxm+k5DHJSO+XnRJLTdjDYhFrE+nvY46nyy7QxQ2eCCdvxUwWLFzOBbPi9CfOTLzaDhDUrrpPS3DEIvwhiRY3RFcGZYVKha5x7mb5prxY1rqMpmTnOxdF6L3JbQTumwVCZZrsdeXzEsBVZSUSQLBccUQtTOmTqRgHX+xO2L7HBAfFWV71lGNJb/VWdVz+vm1pjzqBE7lAWZL2MJbZ/q5CGFJZfk8jyokcSKWKKUUdaC6CHH/KT1+t31rcdPxd44v7VdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15xYWZeFBjk4Rhv9AQ469MhHFA+IXhOHiZk+CVfsMco=;
 b=L/dMGdFL8zlJp19OwPG3PaEZFPsHpDaFuUYLDFk50cy9ywxa366WvqZkOvnTqGdlyOuZdDH3VTbwyMAA1V1ss+ozWLwUcZfZ2bTs8htRtLpIaxwIniLNuHU566/GKIfBOiI9BeI86GyxEWEi8aof9G3zHmFGt+CZVuozAFPcIJ4=
Received: from DM6PR18MB2969.namprd18.prod.outlook.com (20.179.52.17) by
 DM6PR18MB2377.namprd18.prod.outlook.com (20.179.107.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Mon, 17 Feb 2020 18:35:37 +0000
Received: from DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c]) by DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c%6]) with mapi id 15.20.2729.031; Mon, 17 Feb 2020
 18:35:37 +0000
Subject: Re: Re: [PATCH 0/2] KVM: arm/arm64: Fixes for scheudling htimer of
 emulated timers
To: Marc Zyngier <maz@kernel.org>
References: <20200217145438.23289-1-tnowicki@marvell.com>
 <f70d41fd006319e3d62224c410d62e20@kernel.org>
From: Tomasz Nowicki <tnowicki@marvell.com>
Message-ID: <0753e1a3-3b5e-3e55-d684-3ec3f9033f4e@marvell.com>
Date: Mon, 17 Feb 2020 19:35:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <f70d41fd006319e3d62224c410d62e20@kernel.org>
Content-Language: en-US
X-ClientProxiedBy: MN2PR07CA0026.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::36) To DM6PR18MB2969.namprd18.prod.outlook.com
 (2603:10b6:5:170::17)
MIME-Version: 1.0
Received: from [10.11.201.210] (108.20.23.69) by
 MN2PR07CA0026.namprd07.prod.outlook.com (2603:10b6:208:1a0::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Mon, 17 Feb 2020 18:35:34 +0000
X-Originating-IP: [108.20.23.69]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c9dc87d2-f725-4692-45fc-08d7b3d82e56
X-MS-TrafficTypeDiagnostic: DM6PR18MB2377:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR18MB2377F724D350CE986A0B2082D2160@DM6PR18MB2377.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(189003)(199004)(478600001)(6666004)(52116002)(31696002)(86362001)(16526019)(956004)(2616005)(5660300002)(186003)(26005)(316002)(4326008)(81166006)(107886003)(2906002)(66946007)(16576012)(66476007)(66556008)(31686004)(4744005)(36756003)(8676002)(6486002)(8936002)(53546011)(81156014)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR18MB2377;
 H:DM6PR18MB2969.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bIlidpwKcpsb9AfGQZ+W4XYjbNk++g8wQVxqv+Utpa2hZ396kkNdFjZf7EFD45ZQcZbTZ4cgspbpNB2S4/8ExXEVo6i+YWxV0AL18jML0EXOVPmH5tOT4bum5x+wGjxMXm2GgcMokXzVObssz0SzkP5rxyPzMOW6niEZyh6RKM8eSL6hHRh+a+M7Pld5uGikplAkZB6TMO2XIwlpSazy7acnkxhyy1xXM2XMYtWsLc/w960QCWKnQ5TM41N7fv7RdaQmlZOtEeA5ugTKDNY2GJEEWhJKRx1M1PhyboFfDIJDrVJxJR/1OXh6lmkP7nTktevPQhpNY5BgqhCvAW/W4kvxr69ZvesfRz//Y2EGUsz/hQ7dIrURcrBmGnXZARZ6Izcr9mcClbzQCA90XtAoT4h0CVyrLkBAAglbVx+SOEHFKUmgvFx1iYLmoanwEHOn
X-MS-Exchange-AntiSpam-MessageData: zKq46SFJ9Q7jAW/yojX5Nj02UXaROsxvwpQCRHQbc+vJraKkidWHfoO6Z/lkiBeSebedWWc9wgaGqwlzNH++aopPXn/NN0nKrNOH3aYN7JKW3hedtM9+y0COn0zjJlVPXK2uCA5OABtQqwbfrdDdpA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c9dc87d2-f725-4692-45fc-08d7b3d82e56
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 18:35:36.9817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dt3mp4Kkwzcly+ACG7Nu7AXiocaxSmaRzinM+qM5MRS0YlIwamTYfOdqLhc1ESggn4UZCMeVrKQdup1ccIA4WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB2377
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_12:2020-02-17,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_103550_465234_B4D4268F 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: gkulkarni@marvell.com, kvm@vger.kernel.org, christoffer.dall@arm.com,
 rrichter@marvell.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.02.2020 19:00, Marc Zyngier wrote:
> ----------------------------------------------------------------------
> On 2020-02-17 14:54, Tomasz Nowicki wrote:
>> This small series contains two fixes which were found while testing
>> Marc's ARM NV patch set, where we are going to have at most 4 timers
>> and the two are purely emulated.
> 
> What are these patches fixing? the NV series? or mainline?
> 

Both, but found when testing NV.

Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
