Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FC784839
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8A7Mx78mwhQGGkPAVuWpT46xIqrrf93A/cr6Kjq7nk=; b=pTDhwLnZFBrTfg
	pbgmEq1nSgWqCztsxFqB4+N2LbOXKQRsQ8cSJDmV4u7KlhbELSCvcCGOXKWxJspTHuobEXzaLsUKJ
	Uzuyv+30ri2ZF7enzrgfzMmjUbVlYLMSJpGbZ/VRd5a0MQ1KXAzxDwmKy+6QfVAy9TgB5ptSE/R4T
	uKRiYcp+wPSUsVnP+u3JwVCAgC9rMPaFTM4UCv9DjJbeKxh2I/HTUQBokgLxbIYhJA33HHLYzt4Bd
	/mU4J552Eprhvoz0j4v7AQSA+FbSx9baeemCj6ehHjPPnlxzYrL5TKFQgsIfP/aGRRv3xW+xy+Sl8
	pmF9LOVz6GVFxTN2fLKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHhY-0001pC-5D; Wed, 07 Aug 2019 08:53:44 +0000
Received: from mail-eopbgr700060.outbound.protection.outlook.com
 ([40.107.70.60] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHhJ-0001ob-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:53:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maMXZUbunUkcBh+vdY5Go1bhRtaVpY0vUOGTcU/5+lkFZD9NQCPeEB38piHX2OA/AIy5ZSN5aKIIr5VfZ3TywcvLFsz1XK295O1XkxMZmFDIo4uIOvCmLgP5z0KFDuoYp+HszEklrMdl65JLYXW02nF03NJzGqptWcwmO+bn5tFrbXRcZPYLzTIgTYRilYnnk8ntP7tnF7Vh4/ahlYAwlIdNdp15/NQ8R0XOx/hpsmpUMjUREbVt1cwbh6tfSMwkSdMTfzmidrnx25fO1txCp8X7yid2N961HJ4tkSprFe3vSIcpw2C7LlwaaEN8MQiqneh/7ISAEfcSsfmhv6fJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wyj9TdYcfisZgKkautYT5py2AvvuZ75t9XGu4Rr6Jx0=;
 b=FpHrhOmuU37uArdbphIxE/LLt6Qd0VyAraUtHLFmSWdwjVDWyewHR1czFERR/u+/WRomiREPq4/5NpZBP+0kZ2o+f6mSC1Wizl9dQyvaQxEl2gMmhVqdDRhQ8+yQVdXFmK7ITGO58ugnnsWc+ntpGtv8ZJlpKGFBe2SbWSQrlsUP7fHcqBXOsoTN4WTv0kyX/Hm+novYOqbqQ/AgUZ5QeODA1iiAbFnqObHHw7yD97zyixmyGKbgywefXH+yJZTmW+RtHdhgiu2rs5mLCxPDKRb8xkMZ3lhnCkkV99QLyAMpco3JukLYH64C7BjSGKJ3yurtmUoxzde1E99stadQXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wyj9TdYcfisZgKkautYT5py2AvvuZ75t9XGu4Rr6Jx0=;
 b=IbcT7TS8rXCjLa7j0FqcRaXpD7oP/seStjWype0KWt8IJO/Rb75QyBavOKz3eWitpc2XuaC1gN26SbmXIzzG/Zf4goAqmw9MCHog3l6p0hfo5KTq4DUkuwyuVQnuJsF1Nqc6aZl1AXs1+LkdSZIhFagbI+BXhAFuDC5KN9Dptzk=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1371.namprd12.prod.outlook.com (10.168.239.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:53:26 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89%12]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 08:53:26 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Christoph Hellwig <hch@infradead.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Topic: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Index: AQHVTMvE140hqrZvSkOTllezqlrDj6bvREIAgAAdQoA=
Date: Wed, 7 Aug 2019 08:53:25 +0000
Message-ID: <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
In-Reply-To: <20190807070834.GA24792@infradead.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR1PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::18) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d06c977a-1957-440c-4f20-08d71b14b557
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1371; 
x-ms-traffictypediagnostic: DM5PR12MB1371:
x-microsoft-antispam-prvs: <DM5PR12MB1371825DBF2548986AA28CB183D40@DM5PR12MB1371.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(366004)(136003)(396003)(199004)(189003)(31696002)(6506007)(86362001)(2616005)(46003)(25786009)(256004)(8936002)(66446008)(81156014)(66946007)(6512007)(14454004)(99286004)(81166006)(52116002)(64756008)(66556008)(66476007)(76176011)(2906002)(36756003)(31686004)(68736007)(6246003)(102836004)(71190400001)(53936002)(316002)(6486002)(446003)(4744005)(386003)(6116002)(65826007)(110136005)(8676002)(7736002)(11346002)(58126008)(486006)(476003)(229853002)(6636002)(478600001)(64126003)(71200400001)(65956001)(305945005)(6436002)(5660300002)(4326008)(186003)(54906003)(65806001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1371;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: n7BWIbSrYjBs1LHn6hwFPwNaVqrVr1BPcHaYassYQc8VOOHUOk1yBfi/AduD/o6pttJnUYNRJBXL+oc5UKfYcF5sHY83h/5z5uDjv+rwvdkaTXg1PxalKdNZoSe5mfyryPlVtGLGvQKiFZLx57FdCuaAOV5kUJQk0rvDhm/iykPWy6ZcVRytcb/cYJUimNsL1pIcq7H9gCwgr4qwokNkfjUHMJXDwZNmoDS9Dvw4vrjEE4KeBRbHY8PFtC/wucxneQlIs241gGRDvyRUqsLk/0pj4injHdojokGzdKDlHQCiicGDOmiKbyd3qhJuY6sGUtelHIvrfUsXJ7WoqJ6gjCFG0/xre1Z7MgBT8USQvcLAOsVojoir8HM09escAgONuQCxHQwUjc5qerqPkDNRxC6xlzTjaC5NCsoj+Z/QEhQ=
Content-ID: <E712C262E9D105428F8F25A3E55ED872@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d06c977a-1957-440c-4f20-08d71b14b557
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:53:25.7385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1371
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_015329_569224_5427B711 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.60 listed in list.dnswl.org]
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
 <kernel-build-reports@lists.linaro.org>,
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

Am 07.08.19 um 09:08 schrieb Christoph Hellwig:
> On Wed, Aug 07, 2019 at 10:56:40AM +0800, Tao Zhou wrote:
>> readq/writeq are not supported on all architectures
> NAK.  You must not use atomic_* on __iomem (MMIO) memory.

Well then what's the right thing to do here?

Essentially writeq/readq doesn't seems to be available on all 
architectures either.

Regards,
Christian.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
