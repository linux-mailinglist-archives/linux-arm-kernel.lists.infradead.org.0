Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864441200DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7WunCgtRmDWli6Or0cphtXNHD26fpb1uybQo30NKiI=; b=HOqYyqQUkZ+pMo
	e5LqyGVtMifyc5RnsR+eKeZ9Xvkxqr8DFmKLiFkwgTJ5Qikid2xBQjtREEdcUf82foyce2TmWcSYI
	zfBw5Pg3uQAC76aW42Qjue/iRF0U/Jg+PkUP/kfDWF1pKVcPjBDvKb1y5nfEad1ywlqHmEaNxekNK
	PXj+snp0q92RB847Zgao09rqiH8HHI5y/yiHfXQjoxeLzfmpXYy1Dh538riwZhIYMwU663oeW1Yu1
	oj7ZkDm166B9ngNFYIxb5vd65k8osDrsKiDzFMDhLNReGLsUy1lMAA6AexuFW+7SMokEbkvvtK+zP
	JYTIZLyZCOtGrN2hq0Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmYt-0007Xu-W2; Mon, 16 Dec 2019 09:21:07 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmYh-0007XT-Q1
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:20:57 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A03DC42653;
 Mon, 16 Dec 2019 09:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576488055; bh=t6cavQtunvADQD1tG/r/evV+Xgw5NXgxTdHsUARXkkc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=dMHocs0/ew+a/vsL307APsknFy9ArDm+8QAybwUNMJSGqFeIewviaQZExG9aTbvrV
 O6HxsgA6oHWRNNye3bY8dcWxZB/cEsCU6vk4oo+BYXVCTEfmnFQGiFRjUTocrLtpYD
 7xYGsRy0EiXY87s3XEKtdNEnFfROVu9O3wA7XdKqcdA1nanamePGQeCTBmqXLWQ63m
 hDnWxgYsowDjxCQmross6kliu2QY+dXz1lGMxrPbpPr7f4coFqmuYoLG9fz/0hXoCk
 eJKg9j5XeyF308R3p1iD5qVT9rllxMubR9vMprQbm5LBGzJng/J7ccK4lIdVSRW0/n
 HmW1MP0TdgMIw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id D76F8A007D;
 Mon, 16 Dec 2019 09:20:54 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Dec 2019 01:20:54 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 16 Dec 2019 01:20:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VaP71cYV1gm0U//Y62wPQuDNc2LYewsBFezoa1cOutIbllt9xn7+Ls/FxlKpk+DTQJrYVRn6mviLfBFIzfw6LMvUGSWH6Vg6zn1s2TzLVS/PN8LQ3BAdFG7p0/Kkef1EWxYlaxA6t2Ci8enlugHtOEAasmOmRQdomGjuTvRb4pogMPwgK0MVVj8wYBLmdQmwWGoAg0dQD9/mcuGWZEPCNXMx++m4uO/moZjXHm/6cB0HJL5NefUEjAU3AWhBoAc5A+d/bzglueIuT24/LTg0Cv57nY/h5V6OtZEJm1+8hnrVcRxL0s2aOpesafJMJYH/XW2Arri6ofvrQa8Iqe0Khg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NM6z83btSnq8z6rIIIVugzGuR0i3mEekwop6FPlABE=;
 b=EIteY6eJ8jO7ikS+Qb5XDNwGJhhmHVwsH7ubueUq3i24IQAxbjKyZBYiVJzhnoFMLjk/YRSnrS5/IHBCyZxkLQcQWF61NGGT1Xz/nq5GAJRyJgaegsCw98bE/BeOI6hhK5Nn7EXOo2npg1sZbLR2s2yNDBZKZZbhLPwJtndLqkAuQN4Angh7GTBq7AGSMbQ9Q5/7ldx6xbHH91KvOH2I5b8OY1PC+quGTwYV+nO6MFTIEzNS3tPtTaRaI8T5hBqkNg3zsVNjc8MnYyPKJsoXeh7pMCuZfokgP7mFwuB7gSByGbS3fYGbfkGP51PtR6Q4G/HdLfzqVD/2DEbFJ5Jc3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NM6z83btSnq8z6rIIIVugzGuR0i3mEekwop6FPlABE=;
 b=HZkvyuH3rVijVFoI+6wjf34eiLNnrMVzN/reqPYsku7Yem9U57OpLRYFYaIpjyb+xmV0BhCHLYbi/blNNcUmBRlKHEunmvBxmXXtovOoqUyQFBckaAly6gYhQnQ1UFMGDkcJ7X5dVs4mgqXLRdCDfjuANcwREEd7lUUC1CkHtbc=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3284.namprd12.prod.outlook.com (20.179.64.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Mon, 16 Dec 2019 09:20:53 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510%7]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 09:20:53 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: RE: [PATCH net-next 4/4] net: stmmac: Always use TX coalesce timer
 value when rescheduling
Thread-Topic: [PATCH net-next 4/4] net: stmmac: Always use TX coalesce timer
 value when rescheduling
Thread-Index: AQHVr5PFu+sm2lesz0GPoQlm+JuyaKe6GvmAgAJpi0A=
Date: Mon, 16 Dec 2019 09:20:53 +0000
Message-ID: <BN8PR12MB3266BDA48CE9F65D564B0918D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <23c0ff1feddcc690ee66adebefdc3b10031afe1b.1576007149.git.Jose.Abreu@synopsys.com>
 <20191214122837.4960adfd@cakuba.netronome.com>
In-Reply-To: <20191214122837.4960adfd@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 387dc366-12ed-4277-0da4-08d782093fef
x-ms-traffictypediagnostic: BN8PR12MB3284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3284E40A479D23BD3F828B6ED3510@BN8PR12MB3284.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(376002)(346002)(136003)(366004)(189003)(199004)(186003)(76116006)(66556008)(54906003)(66946007)(6506007)(55016002)(71200400001)(26005)(316002)(6916009)(64756008)(66446008)(7696005)(81156014)(81166006)(4326008)(2906002)(478600001)(8936002)(5660300002)(52536014)(9686003)(8676002)(66476007)(33656002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3284;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UjunnDG/tyg4QFyTkObeXLtDwOMTUsPMCaJThyeJF675Qd30apFzQLQlOn/tlmF5wOL5X5rlX+91/1IYyR5uaKzwZ/gS/psjMfRbQ4313TdG7/2V8wRXJsxxpvGMIivvUgtIUimQj7QsOB9hVwzdayBxJAFd2xrkObuCGLbR/NUGLTPJm/r58KzMUfAJFw49uGLPlDZL6mwVcWTHpemWovTckElcbYjBP86xQCCHGKm0MykKSxxhEILlv01GFZYI3Nje/SxaTnKb9UE7uuzMFXVng8Uy0RgrXlgZa24COBQz2cwsE6Q0Np58An3kvn3U9LXqHfnXqCbBNM/cekn46iM7XZBQTkO9ovowRH0HbBLcrMyJhwzLKCAVy5IaIMBMjZ2PVESNX7whxkV7SO1JWOvPEagmYNxPQacd+9hwJuvWRBwaH4biy5N0GLAzUyzR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 387dc366-12ed-4277-0da4-08d782093fef
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 09:20:53.4372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zi/jeXgzEdXltI7OrDFSupnNK2//BZh+BDOQWHYZP/AA5MM8FqFH22qyvF6rEqe9tgDLdik5TqLuBzp0U1Me0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3284
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_012055_850498_E0DC57AA 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jakub Kicinski <jakub.kicinski@netronome.com>
Date: Dec/14/2019, 20:28:37 (UTC+00:00)

> On Tue, 10 Dec 2019 20:54:44 +0100, Jose Abreu wrote:
> > When we have pending packets we re-arm the TX timer with a magic value.
> > Change this from the hardcoded value to the pre-defined TX coalesce
> > timer value.
> 
> s/pre-defined/user controlled/ ?
> 
> > Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> > ---
> > Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> > Cc: Alexandre Torgue <alexandre.torgue@st.com>
> > Cc: Jose Abreu <joabreu@synopsys.com>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: netdev@vger.kernel.org
> > Cc: linux-stm32@st-md-mailman.stormreply.com
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > ---
> >  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > index f61780ae30ac..726a17d9cc35 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > @@ -1975,7 +1975,7 @@ static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
> >  
> >  	/* We still have pending packets, let's call for a new scheduling */
> >  	if (tx_q->dirty_tx != tx_q->cur_tx)
> > -		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
> > +		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(priv->tx_coal_timer));
> 
> I think intent of this code is to re-check the ring soon. The same
> value of 10 is used in stmmac_tx_timer() for quick re-check.
> 
> tx_coal_timer defaults to 1000, so it's quite a jump from 10 to 1000.
> 
> I think the commit message leaves too much unsaid.
> 
> Also if you want to change to the ethtool timeout value, could you move 
> stmmac_tx_timer_arm() and reuse that helper?

Yeah, it's a quick re-check but 10us can be too low on some speeds and 
leads to CPU useless-looping. The intent is to let this always be 
configurable by user.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
