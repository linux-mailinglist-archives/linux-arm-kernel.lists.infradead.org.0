Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9195756DFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9U+zzpJLNU3a8ZgKEsnYy9gzmHmHyhir3sJqosIsWE=; b=jSUFKnqgq6qnXe
	KBDKb0sh5Sgr5Je3I5GxCbp7RGTJB5lTLULaMzv4JoBKkArjD1Wh8Ts8xaGmk8J2IwCNWMFE3IsCY
	2xNgCqDZjI6A9+wNTL4X0VPeN14S+RLjOx6RUw+aKmQ5ojOqZRvmgikbFv2+hjokXsoDuMstADqWu
	NX0TPsefKqDGxrvihE0Bnns1nPcfxbfWj+Lw0eH/GRvLdGlkqd/FQrslu3kbresehVGWYFAL4LGWt
	xWivjvENn21Z+EEVrZ+mqLyhKId8NOHacyUixL1xs6UzwvLWzYzOemlJpSOZG+RmAuU3sRRKq9xlR
	XpNttlgvPpz3ZDO07kZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgA7a-0002Rw-TC; Wed, 26 Jun 2019 15:46:07 +0000
Received: from mail-eopbgr60077.outbound.protection.outlook.com ([40.107.6.77]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgA7M-0002Ox-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:45:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idasF+fNV/2NSNpe05cKLARhKYMfEgGNwaq6PUXzCoA=;
 b=Z5RQcz7A+HJv5tjI2l1kP+sDLCmzjxHl1vyMQxO3dMx7PM00d4r92FStrgemvkhnlGzWwUUg66C9HkrY0PLYqHthEKzjAbm0JVbqTuOs/kr9hCLgpyROYQepZIIVyisHcWHuDE30n0RloKCKvOfAfxUD4KN7XU33B2bCIsCBpUU=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB6575.eurprd05.prod.outlook.com (20.179.25.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 15:45:47 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2008.014; Wed, 26 Jun 2019
 15:45:47 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Topic: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Index: AQHVK/HAM2r3dJ5EjUuvQfApLyHQmKat3lEAgAA0MoCAAAH5AA==
Date: Wed, 26 Jun 2019 15:45:47 +0000
Message-ID: <20190626154532.GA3088@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org>
In-Reply-To: <20190626153829.GA22138@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0014.prod.exchangelabs.com (2603:10b6:a02:80::27)
 To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.199.206.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 395090c3-c108-460c-e2cd-08d6fa4d5b82
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB6575; 
x-ms-traffictypediagnostic: VI1PR05MB6575:
x-microsoft-antispam-prvs: <VI1PR05MB6575250D31F7320E2C693BC8CFE20@VI1PR05MB6575.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(136003)(366004)(39860400002)(199004)(189003)(81166006)(25786009)(8676002)(53936002)(476003)(6506007)(81156014)(508600001)(6486002)(54906003)(446003)(71200400001)(6512007)(7416002)(71190400001)(6916009)(11346002)(66556008)(2616005)(4326008)(486006)(64756008)(7736002)(6246003)(66446008)(66066001)(305945005)(66946007)(99286004)(73956011)(66476007)(3846002)(386003)(6116002)(52116002)(76176011)(14454004)(26005)(33656002)(86362001)(36756003)(229853002)(6436002)(8936002)(2906002)(256004)(316002)(102836004)(186003)(68736007)(5660300002)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6575;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PO7x2UUHnxQV/A4UKLcEVnD6eJR4Ysj2OBxUB42vJc3dQ95Tq26noIFSHH/c3BEDXNvLIC1YLhjPJAJ9SCxyljVlaJGaZjtsrQflagLvIEbeIbutLKtVj/Zq8aUNdaazTSYPpTGM+nMh80KonObvrCWd96/MeQFkHr8bnaFbZwmRXpZn5NsH/rdIVMeREHr3lmEJGegA+Ciu33JfCqik0gMneY5Nj+1VrVVx2GQupE6hc1rKZ3pqDm/7ahjGLEtzxi5mbF1+4fBpXXLC9lVWZdy9Itn8ouDfUv3jZ7VVv+p3HOwAJqXXZ0FznKWD3fZdbGVeFuCvk1IoSoeCqBM0FvLQnnM40cu2HTx65ap+6noEGGBw5H4B9EzWUy5rXEloAhiqN42y4ab+cu7x9r7CuoemHie6qNwbPknt9MKruXg=
Content-ID: <6C512E815C6B3B468056524CEC187B15@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 395090c3-c108-460c-e2cd-08d6fa4d5b82
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 15:45:47.7482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_084553_011173_5ED07B4F 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 08:38:29AM -0700, Christoph Hellwig wrote:
> On Wed, Jun 26, 2019 at 01:31:40PM +0100, Mark Rutland wrote:
> > On Wed, Jun 26, 2019 at 12:35:33AM -0700, Christoph Hellwig wrote:
> > > Robin, Andrew:
> > 
> > As a heads-up, Robin is currently on holiday, so this is all down to
> > Andrew's preference.
> > 
> > > I have a series for the hmm tree, which touches the section size
> > > bits, and remove device public memory support.
> > > 
> > > It might be best if we include this series in the hmm tree as well
> > > to avoid conflicts.  Is it ok to include the rebase version of at least
> > > the cleanup part (which looks like it is not required for the actual
> > > arm64 support) in the hmm tree to avoid conflicts?
> > 
> > Per the cover letter, the arm64 patch has a build dependency on the
> > others, so that might require a stable brnach for the common prefix.
> 
> I guess we'll just have to live with the merge errors then, as the
> mm tree is a patch series and thus can't easily use a stable base
> tree.  That is unlike Andrew wants to pull in the hmm tree as a prep
> patch for the series.

It looks like the first three patches apply cleanly to hmm.git ..

So what we can do is base this 4 patch series off rc6 and pull the
first 3 into hmm and the full 4 into arm.git. We use this workflow often
with rdma and netdev.

Let me know and I can help orchestate this.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
