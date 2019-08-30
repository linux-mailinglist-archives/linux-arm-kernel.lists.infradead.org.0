Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEF5A31DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLdWMdjUaK8WcX1TFOpE5n0fGRJBH+t8ii1rJ/fS4EY=; b=NAtVp7dnLDXvYu
	r8IKEVYkHGjNPP19Q76IE+xjDAUZGlsOHEkasuCD0+hnyJ0UlMA7w3B0ufaRapyrHiVzCE5jCdyMz
	IW6z6suEZvzwfeXaJVEqbe7VIlpUt/+PXSdNFucWAaIn0n/TV9U80R7jkfkFmSgY/pbQLZt64EFXv
	OTmtMFGh03ewhs55bQLfXEZOH00sj1ImrABqSOPB3Twc0FN63vnZHAdvuvH4L6YeyRcXprlYWd1XD
	RSAq1PeoRBF2Ua4Rui2nq5Wlj9eNMIR86Ww3riogCQf92JEe4mgIrYfq2WRtfBaEfOXQ7OzMjZKtz
	RGfm7OYATazU9uQoEDYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bx6-0000Wa-3G; Fri, 30 Aug 2019 08:08:12 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bwt-0000Vh-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:08:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+iwBA7DTDveOsjBTnEzXDZHZH8txQr+7/dTW4XmRdUpiqzg/jhUPW5LG8mEP4KYAjl06syky+qYpF8PwTsGHH5nk8HZmU+VHFEfq045BfCMbtEAqbYBK/ssfkzZveykbRLkTs4RKiQCndzusIDyKYTrJDhOtoG07HvCgRHD4chdUbKsd2KhwM1sQx/H9bR7HZg12/dizWUGyi5BGQEMJmapcgSSLOAIdUGkaNv+dpxiUyru6U715t2Y9U/ylb1mmfytaajFZagreh6yfS6SfiOD1d044zuGN23M1sQ3qZ89Uf6jNQL9JP92CyJIIIIHY7fEa1dpnRkGQ2uRzDhAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dIwXLysodLL3RNmu1O1KFSIu6PDF1pKJ1mg/GZ4oDDY=;
 b=YdZhosR/LNzb57jL0ySxH6XuSZ+TQ+z7VOtJlLsIsrBkSj3L1QUDq6AdQNt4bvp5x5Zoe2/PC4XZ4T3DaQ1mcUIJHQy9QV8gyPsTVvHP2eZXFfVedyVFuXrrw+9E4u7VDFzvPsUddzdcnmbRJOV+Vn35HL7CG/0YahHt47ajH/HG2wEqX0PAjwcEdgBLglPe8naRUa1s0hxWL+0QDFnxKgA6cJrcHS1Nh95vJZ4kMW/ByS7QY6Otbd3/+18JSrj5NhKk2UKJxqdI7cCZRaWejbOUtJC881cUmp5aAN+n5qHJDw8sfEMgifm4GOiyVS/IKAkH3W434qtC975azPOVAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dIwXLysodLL3RNmu1O1KFSIu6PDF1pKJ1mg/GZ4oDDY=;
 b=UX008spDYcPFSbZ6nHHSXeMhgBBG5xkV3lB6GKUyQBETPBVv83VKOo+EVjlvMPqC1kXQrG3gvUFuGv7QCDnUF6Hc3C6ewWQkDlI/rOe0Usvx2p6W6JOJrcyR9MlXtjN3Z2AVQqM3zHGyRKzWdJtBkhpqdvdQbLRFhPoxbi/YrkM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5585.eurprd04.prod.outlook.com (20.178.203.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 30 Aug 2019 08:07:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 08:07:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4VacTNWSAgAAFe+CAABGfAIAAAKjwgAAICwCAAAHRcA==
Date: Fri, 30 Aug 2019 08:07:55 +0000
Message-ID: <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
In-Reply-To: <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 649f8b80-c565-4a99-4593-08d72d212a17
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5585; 
x-ms-traffictypediagnostic: AM0PR04MB5585:|AM0PR04MB5585:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5585612F629D492464F593DE88BD0@AM0PR04MB5585.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(9686003)(55016002)(99286004)(53936002)(66946007)(6436002)(53546011)(6506007)(25786009)(54906003)(52536014)(5660300002)(64756008)(66446008)(76116006)(66556008)(66476007)(11346002)(66066001)(486006)(476003)(6246003)(44832011)(7696005)(256004)(478600001)(71190400001)(71200400001)(76176011)(2906002)(6116002)(86362001)(446003)(15650500001)(33656002)(3846002)(8936002)(316002)(4326008)(1411001)(186003)(8676002)(14454004)(229853002)(81156014)(102836004)(26005)(81166006)(7736002)(305945005)(74316002)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5585;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +XxdmS0lEmVdwsGjqy58QpJBq9ZrPe2tWU/L0jKwoRCPQKNiXnPpLovgKINGwHPHmql8RCpcPNkPg+IxFhyqvnL0s47DZcaHF6lyFfUofy3FrdffdGSomm3o6zAgKWGHQYxVr9FTMxgnY3aMGGlKlDPKKXIj2v7GWnxikyLEmCJB/lFC0qrtBTBndYIEfhwwU9Cop22Zto0sNtbcOTZexDQtzKqcC9kfx5StwrhuL6jAePb+4t/pN8Bh/3eqzLNYUk3adJ2daF/nSCOe4QmaTf5jyPu9fUll7zeiVjm9efeldiE5igjXVqz7/UiPtELSEQ6vOdZx8iPG/GHP3pLfzJtwyIPRvYEe+TvzEG18Cfa9JiPTkYlgteN9PJu7zho/pC+PF/XMVClxEQxc4xe4iaR2kHNPzxJkvDrcBf22kZY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 649f8b80-c565-4a99-4593-08d72d212a17
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 08:07:55.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2CuvJf6wW5bFVz0omVGva47sxdXLKSASOBmWxLdnZYMA/G7YGBr2QrDwXHBJAsep8WGX4iDVaOsbgXEGEBclXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5585
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_010759_465894_AB237CC6 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Jassi,
> >
> > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > for the ARM SMC/HVC mailbox
> > >
> > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > > > > +examples:
> > > > > > +  - |
> > > > > > +    sram@910000 {
> > > > > > +      compatible = "mmio-sram";
> > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > +      #address-cells = <1>;
> > > > > > +      #size-cells = <1>;
> > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > +
> > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > +        reg = <0x0 0x200>;
> > > > > > +      };
> > > > > > +
> > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > +        reg = <0x200 0x200>;
> > > > > > +      };
> > > > > > +    };
> > > > > > +
> > > > > > +    firmware {
> > > > > > +      smc_mbox: mailbox {
> > > > > > +        #mbox-cells = <1>;
> > > > > > +        compatible = "arm,smc-mbox";
> > > > > > +        method = "smc";
> > > > > > +        arm,num-chans = <0x2>;
> > > > > > +        transports = "mem";
> > > > > > +        /* Optional */
> > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > >
> > > > > SMC/HVC is synchronously(block) running in "secure mode", i.e,
> > > > > there can only be one instance running platform wide. Right?
> > > >
> > > > I think there could be channel for TEE, and channel for Linux.
> > > > For virtualization case, there could be dedicated channel for each VM.
> > > >
> > > I am talking from Linux pov. Functions 0xfe and 0xff above, can't
> > > both be active at the same time, right?
> >
> > If I get your point correctly,
> > On UP, both could not be active. On SMP, tx/rx could be both active,
> > anyway this depends on secure firmware and Linux firmware design.
> >
> > Do you have any suggestions about arm,func-ids here?
> >
> I was thinking if this is just an instruction, why can't each channel be
> represented as a controller, i.e, have exactly one func-id per controller node.
> Define as many controllers as you need channels ?

I am ok, this could make driver code simpler. Something as below?

    smc_tx_mbox: tx_mbox {
      #mbox-cells = <0>;
      compatible = "arm,smc-mbox";
      method = "smc";
      transports = "mem";
      arm,func-id = <0xc20000fe>;
    };

    smc_rx_mbox: rx_mbox {
      #mbox-cells = <0>;
      compatible = "arm,smc-mbox";
      method = "smc";
      transports = "mem";
      arm,func-id = <0xc20000ff>;
    };

    firmware {
      scmi {
        compatible = "arm,scmi";
        mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
        mbox-names = "tx", "rx";
        shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
      };
    };

Thanks,
Peng.

> 
> -j
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
