Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D216016EB87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDQD8yUvVzMdHYtknKGn5JBfPD7SwXiZdI2Ra2GbDxQ=; b=I+l+IPR0V7qVA0
	3sO6wDZjXl9HatPTAMpp774hgYWWyBxsW30NvcoQoX2/F1VAwxAlNpewiexIp6aBzhs7bvXQeng5l
	N75aHbIHvsfdbHaCwYqOQRYF+6uVkV1lMbLw8tfUaxyF2u7kDiYz9oc8EzeyJrOxOaPb5wHiPFgg8
	9V0mevsEiap7Me/ESED1uz0HzBpKqWhGyVzfF9g+FV8+Cor2iwi4S4cAwu55uu3o4ZvZXlg+Ji8qt
	vJdiw2q1sVdv/n7OoLadRnjDYvK5z16M96yyK7SU03Xb3jXGOnAw3oeTdjUYAu4Zb+dlicH1pXPlr
	Fb3fvsFIJXhpMzzZ+y0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dBJ-00013Y-Ev; Tue, 25 Feb 2020 16:35:37 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dB7-00012o-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:35:29 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01PGUCNT023493; Tue, 25 Feb 2020 08:35:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=pfpt0818; bh=s0cee6m5qzrCGPfLWlI5+oJRHyH8wq2nQng6qwOvGOY=;
 b=bjzVW/b6wRDs9fgQYh4TA4ybWvkOxcTESA4Lu+mUMGtk8eF+gvcuMUrAzF1l9BEC0dn/
 bj7oftUt+ug5/DDppsh3gjuz9wAODZDkhbgeMEuYMeJANAVWxftlyhBEN00bYJO/JRJ0
 IoyJ1aFc5jWeZFOEdxRWBvGWGB3cONpY5UOQIMH/B51wg317FOHvTal7RcGSAaX6pejJ
 HP3HBOQo/lNzYUomFxO4gVkPvpIusRtXOKcSsIfmHM5c+Xu935tV+leXyy7YjatNMaLu
 HOECfoo4DkNf1Sf2u2mDHlGy+HUT8rfjC91qb/0PNORgpXzCzZsQBBWqVLuZ0LFD1X9T 1A== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2yb4ptceb9-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 25 Feb 2020 08:35:20 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 25 Feb
 2020 08:35:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 25 Feb 2020 08:35:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQNK+8cnyQsvSxkVH+oPjLl9Om3WBDoZd9YAflUHCu0epG6WuYQSE6n1LFhkOiik2IV92fAOakHcVb3jSusxfp3IRlzSIYAchzmnhVRDabFeQwpCopo7mRX8SfL9PwSre7LVi2ac5FpTcKnUE9Er8QMSq9tSqWo2s1hHIUa//em70OTUitgf+MKVOnappc+iDUxLpAKH+k2nGaVeuDm1rhVCy0rQ8tOdgpajPjZW7BOB3GR1IEQ95FOMyDMUdS/ixFicPnQmV0ZaD0HNsCHcvfIK+Yt8mKrWLAZnnU55pk/q5181JqkbVSUN0mrsJJo+Kigm4bZ3gqTesWiPb0u7Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0cee6m5qzrCGPfLWlI5+oJRHyH8wq2nQng6qwOvGOY=;
 b=oeI+LGxei4eUH9GNOIAjERqT0LH/6ied+dhIukvv5B3Y5IHJgjTCCumO6ySxfQDDL4ndA57zryvpB3zLjNQ/vg4K1eTvEnLTIT0cDEO8YcpYumbB/EGQpQ6U6guP4Asbdd0XNPKLpDCTaDnp1c7SPaGC8pejK0addpjbTtN6sLXsUJlipxhXRQ4YhTDVf7rbyzhym0tOogu6xnTRXJHqjIUx8W3t+LFeYSdmHctsU03ZlpCwv896tXdD0MkiPPnwjksI1xZAEAlZAYC3/cisTdc5MOcPO3QNs0lLGOzvTgp/40ylTKJI3xKmBmLdUFDRhSdVz6YG++WIo3D1WOGf8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0cee6m5qzrCGPfLWlI5+oJRHyH8wq2nQng6qwOvGOY=;
 b=aXyUoiDAXFNWoeT+51/6bfWFLoNGqBZakHBVkF/ioXV3fzxyCKKqJNVKHB9tHiHiE6RCZs7Ity8WElcxbb0Xx0JxXY4WqKc2MhlTfCTS8sYtfyG87sjF+LC9Omllia4BIKlR0seLgYmtwqqIoi2TxQ7vjZYZuYmU007Co+oVRVw=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (2603:10b6:208:165::10)
 by MN2PR18MB3182.namprd18.prod.outlook.com (2603:10b6:208:163::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Tue, 25 Feb
 2020 16:35:15 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::30c4:52fe:fdf8:faff]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::30c4:52fe:fdf8:faff%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 16:35:15 +0000
Date: Tue, 25 Feb 2020 17:35:07 +0100
From: Robert Richter <rrichter@marvell.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
Message-ID: <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
Content-Disposition: inline
In-Reply-To: <da8f38078ef8805200b102a1d24da4ae@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: HE1PR05CA0135.eurprd05.prod.outlook.com
 (2603:10a6:7:28::22) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from rric.localdomain (31.208.96.227) by
 HE1PR05CA0135.eurprd05.prod.outlook.com (2603:10a6:7:28::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 16:35:13 +0000
X-Originating-IP: [31.208.96.227]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9b593c2-7452-4deb-7ee0-08d7ba10b10c
X-MS-TrafficTypeDiagnostic: MN2PR18MB3182:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR18MB31828E66141AC3EEDF9909CAD9ED0@MN2PR18MB3182.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(376002)(396003)(199004)(189003)(107886003)(6666004)(2906002)(54906003)(55016002)(9686003)(7696005)(5660300002)(8676002)(81166006)(26005)(52116002)(81156014)(8936002)(478600001)(186003)(956004)(66946007)(316002)(4326008)(1076003)(16526019)(6506007)(53546011)(86362001)(6916009)(66556008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3182;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HBmfYIivE6wkXCLT7MFqU6Tim9YhMKFaTN9Yp5HSdOusj9DMq30U4Codhx5cN4Z06JwHjBtEBUvC83oNcbjpGzWmXBYUbhYtGM9h7tNbGOV6pw3lTe6s0Ak9QdU4g6Lm19RGiKYGoYUBTCH59hs2kXxW1wSOs034XvylYRzRroN8t/C7zVSHtk9rXcT6ZXdlivWBz42bqXs6MlYmPSou9FQU7f1vEeuJ4KjSRExmHdCaiQQhVV9Ie5swy+t0u9lTIBb8kjI/1wwqxcygbQp+VT5TCmftJDShIdsiqcU8AHlmLc8AWM2mVyQ4es5J49ZmPvI7SEFQUKNQMzWSk8HJRxHk8Qzxn+zF0fy/WIvTZAp/8RRk9As4z8z9RayBXJJ4IwQEO0vy5CmDYKLa1oL3M8psgWQe15mhWBwVJOGHYioz63DDVCa2x++vShYMevjn
X-MS-Exchange-AntiSpam-MessageData: zx69HYSpFOZGAlFNVMzrETXZBTweatYosuGXNGykpXi7tgHWEb4Ad0OPaJhysYfc4cw+uEAazInH8bSe6bVVMj90elthQ55fdxReIoNNEgeAZs97MzQiZUVBCY3gjycWcR1jRQXoIuqkcwV8BHwyFA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b593c2-7452-4deb-7ee0-08d7ba10b10c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 16:35:15.1692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zFynoTDmJQZBu+1t51CvYJuAmTpNtaoR6RFGcf61GCAAUBu96vumuBrdyGL480glZOft2OpFCZfOuJysPawqXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3182
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-25_06:2020-02-21,
 2020-02-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_083525_967946_F9520EF1 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Tim Harvey <tharvey@gateworks.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marc,

On 25.02.20 16:27:41, Marc Zyngier wrote:
> On 2020-02-25 16:13, Tim Harvey wrote:

> > That does enable the erratum, disable KPTI and boot properly but I
> > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
> > erratum is documented only needed for pass 1.0.
> 
> Can you then remove the patch *and* disable KPTI?
> 
> TX1 is broken beyond recognition and KPTI is known to explode on this HW
> (which is why we disable KPTI on it). We always attributed it to this
> erratum,
> but in the absence of any help from Cavium to identify the problem, we just
> keyed it on that.
> 
> *IF* this HW is indeed unaffected by it, then it is probably the mix of
> KPTI and SWPAN that triggers the issue. If my suspicion is correct, you'll
> need to have a chat with Cavium/Marvell to understand what is happening
> there.

I checked the docs and Tim is right, this should be only visible on
pass 1.0. Thus, the rev range to enable the workaround as implemented
upstream should be ok. I have asked hw folks regarding this.

-Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
