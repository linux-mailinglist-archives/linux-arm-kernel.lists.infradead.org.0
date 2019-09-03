Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9BDA6229
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qo8kKfuQyrB+fqseA8U7iSw4dK87R+rMy5pjNXDPgMw=; b=Y56iCKCXKUA7ab
	rlfrFn2gvl5FD9Qgq+zDFZWqXSABvXpMlrdahZgjp7DR4qin+gIfkzpNU/avGwECFEK61KAK24Oqr
	R+LkikoafaimlszKpXHiQi/bSQFwO/A4+YCXFAgnvUYrbrYigjUEFpynpqwUu+s4Q3TeY5PRRQI50
	fswAp8kgUy2lknWbnRzhl55FbxUc40KCqW2WM1V3va+r/ofME7qGgRf6n+151ezBzJL0vHJBWuTfx
	HhakelbMcNpjTyYP9yke8+5vm44P31TYsJCasMm5LUQyKUY3BiXUYvdCtoK9ICR+FM4CncCf9qb/t
	el1Xshs6AMIzmTxNToaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52rN-00050S-FK; Tue, 03 Sep 2019 07:04:13 +0000
Received: from mail-eopbgr130048.outbound.protection.outlook.com
 ([40.107.13.48] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52qR-0004zY-1e
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I6+96qWutJDVftuqZtTL58GvUniJ4I3cb2rp4LPbJlo=;
 b=gYDQSuUX0U/JSf5Vd7HgtR6pKdVRg7mO+1gqnoAe5kwow6ANaWpx5CmuwzqKsMqUR/t521AIDnq9mkG43NkrLcO1HbtuZQeik35f5+DRx8W4psG82mmayhW28DtJSuba6tlao3OGCkgjBFN7AzIHxEyqo637zOgJaYI9OCLSDqw=
Received: from VI1PR08CA0152.eurprd08.prod.outlook.com (2603:10a6:800:d5::30)
 by AM6SPR01MB14.eurprd08.prod.outlook.com (2603:10a6:209:3c::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.13; Tue, 3 Sep
 2019 07:03:07 +0000
Received: from VE1EUR03FT007.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR08CA0152.outlook.office365.com
 (2603:10a6:800:d5::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.19 via Frontend
 Transport; Tue, 3 Sep 2019 07:03:07 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT007.mail.protection.outlook.com (10.152.18.114) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 07:03:06 +0000
Received: ("Tessian outbound f83cc93ed55d:v27");
 Tue, 03 Sep 2019 07:03:03 +0000
X-CR-MTA-TID: 64aa7808
Received: from 865888059ae1.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 74D09C1B-A1D3-446C-BE55-FB888082ED95.1; 
 Tue, 03 Sep 2019 07:02:58 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2053.outbound.protection.outlook.com [104.47.9.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 865888059ae1.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 03 Sep 2019 07:02:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbZWDLaEjTX0KHQbsmUujg3Ug5EJMu5nywFkwWLYxlTwmZowLUVhPmNRT4z0AQSkXW/h/Gsn+8kBzGzuFqwQJWP+GXb6DLOlM3mz15KvIgNDJA0TlkEILBRcU6kRMfipFRfCqS5b7/VqBmufsX4r7mNkZjR4Df47x/8osRWQ9tpNV7D6wtBHWhurxN8J8fd7MshWt02yQ1jxG5M8TB4t9JXKPnXVx07SWwrdj0s6XbLFtDMoQtUs2vMOu9fiwA7DlUXNolUrkZR3h+cwzAsa5LyHRxc25jDFAj/oXXUKtoBMtJd5BDTRx+w8QDd2GTY+wtRFunH2laRpNfx+RRVHuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNy8POUWiJHAJEjqJdOxzZakTTS50gkZcZ0+CNdqKsc=;
 b=NG/qJmsB6kOkXa9ywcSEswyDeElJJ7ZBY2iedCIwo7dCqYkNoX0BDAmygHIYAvl0CDaWccigKgTCZRtc9P9Uv0MicsRRc7cVA7/hWhNzYhy1ZQoQHzBij+JkwJK+t/YdyK2vMWIkKuqokj19YBC2XcAhK8erghwhPlfK2rpXuml/N7ofW4E+uXC07H/Avd5lalrBM8eYSuaTDP5uUWQvjwbEIihzFnmBKH2jBJ3laIeDCq1z6njYlzSt09jBAz8BvOApvjRo53d0kzIml+TG2Uh+O9yVNvj4E9dmDLzEqxsRJ+sqWxwxfclY5kJKGtTtN7xEdF6QhcAOsvxBeMW7ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNy8POUWiJHAJEjqJdOxzZakTTS50gkZcZ0+CNdqKsc=;
 b=sgiAD1wZkvhUi0FYPDL35eEPyVIXhzs4CBiv/zSlLFKyRL2rP/Q9BzCs4WfEgVyjIuWiFS8cgUEL+v9bPqkEi0KXh5CLkS9hzE9bVdRdgpgvMxlESv/058za6lW6l437dhjwIcXpEYjBggg0rmA3M9oQTKuawLxJn1K0Z+gxs/Y=
Received: from VE1PR08MB4685.eurprd08.prod.outlook.com (10.255.115.74) by
 VE1PR08MB4975.eurprd08.prod.outlook.com (10.255.158.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 07:02:56 +0000
Received: from VE1PR08MB4685.eurprd08.prod.outlook.com
 ([fe80::5571:6993:1e70:b697]) by VE1PR08MB4685.eurprd08.prod.outlook.com
 ([fe80::5571:6993:1e70:b697%4]) with mapi id 15.20.2220.021; Tue, 3 Sep 2019
 07:02:56 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: RE: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
 exynos5250 compatible
Thread-Topic: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
 exynos5250 compatible
Thread-Index: AQHVXyAQ86MZq6d3AUGp1lK4+DJYuKcYiM8AgAECO4CAAAGEMA==
Date: Tue, 3 Sep 2019 07:02:56 +0000
Message-ID: <VE1PR08MB468570F2B6851C4CD3E80A5083B90@VE1PR08MB4685.eurprd08.prod.outlook.com>
References: <20190725083433.6505-1-guillaume.gardet@arm.com>
 <20190830104502.7128-1-guillaume.gardet@arm.com>
 <20190830104502.7128-2-guillaume.gardet@arm.com>
 <20190902153146.GB9289@kozik-lap>
 <CAJKOXPe8QDzDoM4sKva0qrVUA7EMTR7FO5jGut+Paw9mAcdfAw@mail.gmail.com>
In-Reply-To: <CAJKOXPe8QDzDoM4sKva0qrVUA7EMTR7FO5jGut+Paw9mAcdfAw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: a3aeac83-2499-445e-8a14-f5bf7d9644d3.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [2a01:e0a:d7:1620:9c42:54a9:8a93:a8f1]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 92946d3f-8ef0-4027-dd93-08d7303cc539
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4975; 
X-MS-TrafficTypeDiagnostic: VE1PR08MB4975:|AM6SPR01MB14:
X-Microsoft-Antispam-PRVS: <AM6SPR01MB14851CBB63E59DAF3BFF3783B90@AM6SPR01MB14.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01494FA7F7
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(39860400002)(396003)(346002)(13464003)(189003)(199004)(256004)(74316002)(76176011)(7696005)(6436002)(186003)(305945005)(6116002)(71200400001)(7736002)(8676002)(446003)(8936002)(46003)(71190400001)(81156014)(81166006)(33656002)(478600001)(6506007)(486006)(102836004)(476003)(11346002)(14454004)(229853002)(54906003)(4326008)(55016002)(66946007)(66556008)(86362001)(66476007)(76116006)(52536014)(53546011)(5660300002)(53936002)(2906002)(316002)(6916009)(64756008)(25786009)(99286004)(6246003)(9686003)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4975;
 H:VE1PR08MB4685.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 4Xe+q4PZOdI5IynOQoYkGVZZdZn5L4ppxeKs6dkGFhWohBc59/Tncq01ABWmsI+H3CqVPheZWLjNjSVHN0W9Xxt6Wc6ZhqNhiH6n3NKlqcyI2K/bHdudHA9Wiakp/pcGN1fLHKSxSRpDH/ELEvTcnzwHZ31wYZejJXfYd04qbm+iROo/ApxGU4dV4PBSrNOXvrGyO8nliMq8CkfgKSs9xg5BJ7pe/3fIM8y4Rudq9Kk7zebacWguQBlo3378qyrpoiMkbZo/skul3MfgseeJnA3nsp+8+UI3zpBwQ/+wtXgXMMuskzKJb67w7UMPjX8Ac23B1/GPeDemVFQ4w78K9jrYejBQjXnkw4f3AQTtLUyZUvBUzuFGjv8tCJ/aYIEUyBOGbmgEo6HpYL4S01UIpwCD+Qy6NhP2ZvBMdY0q70s=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4975
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT007.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(2980300002)(13464003)(199004)(189003)(40434004)(76176011)(2906002)(74316002)(316002)(6506007)(54906003)(53546011)(81156014)(36906005)(76130400001)(81166006)(8676002)(23676004)(22756006)(2486003)(7696005)(9686003)(99286004)(7736002)(305945005)(47776003)(8936002)(25786009)(55016002)(356004)(33656002)(126002)(5660300002)(50466002)(486006)(476003)(6862004)(14454004)(336012)(63350400001)(11346002)(63370400001)(436003)(446003)(6246003)(52536014)(229853002)(478600001)(26826003)(26005)(70586007)(70206006)(186003)(14444005)(5024004)(4326008)(6116002)(102836004)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6SPR01MB14;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 491415ed-571a-4a91-376f-08d7303cbfb4
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6SPR01MB14; 
X-Forefront-PRVS: 01494FA7F7
X-Microsoft-Antispam-Message-Info: +anlp8Tp00ixMwZpiaJTKqjpve0zkpBot4PcTT33cyYtQ4sGeOC1unaHB5a5EhzGNumhDQlxP+ZW9s/QETxieZOvoQL5DtYdStMHYjdOOExZjsLYAoGdDq6+SfM+QcGlfjABnDMNjnUqbteV6hoE9lo4dC+qbhNUeEstSWu6bXWhxxxS7SzFGx3w99qbV9nBSylrU+1cNx/dcn7KtlS/olvP7F5GToMkVPX0qVeZkEVhNpAEJ4HLwXRZ+qdMC4mnqhEnB3B++5Zqh1+aT+F4xOvnFZ2x565nr7tvY7WHR67IydL+gxgs0U79T+Jl/GpQpE7an3gPU9a6+XZM02ze886OIgQGLrSklx+2fw0QnxyzsrQjR2uTAcFt4RpMe9nmCa5hQ9NpejCWG61Psd1vGobxbDGDoPHgDSmrdLr04Cg=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2019 07:03:06.0018 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 92946d3f-8ef0-4027-dd93-08d7303cc539
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_000316_020259_9628D6E3 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 03 September 2019 08:56
> To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>;
> Marek Szyprowski <m.szyprowski@samsung.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH V3 1/5] dt-bindings: gpu: mali-midgard: Add samsung
> exynos5250 compatible
>
> On Mon, 2 Sep 2019 at 17:31, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Fri, Aug 30, 2019 at 12:44:58PM +0200, Guillaume Gardet wrote:
> > > Add "samsung,exynos5250-mali" binding.
> > >
> > > Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
> > >
> > > Cc: Kukjin Kim <kgene@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > ---
> > > V3 changes:
> > >   * add dt-bindings before node in device tree
> > > V2 changes:
> > >   * new file
> > >
> > >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
> >
> > Thanks, entire set applied (with re-ordering and minor description
> > changes).
>
> Hi Guillaume,

Hi,

>
> I applied yesterday entire patchset but this dt-bindings patch causes big
> merge conflict which will not be reasonable to resolve by Linus.
> Can you rebase this patch on top of latest linux-next? Basically you would
> need to add respective entries to new YAML file:
> Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
>
> Send it to regular dt-bindings maintainers (scripts/get_maintainers.pl).

IIUC, I just need to resend this patch (1/5) rebased to use yaml, instead of txt, no need to resend other patches, right?

Regards,
Guillaume

>
> Best regards,
> Krzysztof
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
