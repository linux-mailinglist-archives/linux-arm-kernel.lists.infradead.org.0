Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A928D1FF47A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qmANFfH3Y5YAqCliVn8U1NaWwCl9JCsELUi8aNLjUM=; b=OxM8dWcAGcBsQX
	KwP1MNvAgx6ovxgfqec005NW/xEn1Jy1oNUjmugs8gqZebakI1onrCla2mPMeMI6z6vuq2hVbojB6
	SHYUGeqWx4zHeJZLnN/pLCmD/t1+JYbObCP6eOUvAuVGpiVUmmdJMabuXNmVrakVsaPVCb/QGb1AA
	yoCaFjs3oM8bzmhozK87LDGd/2r20S4FVd/piNgQQAFLWd0LmADcivsjNom6XpkKyzO2Q7N6mHiUh
	YeGzWGWhqxrHRPQSVEA6fyNyItCniz+SgOorOcWQCg4rw4GJfLd+ytiVjNpbJVKXW1XAWowWRmjXm
	AQbB20U6nKdkmLLCWWqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvL5-0002Zi-MF; Thu, 18 Jun 2020 14:16:23 +0000
Received: from mail-eopbgr30132.outbound.protection.outlook.com
 ([40.107.3.132] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvKt-0002ZC-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:16:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SJPhE1IudahR7mmiQjwmUyfF5XT+pYwlDl04Cdeti30bogxLj67Nsot9HCDusWQuj+UrKTXKXIdUn5hfhy+Li3GRheUSBCnKlckQHI9nQtI1E8FpVYRpKN1j3onyh8U1bGdpphD0F/UggnzlQSETo06jTk4CeIR0y/kJ0Xj8j169z45I84FePy/jCbLwLB2+iM2jrUiLwGNdoygmcbR5hSfGAYZsiApo+LZbSs5bRVwnvJojQYYwDlYQY3D6B7WpyPMv3+nyUj2a33K0xyd7Vwymb+m/wsD4d3l1olkW53FgysI757f10GxyjAbL9YliY45GacgcbHvzb538nv5Ukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rEC+anSsAIwBsoNX4MNJfs2kNg1TNoVBdmr+fPDNDII=;
 b=TIhUal748KhK8S7uSKB8TilH9xZlFadPPPpU+U3GR7yezNEgT6mPp0Qq05DpordPs1038VRf35/aGZYHPBOmvQk/AXmYZIShEmE3NPXQAxBSAKMTYm0Vw7KVDFDLwOoH3252dSZkcjYdF21MFA99uQkqHHzHUv8dZhZL3Eu1SUIGEvBdzxK9c5asLouqfnYraNxuGw9bhcTv/Ii3nH1sg9AcpZLQe03qzubjORE4jrS0CKRF+1Kd8Cyk5pBeN3ktnOWtbHjDZxJRL1cKaLnzD6LdnnXAODM124YKP6NR+NfKrYAX26bJg//lRE00TjQKwx3sr5OVEGKGx++cRtE8vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rEC+anSsAIwBsoNX4MNJfs2kNg1TNoVBdmr+fPDNDII=;
 b=c1L8gNa9BKueLs5+O68MNLUZCv9n8/Ii8H6jRHqIyBG+sv2hud7Oq8TDX9WFgqzJ0uKtZYsCTTRPyChEb0WYvzRv/havdH8f5JHMgL21xfBREDnBaLLooHOZcTfKGq8e5WeQxCFxaWfgT0MobpAvRX6af1JF3p3jvug6fDLxiOQ=
Authentication-Results: lunn.ch; dkim=none (message not signed)
 header.d=none;lunn.ch; dmarc=none action=none header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR0501MB2209.eurprd05.prod.outlook.com
 (2603:10a6:200:52::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 14:16:08 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3088.029; Thu, 18 Jun
 2020 14:16:08 +0000
Date: Thu, 18 Jun 2020 16:16:07 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 1/1] cpufreq: ap806: fix cpufreq driver needs ap cpu clk
Message-ID: <20200618141607.dknqrn5bw6tekctg@SvensMacBookAir.sven.lan>
References: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
 <20200618130739.GM249144@lunn.ch>
Content-Disposition: inline
In-Reply-To: <20200618130739.GM249144@lunn.ch>
X-ClientProxiedBy: AM4PR0302CA0004.eurprd03.prod.outlook.com
 (2603:10a6:205:2::17) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir.sven.lan (149.172.153.214) by
 AM4PR0302CA0004.eurprd03.prod.outlook.com (2603:10a6:205:2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21 via Frontend
 Transport; Thu, 18 Jun 2020 14:16:08 +0000
X-Originating-IP: [149.172.153.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d61459d0-ab18-4619-5a76-08d813922540
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2209:
X-Microsoft-Antispam-PRVS: <AM4PR0501MB2209E5ADC9A37AAB76A02C5CEF9B0@AM4PR0501MB2209.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v+oMzTvstoapRrMJG9BGqQ+h7ZkXmawAn8KFFzESIq7Nkk3VdQzW2z47A7NfknXhmh7kJ6214oRWAc9WIlr1YLHyCF1Up3L263gLoArFhE6Jw1qnRnLJc4w1PhBFbO3Xf2l7CEXiVmwxNlKnhk6qWHLsaEXogq7FLgymlOzwjTacEqPSaibO0ug7qjg935g2e2V4DBfi+9yu13DfmQ4BqJDx2oaGWvJ70UfRYq4YO1oSBRkGNcclhimSZBay43bfNncYEk8bILZuOMg8DopfDEaHvUP4VXAeHc1MhPNbrDdCoYkw4rj9XuDk4ObB9FY6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(396003)(39830400003)(376002)(2906002)(4744005)(52116002)(7696005)(83380400001)(9686003)(66574015)(6506007)(1076003)(55016002)(508600001)(26005)(316002)(186003)(8676002)(8936002)(16526019)(4326008)(956004)(7416002)(66556008)(86362001)(66946007)(66476007)(5660300002)(44832011)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ZvaFA5Yt7jlmhmdONtKSX6Ph4bcwHOOSwVUPP6bxI/OcYP54tN39PMSmqbfIVouA8TTasj23mAPAbAarUoKxdV7y1Qp2NSQFTUjatcuwQzk/GaB8FYB0YyrygSTVr8LHJMXigBvbkr/IrWz3mHN5eTk1ih95WKLFUc6XWS/HI31aVbYH/G8GVWh8QPJd5x2iDg0m1oaGPwXOBkwbLOVcTxfBu0ZQgwp9tykDiRnUsnDqZMKixFrhr5+S+2n8Hi82PGZXLGxqsV4dj3qkuzXzjq5EwKX11W65iBEYlIddYQ97zPZmhNzXNUPotudyaQq0qzCn0IlDB3YZZXAmtRLbUdHMGigHqXf9VKSRYBHQSe4KQ+Yb254z8kwdsgpMeHz9/MFN3fCKopxhAqigno3TD8GDx4ikUVBWmzml1ha65PFFkVft7K8hZxYJiscPgFMNY45Q0UPpT0fpCTK6G+VdDPrNcZkWlmyDV4hiNtWV5VhYVcon15TVGoYMtdfzN5QY
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d61459d0-ab18-4619-5a76-08d813922540
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 14:16:08.7740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j+UAYW0vwL3xnTuGTuw0nYGUlX56jVsNGCrAmDDew6/xzEJ6fxlFMNup86jZEP9zxlAgTUa9E3vPBBrRUF1PgYhzJ/RVWX3A7qGqSh8Q1Ls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071611_576221_EBE978E5 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.132 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: jason@lakedaemon.net, antoine.tenart@bootlin.com, viresh.kumar@linaro.org,
 gregory.clement@bootlin.com, rjw@rjwysocki.net, maxime.chevallier@bootlin.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 03:07:39PM +0200, Andrew Lunn wrote:
> On Thu, Jun 18, 2020 at 09:29:36AM +0200, Sven Auhagen wrote:
> =

> > Diese Information ist ausschlie=DFlich f=FCr den Adressaten bestimmt und
> > kann vertraulich oder gesetzlich gesch=FCtzte Informationen
> > enthalten. Wenn Sie nicht der bestimmungsgem=E4=DFe Adressat sind,
> > unterrichten Sie bitte den Absender und vernichten Sie diese
> > Mail.
> =

> Hi Sven
> =

> As requested, i just destroyed this email.
> =

> For patches, you should be use git send-email, which probably avoids
> this problem.
> =

>     Andrew

Hi Andrew,

sorry about that.
It was added by our company mail server.
I thought I had an exception in place for the mailinglist.

I requested the excption and I will resend it tomorrow when
it is active.

Best
Sven


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
