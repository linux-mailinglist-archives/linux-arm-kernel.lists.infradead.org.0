Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F0F842C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 05:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pnS8HxKG31oqj34TNBVaUYfqWlU2NjYGfithS+6fkU=; b=FCpCY6O9ymgNv2
	60+ouCm2WxCKrvQWL4VziEGTL4vCj3f+8sVilpggis9gF4pPn61y3o5MeDzsMLtu7pz2+XgkI1iNO
	cZsDdUXo6DpQ7TO4fn1WwPLjsgfANMLzmQENeaBhIQAAZYjN0/TiEDbEyo5YjczSr0WNzZZlLeIl0
	tmK67An2TK7BVTpC2aDu8xH9auCSaz0qwzPdSAtmEvCWXXQlKN/nBE87hH5r+uLgEwIkYgbLEMuu4
	UPwxkeNorotzgUm8606DzO9i3imw5X9mR+pap6jlgIisOVlbAv+xSiKWYd7oTfY1JK+NKt8H3QON4
	rb+HCGERN756EBfOTzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvCKF-0004Yr-QN; Wed, 07 Aug 2019 03:09:19 +0000
Received: from mail-eopbgr680086.outbound.protection.outlook.com
 ([40.107.68.86] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvCK6-0004YH-0L
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 03:09:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lElniQXwqdKJ90gdgk++iZwRYczLtyNkzhvvnW0NsyqujlZuAgw4wf5dvB+6R34FEne2FV7G9WxtH8F64qTLVRe4n+Q1vXqq5JpNJujKOlJOXRFQfhAqX9hGVkyoXk/20Fe08VK9kLxGlsO7uLRRCEYE+ACk+jiCOjp18qcyJTkR6x7LFCbkY4yyNofTfRRqEZMJtdFIVeRkY1n8nZ3ZLtaHwibZiAuDdKhVzYzPGYf9T4CN+lNunYzS8YDZ/RmFGI8/r2jO1QYfFo5qFjiZHsNqFNF+YydL0fIA59VbWyskYgx3gkd5G0TtxYv9G7rlH0xaBJIqxb83CFqKcnTEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFTqavC5bZ0Xn9zq9zxHp549mm/WODx/cknwVAJtx28=;
 b=nN2rc59Xli30jpTjDgv4DoGA/4TCtTzkIGgeHWx4CsmhtFc7jRFhT+GvpfQzmKGvbXIDKsy3lf6H/wGoThiKtslYNp05S4/DPbDNcijNdpmVhbuitj8heo50TJI79gDN9i9uXImHKeDkPkBI/BIc/VzC511rs/kMN4ORrj2BZ5eSShOj7+B+G7bW28t5bujwQWwi6OOZmBkvA+JU8/F82lLX3zIgtxEqCTwq4Cfyw9Qs9fKhE0RpoQXum707V/dhWBjBO8QKxz/AvYAab6/7WkwGcSC5shlCh8Wer3leeguhqroO2Qiwy5B60NBegj/MvCPXlcarLTUMBu6KPBjHFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFTqavC5bZ0Xn9zq9zxHp549mm/WODx/cknwVAJtx28=;
 b=M1lPi+2xEOMhM3ptRgkvEHZ5EUOVbJUlnuI4TmYLNaE3YdvdJpSqr7OQQZ+l0aqIuAs3Bt2TDrA/+ayxxyhs/GOGdOiDHrnQgCKuzqmSRxty0eMqeimmOLBQS4CG3TbLbJcnlYqkQsHR/LwHRgaXEomdSZEOd0wXIserh19qQUs=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3591.namprd03.prod.outlook.com (52.135.213.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Wed, 7 Aug 2019 03:09:07 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 03:09:05 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Tao Zhou <tao.zhou1@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Topic: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Index: AQHVTMvKn2cibV5eE0W0lKhtRWOdxKbu/lEA
Date: Wed, 7 Aug 2019 03:09:05 +0000
Message-ID: <20190807105759.58a28ef0@xhacker.debian>
References: <20190807025640.682-1-tao.zhou1@amd.com>
In-Reply-To: <20190807025640.682-1-tao.zhou1@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0187.jpnprd01.prod.outlook.com (2603:1096:403::17)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c31620f-20a0-45f8-5338-08d71ae49afe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3591; 
x-ms-traffictypediagnostic: BYAPR03MB3591:
x-microsoft-antispam-prvs: <BYAPR03MB3591255330BF4B15E84689F2EDD40@BYAPR03MB3591.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:651;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(39860400002)(396003)(376002)(189003)(199004)(54906003)(6116002)(76176011)(3846002)(52116002)(99286004)(386003)(71200400001)(64756008)(66946007)(71190400001)(66446008)(486006)(6436002)(5660300002)(66066001)(7416002)(6506007)(316002)(66476007)(66556008)(476003)(11346002)(6246003)(8936002)(86362001)(50226002)(4326008)(446003)(25786009)(6486002)(1076003)(7736002)(102836004)(229853002)(305945005)(8676002)(6916009)(53936002)(6512007)(256004)(26005)(2906002)(81166006)(14454004)(186003)(478600001)(81156014)(68736007)(9686003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3591;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DkaHdeJ+NUkEmC+oRl0E+NCwmmXtfEwK09OW1TGDF6lgO7ekqytTnoAf/Pl+/BnjxOmifumz8z1YQ6fjU5DqN0TyAwPPxOoM4vWit2vhNwMA9rXXkkWd7cRJHx2A3gnK5tl35JPnjgbPr5/RvnkoNKYP3d5+NlTwian9V+4nk3ZLDqrDsqhrSOEZc9iTfIcu//NMlt9novH7mLtxtPYe5M5gWY5FG4EDEI8ILu7lWDwuXgFFrRiIIVsGYmKbSWkAjvifkTJyTMkftP6TLmJYnB/sfnngr29BBrv9N5z4m6ZTHAwIZGlPF+7QDtQQJyHoBt4JLrV85DzSE/W+kk6SUUeHJC4UllNKl80gT+fjEUBBQPzWhhmyunKjGQn1aIgFzKzYRJciPhRJwAWb32ABK7YupDeuY7ieAWJJzGEQ7dI=
x-ms-exchange-transport-forked: True
Content-ID: <5E427FF48ECA554D95F17DF5415C85A3@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c31620f-20a0-45f8-5338-08d71ae49afe
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 03:09:05.3437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jiszha@synaptics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_200910_120094_EBC34762 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.86 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "alexander.deucher@amd.com" <alexander.deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "dennis.li@amd.com" <dennis.li@amd.com>,
 "hawking.zhang@amd.com" <hawking.zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019 10:56:40 +0800 Tao Zhou wrote:


> 
> 
> readq/writeq are not supported on all architectures
> 
> Signed-off-by: Tao Zhou <tao.zhou1@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 558fe6d091ed..7eb9e0b9235a 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -272,14 +272,10 @@ void amdgpu_mm_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v,
>   */
>  uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
>  {
> -       uint64_t ret;
> -
>         if ((reg * 4) < adev->rmmio_size)
> -               ret = readq(((void __iomem *)adev->rmmio) + (reg * 4));
> +               return atomic64_read((atomic64_t *)(adev->rmmio + (reg * 4)));

atomic64_read doesn't equal to readq on some architectures..

>         else
>                 BUG();
> -
> -       return ret;
>  }
> 
>  /**
> @@ -294,7 +290,7 @@ uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
>  void amdgpu_mm_wreg64(struct amdgpu_device *adev, uint32_t reg, uint64_t v)
>  {
>         if ((reg * 4) < adev->rmmio_size)
> -               writeq(v, ((void __iomem *)adev->rmmio) + (reg * 4));
> +               atomic64_set((atomic64_t *)(adev->rmmio + (reg * 4)), v);
>         else
>                 BUG();
>  }
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
