Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAD415CF4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwt+waJiUl8DNJQlALUP5ynM/lpOrrBfVmiJPAgD0eM=; b=aaQ3dzFyLPmV9S
	K5UOsBK5E3Xnnha/d6MSNIHU/s5zCEV23mKkMg7GB3U0KeVU1saw4t6dExszAVjrmByWmEbhBCfyj
	l+yFUYa9Ui3xfZ7a58XptrgSylA0J7rUoQofIZ0hSEBRKCjEcSvQyqJYX7kQ+Hc9v0XMSn9YGoLKO
	38U+UPmYs32FTXAyHg8kZZ/z6j8iVWFZ2VtkSINUum3H8LsaZnvPxyzcAHb7jIVnCbC6jBSP1zbZW
	g6vN3dfjt1ZUIbz01exH72Lgf7X59G5A2iHzhwxHQhyOEAP/h5JiV5nB6hFCFugmNhbwm3DSpYJ+Q
	F5Ats6xPakEJalvmn+DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2PKG-0006xZ-6M; Fri, 14 Feb 2020 00:59:24 +0000
Received: from mail-eopbgr10048.outbound.protection.outlook.com ([40.107.1.48]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2PK2-0006uB-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:59:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRR/Mn8OKKJftJh0dq/r1YqAciIpAjFVLiyVWA15IB1bvjdIgmQ8mYOzQG2eJbCpBay5VPytntmtyZBeqWfWC51bknhbLGmed9Qp+pbWut90y5mDzlUPLcKePDAIGxcx3Z5UW+bPwfG1/PKxfMLGDz69+/vVj6npx72ZdbmoB0iBM88Xqjb+NiBMrHazG0Glhpn2ReYfeHMM70DnuaSs1oANvFD7+Cu8ofG2M2fEOi2OgQFOkHuchE118yclY3I9jirAFkIdVXnZOqClf0K+1hSeZx4Gnnr0deP5rDG7lx+orBUvIUofC24I4W+PhLlWO0WCBh3rpVxkocMEIOsGjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=435BD78WHnZz9Q+Yy4eWb5K8oqWRys+jOpcz65VLUh8=;
 b=Viw4c+aMmxp3nfm3OvIaQQFVkR4PSIoJUsadmp8fe4rBMgfbMkkcy2EYShSexQe46pO9xyjsMN7rrnw3Wi1SFiqM3OfR1UgJAmJ5A3sSiAt6nbupR5awwLAMpnP6YmMmojzSQxc47V7YitzbDkeBIIq2Jy+iUAb8jiYVvlN3V0l/wnptsLD8qnaRwhYI+n1UjwV8UeD+7F9sxDe2NoUBlwu2LX56S1nbs/bI83rJcUWQuWG/Aa9N6Yjtok9N42QKrtt0sTHnIKI7CePsl6YUVIU2bPVIcV9p8SOG+DAtyEhOMPhrtVpmpcSeS0+emt754DQG8inoYbUTjyqmLINOxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=435BD78WHnZz9Q+Yy4eWb5K8oqWRys+jOpcz65VLUh8=;
 b=RVR9rZYM6Q0OCyJXBSpUTnOCu9vS+wfJm1X/S2eFqMds1QkABbgX160MxHxp1LeysP0r9oCupCcCaowonFzEoa6BBgmZHwuXWDrJKsGG3dJXWhtSEWM0x22cSLd9UDrJ8Sowp5NUyKY3n2yvWQsiNOoTzMbUUSv2j5I7HkdnHV0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4866.eurprd04.prod.outlook.com (20.177.42.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Fri, 14 Feb 2020 00:59:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Fri, 14 Feb 2020
 00:59:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V2 1/2] dt-bindings: arm: arm, scmi: add smc/hvc transports
Thread-Topic: [PATCH V2 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV4iK2/Nh1kKO7nUGh3zi/1UGt8agY85WAgADrEKA=
Date: Fri, 14 Feb 2020 00:59:03 +0000
Message-ID: <AM0PR04MB4481D227E34A95D22AFE3C9888150@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
 <1581566330-1029-2-git-send-email-peng.fan@nxp.com>
 <20200213105413.GA23374@bogus>
In-Reply-To: <20200213105413.GA23374@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 228c9d38-31ba-498e-307c-08d7b0e91605
x-ms-traffictypediagnostic: AM0PR04MB4866:|AM0PR04MB4866:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4866816E47009F5C73AD90EF88150@AM0PR04MB4866.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(189003)(199004)(33656002)(478600001)(6506007)(8676002)(81166006)(2906002)(81156014)(966005)(44832011)(6916009)(4326008)(8936002)(186003)(316002)(54906003)(76116006)(66556008)(66446008)(66946007)(86362001)(7696005)(64756008)(66476007)(26005)(71200400001)(52536014)(5660300002)(55016002)(9686003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4866;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aSvYAYII6MboKN643cARfpQZ9nSk+IQFn6qNxkbjdtERkOsljMwtGeruP2Bw9Ts+xlnPN/hVwgLX+aVQexAghV7OxeW5+zb9oRtH0YfD/rg7LmNP54n82OmsVwqzqRai7u+jTpEkSIzA2sjqkPPzB49CnbFqSSzYfR/q9s8SjJBliI0j6O/7wLSAHAXJog5xC8CIBLeSDF81Iyf031w5pB1frOQAl1x3saXJI6JMhFDp0+YaImHEtTOad/my8zZeK5zpAJNCs+8aTVGNOel0u/PD7BO1hCDz8N3gYD/Ch/KVg7vrzgXPjZwdIzCyyMVWajGUSE9brf8dKT+gEG1VlvQyNsacnNH/48k8iisrBaULBXgHE+RXj8dshVpU3HoBgwCRqC72TSWZ7VCqTItiQm1mt1/XV9eefijv1fRrqZGWI91yCERKcYqdEj8innbS5jDmq05SM+jyqt+GsfeGEq2YDUHmEJcbvL/02PyEpBR72ERXO98fpjasw4h1sW2MDURZBvAiqO/OH4WcE43j+x1JJTIg6/2fQBVm2t1TmuXTZo3KwEzba4xRvYOsn2gf
x-ms-exchange-antispam-messagedata: arsLYeFli/8Mp3Qo9PW1T/sOC+xPr6S98I9ABO4QNu4NDMVFkkENGbZdiORB+HFJ07cyg5VZkHIZOdg6y/YcqgNDABO/+sQs+m2iKtJVX3k9G34p0QFupJw8MJh1a/N+9MFF51rurCGmaRlH8E6vQw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 228c9d38-31ba-498e-307c-08d7b0e91605
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 00:59:03.8492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KNnhiKk/qQitTjtGAV4lzlFlRH2VnNVUFizhVPmiPVTg9zksc7+8w3s0/Rph3As637jn7fbxsBgbhJKboakC6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_165910_360758_6B0924C5 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH V2 1/2] dt-bindings: arm: arm,scmi: add smc/hvc
> transports
> 
> On Thu, Feb 13, 2020 at 11:58:49AM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > SCMI could use SMC/HVC as tranports. Since there is no standardized
> > id, we need to use vendor specific id. So add into devicetree binding
> > doc.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > index f493d69e6194..dacc62dc248b 100644
> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > @@ -25,6 +25,7 @@ The scmi node with the following properties shall be
> under the /firmware/ node.
> >  	  protocol identifier for a given sub-node.
> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> >  	  associated with it.
> > +- smc-id : SMC id required when using smc or hvc transports
> 
> IIUC, "arm,smc-id" is preferred more.

ok. Fix in v3.

> 
> Why did you drop "arm,scmi-smc" ?

Per our discuss in v1 patchset, mailbox/smc-id could be used
to differentiate mailbox and smc transports.

https://lkml.org/lkml/2020/2/11/226

So I still use "arm,scmi" for smc tranports. 


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
