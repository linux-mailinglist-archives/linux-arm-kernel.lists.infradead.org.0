Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A038B1200FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DKi+VbHOS2LI09V+uEuUeKt68Y/n/dWl2Rwiq0DTS0=; b=lwOMmmmP5Nz1Yq
	PXvFZM+B8Fdbktr6b2O02zaYXrUs4ogEsDjWg5OXiMLIp5xMo6siEzxyZOBSWN30m0Eh0u046Y/8S
	4OFeWUV8o/9HW1Lsu+Tk/Ae18z1jQVD2A41wK2eRStX2w48qI20qN17PeytEc0c9y205nNuMvLxqd
	k+nDhypnAcMM6IYB/gQ9MWzie48iCT4ikM3/5ZclwXwZnhC36Sf/XTu+l80hir6X5TUyF6R/7ma+t
	1Dei/UjMyNu+Ke6Kgf8DpIMs0pb2F2YMuvrYtO0YT/2/diawBR8R7A9FeCx3cW23WMs6Oca0yzAZb
	+ufWx406jw2XRqBfzdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmeH-0001iG-Vf; Mon, 16 Dec 2019 09:26:42 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igme8-0001hJ-Ej
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:26:33 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id DF950C00A7;
 Mon, 16 Dec 2019 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576488391; bh=VqE/VXg+vV+Li+3VRW2K8tKQYknthHpXqMs1+Qjnbns=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=O/AzOzKxdkNz6NWBhowZTraYvTQL83By659a42a+OHeX7qWA2odlhOJ0BNM/YvLOh
 pohhBjJJK8AK85svOVn+uTAT5EmDxw8YhARzfaBHFUl8eW1OSOOFDlRBGTIY3HNeIK
 xq9x6TkPxdiru0Gtdxy2ZqxeqXkgUwOXELEqIbmkC87VNcv8tkzXKsjHIwgt4Nrj5u
 L+mJlypAqn0bmGVVmKhwHKfKT4wi7MgO0M3d+k9KXSzDoeDKzzrIJoXeHm0PH21/Lj
 fYPzmvFLK1MUQ3vQN7vZvXt7vnrxNLkfNkHrTPzoKh2MRE0C/AmhPN2eURwoTDf+nW
 y6Vlg2/V50LNg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 53EE3A007D;
 Mon, 16 Dec 2019 09:26:25 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Dec 2019 01:26:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 16 Dec 2019 01:26:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jGaNTXRnw6wGN27Sk4rAphQwqH4ME4usVRm3CHMdYSwp5hBzg/Y6lBzRZy0mWk2stf/FY2AlEey87vNGjveJ877u6xI9LDy45m55jauaibRBAZ0mNFJkfO/CXrhvitkCCpq+rhspFHUhpAb2vld0NWOjO3u4pAhC7QrruXQ+vKr+jreX7E5MCheU5y0uzDgjwaT0i1qACfFRkZ3UW5fzQ5xQdaPvR1AWWTotd8PNh/2iJlFTVMHwGyv0aUcsnG+E1nQE+eyRLv5/7zq1O9aJEFzxLtNKTnt4xePzAZSNb3rOtC1BB3C1wDuzcWoze3d2vXspWFzSN8D8srXag/b4lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqE/VXg+vV+Li+3VRW2K8tKQYknthHpXqMs1+Qjnbns=;
 b=NKjSzUB3hXu+yHdEczsnRmeHHZsaKR1+O2wgYXwcoBnOcSW7WCcpsJ9JwxYbiH7lzrVxhFtoDEi5z+WCA1AdL56NVtmtzjsiznKVX2eL+JZBxsFFWto0sg8Lv0lJh6KDpvcTiqwaC2SHk5lJkMn6LqdbTyWlt5n7oJuzUh7fQHKZSSmAQJ0AWs13C31Fu8X1ZBUfDCwXSCwIhLJnEToxXoVx2Scd/g6WRHlUb0SIeqDvfFCvYIECRl6eMX607vdUxu+F6bzh7Z5yAhl+rN0RQd6f7Jh1x0qQHCXI8WCwc6jbg44bXlEJMrtW3e7HoupQ9iDXOjYtAo5O6Ii3v5JR/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqE/VXg+vV+Li+3VRW2K8tKQYknthHpXqMs1+Qjnbns=;
 b=Ww0rOw61UkDyYzfgQE4EYt6mFqK+OXREFJgyuchu31AHh8l7oyrw5NK1QKSRVWXDN+SVv/BhZOcPD6ljpWlFQE3X1TtoHx3Bhh40V8l7hKuI8tkHqFsSi3cAboVKX5SM5t83LBtfFzVAJ/WNzh5JtUeXSp6+o1P5otmCJF+PfiM=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2994.namprd12.prod.outlook.com (20.178.210.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 09:26:23 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510%7]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 09:26:23 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: RE: [PATCH net 0/8] net: stmmac: Fixes for -net
Thread-Topic: [PATCH net 0/8] net: stmmac: Fixes for -net
Thread-Index: AQHVr5DiuA/S/u4Lb0GUkL7jqplpwae4yfIAgAO7yTA=
Date: Mon, 16 Dec 2019 09:26:22 +0000
Message-ID: <BN8PR12MB326639325F465266DEACAA64D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
 <20191213162216.2dc8a108@cakuba.netronome.com>
In-Reply-To: <20191213162216.2dc8a108@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee42dd07-2751-4a2c-2d90-08d7820a0456
x-ms-traffictypediagnostic: BN8PR12MB2994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB2994598EB0751D1EF528A922D3510@BN8PR12MB2994.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(186003)(316002)(66946007)(54906003)(6916009)(5660300002)(33656002)(66556008)(66446008)(66476007)(478600001)(76116006)(64756008)(7696005)(6506007)(26005)(2906002)(71200400001)(9686003)(4326008)(55016002)(8936002)(81166006)(52536014)(86362001)(81156014)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2994;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rq/5T77uCWoaPGCq9QEHSHrvONj8AeSD2Lac9RuOP15uUbIYOulJpd3F2vjfJubSNVBAHct+CsctIDhYPPXVvDwLfKNLRsvEPCeWKg/40KqboEklBPJCLH6Knmb0NbzkvZw+YgEXniH0GE8p6xeNzrl9CBgzJwdz6QBt57zrHoizThXzN/7vjyDod43OexQDED1mjulMEM5tCQOwstWmV4M94C3ZOuqDRZfFNzcRaDeRBvQQjCDK1r4LTCz6fUpdBYQJh/jlgra7EyApZZND7Fp7GNHG04HKNX44NTRWeaPsdVQ8y9SqmY7FknkKb2aaxt7CmNs2jhG8JTnQo0nmm0LS6CZFLHTeIwg//3GThjhKJrXz6JnnmjkaTyeC96S8QrVESSnh96PrKuvqyWouczVLNd5UIFo3cfNi6NM/KIbqJ1gel76apqKZbf8R/VSP
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ee42dd07-2751-4a2c-2d90-08d7820a0456
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 09:26:22.8426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8k+GIvVuJ9NtsjZA/P5bnQjIjyZCTWa1KaYRvUOWnrqj6uJ2vvYN9a8vhFTM57HOPwOBzLGdZ6qfn+GbBFtj6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2994
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_012632_568176_7C104842 
X-CRM114-Status: GOOD (  13.42  )
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
Date: Dec/14/2019, 00:22:16 (UTC+00:00)

> On Tue, 10 Dec 2019 20:33:52 +0100, Jose Abreu wrote:
> > Fixes for stmmac.
> > 
> > 1) Fixes the filtering selftests (again) for cases when the number of multicast
> > filters are not enough.
> > 
> > 2) Fixes SPH feature for MTU > default.
> > 
> > 3) Fixes the behavior of accepting invalid MTU values.
> > 
> > 4) Fixes FCS stripping for multi-descriptor packets.
> > 
> > 5) Fixes the change of RX buffer size in XGMAC.
> > 
> > 6) Fixes RX buffer size alignment.
> > 
> > 7) Fixes the 16KB buffer alignment.
> > 
> > 8) Fixes the enabling of 16KB buffer size feature.
> 
> Hi Jose!
> 
> Patches directed at net should have a Fixes tag identifying the commit
> which introduced the problem. The commit messages should also describe
> user-visible outcomes of the bugs. Without those two its hard to judge
> which patches are important for stable backports.
> 
> Could you please repost with appropriate Fixes tags?

I agree with you Jakub but although these are bugs they are either for 
recently introduced features (such as SPH and selftests), or for 
features that are not commonly used. I can dig into the GIT history and 
provide fixes tag for them all or I can always provide a backport fix if 
any user requires so. Can you please comment on which one you prefer ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
