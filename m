Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC87F04F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQlObcdqILl1By5fXpOqeuwEdk5S7uwkX4lEMqi2RvA=; b=Q6bH0K/k/UHLWl
	WB/ybzaDeUDUGf20H7XMWKzK37q3PvJOE3a5Tnbk4X8JNwrY2DQHUt2QzvVjsypTc735PpiX/hQCL
	+6EyiWFFXQ1BwuGUV5E8q7h5KX7KIZBeQdkyHpuBts8l0dRYq3mAqyQ2gQAuecv3oQ61UvfdEdRig
	sOs179btimiLpp9Ei6yGqpfoFDTY2e2mySWrelGDLit/+zxO2A/kOMh8HbfiDr8IljHaCUnJ/aB0+
	iY15biIL1GTMQHobxgCRZSJsdDZ01NnPC5NhJ5pEIoGxH/aQN7L3xj8Mov5R674NLzwzRyi+Vu1sm
	JN5kd3ho8C3xd91cHnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3S6-0000nz-0x; Tue, 05 Nov 2019 18:21:14 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3Rs-0000eH-OO
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:21:02 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5IC4fv017971; Tue, 5 Nov 2019 10:20:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MXYX1dNRZ8XaFSr+Fd1prPVWCJGACw02gsATkaaD/H8=;
 b=A5KMV3rdiu2nJsOoRbPyVT3fAH9f9udAGMMulB+Dms1YL/Gfy/eKpw6YVmtWugbH5JAZ
 IjJiBtgDpPxZHzh7nC4ag9MU4hZicpzP9lPt1QFB/f24p2Nz97w+vHHVQjFKzEAwz5M9
 y+88zIES3nYtqq1f+5uUulXN+ioc/8HH1e/vhS+0ysNdK10vjWauWgIqksUeR0NLkx50
 UEbF3AQOTgfHmc4/tWQzOREXhgVXIIPvRgz++gAce6MZ63gsx6OAV5mZwBM+majR+byq
 xDcxiiVjSFw3qTd0WPSRzHM0M/4sRNZO8mBlYbynUaM3ZiAVC9nRoaoD8cPrgi9c9qcJ gw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2w17n94aqv-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 10:20:42 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 5 Nov
 2019 10:20:41 -0800
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.50) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 5 Nov 2019 10:20:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GOHCnn8e90MN7TM0pvXYAF/peXOEdLbR4IRjdSu8x24MXqYG9E6pJiOnPkeBna8a+forsu4Ch6YDtFNSevkqAHbu2F+wtuTBy8N3BEvebQ5/uxZBXau/xmh9kr1KEex7LDT+EpHCmfhibjFtOmbXclPBs66HfCpNyn5dSe/WTNY5//lG+uemzNj84F9K9kO0WdZsA0Q4fL+76eHRMgZ7COayqXXftt4/NQJyxWjZBAYnRf5qFKruErqyESFMr6/xFIN1ah/KYckKn0wj78pFv9dXAVYj9YK3nspYkdbm5IeXkg7ci7KADkr0dV4Mcu+7aTqCZOc8wSi7fvg02lNbbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXYX1dNRZ8XaFSr+Fd1prPVWCJGACw02gsATkaaD/H8=;
 b=EmjK5q3mHT1GM7AVfjQNC1qq6nwKUB0UHOqesrI3iQp2rLPz2V238FZ+U4F6VOiWvPmnBQNGot954KK7QnV1AsOLdJ+ujK+FgRmUoBUFLeDB0GmXyPc3ccF4xJUnbM6Os1oYXDm3j+urUXQ5fCGTsQoKQHrVPTbJLp+Iz9N942wO9ar8nGaQp/2VlEziB56uYz5h7R+L+PIg5YbeD9cH1i98hQ3sVlbEwaiQ4CykODxcIGlLG1/dtpR9lL9uMWS0AdWiGXuDvTNTQF0ROren8KPouhnScdUaUB4fh+oNKYXzltV9/SaciGQSVe+qf0ijzOP8y2OiZ470rb1I3fUPlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXYX1dNRZ8XaFSr+Fd1prPVWCJGACw02gsATkaaD/H8=;
 b=cPZSEHvsxaCycMn28zFdLJM8IlF2aroUbGb7EMeo5nJ1uFdC0fOYcPRzspqtV4EdmJu53BMVi1Ltexw6UGZFXciPIG18ore+C1mKeHDCesIgdXzoo90FpuPJESdcy6KZcnO3kfa0nIkjTMxB+W+TBgIHSuEW9jRPcB56cA5q1cE=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2991.namprd18.prod.outlook.com (20.179.23.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 18:20:39 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::c4a:cf3c:f530:fba6]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::c4a:cf3c:f530:fba6%6]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 18:20:39 +0000
From: Robert Richter <rrichter@marvell.com>
To: Jayachandran C <c.jayachandran@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: update Cavium ThunderX2 maintainers
Thread-Topic: [PATCH] MAINTAINERS: update Cavium ThunderX2 maintainers
Thread-Index: AQHVlAW6X+gLewdVH0aautTHlCfeqQ==
Date: Tue, 5 Nov 2019 18:20:39 +0000
Message-ID: <20191105182031.2f2znzslabbtl62c@rric.localdomain>
References: <20191105154654.4675-1-c.jayachandran@gmail.com>
In-Reply-To: <20191105154654.4675-1-c.jayachandran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0101CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:3:77::11) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6b44a7e-bede-4ac9-3829-08d7621cdc6a
x-ms-traffictypediagnostic: MN2PR18MB2991:
x-microsoft-antispam-prvs: <MN2PR18MB299187E25EEF55F71E8AB294D97E0@MN2PR18MB2991.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(376002)(366004)(199004)(189003)(15650500001)(186003)(6246003)(6116002)(52116002)(26005)(256004)(4326008)(81156014)(71200400001)(71190400001)(81166006)(6506007)(25786009)(54906003)(99286004)(2906002)(3846002)(386003)(14444005)(8936002)(64756008)(5660300002)(66946007)(66556008)(66446008)(66476007)(102836004)(66066001)(86362001)(4744005)(6916009)(1076003)(14454004)(76176011)(8676002)(486006)(229853002)(478600001)(316002)(476003)(6486002)(11346002)(6436002)(446003)(7736002)(9686003)(305945005)(53546011)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2991;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1nvvJXlPTe1v9EKTSxLTaAbjHd9AtKVjRw3XlW7JbFh3DVChxqGLr/33fkWIFsb69qTlAxi+9pWSUi1tG0Om+bmNka1hjt8KASradzVksXcBznthbHEzMMdVJ9uMIuk+SHO7t6YmZKm/4u+WuvfMHc9iHgWnhu/EBtKffLMjk268pY9OCzbrkvMqMkVwgrHrNFrOFWRaViO1Ph5xkUlg0n2rsF3TriEuQ+cnIhFdveW+TNQDIUJzmgpwYzLjgspSbIqdkc77qhXkjfcat9n0EC/PUvux7SlyeiInrPwPOv43b3paGk46ZZvT3oUEOZl3d8NaBsyAMpJnTAEIGk3sMzy2dxAGI3IDkzJxMeAeujpHhVHm8iqBhkWybgeg909yJ8DREQ0vqWNC4iUYEEod0YBcQs7iR9ENa+gyt8QeBVDK9+3Hcm1loR4STZRHT3ov
x-ms-exchange-transport-forked: True
Content-ID: <C59145D774E10A419DAAD7234441E176@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b44a7e-bede-4ac9-3829-08d7621cdc6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 18:20:39.5677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pj06dLoBV1HfzM8+lloLKx+OiAPwrIZAQvNKILJjWeAAukmv3Pchk21U28f2O1MCU1vHAmc0oTCLAbbriH1ZFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2991
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_06:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_102100_967136_40C3F7B6 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, arm soc <arm@kernel.org>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.11.19 21:16:54, Jayachandran C wrote:
> jnair is no longer at caviumnetworks.com (or at marvell.com). This also
> means that Cavium ThunderX2 will now be maintained by Robert.
> 
> This is probably a good time to map various email addresses used for
> my patches to my personal email ID, update .mailcap to do this.
> 
> Signed-off-by: Jayachandran C <c.jayachandran@gmail.com>

Acked-by: Robert Richter <rrichter@marvell.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
