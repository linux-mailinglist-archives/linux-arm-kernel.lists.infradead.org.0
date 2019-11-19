Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2841102D7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qh8rkR4dyxn9CCOjvn5n/rccRNKX1icc7PvRjmHfHVw=; b=DD/ia9nUNHAszZ
	w9eLqIHhljduQfjCopG5ae8iXE2XVpDxuwkBljzCDdyvrdTK5yN3ClJCOAUIB4aEy7XQsPo3nKGEo
	PrDRunadC6m830U8DjwR++1OPk+i73p60ACJdW+3Lf4drITLSmfZbR/AezkdB4wqeSjWd/i7LI5rD
	biqaslY66f3uQso20FyEKARRDLcKfZg8mUQErQRCDuQA48imvW61+B58gS6uI9L4/eHtpLbFFvRXV
	ff7Pdb0IgtqJm6Omj8S3ly2CtnW5rF4Nez60gbiEpNMmgf811r2twB4h++UFaJByOUJqiSr/SKRBa
	4SmrrtY6WQzNhceEHxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXA2W-0004VQ-Hq; Tue, 19 Nov 2019 20:23:56 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXA2O-0004Uz-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 20:23:49 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJKJmdY002225; Tue, 19 Nov 2019 12:23:39 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=NMmYMjuVeWbYfyKQWy8blFlkVL6iuw2H/NU/67IIKP4=;
 b=oZtF8Fzt127gcTFlgNx6sPc2YC8XLSpTppV7sQMA7/8edo/BcmCBZbMqta70aOFb2Z0G
 rFn91kF215ofnAGnRZGw4z8nB1bu6hH8o0jS3Gq79FlFGE/4w6jYu/vx1YYetnpzqg9V
 hw4rOC59BnY7JlOIF3ktRGazEkUAzAzpZ/DRxJkhC4vKPpSNeSIV19AIIwGMkkFrJexr
 7blLbdmh17yd3PrMeN+aiOBWmDmvcOAeHokStowmZERj9mG1sTATCcEFPg/1hbXBm3KO
 vX8xidrqccxMVaypWFWlDxJ6PXK25g5nNyLJs6f6pcxVPtySbxWgfdX+F/Slafx0HfsC ag== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2wc8423ygp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 12:23:39 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 12:23:38 -0800
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.54) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 12:23:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2wm+gB5RwAGBUAtdEUBZ+Tsj20vqDfekvN/xvUNXZvcTO79m4PWlY0YX1OuCeFQpRnoImMZivqo80QP49JknVOSTHm4cjvZYTviLQae1TZrRPDx14iHyv2cEHa1Z8QQKoBPR5uIeQNomG4UbW5+X9H97f21LE20isQdd9bp85Y73KdRWnnUpXlJw0Y6kXwBU6ODOtjGPTxRcKYoHoqhgYxI4ppNGbjRXPjxoLU+9w8U+NEtgCCZVp/ZYsx+2kTafnFDKDXYKuKcTsUcDeaEvY3rsuzH5Y40hDj0P1ddzjtjOjXwTRVw0ZlUJpSjLqjKZSg7OevNJqUErXBYJQNPVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMmYMjuVeWbYfyKQWy8blFlkVL6iuw2H/NU/67IIKP4=;
 b=J2xlRaMDVjyURa+Bm2GogTJn3ZlOzb/LjSIek9ZM8dLpKi0sDrfho00bywHJNnk5/th8OxUJtpx1NJd4jgQhpdj5aMlW1uFZ1VGm1SoLZ2pUq8PKFHcfMhVuEe320eqmVgMHcz292CyMhJf1ZCp5BxfNM0GERJIe3RZZbRZGD1o0lXkTXEYD+nrlxaqcsxvFL1diUHvUVa3tG6OzK9X+eMwyc5pS2HG1Io79CBSS4IPXxnTlzcGnpiS+eyu5qZ37IdP73xBY48i17sONj3fqtouV1Nra/2GqqKJA+5bo4YNQyriV6YAK0Ns4Qo/Pl0NMwEOwpC/7kBtEqgr45Lcpzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMmYMjuVeWbYfyKQWy8blFlkVL6iuw2H/NU/67IIKP4=;
 b=ByatIm8FmX7ck9/iRBk2wjRBsleWT/nXebL9/f9xgSznb5u9C8KEtim/7aGT0Wc8KiHpIuO5cD+69+qE5/3f3Ew7NKhrM2jHcnOco5EGDdPXW6UtEpK//9nR73nxHJGbbmD654XqpE+LpRigAPsPUpxdH9SAVTbIoWt54U1Tkro=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB3375.namprd18.prod.outlook.com (10.255.236.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Tue, 19 Nov 2019 20:23:37 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 20:23:37 +0000
From: Robert Richter <rrichter@marvell.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Topic: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
Thread-Index: AQHVnxc526FsAUcWSEycL6HUHOvp6g==
Date: Tue, 19 Nov 2019 20:23:36 +0000
Message-ID: <20191119202328.cqfzf5a4svn23h5a@rric.localdomain>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-4-rrichter@marvell.com>
 <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
 <20191119185012.2fekd6f5gbpflpqe@rric.localdomain>
 <cb41a8956be6cf11e9d25c1790eeb8c935b9ab29.camel@perches.com>
In-Reply-To: <cb41a8956be6cf11e9d25c1790eeb8c935b9ab29.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR02CA0092.eurprd02.prod.outlook.com
 (2603:10a6:7:29::21) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4eb2d43-421c-4a41-386b-08d76d2e5b86
x-ms-traffictypediagnostic: MN2PR18MB3375:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB337546CB5AD6095407FF76FED94C0@MN2PR18MB3375.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(199004)(189003)(66446008)(71200400001)(8936002)(6436002)(25786009)(229853002)(86362001)(81156014)(71190400001)(8676002)(2906002)(4326008)(6512007)(66066001)(316002)(3846002)(6116002)(54906003)(6246003)(256004)(11346002)(81166006)(476003)(1076003)(446003)(9686003)(64756008)(66556008)(6486002)(486006)(99286004)(66946007)(52116002)(186003)(26005)(6916009)(305945005)(478600001)(7736002)(76176011)(4744005)(5660300002)(102836004)(14454004)(66476007)(53546011)(386003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3375;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jjtK0xeK0YZx1XcsxKa5xlY0NkEpXGbmQG1yEOOMbR43z3wk9FTU5n2KUno9tEQoFejWE/xdVLzdRPH5S888iohGoxBGYR4NO/pDMIZM5u9kiZxBjDxDXQpWtJvSyRjlvErlwsF7oewGOB8qeBZjUFDkFo0RJRAoI3d+UZrTPu1/SmWtFfbNzZsD1OxThjk6QAP2o4aScvGZEwGcGloP+626lLt7Gu5vo28RUjwIVnME4QaqFQq6EXEmMR8eazuMSpK60C75wacLOf29bOS9W+O6i1OG5CkUu+hWOgJnWIbFHFnOf9EFtV/EJu+ydgPYX6yIUlZYvS8f2ptoVchbS54OdOnLMDZUCMxKA0YPc59ikhISEVf+oswxGIDZ7NZ/krKbVlvqJs332Jlk5OK9KuSxe914qySxnonBpy4DhHwygZryPF+J1v7Y+wiDKC+Q
Content-ID: <0B9FD714210A1F4D9149F6A6F49D01D9@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b4eb2d43-421c-4a41-386b-08d76d2e5b86
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 20:23:37.0119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vhTCoS7QUqAzWvk/m/4L4d6DHIpQOa2oyciewioHyNCwaWKSZevF9QkWoM/WHaXr/reAZiW8Gy70NScMPn7jVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3375
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_07:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_122348_617074_368FC56D 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
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

Joe,

thanks for your review.

On 19.11.19 11:56:53, Joe Perches wrote:
> Maybe make that change globally in all the files other
> than MAINTAINERS as well eventually.
> 
> arch/arm64/mm/numa.c:6: * Author: Ganapatrao Kulkarni <gkulkarni@cavium.com>
> arch/mips/cavium-octeon/octeon-usb.c:551:MODULE_AUTHOR("David Daney <david.daney@cavium.com>");
> arch/mips/include/asm/octeon/cvmx-coremask.h:6: * Copyright (c) 2016  Cavium Inc. (support@cavium.com).

[...]

This is a bit past the scope of this patch. I will leave that change
to the driver's maintainers. I also think that authorship does not
change even if the author's email address changed or vanished later. I
am not sure on the general handling of MODULE_AUTHOR(), should that
always contain a valid email address? Seems not the case. I don't
think somebody actually sends an email to the author, it is more to
better identify the author.

Thank you,

-Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
