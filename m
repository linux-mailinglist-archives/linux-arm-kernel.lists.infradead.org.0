Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD3AF2729
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 06:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u82YglI+szwSaXIVC8gEb1COFhAvw2E6HN739iTmCAs=; b=BDeMttT+ANMy/h
	T0VgGbiSGzqN5nxEOv3ARypAkIxm2TUn7awqTH593znOKnTU5fBzruMCR/WhM4QPFOEMtBcuZSr2m
	ed3XmYPJUWo309yHhPAGmcG47anxXqV95zXO8W94Zai/LWcjhpWbs9Y+1cduw3Wc8Lyry0Ka9BXq6
	C0HWaFYgp3wm90S/uK0XuH/sfADIR/gxXH2Gsst9LBdigKmmTcAuLK4hdzzqri98O7CsQfEoTzweK
	7O4RxxeqnT+NYIWZIRpTesgmZJa6knRhUPwDhQlsU/XWU+HnO5UgavmmFLghIylCJBS0VshqPU96m
	KDPOhr2nnbxbDbXyWbhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaRu-0006or-EA; Thu, 07 Nov 2019 05:35:14 +0000
Received: from mail-he1eur04on061d.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::61d]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaRh-0006Dq-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 05:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aq/J6v0LifJ6OFBqdGet6GLcKYfUpXBrWRsxGGHGO9I=;
 b=ny/D6uOqZdvuS/i3SrrjAcjRiHu/hkNN+AZXfKu8ONM3UbgMRQoWEiKP9GHa0mM+GIR4CkTpVd3Ws6tr+IqRanbD+V4nTQnOA8QJR10p9by7Un+1I2QHLG5cYlCszW+MIwArNsmeO1GmhlMoGnG2Uosdxt+D1LWUOzaXj0kodyI=
Received: from DB7PR08CA0019.eurprd08.prod.outlook.com (2603:10a6:5:16::32) by
 DB6PR08MB2902.eurprd08.prod.outlook.com (2603:10a6:6:1b::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 05:34:53 +0000
Received: from AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by DB7PR08CA0019.outlook.office365.com
 (2603:10a6:5:16::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 05:34:53 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT019.mail.protection.outlook.com (10.152.16.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Thu, 7 Nov 2019 05:34:53 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Thu, 07 Nov 2019 05:34:50 +0000
X-CR-MTA-TID: 64aa7808
Received: from 9e95d7f11c10.3 (cr-mta-lb-1.cr-mta-net [104.47.5.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 440E1969-964B-4A61-9502-1EE80A817CC2.1; 
 Thu, 07 Nov 2019 05:34:45 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2056.outbound.protection.outlook.com [104.47.5.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9e95d7f11c10.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 07 Nov 2019 05:34:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONxAKtaS/YCfvagOouu+wKe9lxfy8lsKfdGVQykymxgBkMW1FCaxkSRcI9hE48ZzhkK1mdfB7mgkixXVw8Xa+cnqkXpYa5Jkr3O93OMQ9uUQguCevNMgmEyx9S7Ho1BYhXVUXJwg/06tGf5qVqDCoHPTbMtC6z9usszqXS2zx0cZLCJKluKdGAH6aYN+WvizteKlqfYqoPsVOighMch2fVXoPNGiBDCM4fsic+SjLCvD0FNOk82HC+tUJeI9LR8Ijz5igTRNuvAK6Q6wDFTeN9xcWS1YPAaw+aTxU+vYuR6Co+UArSw85/arLYbO/mcczOOWAmK1PVD5QgmJpt+94A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aq/J6v0LifJ6OFBqdGet6GLcKYfUpXBrWRsxGGHGO9I=;
 b=O1nqc74pdfUlEEeVliGZH9s9Yv65Onl97pW+H/yarePsmvGp7vOmn9l/ehKm2lo+XWRvLaNLrx7MEnVHJZEWlaGbnhPBkaE96mXOBgWcIHC6diG9LaMHGCns6xCpsIbT9GmH/XGDAb6f4+PsbNTmu5pxIhZH+I5bekZsMKmnC3c3WNLnoL3vRzp7UNHel2wkyh+4zyNcSLLMA6C9HcoXd0omKFKWvB8d7Yg1pOA4pfggCFDpa4hQT9eSzVsq9eH4WR+YgOq/4Sw/3b+VCY0a2oWnX79PbvTi/ClcL/uj/cqZZIxdEWcoJmBSwpoQVQ+2ip1CmKC4xuobNJjgUv1MUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aq/J6v0LifJ6OFBqdGet6GLcKYfUpXBrWRsxGGHGO9I=;
 b=ny/D6uOqZdvuS/i3SrrjAcjRiHu/hkNN+AZXfKu8ONM3UbgMRQoWEiKP9GHa0mM+GIR4CkTpVd3Ws6tr+IqRanbD+V4nTQnOA8QJR10p9by7Un+1I2QHLG5cYlCszW+MIwArNsmeO1GmhlMoGnG2Uosdxt+D1LWUOzaXj0kodyI=
Received: from AM5PR0801MB1668.eurprd08.prod.outlook.com (10.169.247.142) by
 AM5PR0801MB2083.eurprd08.prod.outlook.com (10.168.159.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 05:34:42 +0000
Received: from AM5PR0801MB1668.eurprd08.prod.outlook.com
 ([fe80::b5a2:1e32:3cce:c73f]) by AM5PR0801MB1668.eurprd08.prod.outlook.com
 ([fe80::b5a2:1e32:3cce:c73f%8]) with mapi id 15.20.2430.020; Thu, 7 Nov 2019
 05:34:42 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "yangbo.lu@nxp.com"
 <yangbo.lu@nxp.com>, "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "pbonzini@redhat.com"
 <pbonzini@redhat.com>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v6 0/7] Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v6 0/7] Enable ptp_kvm for arm64
Thread-Index: AQHVilqKBt2nCL8qy0i/hHF7qKoNRKd/QL9g
Date: Thu, 7 Nov 2019 05:34:42 +0000
Message-ID: <AM5PR0801MB1668A2981FE88C42C3C28A97F4780@AM5PR0801MB1668.eurprd08.prod.outlook.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
In-Reply-To: <20191024110209.21328-1-jianyong.wu@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: aef44de8-8bc5-4639-8764-61708dc25195.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e123a742-431d-4883-12ae-08d763443766
X-MS-TrafficTypeDiagnostic: AM5PR0801MB2083:|AM5PR0801MB2083:|DB6PR08MB2902:
X-MS-Exchange-PUrlCount: 2
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB2902243667F6C2C3B3805C06F4780@DB6PR08MB2902.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:1284;OLM:1284;
x-forefront-prvs: 0214EB3F68
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39840400004)(396003)(346002)(136003)(376002)(199004)(189003)(53754006)(13464003)(54534003)(76176011)(66446008)(33656002)(55016002)(66946007)(102836004)(6436002)(53546011)(66476007)(9686003)(6306002)(5660300002)(7696005)(476003)(54906003)(110136005)(66066001)(55236004)(26005)(229853002)(71200400001)(7416002)(6506007)(81156014)(52536014)(8936002)(81166006)(8676002)(186003)(6116002)(71190400001)(4326008)(305945005)(2906002)(256004)(478600001)(99286004)(316002)(6246003)(76116006)(2201001)(446003)(11346002)(86362001)(2501003)(14454004)(7736002)(64756008)(25786009)(6636002)(486006)(66556008)(74316002)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB2083;
 H:AM5PR0801MB1668.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: nQa5t9/4Pg3LP7mMY5JvMMbckFXyhGcsVWL7SWmbCg4ZwkUbluCmvxvLjpi7WgvbuE8KFf1dOIqCDAexciTSLDhFLkfu1BdhyBiwK/3stSAlsywf1zRhE0HjNbFkDOY+Ne1ygbInOKXYq02edz9cACrcW6v5ME3Vi16nqeTj6+ZZamce8UwiWqKgYp+D3zKMe+/PbAUrifO4L6d+rTXXQE1/tyG4N2XWvVMv2N0+Zg3O5M8RhEpaGtwmMFFk1To45ho84rN7rQD9NQpgzWqztBNEGvSICRnYXsfT9oYkDurcWFk0TaWTQHU3A7NdK9okXPeXlrvsZ8Pu0nTSD1EhmKuIQsPapJjx4SF3LxPMRZC029V+DcZKahCrK2+uHxQGRq8t6KiwccVAEZV1TLC5NESe5EQEJrShI46xUfVVUlRW/m4I4Wo6biVS55Zm/bsh0D4d01H291yLRELHx3mP6ExHQaNe1thQs2ejFzk3q+8=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB2083
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(1110001)(339900001)(13464003)(54534003)(199004)(189003)(53754006)(23726003)(86362001)(336012)(8746002)(316002)(105606002)(8936002)(5660300002)(47776003)(36906005)(110136005)(76130400001)(70586007)(66066001)(70206006)(8676002)(81156014)(81166006)(6116002)(97756001)(356004)(486006)(6306002)(99286004)(126002)(476003)(46406003)(2201001)(54906003)(22756006)(55016002)(11346002)(446003)(6636002)(14454004)(52536014)(6506007)(229853002)(6246003)(102836004)(305945005)(4326008)(74316002)(76176011)(9686003)(7696005)(33656002)(7736002)(478600001)(2906002)(186003)(25786009)(50466002)(26005)(53546011)(3846002)(2501003)(26826003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2902;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 39723c41-59a1-446d-baba-08d7634430e4
NoDisclaimer: True
X-Forefront-PRVS: 0214EB3F68
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G+89OBc/ZbUF2fFaBWonI+I2oOfWVnnXyay2U6cv69q7zo1oBNWSr5+On2wru3ZI9e2MWPtFVZbalL1AfcpwsYPBqi29YRcpxr+BsWbGzq4P8kwmU8UnEYtjrXqFRtGAsOY0N90qoPJmkPiSsCOioPS/iMjkjZXSKf/VVtPeFiPU4xaTqjO3qgImlAeDJ3EJqXbtZu96Yu4ols4DABpfOv919c+EUZuO8ZiT6t/MlTQLBDWrqoyRuVXQU83Sl698S0W4mDJRf+uhvNXRqvAgYicS8P7aqrr6CM/lZRCZxhA3tsBsBIGsAl+VKNMhrayYIxnOfZQ7jXJu2PsjKljFw6eQP5au81qUD9LegiU8yMQL0+2vj4dy8Tl15wnCtaLDQ6aAtnex8RoezjnJLR74HE/golkLqW9G6WVHlGTR2hzMmvuCb/tlPf5iMUYcGbjwi6Rn8Nh7tQcNNp6Cep5tKWQbxJwtZdE5TwdAuRdb7Eo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 05:34:53.3991 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e123a742-431d-4883-12ae-08d763443766
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_213501_936716_EE06DAE3 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:61d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Any comments?

Thanks
Jianyong

> -----Original Message-----
> From: Jianyong Wu <jianyong.wu@arm.com>
> Sent: Thursday, October 24, 2019 7:02 PM
> To: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; Jianyong Wu (Arm Technology China)
> <Jianyong.Wu@arm.com>; nd <nd@arm.com>
> Subject: [RFC PATCH v6 0/7] Enable ptp_kvm for arm64
> 
> kvm ptp targets to provide high precision time sync between guest and host
> in virtualization environment. This patch enable kvm ptp for arm64.
> This patch set base on [1][2][3]
> 
> change log:
> from v5 to v6:
>         (1) apply Mark's patch[4] to get SMCCC conduit.
>         (2) add mechanism to recognize current clocksource by add
> clocksouce_id value into struct clocksource instead of method in patch-v5.
>         (3) rename kvm_arch_ptp_get_clock_fn into
> kvm_arch_ptp_get_crosststamp.
> 
> from v4 to v5:
>         (1) remove hvc delay compensasion as it should leave to userspace.
>         (2) check current clocksource in hvc call service.
>         (3) expose current clocksource by adding it to system_time_snapshot.
>         (4) add helper to check if clocksource is arm_arch_counter.
>         (5) rename kvm_ptp.c to ptp_kvm_common.c
> 
> from v3 to v4:
>         (1) fix clocksource of ptp_kvm to arch_sys_counter.
>         (2) move kvm_arch_ptp_get_clock_fn into arm_arch_timer.c
>         (3) subtract cntvoff before return cycles from host.
>         (4) use ktime_get_snapshot instead of getnstimeofday and
> get_current_counterval to return time and counter value.
>         (5) split ktime and counter into two 32-bit block respectively to avoid
> Y2038-safe issue.
>         (6) set time compensation to device time as half of the delay of hvc call.
>         (7) add ARM_ARCH_TIMER as dependency of ptp_kvm for arm64.
> 
> from v2 to v3:
>         (1) fix some issues in commit log.
>         (2) add some receivers in send list.
> 
> from v1 to v2:
>         (1) move arch-specific code from arch/ to driver/ptp/
>         (2) offer mechanism to inform userspace if ptp_kvm service is available.
>         (3) separate ptp_kvm code for arm64 into hypervisor part and guest part.
>         (4) add API to expose monotonic clock and counter value.
>         (5) refine code: remove no necessary part and reconsitution.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=125ea89e4a21e2fc5235410f966a996a1a7148bf
> [2]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=464f5a1741e5959c3e4d2be1966ae0093b4dce06
> [3]https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/
> commit/?h=kvm/hvc&id=6597490e005d0eeca8ed8c1c1d7b4318ee014681
> [4]https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/
> commit/?h=for-next/smccc-conduit-
> cleanup&id=6b7fe77c334ae59fed9500140e08f4f896b36871
> 
> Jianyong Wu (6):
>   psci: let arm_smccc_1_1_invoke available by modules
>   ptp: Reorganize ptp_kvm modules to make it arch-independent.
>   time: Add mechanism to recognize clocksource in time_get_snapshot
>   psci: Add hvc call service for ptp_kvm.
>   ptp: arm64: Enable ptp_kvm for arm64
>   kvm: arm64: Add capability check extension for ptp_kvm
> 
> Mark Rutland (1):
>   arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
> 
>  drivers/clocksource/arm_arch_timer.c        | 24 ++++++
>  drivers/firmware/psci/psci.c                | 16 ++++
>  drivers/ptp/Kconfig                         |  2 +-
>  drivers/ptp/Makefile                        |  1 +
>  drivers/ptp/ptp_kvm_arm64.c                 | 53 +++++++++++++
>  drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 77 +++++-------------
>  drivers/ptp/ptp_kvm_x86.c                   | 87 +++++++++++++++++++++
>  include/asm-generic/ptp_kvm.h               | 12 +++
>  include/clocksource/arm_arch_timer.h        |  4 +
>  include/linux/arm-smccc.h                   | 30 ++++++-
>  include/linux/clocksource.h                 |  6 ++
>  include/linux/timekeeping.h                 | 12 +--
>  include/uapi/linux/kvm.h                    |  1 +
>  kernel/time/clocksource.c                   |  3 +
>  kernel/time/timekeeping.c                   |  1 +
>  virt/kvm/arm/arm.c                          |  1 +
>  virt/kvm/arm/psci.c                         | 22 ++++++
>  17 files changed, 286 insertions(+), 66 deletions(-)  create mode 100644
> drivers/ptp/ptp_kvm_arm64.c  rename drivers/ptp/{ptp_kvm.c =>
> ptp_kvm_common.c} (63%)  create mode 100644
> drivers/ptp/ptp_kvm_x86.c  create mode 100644 include/asm-
> generic/ptp_kvm.h
> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
