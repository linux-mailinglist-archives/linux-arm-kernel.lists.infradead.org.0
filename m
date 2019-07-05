Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426266074F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeWrkmUyaMtlbIaVHn0OuxGTVMB8PymhgptjqCO5/qs=; b=ujpYfaIC61F3PQ
	ri2stEWjCxP5wOM1a6nxlB3vJ1soBKslJjYsec7i5B61+EJwjkuHPFfB7YS27Q2P7vxHFdfTpUhIe
	U17eubXhBIdosC/fVcGD8W23MXbhOWr03wn59cYuWP5Q5ChWEXg+ZvW5MGtzjneU1mo0d2bVQaxgc
	ZGlNRlGFqKvHjc2i9zwWfrfPOeDgvHDIgxaERMRzaCXNV9h7nNVrQARJpS1K/bGGSzIaCStrQTvig
	hnlw8Bgwhkgn7vRDz9r8x0Gk0XgcZ1DPkWnlgyypp1LgK1yVFR+N4Tjo2KDtGvb46BjBoGEDOcnjT
	9tFrpAv74oyQsXoaE/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOrv-0002NZ-8A; Fri, 05 Jul 2019 14:07:19 +0000
Received: from mail-eopbgr30048.outbound.protection.outlook.com ([40.107.3.48]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOrj-0002Jm-9X
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 14:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1qiAtEBlZpCHtJkwG4q444YGHPJFnGegofN5yJ+9dQ=;
 b=l3gKmVtoz6OdRC28gy3OMrlE+3SDnu7rUq4g6kY0hhX9a6+0yTQYtEI5toAod0PkSHX3+RDMRMS3ub/FBULCiMqQffpYZITcMa9M06amka8BlbLHZs4OAEVD+CCVy71cPx2EpWNy+lBLSQ9oc41NI0HAN9MCjrc+skUxyAKtjMc=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB3213.eurprd05.prod.outlook.com (10.170.237.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 12:32:15 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2052.019; Fri, 5 Jul 2019
 12:32:15 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Topic: [PATCH v3 0/4] Devmap cleanups + arm64 support
Thread-Index: AQHVK/HAM2r3dJ5EjUuvQfApLyHQmKat3lEAgAA0MoCAAAH5AIAAxnaAgAwArgCAABJ8AIAAPP2AgADYVwA=
Date: Fri, 5 Jul 2019 12:32:15 +0000
Message-ID: <20190705123210.GB31525@mellanox.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org> <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
 <CAPcyv4iSviwyAPBnw5zDu_Ks0Ty0sFZ6QbEtVVU0PRd=ReRZNg@mail.gmail.com>
In-Reply-To: <CAPcyv4iSviwyAPBnw5zDu_Ks0Ty0sFZ6QbEtVVU0PRd=ReRZNg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YQXPR01CA0085.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:41::14) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [156.34.55.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23bec929-a95f-47dd-ac5d-08d70144d011
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB3213; 
x-ms-traffictypediagnostic: VI1PR05MB3213:
x-microsoft-antispam-prvs: <VI1PR05MB3213C8464D7D5409E5085C9CCFF50@VI1PR05MB3213.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(199004)(189003)(86362001)(305945005)(316002)(2616005)(186003)(7736002)(52116002)(33656002)(66066001)(81156014)(446003)(11346002)(26005)(386003)(8676002)(8936002)(256004)(6116002)(76176011)(36756003)(81166006)(476003)(102836004)(3846002)(486006)(25786009)(2906002)(66556008)(6512007)(6486002)(71190400001)(478600001)(6436002)(6246003)(6506007)(68736007)(5660300002)(6916009)(1076003)(4326008)(73956011)(66946007)(71200400001)(14454004)(229853002)(4744005)(7416002)(66476007)(53936002)(99286004)(54906003)(64756008)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3213;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OXHySS3kGXYFoR8fTp+EyL12yec2p3+BOM6aFore+Im3pyKi5P4GtmIqsv6ZKrzbWKyVp7hdy+8p0je8/r1W7hUP7D7by6lBbUIb6GLoX2xItuS21StUv12Q1Of7kBobFyZJ63Q46bNFRcD2BF2a7t/iA5orFG8cWOxHG2SYbBRih0htRMPVNEdJKr+ve07BItNjDLnJxRPU1RUVWndRSyl6rhpPYrWMxd6Kv+2HB/RtqRkdAMzwcWQyoDIDrfj1Z40MbewF4k3d7N9YDWPePTuoHw3D7OpIUn+OM4+xJ+UGUSinXEWzDZ8w8SUI09HXOgZaORl1UnDUqYJEpuOIYLZX6I93yIb3KQosKLcUpb1OtRoKtgBkbSw1DUvv8Gi8KRT2ZSLBsqpxFQiKOTmNXtcstwPZMUKyY7IWByj/k20=
Content-ID: <6156315727C54B41AAC7D7197EE2B4AA@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23bec929-a95f-47dd-ac5d-08d70144d011
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 12:32:15.8846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_070707_339538_BF8E782A 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 04:37:51PM -0700, Dan Williams wrote:

> > If we give up on CH's series the hmm.git will not have conflicts,
> > however we just kick the can to the next merge window where we will be
> > back to having to co-ordinate amd/nouveau/rdma git trees and -mm's
> > patch workflow - and I think we will be worse off as we will have
> > totally given up on a git based work flow for this. :(
> 
> I think the problem would be resolved going forward post-v5.3 since we
> won't have two tress managing kernel/memremap.c. This cycle however
> there is a backlog of kernel/memremap.c changes in -mm.

IHMO there is always something :( 

CH's series had something like 5 different collisions already, and I
think we did a good job of with everything but your subsection
patches.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
