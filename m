Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C812EA311A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVE8yAxVHtH0FQZqI3CkGmi4saDXkpD80jkq0M7I7q4=; b=EiGbuo9ePajPO5
	1SF3PX6MvobYxwYlpZE0FckdDtiQNWUqMyGZ02KVe8Q0tlOVdLxgSvZYnDZG9hPqmtuyjTPFicaUk
	O1y9fhjuCIbmi8PAse7dkXnh+U5I6fBikT+Vb4jN0qw2qBjfdGC8GgNDzI5q9bNPnf9dB/j3inE68
	2TnEWc2D3BR0zTimEG9eiqgPEYZ3/xbDXvvYUWXv8Kf5CouQlgJYFatWHxuFm3v4NzHH6UyZhSKJI
	+UXs6N6V2k+roAvNUvh4gM07VGJvJljnKbxygOq3m2ePJLRGzpoMeylkF8ohBsFkH9uOvn3E9e6n1
	jkv+ztSeP4c2rTof0DZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bTq-0000Va-OI; Fri, 30 Aug 2019 07:37:58 +0000
Received: from mail-eopbgr00067.outbound.protection.outlook.com ([40.107.0.67]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bTe-0000Tx-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:37:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4Skz3cbz6ZUs+oux4OCw9gKXLOhG3DXFiRtjKo8p1JjpMs5IPqQv39CQuqJnT/lnJ3hCMiTlLSLmqqURbAtr+7v0L4eKUxCmvPthxINZPAKFD4jBaqo3Nq5DdAT3er6oMRzTOykltKslwQki/5HAkQCjAMo6n99x3xURF6dku40eAdbiesD2kqieHqAVseKAwpkbvopgOSItyY4BXV/EyBNReqaF7WzoqWi7znMQ01BV1rf53AFnBoJT6Cn38rGSqpCEGxXtIC5THCGnQjatPyF/Mb98G2YdqJVpFxELrznAxOwImDI6wNMI30szBzvTHV7jJ92DYLRifs94uGfag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk8sTKRlMx17lDvxqSpvfzPJIaOM8MVPciDQWfmcOCM=;
 b=mH/FeQProrLcawlnM3kNY9UjoqrCHMV7+ACItCBLS6yA5Ubv8Z0umbn2/301yeFXZorqvaguvuQhi65NScKnYPmq8OHnrs373L38Bm1TG+Rcs8AwEyUk43gThQ6XAcLPRevMroU2lL7uXVmTWbRa2/ts5WF5ANSD/zKKWsuilaE6D76e0LPNYg02Qf+ShRiQ7Y/dB0OlqbXwlppIGVPZl0YoOi2h6kKCWhS6HobdX3UysrKxn6rC5m/A5ljQknYuklxPeHDn61RNtBkfG/LsQLmuK2ZUB0ZlHlUFiq0GT3/o33XDoao1XI2n04Uuf8fCjcB21/rf10qYIP071KHzpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xk8sTKRlMx17lDvxqSpvfzPJIaOM8MVPciDQWfmcOCM=;
 b=iiKChERG1CKN3FFEqzLMfSP7Z4CcwKV6mmnGBMMWiZejKrqthprNU97hO6pM2qJfZHYkAdvOnkE0IiHkLRmudvrG3B3mptXHPoxAbFtzvfo4bpLO9oq5kXWYcp6PuOfc0ghLxj11NIQ63OQQ0Z+3cuR2uR1dXBqBWl4edkO7IeU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5284.eurprd04.prod.outlook.com (20.177.41.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 07:37:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 07:37:42 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4VacTNWSAgAAFe+CAABGfAIAAAKjw
Date: Fri, 30 Aug 2019 07:37:41 +0000
Message-ID: <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
In-Reply-To: <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43a510cc-e525-4985-4d7c-08d72d1cf0e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5284; 
x-ms-traffictypediagnostic: AM0PR04MB5284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5284627F824D0A209FCADD4388BD0@AM0PR04MB5284.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(199004)(189003)(256004)(66066001)(66446008)(8936002)(54906003)(478600001)(9686003)(81166006)(316002)(6246003)(2906002)(15650500001)(76176011)(229853002)(66946007)(7696005)(86362001)(64756008)(71200400001)(71190400001)(76116006)(6436002)(44832011)(53546011)(446003)(11346002)(55016002)(7736002)(305945005)(74316002)(476003)(6916009)(66556008)(6116002)(5660300002)(66476007)(3846002)(53936002)(52536014)(81156014)(1411001)(186003)(8676002)(102836004)(99286004)(25786009)(4326008)(33656002)(486006)(26005)(14454004)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5284;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jUfGUkLgCRYDhTF1XR20fKqJ/IhjOFJmsYqX9Yie1RGT7YLfopWcJ9ha1KN5CUie+vXQWAwgnYjJe4WUi78I6dOAbZn+fgxeoLjCHHzQ88S+U8ue7fh1SdutkRrlMeU6BmIL5hEYDcs4YYluzfXYFIO+2gxKXr0dl5VaCn0ozgQ8NRlXRxJ5Dav723mxOIkb36/PZJiAUS1vCAnfE9OMQgAm5QFVsfzNQM39YmtDeRWcgORw046oWW+PxCA7CEekTsHQF5xMyI7L3s34GVtXykzN2vy2/sDbsY9JXMUfdedQZW7h1RHw+4h3WkffDzxWE9Er536Kx/ShzJpIXyqL38EpngHd81VJBKkuYzC+mO6HCr7MSOX43SrvbYF9SOxtlg/dOt6j7AKNF29eEbVUbHviDYQbhO7F6PMVc6DORcw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43a510cc-e525-4985-4d7c-08d72d1cf0e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 07:37:41.9160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GUn3DUvfv4xDScEwcxK3tPnSgPhl2QcIhzwWITzWgq4uqUJjrBetUYpxICqpa7KVXHejVHBcprnAQw0wDg2AIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5284
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_003746_574579_1D447DE9 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.67 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > > > +examples:
> > > > +  - |
> > > > +    sram@910000 {
> > > > +      compatible = "mmio-sram";
> > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > +      #address-cells = <1>;
> > > > +      #size-cells = <1>;
> > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > +
> > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > +        compatible = "arm,scmi-shmem";
> > > > +        reg = <0x0 0x200>;
> > > > +      };
> > > > +
> > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > +        compatible = "arm,scmi-shmem";
> > > > +        reg = <0x200 0x200>;
> > > > +      };
> > > > +    };
> > > > +
> > > > +    firmware {
> > > > +      smc_mbox: mailbox {
> > > > +        #mbox-cells = <1>;
> > > > +        compatible = "arm,smc-mbox";
> > > > +        method = "smc";
> > > > +        arm,num-chans = <0x2>;
> > > > +        transports = "mem";
> > > > +        /* Optional */
> > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > >
> > > SMC/HVC is synchronously(block) running in "secure mode", i.e, there
> > > can only be one instance running platform wide. Right?
> >
> > I think there could be channel for TEE, and channel for Linux.
> > For virtualization case, there could be dedicated channel for each VM.
> >
> I am talking from Linux pov. Functions 0xfe and 0xff above, can't both be
> active at the same time, right?

If I get your point correctly,
On UP, both could not be active. On SMP, tx/rx could be both active, anyway
this depends on secure firmware and Linux firmware design.

Do you have any suggestions about arm,func-ids here?

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
