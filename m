Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F029ACE750
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+u6F+HRe9tDiVLTeh39k99M+LuU6L5/JrQrbnb08vQ=; b=A9yd0/jlsyHder
	WEXK89EMUmc8LslqzJjjyXspzc84IcefgiKzAKBj69kqF5pWUgwBsOkU4+jPHWONxJR5w7Ap5pMXo
	YFLigssZ4NzTmG7qABLSbuamRwx/xA0oiB7nXCohIVfdSFupjEr+ZTgLDGxtgtukPJ1M+AAVWEowR
	IKQihQe/N1yLaX0I+MkKP6uSdmoLpNmMvWCWKHH2oiW75oYvKVu9uk//am8CFLZ8BYvXW7o870ZEs
	JN92C8J/QTN2zbokEED8r9hOqZgCDpFmjPrzczonuVHUbMagzjhnhupZ8TlrrWgYivQA60LTSrNhx
	KLsPs1PPpWMiaH7BzQxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUqo-0003OG-Cc; Mon, 07 Oct 2019 15:23:06 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUqf-0003Nl-01
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:22:58 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id CA0B0C020B;
 Mon,  7 Oct 2019 15:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1570461775; bh=zJBaBqkAq1Pv2LsRNBMG+vGbLR7GF3SkroEzJ98OAAk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=KAeeKAyrQ/OavvYiDGzFtMD053upFig2wgkfysvWxjNaNMPzM8Icp/H4mERRBlO8r
 rE9a0ui5lUqgHkUJEU8MAttuojFxQyNyuL0hj5AxfzPbABrIRqCaVLUK21XKPE3eKJ
 DntCsewIgmAvtFePNZVZatINXsL9i/XBsXKnxdvLV5cPhDnfAkLCjupJYJlyZHJb4R
 Mgz80jYPS1DDBEDNyUh7+14TA3rcQRDUd5GVvWJ0JIE9tDaEfgwtwCGq/5xmPOSDJU
 rK/6GMR7PqDbpcoMiSJmeRKJBB2yUj0hh/ASOFj+BflKQFYCMhHuVM5S++UCswtzEH
 +pDafgVSg8zWQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EB1B0A006F;
 Mon,  7 Oct 2019 15:22:53 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 7 Oct 2019 08:22:53 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 7 Oct 2019 08:22:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nkL/4EytKAfmFNrJbXa/dmYM4kjfnKfTMcCeTFV+FCfnGpZjPTKxSPpQtWP3AFYvHceXOElLCqoPvu7BsmQKWJryC/JoFg2CdH0NlacCpBJ8i6FRaAKjR2hyix+4DcNYdi67DIoUoizHJsl8HvRj8m8qWq97m4n3zkQqA4tEVmisUmP1bd2ZnvGPy15JHUOncRyVn4eCfN5m2qzDxIIe8unMMQ/Qs9JK0bs24mxC6joHZmRNwdE1YIZkUmYArpjzjbuZ2BsfU+9OWEhEl+zV2DKbJ/KY5KTs/xcRLUZThKR4rv8JBAvKrGoCUsKBNXndvxN57oLMcOSWYYuMoOveLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfZskFUUBJ2mYJjg3KVbv5mMkBsE3CDTmVK5AHcvqx8=;
 b=hF53hieRmk0qIrLZVGf4CivELyjjSmL7kmFBSzUxhw4U405nX9jKMJ/0cWhg6drcvR5ngMCiHiQBIcXfdY1tQ8I+zWLTYSqMBtKZktTnE3b5soQOlCe95t4Jj8sVkXiKkvFIi3xrmrxAdktg+fitXl2XR/f1WLnWG7XUVhBKvNDj25vbFLwZqbgQreyN6HphWf2yR3wu7t8m3pnM0SPFQOIg8nmPl60tQEjDol/QVRE4c32Hy8dm6ZRx5N8s/LFHtGlUMHcxJ9cSlW5ON/HxwBvcXbo3rxPKroXiQSNOinSDgq3Vn6DDGudBuPPJ2ZMBPUZgzZcJeN7Ekm8arF766g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EfZskFUUBJ2mYJjg3KVbv5mMkBsE3CDTmVK5AHcvqx8=;
 b=fBtF/NHGkuQmHc/dT/NoArlReAmEmtivro6WuqKV1mIuCsRwNlukRSIhhC1YXhSTlg0IZdmdnEBXmZm6H8l6PgkYv92yytMdiYr6nfniXNKxJHDyv6gPhs80Q+q03RihqY36dz43qvNf/L1mCw2xw9jICrBAmABeY5xz4r/U/2I=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3297.namprd12.prod.outlook.com (20.179.65.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 15:22:50 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::f431:f811:a1f9:b011]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::f431:f811:a1f9:b011%3]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 15:22:50 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: David Miller <davem@davemloft.net>,
 "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net-next] net: stmmac: Fix sparse warning
Thread-Topic: [PATCH net-next] net: stmmac: Fix sparse warning
Thread-Index: AQHVfRFyosdZXcdd1kO+/UasDUBusKdPOOkAgAASA6A=
Date: Mon, 7 Oct 2019 15:22:50 +0000
Message-ID: <BN8PR12MB32660C9CE9B4F96517313E6BD39B0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <b59904022c2f96aca956aa693040faf0dddeb802.1570454078.git.Jose.Abreu@synopsys.com>
 <20191007.161426.108032588372697075.davem@davemloft.net>
In-Reply-To: <20191007.161426.108032588372697075.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 420e59dd-5743-4d44-4e95-08d74b3a376f
x-ms-traffictypediagnostic: BN8PR12MB3297:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB32976CADC7792D711D1531E7D39B0@BN8PR12MB3297.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(396003)(39860400002)(366004)(346002)(199004)(189003)(6506007)(256004)(86362001)(14444005)(5660300002)(7696005)(71200400001)(66476007)(52536014)(66556008)(66446008)(66946007)(71190400001)(64756008)(229853002)(8676002)(76116006)(6436002)(6246003)(99286004)(55016002)(9686003)(76176011)(478600001)(14454004)(74316002)(476003)(26005)(66066001)(6636002)(316002)(110136005)(486006)(4326008)(81156014)(7736002)(8936002)(102836004)(11346002)(446003)(305945005)(186003)(54906003)(2906002)(81166006)(25786009)(6116002)(3846002)(33656002)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3297;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /uMP3CNUEbRcxbi316KXzfaSGdQ6qkv0e5oFx6JAhhHqv24TQLV583NZhKbKKKdZbKLzSm57H6GhU/m/mIDev/Z05cE1TmL7zHn/4EKo3+uYdh/URT4DqJEsyHl4XxcJK8hnBX+XuNiJT1SRidf/JSQymO0q3Xuew3KnOHpNX9+1YRcgQIGuQS3exL3jXzpPf+/PrIxZ2JcNtGqW1PsjvJAWW0Bq1gHJDXP4UOW2H/NwI1ECoQAnLoIDXhd6QHnN4mCJBYV2yqsDaxE6EllgQmeRAvnzgE9zxCdfklzr4DAZwFtlu8NCfmz+5SOdx3JGlvMw48z+bvyEkCsgtXTsxhHMchvxfxxwe+e17j4SwAoD5BYjyxcBEhzbVdHSR3qcFXPVMEcn/UEcIHnfZHLLSODP/UiRG/Mp44k8aswndbA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 420e59dd-5743-4d44-4e95-08d74b3a376f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 15:22:50.5492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ct0h8My16hHxZwzxhz8dL+3Nly8L+00Ll814WGBtAwWzC/IxXRTY8X+7lidj0elTCqN0LdZK9mgJXlGTTvc5aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3297
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_082257_099323_0333A0CD 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Joao.Pinto@synopsys.com" <Joao.Pinto@synopsys.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Miller <davem@davemloft.net>
Date: Oct/07/2019, 15:14:26 (UTC+00:00)

> From: Jose Abreu <Jose.Abreu@synopsys.com>
> Date: Mon,  7 Oct 2019 15:16:08 +0200
> 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > index 8b76745a7ec4..40b0756f3a14 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > @@ -4207,6 +4207,7 @@ static u32 stmmac_vid_crc32_le(__le16 vid_le)
> >  static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
> >  {
> >  	u32 crc, hash = 0;
> > +	__le16 pmatch = 0;
> >  	int count = 0;
> >  	u16 vid = 0;
> >  
> > @@ -4221,11 +4222,11 @@ static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
> >  		if (count > 2) /* VID = 0 always passes filter */
> >  			return -EOPNOTSUPP;
> >  
> > -		vid = cpu_to_le16(vid);
> > +		pmatch = cpu_to_le16(vid);
> >  		hash = 0;
> >  	}
> >  
> > -	return stmmac_update_vlan_hash(priv, priv->hw, hash, vid, is_double);
> > +	return stmmac_update_vlan_hash(priv, priv->hw, hash, pmatch, is_double);
> >  }
> 
> I dunno about this.
> 
> The original code would use the last "vid" iterated over in the
> for_each_set_bit() loop if the priv->dma_cap.vlhash test does not
> pass.
> 
> Now, it will use zero in that case.
> 
> This does not look like an equivalent transformation.

It is intended behavior. HW specific callbacks: 
dwmac4_update_vlan_hash() / dwxgmac2_update_vlan_hash(), will either use 
Hash method or Perfect method so if priv->dma_cap.vlhash is not 
available then pmatch will be last vid. Otherwise, it will be zero and 
hash will be populated.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
