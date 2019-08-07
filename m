Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9271C84A2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qO7dTdEIq3roNNRRDXNvxuv/1mtYMOyLzSpRaqk9tHg=; b=DEovhhVuCI8Q0Z
	PLtT0dwgFjfLBpdqJA+BrkEomSy5uyPajcjYfYYnpdENYfZX2OjoTHVUqSut4gnTDrE26kz0hBtVo
	iX13BsayipaPZe6I3EDGpB39ayltejz+XM9+XMYubPMvYOC5r9t8gs8UfcLCSG7U+gavzsCg+TJQf
	qqFp3J22ONHs1lhxd+J1AWFEqWyvz+J15HO2jUhPDTh2gI+oI0L5OZkk10gQX0fb5lTz17fTc+6hX
	6Co4sB9HLPhscfdw4cpIgG3wI8FfcQYb8uy0nUMMIY5dr1ockZanihL3eKNXVg90m36+KkEWZiNAE
	unKYGV2jq5vtI/KIUuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJbC-0005dM-FM; Wed, 07 Aug 2019 10:55:18 +0000
Received: from mail-eopbgr730040.outbound.protection.outlook.com
 ([40.107.73.40] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJax-000533-61
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:55:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENoD+yMehG25v9QSulmK8b8tpTrUBSAiH614CHYlEKR0yhv3Bd6oC1eYQS0f7YRUC4XhHKwuhG2enZUgV+hrKqg4mcRU1SRzHrPaEHFFu55I91Jg+QY79rH7Y3XS6vEnxLT/yFmnlRExzwx2qFXaooO56O0yHiwdZsAs0sPY9zX/n3qjKyX4aw2KAL5ZFQTSKPDq/0yaxvEkrgsW3E0TaID3t7AlQm4vNXDk0+YyU+2QQpnwUA8MBBXWrGusPviCCp8skrsbdDZ+vNrmH/7o3gUiO4DtsYECGyXSpYAJefYHPnj/iJrkLvgcKrdrnF1A23uxXQG5As8De2i7UVp4NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EORylzvgMSTu1Kizarvs2NiqOnNmzDynNiBGI83gx4=;
 b=M9l9Xjj8yZjmgCFIBMb6XbMURXuJce5Hdy1AmpZu96Q7HTryRG0pfHH4uG6tcRxF+8UlKRKcARlLkaX+qCxEmGAA8J1sh96HlTiCt4HicrTXlj3TSBF8/Gz0iL5BxWaKuAdZkvslGnkHdfFLd+GbrTeYN7ju63Al8h9jDPftRMh8OiYXxBgRjxIUkiFREWUpHKhRkms17R099XGLCXu2hJN7JS2o4t4YRljVClXNhMm54UmE8q24+cZjffw9YqUhYUMA/YTbRvQrZTmUcOuGRAoklOvrXM2VY4SFsSu6mTuSDclcnGdeWbUqJR95Li7T6I0yAMw/lC03A561d6uNcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EORylzvgMSTu1Kizarvs2NiqOnNmzDynNiBGI83gx4=;
 b=Bf5pxvIGN1eaNia/hiOgDkcN7I5JGNxuW8dLWezw0m82zP0fXf2bENXS1iEVphdAfnsJKzYodFHEw8PRwxmD94AN2JUxI9ssdS80RHS9pifpVjXfLunJ/kwDgh4BTm0imWD9WwLqgn2iUXhIxmOEjALAUg0eTzXasoS+stsJJnY=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1659.namprd12.prod.outlook.com (10.172.40.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 10:55:01 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89%12]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 10:55:01 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Topic: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Index: AQHVTMvE140hqrZvSkOTllezqlrDj6bvREIAgAAdQoCAAB4dAIAAA9yA
Date: Wed, 7 Aug 2019 10:55:01 +0000
Message-ID: <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
In-Reply-To: <20190807104104.GA18773@infradead.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0001.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::13)
 To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10d059da-019e-4f50-36a8-08d71b25b1e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1659; 
x-ms-traffictypediagnostic: DM5PR12MB1659:
x-microsoft-antispam-prvs: <DM5PR12MB1659E473D433B22B3F8EA17F83D40@DM5PR12MB1659.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(136003)(396003)(346002)(376002)(39860400002)(366004)(199004)(189003)(7736002)(6246003)(6506007)(86362001)(64126003)(478600001)(53936002)(102836004)(2906002)(71200400001)(25786009)(4326008)(8676002)(81156014)(256004)(8936002)(386003)(5660300002)(81166006)(14454004)(71190400001)(31686004)(68736007)(36756003)(31696002)(305945005)(6916009)(66446008)(66946007)(66556008)(65826007)(66476007)(186003)(6116002)(76176011)(99286004)(58126008)(316002)(54906003)(6436002)(6486002)(486006)(6512007)(11346002)(446003)(46003)(65806001)(65956001)(476003)(2616005)(52116002)(229853002)(64756008)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1659;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GbgniQUfV0L1SWGCBySXlpjv2glLL7wDaOSGuoqM1Z7ah8WaNbKjVvp3mWoRIkSE1O+NgKCEAVw1bDs7N3sMUWCte4qNqIizT8Kx/UrDlNjuj8/T2Jc23LDcXueXyGfrd3lvYTFYAljVqCIlEOYaDQEAJhwuU5vxR8ixFpI7Oa1ajx82qgQtZJ3cPq46UY86XKRLyfQiuwlegrNab4wb7FkQyFS1XJ041fD22E1AS1nYqP6rqWwqBP+c5vqrqz/PegVWXpzdfo852PumIpzWNaw1tAJl03qlQO+Edoq7LKiRDK1RjDgv1A9OI1IcXYtt95JfoM7doOysWqgafKbhfiB+c/qSDQktNf1S8ezmeF1gMQqPFhRHPelm58DirA6a/1M/RcQvp1K5DRMg/FLmdHwnrBsFjTArHlQVa6sCp3w=
Content-ID: <38B2E3E82706954B8BB64564CFF144C3@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d059da-019e-4f50-36a8-08d71b25b1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 10:55:01.2423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035503_297497_00512C45 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.40 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li, 
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 07.08.19 um 12:41 schrieb Christoph Hellwig:
> On Wed, Aug 07, 2019 at 08:53:25AM +0000, Koenig, Christian wrote:
>> Am 07.08.19 um 09:08 schrieb Christoph Hellwig:
>>> On Wed, Aug 07, 2019 at 10:56:40AM +0800, Tao Zhou wrote:
>>>> readq/writeq are not supported on all architectures
>>> NAK.  You must not use atomic_* on __iomem (MMIO) memory.
>> Well then what's the right thing to do here?
>>
>> Essentially writeq/readq doesn't seems to be available on all
>> architectures either.
> writeq/readq are provided whenever the CPU actually supports 64-bit
> atomic loads and stores.

Is there a config option which we can make the driver depend on?

I mean that ARM doesn't support 64bit atomic loads and stores on MMIO is 
quite a boomer for us.

Toa do you of hand know what we actually need the 64bit atomic stores 
for? E.g. what is the hardware background?

Regards,
Christian.

> If it doesn't provide them atomic64* is
> not going to be atomic vs the I/O device either.  And that is on top
> of the fact that for various architectures you can't simply use
> plain loads and stores on MMIO memory to start with, which is why
> we have the special accessors and the __iomem annotation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
