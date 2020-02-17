Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0615F16153A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TrESurtzM3+N7rrHzrOSo4MLe1vYfVAdPn1xoSNYhjk=; b=m2zUqCTcfnU+Zk
	Gt7U2Ke/yOls1RXoL9i48iXk8xRJQE9LNzLd0AI/9UnhxvHi8HweqJNdgP16AqW3IzQfyRl7d38fE
	wxOKOLZJth9NCslv326SRRYjAMo59r7fmrS8BmJunKJN8RWmL0msols4soEFe1qbro3uG21zOA56C
	jZ56YfnFZFF4PNHAoBl9sEIaS46EwwE+WtEPs4cSSJuVoNcJlpbR40qbVf+9e20QbD5uepfBeolRU
	UlbRo29WzTkK8qx4ictB/Y3KdZTJAC2mD5t03G4LPU7Gs4FknOvF/+KY1nM2qKu8Em/blA0RUUtlB
	CkbZEq+QsJznr+7k/Maw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ho9-0004Tj-M6; Mon, 17 Feb 2020 14:55:37 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ho0-0004Su-45
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:55:29 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01HEj2rm001185; Mon, 17 Feb 2020 06:55:22 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=pfpt0818;
 bh=Icm/nTLE7WM0LljVbU4iGYBVV7o0LT/PgTM9tV5xYIc=;
 b=ZileLVsU3LFp/brwQNIHi8YN25LwIiXcBaULLzI2D0TQVCDFV3AtxPbs3a4YrZfcttLF
 T+cwBdviH0Ya+TFdA2DgeBF/R3XZmT6X1TK3D4zVuYeClpsH/QniT42Hd8aUDOppmbIq
 yvE4gubOpyGCl/Ym2QWwa2I3l9Wn5zbmtKZErPlbmyMva6m1hEUPj71HWJeMBP/owSUm
 1qtV8bA0W0RyVTaxGiLuag2VMYk7A1KjVp5xoK1m5hN8JCqHde710D5xBzZoVx2721o8
 +eWehVqNaSpsyPbhD/u1YBeKuh1VveBOQH8BU5TBCq0oTv+TO7epALBYEAN1ZZ8JyMmn SA== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2y6h1sychh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 06:55:21 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 17 Feb
 2020 06:55:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 17 Feb 2020 06:55:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXCCqiymTE2mWGVmLTBKGggd4GmTnQTHX+HKzmJWyaj7V1kyjBqGs/kaOEPbqu79sGJG6EEHGXiIP3zu3oGR8GMwYxy/xd8VSLox/SnDI8KS2KCT2TIt0kMgg4VxplCpiw3rXgbHPnBFNMI7t8WUdG3cPP/C2WLwvYaZQT7BH4tiT+8rR4h4ixZBjrO5QWo8aFdnHYOX46zPEmqPwDm+rq8nydYrC44vkdHSUB/7xKHDlTc6ZvkyrlxjF1BJ0UIlmSFZNhI++ePwH+hpeFyAEbu6vLQEIlQvI3NvNVvQnq/zbDNRHMSTmWvzDqXqyL2BIX6D6JTx/vmX8d+Bsb6gSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Icm/nTLE7WM0LljVbU4iGYBVV7o0LT/PgTM9tV5xYIc=;
 b=L8UZn+snPxCpz20CXew8RZeAabkBUEXatVtmj5Ttw5YycIwIxI7w4aBCSvX120OruEBlJg5hDZ2LMxFR0ArTjRwmVguYzWoreHg7IXyzfi6FzGryRKTvhGgMWKoGOdhHb9TbrJ2RpVsUPHcV/Xyz0nf7Og7rIJITJ8JB5QfmZcCnuN4yBA836wQxqpJChVkpbc/K+hiIzNOG714tsMJA7UpTdG2E3nReiheaLJatJYPVW1sODlq0PVqbRauiqFbqplX3Wac7iWHaKFA4eJntHkiG7Sdw/afGEW4O25QmjWTYE9bcysJGl9nE5WKPokhsR8g/YkVIbxNnKcC7zpYtJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Icm/nTLE7WM0LljVbU4iGYBVV7o0LT/PgTM9tV5xYIc=;
 b=IjsF9ubgHAauezKwTnvg8Au1kXP/nqyaW6+Ixn7MWU0OzsV4+ZHE3y259YGp06LBn5bM1NeWUPSaawvZ51dOYPg3a9KQivCz3RtjFOZTpfe4Au6rzwG/iktKD9kbwXI2A1LriOUsEwJdoPInm0JLteYNXKiheurqKRsbttL+YSA=
Received: from DM6PR18MB2969.namprd18.prod.outlook.com (20.179.52.17) by
 DM6SPR01MB0045.namprd18.prod.outlook.com (20.176.120.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Mon, 17 Feb 2020 14:55:17 +0000
Received: from DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c]) by DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c%6]) with mapi id 15.20.2729.031; Mon, 17 Feb 2020
 14:55:17 +0000
From: Tomasz Nowicki <tnowicki@marvell.com>
To: <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/2] KVM: arm/arm64: Fixes for scheudling htimer of emulated
 timers
Date: Mon, 17 Feb 2020 15:54:36 +0100
Message-ID: <20200217145438.23289-1-tnowicki@marvell.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM6P192CA0037.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:82::14) To DM6PR18MB2969.namprd18.prod.outlook.com
 (2603:10b6:5:170::17)
MIME-Version: 1.0
Received: from localhost.localdomain (83.68.95.66) by
 AM6P192CA0037.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22 via Frontend Transport; Mon, 17 Feb 2020 14:55:15 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [83.68.95.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04e52687-9463-476c-06c6-08d7b3b966b6
X-MS-TrafficTypeDiagnostic: DM6SPR01MB0045:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6SPR01MB004550F7C86687D575DB5CFFD2160@DM6SPR01MB0045.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39850400004)(366004)(376002)(346002)(396003)(189003)(199004)(69590400006)(4326008)(5660300002)(36756003)(26005)(4744005)(107886003)(478600001)(2906002)(16526019)(186003)(8936002)(52116002)(2616005)(81156014)(8676002)(81166006)(316002)(6666004)(6486002)(86362001)(956004)(66946007)(6512007)(1076003)(6506007)(66476007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6SPR01MB0045;
 H:DM6PR18MB2969.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4t615iIS5SXyqr+yOko5ESnzoah7X7Q0EKPk2mx3XFMocAbdRRgYs5z9J4WI2AcwvNb+8Hndyb+UBw5UD2QnHsTVHVz09OHXhgF4QV9X6WGTf6vb+lPIS0gkUdPVaS4kacmoX0SWl9Xsik236YALeQ+XStlXZCDTdk3hXhYBuV/iLxuo4AoBFWmWJHz/7vJxf1C/+9S6qspPhKwVLgsmPm87DLQhYWWRiSMTKaqm0p+Ya9ZLi9oEJliz2ielxhC7T+4isgtrqy2GFfm4VenRJc/5qr75CDsyUWCWNAhSalqF1hSKYVXbPjvO+gLC5rexdilyAQyTo2r4mjUm8le4yQtoSe3aW9RmCRZ4snfcmOtRc9RBBsvQm/vkpdMAmDnImInqlqaGGtp9I0J9SuPD7cBepTVpnaAkDRskBkx4EXHuv8onz8vjGnGtepScabplLq8A0dOgnDupROmelwaItZjA7pQyGYZQklW0t1owtSXE5pu6/RpxuHGNH80hlYPTUBirZq8og2zv0YyLQBeBWHq+kL0ufpQ3g0gN9I0UDg8=
X-MS-Exchange-AntiSpam-MessageData: AxAZvssiNDQ9t8tljH0Kq9nooKPKgUUvX/O8jiW1Rh87JlH5zIFAsqgkSbZidYYFXLUvbax4CNtzOS6S4+L6jSRUd5KvxZ4ST9eGtrg69xggmNplQUf/74x8H5/rRiPA3+luYU2v1qKuOylq5v1Vyw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 04e52687-9463-476c-06c6-08d7b3b966b6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 14:55:17.2270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gKSdOS1P3gnDf+Famcd/M91iPn6eHAFZEu7WpZFUVxjrqdnMb5ciyO+kMOhSa0L68Sc9Z7epURX/6V3K9+kJWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6SPR01MB0045
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_08:2020-02-17,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_065528_348205_A32243DD 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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
Cc: gkulkarni@marvell.com, kvm@vger.kernel.org, maz@kernel.org,
 Tomasz Nowicki <tnowicki@marvell.com>, christoffer.dall@arm.com,
 rrichter@marvell.com, james.morse@arm.com, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small series contains two fixes which were found while testing
Marc's ARM NV patch set, where we are going to have at most 4 timers
and the two are purely emulated.

First patch cancels hrtimer when the timer should fire and there is no
change in irq line level which suppresses timer interrupt storm when
guest enables interrupts.

Second patch makes sure that hrtimer is scheduled when timer irq line
goes down and there is still some time to expire.

Tomasz Nowicki (2):
  KVM: arm/arm64: Fix spurious htimer setup for emulated timer
  KVM: arm/arm64: Fix htimer setup for emulated timer when irq goes down

 virt/kvm/arm/arch_timer.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
