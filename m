Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B984E84C3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ksa12aQ03vTbRo4KWYoTI9IqCxOhZ83qa+wfJ5+UUO8=; b=CJE3Z4oUPCRH1L
	RTft1gUNF7UnSfityhIF1aJo+WGk/npLigRBQyKeGMTXR3e2k+mNbRNl6sNOOuZVxEZc5hhCHIeqs
	0k7N8YY5JH/mzewQy831PR5o1iyps13SVQtY/cIZMUV+7dU7xRv0GU/JrngQ+l7bFeiG3PI2QghdA
	dnnbj4fBVnlGTiPZnKZdVbnOWx0G6JrhwerDRRNLsdFmtNto2SxbPjM2ndn4nsphDvyJmchgCFWHw
	7DPs8Jkps1eLIh4XufIXHAugUiQw+OEti/BnqXuzNWI0biVEcPNKPL8Zbb1eUMQ2m0boeqwGnyYas
	KLkU860fMbi7FZH5dG7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLZ1-0003WU-HN; Wed, 07 Aug 2019 13:01:11 +0000
Received: from mail-eopbgr820050.outbound.protection.outlook.com
 ([40.107.82.50] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLYl-0003Qg-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:00:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cxDusy/ITRoxkuX2qdty5hBGpr5+JKqCT6gCfXdNVL03rEQ4mkTereHimWuLaKfyRRENger0Ht/G0gWqWLANTjcnpKmwtpvSd8sEMcg1z2P8PEPkYYgzi4HgmtxVpf037wX1qAVT9iLYNblAc+BdTUtI5P6sF4glRKGv4w3mWwRPNMrnwHWglYZURQewb2xKCE3BEv+sSt9XOWq/YX/NuBs6/BQfktn84fUKFO7tz3l56rx8f8/1aDwd2ljKckFlCEpegH5EYfiJIjRuy56xoyhg4q8seCQW9Mkr2gTvC3q15NJbrMuK4z0ZeyLb/ZPwC+xt+9SPXa31nrEk+J/SFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=golE59snXSsoZf9BXiHAve3Dys1uv/umkuI1QSovSNY=;
 b=agcts873SHk3B6VWIFpNeV1Y9p/woAvAJ8T51arDYnwSCh/Kokvsqp/Fr+Q+i6H9ip3Arl/WGXyPo30vbj0PwLrq3+dKmEAKZa3Knkm3Lt24pUJa7n11DFU7FgbWSXrMVoOMp8b3X/W/v8y16fBfLAWQShV/jL0aXrwy7sRWNroe/LCxgh8omij412CV7d1zCsv6QzTg3HtpaXk8hxq2sT60hW3Bg5MvL3Q0nwbTbGVmJ+52TGKUMfPvPz56xmJl1Sz1md7ReaVFWeSr2PdfUl5eLyESnNP/NnM3ADfdv52qj/83gD+umpl2pl20chztZ4edtEqMnAt7ItnCmXVmOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=golE59snXSsoZf9BXiHAve3Dys1uv/umkuI1QSovSNY=;
 b=OJNZkrJnn49hYTQl/i3YROB2pw6WOK+i+5v7FAr03aQQNKG3gzGwhj7L6g9X4Ihx5XOwRbXk52zNwPcnRK60siJlkvZbw2sDQH3pdITdFHCZoeYxvSJ/D50x9hhVp5knwajBGPX+Q8j7ay/8Io3tZhApM34m9STc0VHNSsFcBKk=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1932.namprd12.prod.outlook.com (10.175.89.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 13:00:48 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89%12]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 13:00:48 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Topic: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Index: AQHVTMvE140hqrZvSkOTllezqlrDj6bvREIAgAAdQoCAAB4dAIAAA9yAgAAizwCAAABWAA==
Date: Wed, 7 Aug 2019 13:00:48 +0000
Message-ID: <461cd4e8-31b8-def3-ca92-5b33db8d5621@amd.com>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
 <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
 <20190807125928.GC4048@sirena.co.uk>
In-Reply-To: <20190807125928.GC4048@sirena.co.uk>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR2PR09CA0020.eurprd09.prod.outlook.com
 (2603:10a6:101:16::32) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 132f11d8-5a69-4efb-4d60-08d71b374496
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1932; 
x-ms-traffictypediagnostic: DM5PR12MB1932:
x-microsoft-antispam-prvs: <DM5PR12MB19328E1890FDBBDE1693282D83D40@DM5PR12MB1932.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(366004)(189003)(199004)(65826007)(36756003)(229853002)(76176011)(6246003)(53936002)(6512007)(31696002)(4326008)(46003)(2906002)(6486002)(58126008)(52116002)(65806001)(65956001)(4744005)(186003)(102836004)(25786009)(6436002)(86362001)(6116002)(64126003)(71190400001)(71200400001)(5660300002)(8936002)(68736007)(8676002)(6506007)(386003)(486006)(478600001)(6916009)(476003)(81166006)(54906003)(81156014)(2616005)(316002)(305945005)(256004)(11346002)(446003)(66556008)(66476007)(66946007)(14454004)(31686004)(99286004)(66446008)(7736002)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1932;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GXokAMpxEQT/31g/DcjYUCBbL+IA0PUVUOedioH5Xbcx5vF4anx7iJfdV2h1IGSHYgwsV2844I+sVD35lVUoZyJ3IP2noIC3HG7VoyzRGWXeKgyXmYoF4wnLX+U42IpQUuGlqEX13jxeMjJ0A/+ztWKoJ5woL+e2u5lDtAIqB9jlemcVLIdMsle7Jae29zcemSxbzb/nVS3R8LHL3bNgz+Qtn49Outzn4z3i6HmLCnfYXWxGyJ5kt9+FqmdPezq/X9pM4gXVQmRI0F+x1hDcbXcbBPbQpw+S4Y9BiBhv0HFZZGkFjvX9BER5ObASDdojQao/JGHPxnu+Hrnbt0MsIaYL7j0Q3fFn8jLOL2512Bxf4YQQQLB5Vq231AWhjPqlyXHN7hqI0u+vyFV190Tzstf3M4tguHne7ya51T8Rvqw=
Content-ID: <67123906504AD747A27DE40B9DE5512A@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 132f11d8-5a69-4efb-4d60-08d71b374496
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 13:00:48.5815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_060055_467799_02ADAEB8 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 07.08.19 um 14:59 schrieb Mark Brown:
> On Wed, Aug 07, 2019 at 10:55:01AM +0000, Koenig, Christian wrote:
>> Am 07.08.19 um 12:41 schrieb Christoph Hellwig:
>>> writeq/readq are provided whenever the CPU actually supports 64-bit
>>> atomic loads and stores.
>> Is there a config option which we can make the driver depend on?
> 64BIT should do the trick.

That doesn't work because 32bit x86 does support writeq/readq as far as 
I know.

Christian.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
