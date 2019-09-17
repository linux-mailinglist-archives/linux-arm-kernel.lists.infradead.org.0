Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B19B4586
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 04:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cYkWqHsmeuEsuL0HPstdvV2f+ZJlQODO+uhywVZh54=; b=kCHNtBi/QFwuAz
	JJt5sl1OVUKxmIK9HgrjCRIL/rnwsvoCZlIqAf+SNOOZe8Ojm/Jf6/WSwetjv5WnWKtus4rcYJhWp
	ILViA7jtf3wD98hG+6/O1CTglfa64wVJ5pKLkQ6aX42bD56sRMNr+5EPnDYqjPmC33wS4+fgWSVf8
	jNJjJTCtp9o7AcUPmwODw8Pj5le1oQFmI7GnwAF2cSINXfecQs5YlvpS8iOMLmLIBRikGWn4hk7Eh
	wwjNL+17se6HrC2lb6+1jEtj85PbXjZP+MPGwLaEIPmRKeOAD2gly2YbMzik4hdU2vbSMTDE7SgId
	qAN96nKj0mhEGcBPsRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA3JY-00084A-ER; Tue, 17 Sep 2019 02:34:00 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA3JK-00083k-Jr
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 02:33:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3wiv+Rbv42z0ME2eQARZ4YFAiL7H+H824WqDZ7JcTJWUM8cZUMNeH4cwhQcVI+bmS20VoFzykdrO0+QwigeLv3v4v3vHDIziMAGrfwRA7qT4dqRiaDm2uehFBBzSvxt2WbJKqokk1p7Lhe7qqH3uHZB+mRTQTdSvrfh0dIj6djf+zjcBK+vw6KE76fUT13N2qagJ3W+T/l9RiV53fxSaPdCiW9hkL3Hcc+OOzXkM5BOss/jR7RqMagRFyfMbo0hJ6t+4D9fpCKZ0ks0hB1nq8p8D0N32noZsJkLHC6K3MHFPyt/TbGhmTdQy2LX9M20BRrt++lS1+ZzB+1kg6bZ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DOgtOYpr1umvjl2CkcJARc0l8vpI6UR+FN/X9w3FiZM=;
 b=WqoF4ebSr4wQhq3T0/TeV6muQHS7mTx2rN5KrodJDPz3x6vrhdz6rjxYR1aqoyCrZrRv/sbMOiKhoJsVWqMmyVdvYJpQYiEmmzDqJRjQ1kxa9K8xL2MpOr7NLBZ88zbA057JyKf+aLOrbLlJlN8WC2oPlkM3zokrpNi4+Y1FPV8o0DzgSQE5YyjPliZnA2mUO8MS7hMSaT238OB1acrr6i+9MzOfYuIAOvk8kREYuLre0at+hopHreb2v5xufI0eH5JrXg4q2xOV6XGxetunMATQdNmFT1naGYITFEbDzaYwWfCxy3VFhB4YYg40pc+mjqsDM/0lalAPZZX1Gpp/Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DOgtOYpr1umvjl2CkcJARc0l8vpI6UR+FN/X9w3FiZM=;
 b=V9WUgK+Igjln4eUOyCXMAikwUTVZDOoSXaiehb4PNoE9vJbDWLY6mcIh2TYybfyUdpctzbIwrHB1/qcm5UV2y83tU0mvaoKi1FZXHzbPiiVm7WPKhR+BBSh4BPlAvECk3j713B6IaHiVkCqdVcGM6oqOrH/LMMLGOS/txkxErfg=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.240.82) by
 DB8PR04MB6412.eurprd04.prod.outlook.com (20.179.249.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Tue, 17 Sep 2019 02:33:42 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::906f:1414:8cb:f7ee]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::906f:1414:8cb:f7ee%2]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 02:33:42 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Leo Li <leoyang.li@nxp.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Pavel
 Machek <pavel@ucw.cz>
Subject: RE: [PATCH v6 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Topic: [PATCH v6 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
Thread-Index: AQHVV851gkIX3+N2p0ibde/0v+331KcvUDew
Date: Tue, 17 Sep 2019 02:33:41 +0000
Message-ID: <DB8PR04MB682662CA68F9F21F6DB82F72F18F0@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20190821031537.46824-1-ran.wang_1@nxp.com>
In-Reply-To: <20190821031537.46824-1-ran.wang_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd3fffbb-53ef-491f-5b51-08d73b177477
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR04MB6412; 
x-ms-traffictypediagnostic: DB8PR04MB6412:|DB8PR04MB6412:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6412E4B10341F14D02F1797CF18F0@DB8PR04MB6412.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(199004)(189003)(7736002)(476003)(305945005)(66446008)(478600001)(5660300002)(14454004)(33656002)(71190400001)(2906002)(6506007)(52536014)(25786009)(102836004)(256004)(316002)(86362001)(53546011)(4744005)(6116002)(4326008)(3846002)(11346002)(74316002)(7416002)(66476007)(66556008)(64756008)(6436002)(229853002)(6246003)(486006)(66946007)(76116006)(26005)(76176011)(71200400001)(66066001)(110136005)(446003)(54906003)(8676002)(81166006)(81156014)(8936002)(9686003)(7696005)(186003)(99286004)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6412;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ixfzE8EjAN0FHv+fpGonwwcYsmLH7WxyhRUOCgULjZGUOuOla0Z2v1IbciD5onA4bcGawyPKoMYNW1Mq8DjvdZM3GR1somW9+sFtz1OwWp7g4YbPb6a1LD05WnqUESWxA/XgfgTOxyFTIwrkE0lXufQa3js3+oIyKSZQFGAuvu8L+hWP+NmtU4+UR28SCS84vCu/Clak3aYZJT1phnsmZU64pf+NLm/SYkqrsfNyuwuQJtPoEzrIXPGFz75Ldbx8YhW0I1td95FXaPTzIdPbuHzHEsloo6ppD2hmN8kex+2VxrsWOUFdYBcvXuo9Np1wOuV+KynNSWt65VulWbs7QiGJOJ9s2wfVf00EfQ2M+pg32x7rpesUcSO1dNt9/11zBFA1RkiUMuYkKJmU3++rDuOvZonvErDBx4Tqa/kEV/o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd3fffbb-53ef-491f-5b51-08d73b177477
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 02:33:42.0150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B+dgF9pf7IGN/lJPhY8Te8gtaMYyAajwnRhsd2l0yb4OrCkrhd+LkMPqGxNV7dViTGUL49en7+ndCusU4cYK4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6412
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_193346_875459_AC00F24E 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Biwen Li <biwen.li@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ran Wang <ran.wang_1@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,

On Wednesday, August 21, 2019 11:16, Ran Wang wrote:
> 
> Some user might want to go through all registered wakeup sources and doing
> things accordingly. For example, SoC PM driver might need to do HW
> programming to prevent powering down specific IP which wakeup source
> depending on. So add this API to help walk through all registered wakeup source
> objects on that list and return them one by one.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Change in v6:
> 	- Add wakeup_source_get_star() and wakeup_source_get_stop() to
> aligned
> 	with wakeup_sources_stats_seq_start/nex/stop.

How about this version, could you please give any comment? Thanks.

Regards,
Ran 

<snip>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
