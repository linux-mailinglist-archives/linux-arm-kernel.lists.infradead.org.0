Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4EB1268C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX5fmshF7W4HFfsC8b5ZS3qfJA6ANHB8QT55rfxfTos=; b=bGydXd2vHaXnwO
	q1KotT292qtVo+PkJ/Xf5rm/gP8BVkxY9kTSc8lST+Ofz6gx10imEx0CS7RP6JgigiEoCCIPX83Ps
	62TNNLFAUxw/tM3Xb6N03NlCwdnqJhMrN+VOy1zEzN5hTwa/aS/a/52aAFhYstL3HuCViWAqsp+SD
	vvwO0fLhf4GPhR4Bip1sMdLMlGx+zQsJqHOh8QlVUsSd8myLNXeKZPANj64QZ9zbKWiBjuSEZ6B9l
	Jg9TyN4k5KA2bIeh/PsrVHyFi8cmqhiLeKuMLzPeIOKsYF7qDepYPrg1KqXG3dbRbm1wyUn4f4iUK
	SeWxJeCNbIFfUiGLG9HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0J3-0005mK-RE; Thu, 19 Dec 2019 18:13:49 +0000
Received: from mail-dm6nam11on20626.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::626]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0Is-0005m0-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:13:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcK6FyBbUCLnxz8fLfIdcJ62lHvs21xZiEulR3iJl7u2h3ZmL7j7gi/zakTfDp3YD3/OUPHguYzt3Qzu43RCLD6HAoceeN5MEOCPeMcx9DPzytA6aOktbkqhtyKF7d7xU3CkFT/IziaJHs5wj04VnOO1JH5KbrNlNtN5WFIicOu210ZvrK8U72wgnTWUheSy4T/cpgj03mQNDLCyla+Q4j1nH7XiPTHr1fm3LjHCmJ1l01EXPK3AbcJ5ewbUDeELcq1ihZpUTWYSGTwUMZzyEtDiATE8pKDexmbANZyZf7Bj0Z8LbgXKExoYUv3l79FYjRY6mjgUIxOap0lHsHHWJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nGxNncb09GOOpT5pc0HdcsepO9ArrrNeW+RMeIvXVA=;
 b=KbRiBMNZW4TQ2VftBMPmsg36Sg6cDu8S42OaYmqxefdXTw0KqmGj/D2IZU3NPITzJfmXOwaR+yBRVgYztEiiln0f03XJ73hzPr8LT09bG+rZjcuIP9JoJW4Zjw3Slu2D7auUXTgEdN/tTKAk5y6peUBmh8fGvxzlvQSRWjAHqMcHIqE9NgscPxgd7Q/FFGFqcvStjqnY3LrPu2DesQBS4MiDJnfIkBS06riAIUa8FFvgUviCdtaMPdjOvt90vSWMCO+s2vt8oOaFCPTzGNXdQeRyg5wHmCrk0f+riysxYjXJJXzLLK6MJQYmvPoUgojwvBjz8oH67vJ/G05P0TAuVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nGxNncb09GOOpT5pc0HdcsepO9ArrrNeW+RMeIvXVA=;
 b=Uvfy3B8ltIrUE/ec74EjxR5/iTH+VaIct+O88DukIVJR9mVCWoBNI8IF63UlM6WI7xuhFhoRghHazjCKVlQ2/6RSTOdmCf+Q9HHxLASkpI+r8HUOFzCn7XLYeRQZqtYnojfGHMakO2pOTdoQMTsL15EHQAVISUvpNx6XvkNnsyw=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6134.namprd02.prod.outlook.com (52.132.228.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 18:13:35 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2559.012; Thu, 19 Dec 2019
 18:13:34 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Richard Cochran <richardcochran@gmail.com>
Subject: RE: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Thread-Topic: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Thread-Index: AQHVtD8/PHqqoL6sF0eYA6GsnGF+CKe92YtQgAChMQCAA0uZIA==
Date: Thu, 19 Dec 2019 18:13:34 +0000
Message-ID: <CH2PR02MB700039E0886AE86B9C731A90C7520@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <42ed0fb7ef99101d6fd8b799bccb6e2d746939c2.1576520432.git.richardcochran@gmail.com>
 <CH2PR02MB70009FEE62CD2AB6B40911E5C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20191217154950.GA8163@localhost>
In-Reply-To: <20191217154950.GA8163@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.137.135]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44b93b19-b0dc-4930-18d1-08d784af29a0
x-ms-traffictypediagnostic: CH2PR02MB6134:|CH2PR02MB6134:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB61348151A16AEF9A73D9192AC7520@CH2PR02MB6134.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(346002)(39850400004)(199004)(13464003)(189003)(9686003)(8936002)(478600001)(81166006)(316002)(66476007)(66556008)(76116006)(64756008)(66946007)(5660300002)(66446008)(33656002)(55016002)(6916009)(54906003)(2906002)(7696005)(52536014)(53546011)(6506007)(26005)(186003)(107886003)(86362001)(81156014)(71200400001)(8676002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6134;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h0GhVN64/jBRBLzu1NBKf0J6/4hwY0lI8UTXUhVNgWXD7ghxLAQvovKgec518J3dfekbcEQFrDs4ba3KbqNTUnHFbZTfFFp5uo8RrIPv56BlsG6FmfqRs6u5QI+vRmJ2z9XiB59n8wGyCRW/dHE0r2kgi0Li4BL0fdt7sOn8lJnZ17ncO7snJ98AZuWbVM/cGfFCeMDACDSOD/dw9LZYa06XGjYJFXf9dSuNFfI2cn5bWmIozdHIXKnHuJ0POUpPn1GJp7pv56fat0ua1gt+1q1DGTUuR+U5xp4kr0nQMKVKoG0hATnRhvMhmvN9Q+rfHrsaiUJnolg1B53B5lva1sRMQjRQi1JHJB++1jTO11/yqPrEIIuzLcJL/2z8aGe23zmCVR9Dl/HyjES5AkhiPcSJYFCgeCcWXdqiz0Cwib5fCZTGHZd9mtJviGRFgISQpAEtY2BkPpCSlCq0O9bsUx3ign7E54KkHsDBtSB07CxNv8AM/Zl4A+UJbAfSUD/c
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44b93b19-b0dc-4930-18d1-08d784af29a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 18:13:34.7082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 77Y9cRpSsx3QojgMhClZz0UPJVh804ZQHwEwHXmmZtO7CnHxvVZ/oFA6b3y8sX15GpWUZ5FJOXdIiuFuuNvpVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_101338_995528_9759E6AA 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Tuesday, December 17, 2019 9:20 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; David
> Miller <davem@davemloft.net>; Michal Simek <michals@xilinx.com>
> Subject: Re: [PATCH net-next 1/3] net: axienet: Propagate registration errors
> during probe.
> 
> On Tue, Dec 17, 2019 at 06:19:47AM +0000, Radhey Shyam Pandey wrote:
> > > -----Original Message-----
> > > From: Richard Cochran <richardcochran@gmail.com>
> > > Sent: Tuesday, December 17, 2019 12:03 AM
> > > To: netdev@vger.kernel.org
> > > Cc: linux-arm-kernel@lists.infradead.org; David Miller
> > > <davem@davemloft.net>; Michal Simek <michals@xilinx.com>; Radhey
> > > Shyam Pandey <radheys@xilinx.com>
> > > Subject: [PATCH net-next 1/3] net: axienet: Propagate registration errors
> > > during probe.
> > >
> > > The function, axienet_mdio_setup(), calls of_mdiobus_register() which
> > > might return EDEFER_PROBE.  However, this error is not propagated to
> > EPROBE_DEFER.  In which scenario we are hitting probe_defer?
> 
> Did you see the cover letter?  I am referring to this series:

I mean in which scenario we are hitting of_mdiobus_register defer? 
The series you mentioned talks about one-step TS.
> 
>  16.Dec'19  [PATCH V6 net-next 00/11] Peer to Peer One-Step time stamping
> 
> Thanks,
> Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
