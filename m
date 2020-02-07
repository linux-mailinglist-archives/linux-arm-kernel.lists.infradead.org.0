Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2278A155685
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgBe2J5t0firmkFRCT3awRjfRqlrfNQINBuk0GPHsPk=; b=tti5JQJZDfDs8i
	/Z1t/kqyFlNLu7GOt+/zF1wUijOekZ5p8ZUIpGxdkpG3690O3e/xnXGru+D4ylwVfT0eNPgLPXk73
	yRdIGSG8ejwVM6aipHIktNTWOkZbYYTnbDOBcGoXFusqDjj9qDB7VuCzDvv4JER03WQCmHvu77T8I
	vNYXWa0gZJl1pXGvSRazlOBYJ/jNsWLnaJSpj8OU/FJLmvgQ33mWH+iA9gXtDs8HhLjxkpiN6ICLI
	2xj5HM5bZL0lwpKxEXB6pkRVeJqtsgxqNkzbJV+RPG/EEmuZjsb4RJwTZXb4cpZtXTJrK1/hf4PPJ
	9rfcd26QjjHGozgJqKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01fa-0002BQ-PT; Fri, 07 Feb 2020 11:19:34 +0000
Received: from mail-eopbgr50053.outbound.protection.outlook.com ([40.107.5.53]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01fS-0002A7-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:19:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zm5iRRVLJ5DkEynJnEFxXwdPtHS0X8nsyP0+/VRHQWnWwqVlh89NVyFiS7C3onxagDi2OgHJ4s/Zm4SYhg5gq2xDP01GfbFvCEkt6/JjXcn1HjQdK0nSpp+BLgqczU9Q3eeB4jka9HsrpXoPfkqSJuLen5VA+BhC/9+D0YBbeCFq6SZ9kbFog+MEFyolOl9v38EEcrRN0u2i9it+1p5DcU0QICsgQBZyLd13k/6Pbejkp8QKiWEK1lATIZO5sV76pl570A1Hkdt/ItkXm7NMyxSo+LgUdWixbty9n6navFj70sJN0cPr/SXDsQB2YrWgSf/TJpISV/def/dVOvhV1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3sx25QhN9llPnc4KOQqdCSy8/vYGhlhbofsqb3j+/o=;
 b=M4FDumlQMlOovGmCtNSuunUpCLD66F7AxWQx8I4B+A8VC3ynKdf5/PcSF0Yy0m0O6D+/PfNHymXE9IYXRPfHCwRMZrHRR1ndRbJgLjhs3Lmkru1fmDIJPLJbV6c56ujCP1Totc4juRTvwyPsV0/5YgyUYmAqoBDggKmaTZrNSuOwivXrWc5vVNAt8olZim5H5HVaIrWGauIY2bMaK1MsW3el1WOYyEoZD5j+PToZQwR90nLJ74s1hfFTj8P6wscl8pQg9HcieFRXGVeF1f0BJCqRvRIXrh3g+DFr7DRZG3sWe7s5Kb9wnvZu6OM1/wmokhVU7FQtMhputiuy4S/88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3sx25QhN9llPnc4KOQqdCSy8/vYGhlhbofsqb3j+/o=;
 b=nAlKGFbB3VPFAgElQQrIYJL54KPCeo/sO5sMjlWCkKZTjgGWG8Kxmfa+1ba6NU9hS7e8zuKDZqtbiDAH6hEb9ja2swe15XuSJX6b6L4CwsGHufQq67GRjLNaq3QcT1QAPbysRfJroubNsyQzA1asjjaTda9+XOEBnge0B4051YY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4242.eurprd04.prod.outlook.com (52.134.94.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Fri, 7 Feb 2020 11:19:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 11:19:22 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgPg0IAgAAK5QCAAADsQIAABDsAgAAC9nA=
Date: Fri, 7 Feb 2020 11:19:22 +0000
Message-ID: <AM0PR04MB4481B84BF243926462EAF74B881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org> <20200207104736.GB36345@bogus>
 <AM0PR04MB4481B1D5E2725E85BC6D6D71881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200207110602.GE36345@bogus>
In-Reply-To: <20200207110602.GE36345@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3b6c4d0d-907c-4083-0d9d-08d7abbf952c
x-ms-traffictypediagnostic: AM0PR04MB4242:|AM0PR04MB4242:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4242370DA7788F98D692F9CD881C0@AM0PR04MB4242.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(346002)(39860400002)(136003)(199004)(189003)(2906002)(33656002)(7416002)(55016002)(81156014)(110136005)(54906003)(52536014)(81166006)(5660300002)(8676002)(86362001)(7696005)(4326008)(186003)(26005)(44832011)(9686003)(6506007)(53546011)(71200400001)(76116006)(8936002)(316002)(66446008)(66946007)(478600001)(66556008)(64756008)(66476007)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4242;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dyZXDCaYOJO1Cpg/vIgd7A7qqWCrqqAT/2IL9SXggT01NjDtzxzWWmaxA8HBvt2tWLDJpHZgqXGY/6JYtv2iGDo52G09gCcdFizEtlTRAPQ1LBewOTxK6KgkQKfFiqrBus9Ez4rSdOOPfwTTpUfzfa4LsnUSAnxnKyHAMxIXulXwyJOFN/sRUHift7AvnSQW70bpPGMvawaE6kzsd/WzlzEnNZUKSUEUCwWcDIoksKO62TJCII8xJUqdhKz7ku3hRifEkIZeFsobVjdWPDCWO0pbn+5oZYCoV+HAUgz1EG74+U25NzxR5ELPDHLBJy6VCD98bWHZBefQFQ2rBlwopZS9iWTTgT+7BoOp+bTumAUKtSmb8zkF9ghPmxcrCe0WjdRwRxOhMfsm0Vqnt7NUmA7s+s49QOnFfTCg6xSeoBz2ABftTKEIaxyIih7MgeifUjUHoRUPXjmK5MxddKZOjmNmTzR9f58koR1F0PFSL2cYajkXQnzXZW3fmMphSBSp
x-ms-exchange-antispam-messagedata: EuIlSNv27GCSJnK4wArlr78Z3Q2zoaZWiK5WYd1wJQYQkrQ/Vo0YGbEWtPvIUr8wH7dzN2jdkOPYxtzwiM08dkGwELxjmDujUrm9dMPrvpkTiTygwDwPGs5rA9XVKLYDnjovhqRc5tEfG1XDTTnckQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6c4d0d-907c-4083-0d9d-08d7abbf952c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 11:19:22.3941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PKhw7BTp54s+/XbExWuQijkUoR+llO3NWxtODZOhuNJ9AStsN3eUagRQHPz6i6fx1FiXuh+f1MV/uTZh5X1xPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4242
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_031926_805632_31719224 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
> 
> On Fri, Feb 07, 2020 at 10:55:44AM +0000, Peng Fan wrote:
> > > Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc
> > > transports
> > >
> > > On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
> > > > On 2020-02-06 13:01, peng.fan@nxp.com wrote:
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > >
> > > > > SCMI could use SMC/HVC as tranports, so add into devicetree
> > > > > binding doc.
> > > > >
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> > > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > > index f493d69e6194..03cff8b55a93 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > > @@ -14,7 +14,7 @@ Required properties:
> > > > >
> > > > >  The scmi node with the following properties shall be under the
> > > > > /firmware/ node.
> > > > >
> > > > > -- compatible : shall be "arm,scmi"
> > > > > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> > > > >  - mboxes: List of phandle and mailbox channel specifiers. It
> > > > > should contain
> > > > >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> > > > >  	  and another optional for receiving the notifications("rx")
> > > > > if @@
> > > > > -25,6 +25,8 @@ The scmi node with the following properties shall
> > > > > be under the /firmware/ node.
> > > > >  	  protocol identifier for a given sub-node.
> > > > >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> > > > >  	  associated with it.
> > > > > +- arm,smc-id : SMC id required when using smc transports
> > > > > +- arm,hvc-id : HVC id required when using hvc transports
> > > > >
> > > > >  Optional properties:
> > > >
> > > > Not directly related to DT: Why do we need to distinguish between
> > > > SMC and HVC?
> > >
> > > IIUC you want just one property to get the function ID ? Does that
> > > align with what you are saying ? I wanted to ask the same question
> > > and I see no need for
> > > 2 different properties.
> >
> > The multiple protocols might use SMC or HVC. Saying
> >
> >  Protocol@x {
> >     method="smc";
> >     arm,func-id=<0x....>
> >  };
> >  Protocol@y {
> >     method="hvc";
> >     arm,func-id=<0x....>
> >  };
> >
> 
> Wow, stop there. Please don't do that. You either use SMC or HVC
> consistently.
> Not both at the same time. Any particular reasons for trying such crazy things.
> 
> > With my propose:
> >
> > Protocol@x {
> >     arm,smc-id=<0x....>
> >  };
> >  Protocol@y {
> >     arm,hvc-id=<0x....>
> >  };
> >
> > No need an extra method property to indicate it is smc or hvc.
> > The driver use take arm,smc-id as SMC, arm,hvc-id as HVC.
> >
> 
> NACK, just have one function ID, I am not very particular on the name 'smc-id'
> is just fine for me. But only one function ID for any conduit used and that is
> chosen by PSCI/SMCCC.
> 
> If you need multiple channels(unique per protocol) then I suggest go for an
> channel ID or you can even manage just with shmem associated with it (I
> prefer latter but again I am fine either way)

Ok. Just follow Marc suggested
Parse the conduit from PSCI context. Then only add 'smc-id' property in scmi
node, and take protocol reg as arg1. Is this ok for you?

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
