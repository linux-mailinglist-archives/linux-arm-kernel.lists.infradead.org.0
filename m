Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C160AA2CEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=It+YcvDXsrP1A3emBbsmQbvgZxAOFOIh2RFKQBIs+PQ=; b=uSI61IdN9ZkSEr
	+JMfIDrftc23vcnI/O4n368LWAsmBdrNXxAvJoIT2jdN1rSfSgWNxircSwoKy7mzLEp7q+Gh71TvA
	l9aivAcaJC4IKBCA2X9ahZLMsUBSybqZRZojOx1bXHIWC0cPF9hyxIpt4KwmEB4NKKCfwaLPEDrIY
	GG1VtdMWnKUR5dDloI+UG0ux9HBFNqVziBcAFQzxAyV7GzAOrXL3DqUupiTIu+s+X5SFN8yvWZT0T
	tHzJSqG0fUBKOuer2JiN/n7njMZjEyUTd35Q6wwtYJUjZWjhjkIBuSV6DEzw2oQMz82MHQpW2NN1p
	jdvQINX1XOes/OnSLCGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wwm-0006b0-5l; Fri, 30 Aug 2019 02:47:32 +0000
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3WwZ-0006aG-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:47:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T4pUeYd+w6JLW63oLSTdskXsi+pkNQkJGdAumzmOClRgKkMizPPAhosnxQU3b90U+4HfYIx5sAOwATYrAce/QtN+zLlthtUF1kOER1YjFucZbusJ9mo4yfE6xHpU6bsThyamVLWip+vwHZzfmGnEUQqsNfyCOx+0xD2XIQI9ZAiZUuSfaYZ8MSM4JvEdzwR/SaiylidJE4GMGwQOcPao3+IJk8TRo94Qsqc8NkZU+TM5vSXQfNr1wvyEHjBzuWvk42s+bVPlA/1UwFbGwa2L5T+g/taX+sRgJBGiwI6J3ycI+QjWAhus8JWP/uUDBFITTisvGVlMFHg2f0XP8pPl8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4KoRpd7EaqKp6O4IheB6/QFGAv72fKEvtRcn5C+M6o=;
 b=eVEgMbTSLSitdDNgAqIoKmAygnf7YhYl2gvkjTEKsC2puiQFt80xGcUMQvtKekGVDc0Jj72/rGyl+fWn7dBnTBC5Pml6kGgsHHOskS9CUlXamh+N4tQjHExADnUjzfu9cE8+RAw2FgCSwXt/Ka3KL9e5RP9vnHl63zn3Jm1STA9wb3IljTsMK/qPSJS7o3hyBzhVdom6qpdV29OAGWN7/774TzwfHVYwmwMS6AvKlRUp2yyh2gjT3cJeh+Jp2900lZVQArtZUM1SiPxJlowjqe15DoFBYy/PkhalHFV0RJxarmmg2nDKUkwEjDRFX5oYg/z8IpzjOf1dpSbOoKHuwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4KoRpd7EaqKp6O4IheB6/QFGAv72fKEvtRcn5C+M6o=;
 b=PS2ni3PWTKQRsYxLMMj56yma4jLg8s8N8OwS4XLSWUOHiz0xWiSXXjSyCTLefe7OZ8Z1bYEhrLKl06xLbhMI3LBjI9hTl8Om9lNU8dFjUyMl2AZntZvI994C/CgDfAuYPDy/epYoBI6Nn4pud7x4FXezRmCqbxm3bTQCZZ3OK/M=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5794.eurprd04.prod.outlook.com (20.178.117.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Fri, 30 Aug 2019 02:47:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 02:47:13 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4VacQlpwAgAJnAtA=
Date: Fri, 30 Aug 2019 02:47:13 +0000
Message-ID: <AM0PR04MB448110EA89B23DBAD9EE305B88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <20190828135802.GB21614@e107155-lin>
In-Reply-To: <20190828135802.GB21614@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abb46bd8-fdd1-4eee-9dbf-08d72cf45cf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5794; 
x-ms-traffictypediagnostic: AM0PR04MB5794:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5794EEC8F137CF1631423FFC88BD0@AM0PR04MB5794.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(45080400002)(4326008)(478600001)(71200400001)(14454004)(71190400001)(53936002)(5660300002)(9686003)(55016002)(52536014)(6306002)(25786009)(6246003)(256004)(2906002)(14444005)(33656002)(54906003)(15650500001)(8936002)(81166006)(81156014)(8676002)(316002)(66066001)(6116002)(3846002)(7696005)(102836004)(486006)(11346002)(446003)(86362001)(476003)(44832011)(76176011)(229853002)(6916009)(6506007)(26005)(99286004)(74316002)(6436002)(66446008)(64756008)(66556008)(66476007)(76116006)(305945005)(66946007)(7736002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5794;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W5Y+S00YZar/P5iJ0lvAmNjxYui2iLMTSPcGV+X8C8Y3FapOtg3vKiRO0oHc6bPfXQ/gxt1LBk+0y/cEMp8SdQZAsJkei0mqTOZE58Z62xbUlZkY5fSOOxoRz2+fj3xzQ/hqdmMkXWDcQ20AN8roo1FeVCWsP179OQmFnnzmhwQpZ2QwgVlcHrRNcBt7q3C9jkLRsekqdCwdberZJtfYWOTZLUZ30Z5sDvzIusvASwy6ohLDXmKgeuSU1xpJZk2zVPlQwX6WhgO+y1Fu4OAEgWgg1INNxIcO6k3o3hSBdO4C7mdXoXGvcGG8HD88ontyiedei/hbeRu5zbZW5l1sgukAwMX74HMbX9dK+SU6U+B6/vEKEgf46HDNAktV2LS0SFWvy6jU560RygeAvSvHOGanUSxXcfie00Ne28JI5pA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb46bd8-fdd1-4eee-9dbf-08d72cf45cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 02:47:13.8464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LVrbDyo4vXG8kPV+X+EI8DAqs7RWy12gDPSQw6Gk2HiI2yq6g0CszIRzo0c0G6j5ez6jf5W9i0hsR7GjtwSZrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_194719_282934_392A9042 
X-CRM114-Status: GOOD (  31.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Wed, Aug 28, 2019 at 03:02:58AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The ARM SMC/HVC mailbox binding describes a firmware interface to
> > trigger actions in software layers running in the EL2 or EL3 exception levels.
> > The term "ARM" here relates to the SMC instruction as part of the ARM
> > instruction set, not as a standard endorsed by ARM Ltd.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../devicetree/bindings/mailbox/arm-smc.yaml       | 125
> +++++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > new file mode 100644
> > index 000000000000..f8eb28d5e307
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/arm-smc.yaml
> > @@ -0,0 +1,125 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fmailbox%2Farm-smc.yaml%23&amp;data=02%7
> C01%7Cp
> >
> +eng.fan%40nxp.com%7C37aa729c94944730868b08d72bbfc121%7C686ea1
> d3bc2b4c
> >
> +6fa92cd99c5c301635%7C0%7C1%7C637025974936865698&amp;sdata=Inp
> %2FLs39m
> > +Gv1fe3dZMSaGmgmyWPT6awPh47s3mEtQ%2BQ%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cpe
> ng.fan%
> >
> +40nxp.com%7C37aa729c94944730868b08d72bbfc121%7C686ea1d3bc2b4c
> 6fa92cd9
> >
> +9c5c301635%7C0%7C1%7C637025974936865698&amp;sdata=jmoR1Qqm7
> 6N5NwDbgFE
> > +Fm8cpdW%2B%2FgqmG9mSGz9mXv58%3D&amp;reserved=0
> > +
> > +title: ARM SMC Mailbox Interface
> > +
> > +maintainers:
> > +  - Peng Fan <peng.fan@nxp.com>
> > +
> > +description: |
> > +  This mailbox uses the ARM smc (secure monitor call) and hvc
> > +(hypervisor
> > +  call) instruction to trigger a mailbox-connected activity in
> > +firmware,
> > +  executing on the very same core as the caller. By nature this
> > +operation
> > +  is synchronous and this mailbox provides no way for asynchronous
> > +messages
> > +  to be delivered the other way round, from firmware to the OS, but
> 
> 
> > +  asynchronous notification could also be supported.
> 
> What do you mean by that ? I would prefer to drop the above line unless I am

Ok. Dropped it in v6.

> missing something. IMO it contradicts the previous statement less you
> elaborate more on this.
> 
> > However the value of
> > +  r0/w0/x0 the firmware returns after the smc call is delivered as a
> > + received  message to the mailbox framework, so a synchronous
> > + communication can be  established, for a asynchronous notification, no
> value will be returned.
> 
> I assume you refer to asynchronous communication from OS to firmware in
> the above statement and "not asynchronous notification" from firmware to
> OS.

Since asynchronous notification dropped, so it should only be
synchronous communication could be established. So I'll
modify it as below:

r0/w0/x0 the firmware returns after the smc call is delivered as a received
message to the mailbox framework, so synchronous communication can be
established

> 
> > +  The exact meaning of both the action the mailbox triggers as well
> > + as the  return value is defined by their users and is not subject to this
> binding.
> > +
> > +  One use case of this mailbox is the SCMI interface, which uses
> > + shared memory  to transfer commands and parameters, and a mailbox
> to
> > + trigger a function  call. This allows SoCs without a separate
> > + management processor (or when  such a processor is not available or
> > + used) to use this standardized  interface anyway.
> > +
> 
> Not sure if reference to SCMI is needed at all but I don't have any objections
> to it, just thought worth mentioning.
> 
> > +  This binding describes no hardware, but establishes a firmware
> interface.
> > +  Upon receiving an SMC using one of the described SMC function
> > + identifiers,  the firmware is expected to trigger some mailbox connected
> functionality.
> > +  The communication follows the ARM SMC calling convention.
> > +  Firmware expects an SMC function identifier in r0 or w0. The
> > + supported  identifiers are passed from consumers, or listed in the
> > + the arm,func-ids  properties as described below. The firmware can
> > + return one value in  the first SMC result register, it is expected
> > + to be an error value,  which shall be propagated to the mailbox client.
> > +
> > +  Any core which supports the SMC or HVC instruction can be used, as
> > + long as  a firmware component running in EL3 or EL2 is handling these
> calls.
> > +
> 
> 
> Other than the above points, I am fine with it. Once fixed,
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks,
Peng.

> 
> Note I haven't reviewed the yaml scheme, but just binding in general.
> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
