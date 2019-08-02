Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204167EBDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7to08KKoa5Hpkxt+ga2iaj9uCZkuFZcYgK1nKMLYG8=; b=Am/7IDh1EdIBQM
	61zdP5aZt6hCwD0PoCwQipFrAFPJFZLC7bO68b42V/3cxofIUlA2z4ce2XJrKYkX+AKk4m5gEVTbf
	4GtSxqw8ojp7nR23QarjKZPbjhbpevMudEY1reANV22FfrMn6h1QCLKmoPgl06gEg5H2J5V7jNf7T
	65hMecbojeKXSo1dnT2K58hvOeGawdswD8OFBphKAlMa00z6jUtWxlU17xemJ23l3MzOcHVCpPQFz
	Qvj7mdg8bYB9oYz6psCfA7n6oi71oNTtgU7Q4UX9iPGuu/fzHHc+4Vxibzu3XyQ2FPKWl9aVRi414
	f3cZM/AwQCHo3EO8+6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQ01-0005Yg-4Z; Fri, 02 Aug 2019 05:21:05 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htPzq-0005YI-OO
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:20:56 +0000
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
 by m0001303.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x725Hw3a004680;
 Thu, 1 Aug 2019 22:20:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=7YRtrjjEZQx1hFHzZ7Rzbx68eQ50VUzRxqGu1B3Fwas=;
 b=Rp25KIx3eqZQ12clgKPLWtVZZZfI5GUdIISB3Q9P2tmh2TWw+zQmCOVAYFGwZZQwdrXC
 OwWBCYvmqCGViO+ZxlxzuWmPzL1nT/toldys7JxBhQAjEE4Ejvfa0nv6Sftq8x/tbxBg
 Ur0UfGR/U+SwDwYioUT4OqX0KvKI5CpiIJo= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0001303.ppops.net with ESMTP id 2u449gj30c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 01 Aug 2019 22:20:44 -0700
Received: from ash-exhub103.TheFacebook.com (2620:10d:c0a8:82::c) by
 ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 22:20:43 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 1 Aug 2019 22:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kx5KGRhjI75s7tqh4jELuvf6XniWcfbFsTA3DAgHs0QNd3xmNk8zAIcjXd+i2JZ+yKyVtHn+PkvX3AoR2WgtgNsFy5eHlol17DQJDFRpP2NRB215N5OLIO3uQzAZ7pCw5u8JTiD7izpgEVq5aHtM2N7JBRRksNK7ta2SHiVZn552+PLu2KgOC3qUkZPeGdvWVdYAR8fgkbgxrmmxyYlJzFvSQ3b+EMRDpsaBWdT6Q+k0C1OPne2aWPTuiFNs7xaWqCnEPGhED5XxqqaVT72HO3iYpVmgAMInaafuZSqhX8mQNglsBAn5sUOrji29+A2YhzBgybXt9YiE0vni4HaEFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7YRtrjjEZQx1hFHzZ7Rzbx68eQ50VUzRxqGu1B3Fwas=;
 b=GanocCAop9em2dAxvKFvsDIex+Yo9xV0wMlSi2/wwb00qO2OhXyTAYH61v/NNPrMGo4mLkd/dX0B896fmRZCHKkxww3R3dVjcE3RXcks3wSyr7pw00/Mt58oRnCzJ8+ks6nJhwRAgACc/OrtvI9YKdb6eOZoK4mX41K6jxjayv8T48/C0PNiSLrSXUNvRVRZ5HNlFKdroUbfXHpMJb/EjlLLPYOeHeVv5Bm+1laYgZyEmt3HkFMNQyjMf0Dkg9SuCqj+5ErjZ+DcWEm8I28UyPMY7qkcCYl+HIE6XnV4jwgyPxnnkTT4gwI/3atdsO8WBfK03LktmHu+2RZPPYE+Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7YRtrjjEZQx1hFHzZ7Rzbx68eQ50VUzRxqGu1B3Fwas=;
 b=cfHNTQPaKy+iyCmP9MW3wppJcBOL97I0fTf8ovOJvHClIIudNgWk+RjpGwkdbKU5pc2SLTON+Tt539yvb1CFrlyqmDLA4LasdQU9SvwZO9pTLkv70sR2e0u33xd58lBKsz431vG2X26k8bG3EVj5H2sVY3Ow2gQZmWeWJKioyEw=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1197.namprd15.prod.outlook.com (10.175.7.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 05:20:42 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c%8]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 05:20:42 +0000
From: Tao Ren <taoren@fb.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Topic: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Index: AQHVSOg2lZoVHrZ29U2XlvDXnsufaKbnQZOA//+bUYA=
Date: Fri, 2 Aug 2019 05:20:41 +0000
Message-ID: <606273F4-E021-4AAF-9F59-F363E4FFF92A@fb.com>
References: <20190802041010.1234178-1-taoren@fb.com>
 <CACPK8XcuwNE3aBrsgn-paTZt-EtF6pc6WwYBQef5xc7157bk2g@mail.gmail.com>
In-Reply-To: <CACPK8XcuwNE3aBrsgn-paTZt-EtF6pc6WwYBQef5xc7157bk2g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
x-originating-ip: [2620:10d:c090:180::1:94d1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d9f0837-79c0-47a0-c8d2-08d7170929de
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1197; 
x-ms-traffictypediagnostic: MWHPR15MB1197:
x-microsoft-antispam-prvs: <MWHPR15MB1197AD2CD9BE3D4676210120B2D90@MWHPR15MB1197.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(136003)(396003)(39860400002)(366004)(47680400002)(43544003)(199004)(189003)(6506007)(33656002)(5660300002)(76116006)(14454004)(66476007)(66556008)(64756008)(53936002)(66946007)(66446008)(478600001)(81166006)(486006)(68736007)(4326008)(36756003)(11346002)(476003)(446003)(46003)(81156014)(2616005)(71190400001)(6512007)(71200400001)(25786009)(8676002)(305945005)(316002)(186003)(54906003)(86362001)(8936002)(7736002)(6116002)(256004)(2906002)(229853002)(58126008)(6436002)(53546011)(76176011)(6486002)(6916009)(102836004)(6246003)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1197;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qu2vQKv/PweLZWEe/h/0DGEeIRhLt9jTD6F+1UM3YtYZjjw5pR/uC4cXF1HYbD9cODX8AnyA3S1cRc1fcXEL0ZYWIP1VLMb4GTRO3FtRm4LFOk7TxBONqteGug2wVN5HIvRA9MisWNgruWyPrp2QMhoyjaJinEiv5dcFLVcj6g4xnUvVj+YgOlYPVEQcy98KNOf8oJIuyiQRE8j5QaXrzKQ8sYuoY/txWjrJWweXJTCNRF2ymEthCy0Ah1rGNdnQbwk6ndsQs7mcSmSTYMEPkas9UAc1rprPYrxtJTVinp9B2Hpe5ZKKcJ3Mxxojnt/nMpdkJptvHUIgBrbb+AvOH5y94v+FNtZ/99P75YOkWhcdrDUE/FsbhKuL/I2QRAf7jGiiTgguLwKvcCkKj7acceJqw2zkYbByYZFdArFZcQs=
Content-ID: <FA155B7D2FF44B408295ED3794A270FC@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9f0837-79c0-47a0-c8d2-08d7170929de
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 05:20:41.9574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1197
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020056
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_222054_968565_CFAA533C 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/1/19, 9:21 PM, "Joel Stanley" <joel@jms.id.au> wrote:

>  On Fri, 2 Aug 2019 at 04:10, Tao Ren <taoren@fb.com> wrote:
>>
>> Add initial version of device tree for Facebook Wedge100 AST2400 BMC
>> platform.
>>
>> Signed-off-by: Tao Ren <taoren@fb.com>
>> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
>> ---
>>  Changes in v2:
>>  - remove "debug" from bootargs.
>    
> Thanks. I applied wedge40 and then this one fails to apply due to
> conflicts in the Makefile. Next time you have two patches, send them
> as a series they apply one atop the other.

I thought about asking you if I should send them as a series although they are logically independent patches..
Sorry about that and I will do so for future patches.

>  The naming of these two files suggests they come from a family. I
>  noticed there's very minor differences, a pca9548 switch and the use
>  of a watchdog.
>  
>  Are these device trees complete? If yes, do you think it's worthwhile
>  to have a common wedge description in eg.
>  aspeed-bmc-facebook-wedge.dtsi, and put the unique description in
>  respective dts board files?
>   
>  The upside of this is reduced duplication.
>  
>  If you have a reason not to, then that is okay and we can leave it as
>  you submitted them.

Thank you for the suggestion. I'm also considering moving common stuff into "dtsi" file, but let me take care of it in a separate patch, mainly because:
  1) I have one more BMC platform (galaxy100) which is also similar to wedge.
      I haven't started the platform, but once I have galaxy100 device tree ready, it would be easier for me to extract common part.
  2) the device tree is not complete yet.
      For example, all the i2c devices are still created from userspace.
      I'm trying to move the logic from userspace to device tree but I haven't decided what to do with those cpld/fpga devices.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
