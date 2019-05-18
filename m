Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EE02255C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 00:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZy+Qa6ea8NYiaoVYYNrED+Wps1tPH858lGMdJJbGjc=; b=PmN0jxYAxZoG1E
	ghkdx4gKM43fptDG+jWKZf16aFhssZuG9i5X7xpwdhtFJHcPL254c0l9O6tH9anbYBKEEG6Rpxeku
	ycM5ZcI8n5NKU820tPuL2+ZKC7CTcomx8zM/B0btVp6fFmyC+4ZMODT7Nq37D750T5GBou2eIVItA
	l11R5TtC/I7fkTTWFL2zMcRE8I6DOQucEQRop9qdvs1RJIPrbcXHy86fqxVOEnQ3HMX10s3IK5FcK
	zGQvPF5XSqSIAXkvN+/XFYiqjOSPJtzzUH3+TkhDeXAYJGvqOHq6KVnbf/331NPiCmw96qVWx4p+n
	MUaJSViesUxIU9V+GRHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS7gX-0007aa-0O; Sat, 18 May 2019 22:20:09 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS7gM-0007Xx-7m
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 22:20:00 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4IMGIl5019200; Sat, 18 May 2019 15:19:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=zPpF+E4qf5XwunWEKU9m3rXUvgiPzdsLDXnkg1vt7r8=;
 b=ueY3kfMc/GIZHqq94fkAMwhBwJqb2E19R4G+/iIRpMabUqDmQtpqapN/hjIPAq0RAwJJ
 byul15iA1LMoT9An6s4msbx9otiAJRXS0JbQsd11MAVblGZ47MEIVeXIgL1p2nnP33QU
 9U6A+6yVCHOBFzA6E6QA2xPZ+ymfX9Oft2fljzT7R3dJgVs11vZxb2pgXmwq0hNY6JhE
 ue/RS1D8hP0kTDFdH0qxeEg2EuEIK1eqtPPA2A/il1bb1MS2DvvJ6drb751C5tPo4Fv5
 uPSxqBgKo7NzyOgFenyXdke9dxSJqvoFaiws0/bYOTVL3PzydfljKDPTEuY7fo9uo0FD Kw== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2sjfdna45q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 18 May 2019 15:19:42 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Sat, 18 May
 2019 15:19:41 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.55) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Sat, 18 May 2019 15:19:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPpF+E4qf5XwunWEKU9m3rXUvgiPzdsLDXnkg1vt7r8=;
 b=VAX9XW5WhKksGjttJML36rLWjH2YvFQOsC3Bj5iFHtlesud1ea3qxibQ/ebtKOCm8hDYzrXbelFPQodR3u6ItMKLENP1rKfGm3+woHNwPfJg9Lilbbw31cx55g+9G+xDGiPNEj3liKxlwvA5kunWzvp0kXuIdIBOQsPMs/zOhi8=
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com (10.171.255.33) by
 CY4PR1801MB2053.namprd18.prod.outlook.com (10.171.255.158) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Sat, 18 May 2019 22:19:39 +0000
Received: from CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::f4b5:9677:2811:41f4]) by CY4PR1801MB1942.namprd18.prod.outlook.com
 ([fe80::f4b5:9677:2811:41f4%7]) with mapi id 15.20.1900.010; Sat, 18 May 2019
 22:19:39 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH] arm64: Improve parking of stopped CPUs
Thread-Topic: [PATCH] arm64: Improve parking of stopped CPUs
Thread-Index: AQHVDcfI5x/sF5wA3UeCqYbu03qmXg==
Date: Sat, 18 May 2019 22:19:39 +0000
Message-ID: <20190518221929.GA6135@dc5-eodlnx05.marvell.com>
References: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
 <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
In-Reply-To: <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::24) To CY4PR1801MB1942.namprd18.prod.outlook.com
 (2603:10b6:910:7a::33)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83f5a003-0ec6-46aa-2afb-08d6dbdeeafa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR1801MB2053; 
x-ms-traffictypediagnostic: CY4PR1801MB2053:
x-microsoft-antispam-prvs: <CY4PR1801MB2053CB52ADC833750EEBD8ECA6040@CY4PR1801MB2053.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0041D46242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39850400004)(199004)(189003)(26005)(2906002)(14454004)(81166006)(476003)(54906003)(6916009)(1076003)(11346002)(86362001)(186003)(81156014)(8936002)(446003)(316002)(6512007)(68736007)(5660300002)(66066001)(33656002)(66476007)(6486002)(256004)(8676002)(14444005)(71190400001)(99286004)(25786009)(66446008)(64756008)(66556008)(53936002)(6436002)(76176011)(71200400001)(52116002)(4326008)(305945005)(7736002)(73956011)(386003)(6506007)(66946007)(229853002)(6116002)(3846002)(478600001)(486006)(6246003)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB2053;
 H:CY4PR1801MB1942.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SH8GMv7tfpDGO5Aiau2MrqwljDH5p/Ro1YtTXSSu2w9aH+er76cln0tP6bGdthlDniIU7+lNkqAkat9ElVFbva4tAErsHIxhpjXcJAP+yXvk/smj94ByyvaZnA7T6aXUd1q/z37AKh8Csa5si2HCEssSQmvMtWC2gnRL+GmmovW0259cs6Cof+sq1FcOdhaYPBwaYDE3/nsIDoya5AtDZpirSaQkphz+E2Q5ONq5kGruMlLiI5SCnlpv6YBIASzCMJ4jaNBx4xUWAXyL4MuN/oPr+TdE0c9JDXcBkw4Ktb/2yRJ06MvOC3m29VkSZk9jq8ACHxcRcAERAbQvHRmNbb3TS5T9jFfznEde5eoEKLI1bCHTow74OZ9FSaNhg/xAI/qiEtFVBb1I8P1VhdtxV0RA1h1dmOboIvqaQoBgP/0=
Content-ID: <C29135EA5F93B9499F2EBB01FD2B7CC1@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 83f5a003-0ec6-46aa-2afb-08d6dbdeeafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2019 22:19:39.5297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB2053
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-18_17:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_151958_434234_7041416F 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Jayachandran C <jnair@caviumnetworks.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 09:44:53PM +0300, Aaro Koskinen wrote:
> External Email
> 
> ----------------------------------------------------------------------
> Hi,
> 
> On Wed, Feb 01, 2017 at 09:48:52AM +0000, Jayachandran C wrote:
> > The current code puts the stopped cpus in an 'yield' instruction loop.
> > Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> > function here to do a wfi/wfe.
> > 
> > Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>
> 
> Looks like this patch has been forgotten?
> 
> I have a system where CPUs need to be put in wfi/wfe for the warm reset
> to work, and using cpu_park_loop() would solve this.

If I remember correctly (it has been a while), in my testing I saw that
the wfi does not block after a while since interrupts are pending.
Most likely that timer interrupts will still be enabled.

We might need some code to reset/disable the GIC interface for the CPU
before parking.

> >  arch/arm64/kernel/smp.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index cbaab44..0691d2f 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -829,8 +829,7 @@ static void ipi_cpu_stop(unsigned int cpu)
> >  
> >  	local_irq_disable();
> >  
> > -	while (1)
> > -		cpu_relax();
> > +	cpu_park_loop();
> >  }
> >  
> >  /*

JC

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
