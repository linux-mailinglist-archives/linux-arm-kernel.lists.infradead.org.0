Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BA5D8702
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwhmibIiltz3amnBWKGy/7Bxcz2Tdroog0MzYYiN9NI=; b=ZwN2BCt0AHL3+H
	lyxzMiuED8XTkxFATp/AIYHsEOmO7Zbi65Tcvn7HtjCjYov7Lw3j4HBOBfDi0LuhjHV+bD+nKqtrr
	CSHxMCE3D0qRspxcBxqa5XEoKzz8tIml0iL8LQSwn3yLraeA0DsLO6Sy+Nti78eWDf0onI0pB6WwT
	aJt+yytWJiKNlbDBvwqdAndcdNIQ6mOf2XKYS/5YSfS1TAwp/BU+GoeYRPkFeLsaa8b682ZN1/D6v
	Gj6dO0uCNUAexjF+GZ/2QNg4XRe9FxRG1zM0zBDBxTauTrU5up/NGles+1BUluukCK4QHkXm1N0xB
	5c0eM/h6KuBN9XxNXq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKaOT-0006Ra-QJ; Wed, 16 Oct 2019 03:54:37 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKaOK-0006Qn-MW
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PE9KpLY8iAabt3/UAFMFGsIzXD9Fd3FEumMHjeaXtFc=;
 b=CYw85NRNmaXNyuda4ro1ywoz9SV+DivpSPfnMXYanST190X4r+t4dk3g6L4MFex3VkSAwI+glCJ/kKcwzQ1Q9Dzrix2UmLxGfYhtseNl7IgzbtZjOsGLTLAeu85T7AK7xTHxSFi76wLMajlQrmPc9D/tXi2XizrMBFmmarDgZMo=
Received: from HE1PR0802CA0013.eurprd08.prod.outlook.com (2603:10a6:3:bd::23)
 by AM6PR08MB4135.eurprd08.prod.outlook.com (2603:10a6:20b:a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18; Wed, 16 Oct
 2019 03:54:23 +0000
Received: from AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by HE1PR0802CA0013.outlook.office365.com
 (2603:10a6:3:bd::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 03:54:23 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT030.mail.protection.outlook.com (10.152.16.117) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 03:54:21 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Wed, 16 Oct 2019 03:54:20 +0000
X-CR-MTA-TID: 64aa7808
Received: from 087f0afb0663.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.2.52]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0BA5B422-A7B6-40B6-8CF8-3DB3893C63F3.1; 
 Wed, 16 Oct 2019 03:54:15 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2052.outbound.protection.outlook.com [104.47.2.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 087f0afb0663.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 16 Oct 2019 03:54:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9mrZi5STR5Z8Z0ArQbJPkpU3r9hlbxkEmMC+fSU6myjdIv8CFpj/whAFDgYliIvp9xnFK5OVpJU2+4uj2uc8PdVeE846CT0McX0FTsDs8f80vdARli6NojUhx6YkpImIbHqBQNprLOMcmPWR4aaPOBcHE7PAidlON80TQxWGra9LaXti6haXb7+ZMj9qxlXluglHTDVnDY2P+bPdMYshBwNclYF7pfChhJcO4421Haee7s3q1xTy36a/9tAmNsdeN2egx5WB3SUTXtmkcH1teJ4KhzDewJWxAz91lHqlDrQaoHjHLToxScva/E+TCea/MHw+8ZIlvhmJto8vYw0JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PE9KpLY8iAabt3/UAFMFGsIzXD9Fd3FEumMHjeaXtFc=;
 b=Bek2r4xBk/zcqdMUga0B6qAFTEtSb3RIf+5bl4kGiKWmwladiA7GcI4RzyoHEEHlQTwt5V+nra0O90+zNDfua4vvKNm1q70S6RaXXyiQ6dO7hmFy3b/Am6xC2PL0L3ctPlgN8NzcpbL3HimJcbjgMHcJrN40k7/rQr9lraPYwLd0keOSYrP1R99w7dzMVgkRGLu//+lQDHrHnuLIF7kjv+RTcCGnjt91NpXjb2H3MESOTwxHC65ECbVLzLwtZjFruPnXWffaKG7Bu7Np+aljIm1uxupiaeFh3CHj5uICN9U5fx5PqyEN8l6q1cnvwagqdsxSDW9SjnHU27+UMLYLXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PE9KpLY8iAabt3/UAFMFGsIzXD9Fd3FEumMHjeaXtFc=;
 b=CYw85NRNmaXNyuda4ro1ywoz9SV+DivpSPfnMXYanST190X4r+t4dk3g6L4MFex3VkSAwI+glCJ/kKcwzQ1Q9Dzrix2UmLxGfYhtseNl7IgzbtZjOsGLTLAeu85T7AK7xTHxSFi76wLMajlQrmPc9D/tXi2XizrMBFmmarDgZMo=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1945.eurprd08.prod.outlook.com (10.168.94.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Wed, 16 Oct 2019 03:54:12 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 03:54:11 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: RE: [PATCH v5 1/6] psci: Export psci_ops.conduit symbol as modules
 will use it.
Thread-Topic: [PATCH v5 1/6] psci: Export psci_ops.conduit symbol as modules
 will use it.
Thread-Index: AQHVg0YvYzzWm5D4UkuNpSkRp5s31Kdb9F2AgACvT8A=
Date: Wed, 16 Oct 2019 03:54:11 +0000
Message-ID: <HE1PR0801MB1676A17D66AE91F7E0792877F4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-2-jianyong.wu@arm.com>
 <20191015172453.GE24604@lakrids.cambridge.arm.com>
In-Reply-To: <20191015172453.GE24604@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: fdc2e4b7-610c-412b-9e9c-427993879c74.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 06de2a3f-8174-4fec-e4f3-08d751ec8723
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1945:|HE1PR0801MB1945:|AM6PR08MB4135:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB41354CAC8726EF37E39DF4B8F4920@AM6PR08MB4135.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:862;OLM:862;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(346002)(396003)(136003)(13464003)(189003)(199004)(102836004)(55016002)(6246003)(81166006)(229853002)(7696005)(81156014)(53546011)(6306002)(8936002)(6506007)(86362001)(14444005)(478600001)(6862004)(6116002)(256004)(6636002)(5660300002)(76176011)(9686003)(186003)(26005)(52536014)(486006)(6436002)(66066001)(55236004)(446003)(8676002)(11346002)(476003)(316002)(3846002)(14454004)(71190400001)(71200400001)(7416002)(7736002)(25786009)(54906003)(74316002)(966005)(305945005)(99286004)(2906002)(66946007)(33656002)(4326008)(66476007)(64756008)(66446008)(76116006)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1945;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: gZc36TzA4pOPtQ/n+KbDvf/sYvv2PdXcXgjX5d4rztmaSTkhTw/Y3u/UtztCrMGqCoLRk9ue5AwlZODp15z8+81BaTWY4P0USBUKDEcbWZDLX8mdVeCrS7wuHxt6JhrgPxBzqiJIkKdCWKRfKu6Mel+iYN6Yj4l2w5axevVROn45EL+2AeW1+26NaK5M6IAZKp6B7rWSOm++Ci45LfOlSqYaDb3Y+u4Gk5qg/oWVsHEomU/ePYZvuwGssKgRE/f6l62BDAEczEQYzyFsKXTLcJi3Jnc2LSY73TgI6kl0A/MJYVo4dWYz/dQU3IEphRFu34uhINWxTbbUCU5OQ5qDIS/klfibsC4ytjdabTINVO/ovNCrZqWVt0nvztpeETJclIprszrF5/vQUC8NlmpcO/Uhi0Bj56I7BpwTA8de5KhY8nVXv9TqPAf6x7WkF8sCRz+d+hp/Ml7K91CZ4IFyBA==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1945
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(13464003)(3846002)(52536014)(46406003)(478600001)(336012)(7696005)(14444005)(14454004)(23726003)(53546011)(6116002)(99286004)(5660300002)(6506007)(54906003)(76176011)(316002)(36906005)(22756006)(6862004)(966005)(26826003)(229853002)(25786009)(9686003)(6246003)(4326008)(6306002)(55016002)(11346002)(70586007)(97756001)(74316002)(66066001)(86362001)(446003)(356004)(76130400001)(47776003)(70206006)(81156014)(6636002)(486006)(26005)(102836004)(7736002)(2906002)(126002)(33656002)(305945005)(63350400001)(8936002)(8676002)(186003)(476003)(50466002)(8746002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4135;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b96f3795-012e-474d-870d-08d751ec814b
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hkFoqG4buWiA+k7zB1Jik3bEKzvFoLk+6TsXzql1E7le1yjtK3xmwVEC2AEyIK4/YyFw35NLFN4kKkXafePxU/vwH4NMJT6YgdIBGovC3lvDi/0ELKW3H/tIkfw5ADzJbr5Dm1FyoHnIVvfMUCXRpu0yanCdeXo7VFeTpdVziigumiRZGACPMi0DihqyvxeKwNxdAa7jNDSTaLiuKx94W1ItKIeyPFTSIjUQ0cr8sNJ14e8Eh9TYpVpHJWVHRgfowcuAKHYLe4Zb+jAA5UBod9H4nBsskbYd4YKEI9+sUxbuQCmMLidmmCF87RfV0wsLnck/548XGIIWECytE9Ve1jPufaYRYZrTKmqgQDNT87i1Q+5gr5tm6Q/u8bzH/rHb7MOYiCQx3YenDzpbUltxzBXeLyA+GlrHG7n5LkbG5yDwAa6PY24I4yxC5z8E13itKZppvKkYHiqLDKVj49aKvQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 03:54:21.7072 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 06de2a3f-8174-4fec-e4f3-08d751ec8723
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_205428_742007_22BE829C 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.59 listed in list.dnswl.org]
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
Cc: "maz@kernel.org" <maz@kernel.org>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

> -----Original Message-----
> From: Mark Rutland <mark.rutland@arm.com>
> Sent: Wednesday, October 16, 2019 1:25 AM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; will@kernel.org; Suzuki
> Poulose <Suzuki.Poulose@arm.com>; linux-kernel@vger.kernel.org; linux-
> arm-kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> (Arm Technology China) <Kaly.Xin@arm.com>; Justin He (Arm Technology
> China) <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [PATCH v5 1/6] psci: Export psci_ops.conduit symbol as modules
> will use it.
> 
> On Tue, Oct 15, 2019 at 06:48:17PM +0800, Jianyong Wu wrote:
> > If arm_smccc_1_1_invoke used in modules, psci_ops.conduit should be
> > export.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> 
> I have a patch queued [1] in the arm64 tree which adds
> arm_smccc_1_1_get_conduit() for this purpose.
> 
> Please use that, adding an EXPORT_SYMBOL() if necessary.
> 

Great, I will apply it next version.

Thanks
Jianyong Wu

> Thanks,
> Mark.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=
> for-next/smccc-conduit-
> cleanup&id=6b7fe77c334ae59fed9500140e08f4f896b36871
> 
> > ---
> >  drivers/firmware/psci/psci.c | 6 ++++++
> >  include/linux/arm-smccc.h    | 2 +-
> >  include/linux/psci.h         | 1 +
> >  3 files changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/psci/psci.c
> > b/drivers/firmware/psci/psci.c index f82ccd39a913..35c4eaab1451 100644
> > --- a/drivers/firmware/psci/psci.c
> > +++ b/drivers/firmware/psci/psci.c
> > @@ -212,6 +212,12 @@ static unsigned long
> psci_migrate_info_up_cpu(void)
> >  			      0, 0, 0);
> >  }
> >
> > +enum psci_conduit psci_get_conduit(void) {
> > +	return psci_ops.conduit;
> > +}
> > +EXPORT_SYMBOL(psci_get_conduit);
> > +
> >  static void set_conduit(enum psci_conduit conduit)  {
> >  	switch (conduit) {
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > index 552cbd49abe8..a6e4d3e3d10a 100644
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -357,7 +357,7 @@ asmlinkage void __arm_smccc_hvc(unsigned long
> a0, unsigned long a1,
> >   * The return value also provides the conduit that was used.
> >   */
> >  #define arm_smccc_1_1_invoke(...) ({
> 	\
> > -		int method = psci_ops.conduit;				\
> > +		int method = psci_get_conduit();			\
> >  		switch (method) {					\
> >  		case PSCI_CONDUIT_HVC:
> 	\
> >  			arm_smccc_1_1_hvc(__VA_ARGS__);
> 	\
> > diff --git a/include/linux/psci.h b/include/linux/psci.h index
> > a8a15613c157..e5cedc986049 100644
> > --- a/include/linux/psci.h
> > +++ b/include/linux/psci.h
> > @@ -42,6 +42,7 @@ struct psci_operations {
> >  	enum smccc_version smccc_version;
> >  };
> >
> > +extern enum psci_conduit psci_get_conduit(void);
> >  extern struct psci_operations psci_ops;
> >
> >  #if defined(CONFIG_ARM_PSCI_FW)
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
