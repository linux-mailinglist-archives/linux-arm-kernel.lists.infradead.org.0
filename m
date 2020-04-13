Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666861A632C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo3iMi8TnTS/lzhpG+Zjytp+/DuWiK9CfBWhFDmPYZY=; b=XOKsK3gws9A8W6
	SantMVGhzJ5ZrFcEoqZHS3Punm+Y02Ra64scKpXQIgOR0RatupxMHFTI+343fHd4TPfXa8YJ2Sb9q
	zqp9NaKVhCEEz18wkaVqqLnEixxwQ12zmEErAQRxtGH/cmTb8I3Qhz35dmY26rNkOLJIe0fPfEcDD
	cgTwZDVSStryhXXp4ToF/by1QO6V3DvZpch0vw+z5FYKSrgjMqj3bakJIocGy1s+06myBOAW1FP3W
	u4a/KaBmfWp6vGdfUQkEv8HOnA0bm4lNIf2hC/5LTniSTDroOwnOS9Usac3DUUZ2j9eqMD7pT/u3p
	GnMN9il6eXXc2/SJb0kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsnZ-0004zw-9O; Mon, 13 Apr 2020 06:42:25 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsnS-0004yY-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:42:19 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AB1CD403BE;
 Mon, 13 Apr 2020 06:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586760135; bh=LwhkAEte0hwl7z4WclZd8hlgf/pAq4y5l76Pd+zJlNY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Z4nIJ8NCPDW/X7sfijmXsRLSHHSQPDudjcYlxUgs4INe6ML2IDFFlDQp35bS/gcEa
 W47MAv4N0Biq+paw4m3L5YfzlU5/WIWugN3OTbnyxQGDMv2cw8t95EoHBAp4BMGqCe
 PQN3PdqN2v9O852B5x9zJw8P8517BGMErvcHifvlRC5rGgoxQHiW9Zo7VYWM4ZnEyK
 KmNn3t7XtRC9/8xNXoeGfdROAXDGu0Jzl0chpE6mekc5dSCA5JCgl+2qWQht+xbSVL
 i2d9FdvnLbABCGke2zh9YDEX3P+iAWl8fA3akn+/eNvQIw7Rv6u87sWp+K9mcPBPpV
 ZknU74lTw1t0Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7FB55A0069;
 Mon, 13 Apr 2020 06:42:09 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Sun, 12 Apr 2020 23:42:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Sun, 12 Apr 2020 23:42:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVu5U2ckGxYoLeKj3nl17zq6ZjfKRLPLnEcrGqtuiImEbYYL+SmVAheFGncHoKgXGwVSE9PPc0O2thmVJ6LQlcmCIyR5NmnxBEJ/rrMe0cmbrO3N0WdmVgS1vOTwIql/Ys5W8tj8XzEUNWKwdLx/xWZyZYXYehhkj2krzFbuzB8Qv+ZtZgyeA/tRcryLMDVV8kG98QvQGb8uh2KFq6EuRSzVSYDIT+fw8hYiTIiowJhohHLmi4dbaMqaWZApxiAD/zKexLnjiYOQ45cNIjNgNpwND678dckOEDF1bpp24LQ24YL2NUYtsuF42LoBWiQK5ViWUfR3+cAUeAYiTNZj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwhkAEte0hwl7z4WclZd8hlgf/pAq4y5l76Pd+zJlNY=;
 b=WwR5t8rBwLZbdiZ23+ClGCXrfEr0X9KU41sJgrKvb/GOxVrQHvlWeD0DqdifNEEowtNHiEg65FKvo6M/G/iUmwrsUXrJbTmrWfCKNNlxGKmyLTARUG4L2tuoDiAy+i6zwuyt9/ehJRTaAW1bWMJ1kQwWGXmCZXMPFiwKZ6JrY7ZchXvUy6UJzS5QxDabIr/hMa5JiSzpriprrHamWWaBaNtDAo/Xv66Rg2bkAbx2sDGfZNbL/uIMO9aduDK43j1sY+PT9n/6zlaeS/r8uxZ8AOMDHca+qQl4DPtbCVr/kVGYr0AhgE10aJlsnLpQQ3eG0L6kBSh4g/YCK1aDlxmmmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwhkAEte0hwl7z4WclZd8hlgf/pAq4y5l76Pd+zJlNY=;
 b=chlN3BLduqVr7LTS6CKtIc5TW9TWMg8e/6rcb47bVOHl93rWOTkUXwvkTu2RLTP4f73SASxjjY6oDrc5lR2xtcvn/Kker9qAKJ2sUUczR5+526asHP6a89Iy7bOBrUgN8pGyPSIA9PKLG5hp4TNIPsXKr1KPzaLpjh4OY3HQBMk=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (2603:10b6:408:6e::17)
 by BN8PR12MB3090.namprd12.prod.outlook.com (2603:10b6:408:67::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Mon, 13 Apr
 2020 06:42:07 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::651e:afe5:d0fb:def4]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::651e:afe5:d0fb:def4%3]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 06:42:07 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>
Subject: RE: [PATCH net] net: stmmac: Guard against txfifosz=0
Thread-Topic: [PATCH net] net: stmmac: Guard against txfifosz=0
Thread-Index: AQHWEH11lcj1LhRkfUiqKOYMl1gtAKh1zzAAgAABHYCAAMjRAA==
Date: Mon, 13 Apr 2020 06:42:07 +0000
Message-ID: <BN8PR12MB3266A47DE93CEAEBDB4F288AD3DD0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20200412034931.9558-1-f.fainelli@gmail.com>
 <20200412112756.687ff227@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <ae06b4c6-6818-c053-6f33-55c96f88a4ae@gmail.com>
In-Reply-To: <ae06b4c6-6818-c053-6f33-55c96f88a4ae@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c2da273-6af1-4dfb-4dc7-08d7df75c94f
x-ms-traffictypediagnostic: BN8PR12MB3090:
x-microsoft-antispam-prvs: <BN8PR12MB30900E04FF9824EAF2B4D2C2D3DD0@BN8PR12MB3090.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR12MB3266.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(366004)(136003)(39850400004)(376002)(346002)(54906003)(2906002)(186003)(81156014)(8676002)(8936002)(316002)(110136005)(478600001)(66946007)(76116006)(86362001)(7696005)(53546011)(6506007)(66446008)(64756008)(66556008)(66476007)(26005)(9686003)(33656002)(55016002)(5660300002)(4326008)(7416002)(71200400001)(52536014);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gmC3Y717AZT9f8dWVlhpEWOQhZKtIBHEN9mccwc016fHn2T12tL+PT7bOhyGhoPVP/+lx/OTuMrkXBntKrTnt/CkMczgZmjviDX3wM60ZHIg3ttYwlXnBfiePbwOFMx7NNaZpMYxVPC8K8aT2vJbEMBczgCFQnR3jpmhdpcQJP5dsjSeDJM7+d/ktPVKdS70Gq8lB0Da+1PB1OJ6Okx31D9UwGUaDUqcEnnhwgpogCJHDd3GG7Vf/Ca59nAogID4ndNoqEMxdTBReRRc3bVjJkNtrD6oMz53zTqdljo2Lnj8HbthyLnzGvTvRKU8pdiubYXZse0/wXWI6ybgocWnY87ZEhvpuIWnfKclkhqkO9zbyGfrFGmgk/+Sr2bdWIPHudGO71j1mdJ8vU1u96VbolQ54zoBHvhUmACJ2L5OPxn7Kt3vjJ6maY+/heVp440V
x-ms-exchange-antispam-messagedata: 4MX2TyEhoKkHh7HvGq2dtHfDySOILoXGrw262Xbbav62SI42h0kTmlwlTtiKcvUeOU59AeKa4rb9ZnfHKahIC8YkSV8Mw+Ll1RhMJOVnw/R5rRs301cjqojFPCZoVnbuxf/9mXZ/ctZhoIF6M5HLPA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c2da273-6af1-4dfb-4dc7-08d7df75c94f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 06:42:07.6500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uogZiEcZ0XgLg96vj4TW0o1t+b15Ns+rmhIsPI49l7l/on6C+f0gGZ13dxLX++jniBPsiVJaqajrv+bXNvJG4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3090
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_234218_320956_F1B95249 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, open
 list <linux-kernel@vger.kernel.org>, "mripard@kernel.org" <mripard@kernel.org>,
 "moderated list:ARM/STM32
 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Giuseppe
 Cavallaro <peppe.cavallaro@st.com>, "olteanv@gmail.com" <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated
 list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Apr/12/2020, 19:31:55 (UTC+00:00)

> 
> 
> On 4/12/2020 11:27 AM, Jakub Kicinski wrote:
> > On Sat, 11 Apr 2020 20:49:31 -0700 Florian Fainelli wrote:
> >> After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
> >> configure the MTU for switch ports") my Lamobo R1 platform which uses
> >> an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
> >> by rejecting a MTU of 1536. The reason for that is that the DMA
> >> capabilities are not readable on this version of the IP, and there is
> >> also no 'tx-fifo-depth' property being provided in Device Tree. The
> >> property is documented as optional, and is not provided.
> >>
> >> The minimum MTU that the network device accepts is ETH_ZLEN - ETH_HLEN,
> >> so rejecting the new MTU based on the txfifosz value unchecked seems a
> >> bit too heavy handed here.
> > 
> > OTOH is it safe to assume MTUs up to 16k are valid if device tree lacks
> > the optional property? Is this change purely to preserve backward
> > (bug-ward?) compatibility, even if it's not entirely correct to allow
> > high MTU values? (I think that'd be worth stating in the commit message
> > more explicitly.) Is there no "reasonable default" we could select for
> > txfifosz if property is missing?
> 
> Those are good questions, and I do not know how to answer them as I am
> not familiar with the stmmac HW design, but I am hoping Jose can respond
> on this patch. It does sound like providing a default TX FIFO size would
> solve that MTU problem, too, but without a 'tx-fifo-depth' property
> specified in Device Tree, and with the "dma_cap" being empty for this
> chip, I have no idea what to set it to.

Unfortunately, allwinner uses GMAC which does not have any mean to detect 
TX FIFO Size. Default value in HW is 2k but this can not be the case in 
these platforms if HW team decided to change it.

Anyway, your patch looks sane to me. But if you start seeing TX Queue 
Timeout for higher MTU values then you'll need to add tx-fifo-depth 
property.

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
