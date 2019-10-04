Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E7CCB86B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/4ww1PPJRheS7Rn7jvUr77Slo7zz7XNYL161QLKrGo=; b=p0kDo2BnfIaetH
	9aOrfhFzghyWvQEMSH4Y5f/2k8+a0XTIRGXjtXewtfF4gU+ppjnwbxGFLbC+Kya9AsWCt3eL35Fa+
	zEpayU9ej4Z86YnvcENKYW1nQinoyAbqJusnoqN+/mC8kr0mjxkHNoY661QI+pG3/ROsBYh+ApN/I
	7INup+jl3BwwECTyT1xDQV/SZ6vumwIFDIpoMe8qfeXKr5ZjwvHJCCfhRkE4EfnRvFOuNOZC0QyFd
	lbUUa3gg2v+vO/eg88uFsZF0/exRncnn/A7Rt8bG8ui4t3dc3SnvNGl6pho9TJKtqRVCAHec+2rhe
	nzZUyuonkwk4PcEpq2lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKx4-0000ET-Mn; Fri, 04 Oct 2019 10:36:46 +0000
Received: from mail-eopbgr60065.outbound.protection.outlook.com ([40.107.6.65]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKwo-0000Cy-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YY41couSfeO7JwP8Qgwh2G0OGESkLTPyvvaTHwP1X5g=;
 b=p3MLSO3X/GX8vTetYQ1Q9u4QR1FyRVez4H9kmbZWQlG8Zwy147pD3o7KVCGFAP5ILpCRB+x07uGsrwzIsg14sOLL7q9WrRqXfzgNPTZ2rhAb2+1D7wr0NO20xRDpMKD6d4cjWVysxIp05FkMgR+89Vgset9g5zGy0K5RrGgJAkY=
Received: from AM4PR08CA0062.eurprd08.prod.outlook.com (2603:10a6:205:2::33)
 by VI1PR08MB4237.eurprd08.prod.outlook.com (2603:10a6:803:f2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.20; Fri, 4 Oct
 2019 10:36:25 +0000
Received: from VE1EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by AM4PR08CA0062.outlook.office365.com
 (2603:10a6:205:2::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.17 via Frontend
 Transport; Fri, 4 Oct 2019 10:36:25 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT022.mail.protection.outlook.com (10.152.18.64) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 4 Oct 2019 10:36:22 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Fri, 04 Oct 2019 10:36:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 49ef15cb185a506a
X-CR-MTA-TID: 64aa7808
Received: from 7c0f8fd50e1e.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.8.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 120E9ABE-C59B-4BF9-9EF4-2EA02CC207E6.1; 
 Fri, 04 Oct 2019 10:36:07 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2052.outbound.protection.outlook.com [104.47.8.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7c0f8fd50e1e.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 04 Oct 2019 10:36:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBRiMgF0xklK35KiaApVBIRFuR3w4VP/vQ1Nwi+XG2iJeqWQOKnKbrpy2S6qeGVBdDpAZVfyFrJF7HL9koehp/XLmh+/5VIBjpPElY38iSHwlDkSjzD7nWc0rKTiy32DMMeWMb2U5Rw2LEt0VV9h05YqoRhHHb5CarnNUuR3q0KhfpAADuDEeiZOqaLh6nBc8rAKTj0y0SsNQBgaxR1Zsbr7CSQlBAMShB3K+a//hHMczMTJ9A4hgLlexu6pcdFY7MvV6H53Vc1d7FwZhPIG1iJbX7Rc3D78hJw92/JBX5ValQVNdZE7ohoWaTVQ60o1LKSHNAnRj37a7D9rTN9V/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YY41couSfeO7JwP8Qgwh2G0OGESkLTPyvvaTHwP1X5g=;
 b=WeN5HKOrCZmXde5DjGNXn7ohnFFSC/anRuYy3E/CwcngCjjfH7JeFT6JUFJG+jjlsBpAixxLyZZdBmPcjnRq4utZjodITNghsQ+kcWqWN7XH0SnvyYBR3l/hSXh1DqIVorghq0s6mvkvH2iPy4bTGhZfSOhVfWBJH6AnAh1hfF17pm/DYmI8UVutFpXGyNKLE4I3yLycL+2j0+fQv9TAxAX3ocb0GZ9EEnz9UeptNijemEvMV2lm4h4U0cu2miYE3oVq3etKboLD/sWCw4mZlAXE6CnmOoqbqCshKXIC/U8PzsIaW7yJ4IwEsbQ+q8gi9YO3kl6CvnG04PWcGfdq1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YY41couSfeO7JwP8Qgwh2G0OGESkLTPyvvaTHwP1X5g=;
 b=p3MLSO3X/GX8vTetYQ1Q9u4QR1FyRVez4H9kmbZWQlG8Zwy147pD3o7KVCGFAP5ILpCRB+x07uGsrwzIsg14sOLL7q9WrRqXfzgNPTZ2rhAb2+1D7wr0NO20xRDpMKD6d4cjWVysxIp05FkMgR+89Vgset9g5zGy0K5RrGgJAkY=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB5015.eurprd08.prod.outlook.com (10.255.121.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 10:36:05 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 10:36:05 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH v3 3/5] memremap: Add support for read-only memory mappings
Thread-Topic: [PATCH v3 3/5] memremap: Add support for read-only memory
 mappings
Thread-Index: AQHVep+G9RjxZ6tpGEahjiRFHMq+cQ==
Date: Fri, 4 Oct 2019 10:36:05 +0000
Message-ID: <20191004103605.3hp3sxzkxba56647@DESKTOP-E1NTVVP.localdomain>
References: <20190910160903.65694-1-swboyd@chromium.org>
 <20190910160903.65694-4-swboyd@chromium.org>
 <CAE=gft6YdNszcJV67CwcY2gOgPHrJ1+SnKMLr63f2bix2aZXXA@mail.gmail.com>
 <5d964444.1c69fb81.121ce.d43b@mx.google.com>
 <CAE=gft47g-mR0o5C=LG6b-OcVT=JDeNCfBH6R+CgPhLMnZpC=A@mail.gmail.com>
In-Reply-To: <CAE=gft47g-mR0o5C=LG6b-OcVT=JDeNCfBH6R+CgPhLMnZpC=A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0355.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::31) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 217b2b48-ad53-4a5e-6de9-08d748b6b39d
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB5015:|AM6PR08MB5015:|VI1PR08MB4237:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB423766F562FE9BE7AAF44931F09E0@VI1PR08MB4237.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 018093A9B5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(199004)(189003)(486006)(476003)(66946007)(9686003)(6306002)(6436002)(446003)(53546011)(4326008)(11346002)(99286004)(26005)(102836004)(6512007)(6506007)(52116002)(305945005)(76176011)(44832011)(6486002)(386003)(81166006)(81156014)(8676002)(8936002)(6916009)(6246003)(186003)(66446008)(64756008)(66556008)(66476007)(7416002)(3846002)(6116002)(54906003)(14444005)(256004)(66066001)(86362001)(966005)(14454004)(58126008)(316002)(2906002)(1076003)(5660300002)(7736002)(229853002)(71200400001)(478600001)(71190400001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB5015;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4ImcAuHQVzYI6dv/dYlFiEXjnnWKHqhr1/qIYWMyrU4rWqUEmIXX3pKcOIq2Vofx5UnwkCwCxDDVFahRq72OUnm1y+cgcgX/mRKq01WN3xA5bbsvSDKeaSMDHHs+C2k4Aj6lR6j0akzfeS+0JNpLoSH2lsC/hVWLhDp6ViPss91nt0me47C8YKtGUBQ7GgHyKD6MwQAq5E9yxA9JvSS6mLwP/zuN91B++6xUitMlUSJTFAjtOLIvIDhXJsNNjqSRxq9uL3hTTRj1x7Pbv2W0HC/I06D9Eb4bveDta3CGMxpjDp0b/WruZ8gVbz7xicuVc31vyl/j4NgyT0tJDOHXEETa6MU/oqSl3/Tvz89hfuRjFZ/ISF6Mqw3TNktrQeF4lLj/FeMlf4E1WjdH21eKjiaGtENaqbwIkoL/aKmIZFk8x5QF6fWMXmKmK4bJU713qCPBJB3HOMl/HZfXDGPTEg==
Content-ID: <51F393CF82881447B68335FC5E56EEC6@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5015
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(376002)(136003)(199004)(189003)(966005)(8746002)(26005)(76130400001)(25786009)(54906003)(70206006)(6486002)(186003)(446003)(336012)(3846002)(5660300002)(229853002)(47776003)(81166006)(81156014)(8936002)(76176011)(102836004)(6862004)(53546011)(478600001)(6246003)(316002)(8676002)(70586007)(66066001)(22756006)(23726003)(356004)(6116002)(50466002)(386003)(6506007)(486006)(1076003)(99286004)(63350400001)(36906005)(6306002)(7736002)(58126008)(305945005)(46406003)(26826003)(11346002)(6512007)(14454004)(2906002)(86362001)(14444005)(4326008)(476003)(126002)(9686003)(97756001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4237;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 90e5b034-a8f2-495d-603d-08d748b6a917
NoDisclaimer: True
X-Forefront-PRVS: 018093A9B5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GXPhvOr+q5IKvDPcSdXx7Z53gpM1/Xdv+nxU9tQY1DfwEYayTdxBZksIpiSRQUnMs8pkee2atSdgD24HpNMYPJv3oM2je2uc3owjoNMfHHglYC54HZpHtiGGdB54qqMiXR0lO+/SCQjmT9WloHzK5wy8xHYSNFggDsPeudwuWq3440364e/MUt31mim4azzigS/dr0NjRWYjbi7FRpR6fZvRGtFZcnWzdSPwS4KvJNc1BiJxonOfxTcJ2nM0z5RwcZRPAxuTfbBLOFteQGxiD62//TduRAEJC2PHMoNT3WPZPS9KzbQgEuaEPOHLhuG4dylZHhX/7CGEI0Pl+NLvv+MA8Z+vWi9mrAspT4x8Zg+771hlQQtgxnW/lM7T+LSWLNv8BzF/irJo+qhcQ6ZZq62wVJEXIKEpZJ6a6f8jGlJGijszpGUmtBZcTbiFqA7Y8G+1G99JvIfNlp7k1ZXCDw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2019 10:36:22.9870 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 217b2b48-ad53-4a5e-6de9-08d748b6b39d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033630_776315_53ED1912 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, nd <nd@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Will Deacon <Will.Deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <Catalin.Marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 03, 2019 at 01:05:53PM -0700, Evan Green wrote:
> On Thu, Oct 3, 2019 at 11:56 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Evan Green (2019-09-18 12:37:34)
> > > On Tue, Sep 10, 2019 at 9:09 AM Stephen Boyd <swboyd@chromium.org> wrote:
> > > >
> > > > @@ -53,6 +60,9 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
> > > >   * mapping types will be attempted in the order listed below until one of
> > > >   * them succeeds.
> > > >   *
> > > > + * MEMREMAP_RO - establish a mapping whereby writes are ignored/rejected.
> > > > + * Attempts to map System RAM with this mapping type will fail.
> > >
> > > Why should attempts to map RAM with this flag fail? MEMREMAP_WB will
> > > allow RAM and quietly give you back the direct mapping, so it seems
> > > like at least some values in this function allow RAM.
> > >
> > > Oh, I see a comment below about "Enforce that this mapping is not
> > > aliasing System RAM". I guess this is worried about cache coloring?
> > > But is that a problem with RO mappings? I guess the RO mappings could
> > > get partially stale, so if the memory were being updated out from
> > > under you, you might see some updates but not others. Was that the
> > > rationale?
> >
> > Will Deacon, Dan Williams, and I talked about this RO flag at LPC and I
> > believe we decided to mostly get rid of the flags argument to this
> > function. The vast majority of callers pass MEMREMAP_WB, so I'll just
> > make that be the implementation default and support the flags for
> > encrpytion (MEMREMAP_ENC and MEMREMAP_DEC). There are a few callers that
> > pass MEMREMAP_WC or MEMREMAP_WT (and one that passes all of them), but I
> > believe those can be changed to MEMREMAP_WB and not care. There's also
> > the efi framebuffer code that matches the memory attributes in the EFI
> > memory map. I'm not sure what to do with that one to be quite honest.
> > Maybe EFI shouldn't care and just use whatever is already there in the
> > mapping?
> 
> I would guess that the folks mapping things like framebuffers would
> care if their write-combined memory were changed to writeback. But I
> suppose the better authorities on that are already here, so if they
> think it's fine, I guess it's all good.

Drive-by comment as this happened to hit one of my hotword filters:

dma_init_coherent_memory() uses MEMREMAP_WC, and I think MEMREMAP_WB
would be quite unsuitable there. As you say, we use that for
framebuffers.

Thanks,
-Brian

> 
> Whatever logic is used to defend that would likely apply equally well
> to the EFI mappings.
> 
> >
> > Either way, I'll introduce a memremap_ro() API that maps memory as read
> > only if possible and return a const void pointer as well. I'm debating
> > making that API fallback to memremap() if RO isn't supported for some
> > reason or can't work because we're remapping system memory but that
> > seems a little too nice when the caller could just as well decide to
> > fail if memory can't be mapped as read only.
> 
> Sounds good. My small vote would be for the nicer fallback to
> memremap(). I can't think of a case where someone would rather not
> have their memory mapped at all than have it mapped writeable.
> -Evan
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
