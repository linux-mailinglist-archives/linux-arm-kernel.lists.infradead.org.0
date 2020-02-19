Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729AD16470F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7fLA0bnnGdNCFHR0RCeErE+9Rb/rSU5Jms08dXFgLs=; b=iU73xbO+M8CqCq
	jbV/tO6roun42Dp5eYsmcG5UyAf95jdX8v2EP9E1ksaWteCo3NtTf2yWoUOb7QYZr86n3cPOnmfas
	Uh7qYqyA5gWnM8qHggoXSgXpMGAYbFR/jffKFWSiuTKgadGj9FZD4uKCucQmnA9rDo0Re61lkU4CC
	8m1AE+Ig4as+/jNteLcxK29kziQcyAGKTXlTqC0Aw6pCJpdkiyKQQfQQ5XZK2It62toOyifRqW6gX
	P2U4/TXhgS3+c6MQKMHeMGecQwbNaND8jfphW8+ZAByz5oy6SGU2+dwxdsu3tHp6TX6d6VAmeGl5Y
	xwWRsqteFMFxZlCtdvlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QR2-0000YK-UN; Wed, 19 Feb 2020 14:34:44 +0000
Received: from mail-am6eur05on2064.outbound.protection.outlook.com
 ([40.107.22.64] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QQu-0000Xp-QS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:34:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JB5XzE1SbseyvB45bjALNp6F2Dy1X5NdyU1pRH+cCxg2cmZpu2koe93Zny0znB80F7T+8IeLk73VOsPOlm1hgeODcVUXuyEJCC/QDSKNSOCUCrPtXVYA0OjBGG5ABQuHaYdTqVpCz9/Cfs/d3ADqz97KSd5aRLOuHhFF/+ityR3o3e1yBSWrbL8KT3tnU4oViVx9bQJ8ivyo9z5ockBRELpbBSfndnrD9rtUC8N1LLgFOj7I+PW63pCRMUaHVYXTCfOCTFQBUqeFAikwAfgZr6vHdrpnoiNReGg2N8dtAacuKNegM8rRp4i9uaycZjNyzjuPaAAYLcCSKVOKydyYow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+dCN5LQEx4h/uxxp39Cw1akoKKywbQL1tX6ulA8JmO0=;
 b=a5FvQ2OIN9AovOgdmaZjZWBANQsPJTiPT3HfAxk6mOvLOrwtYBpOIqKkXL2kAMUaql9/QOF2cGCnxA3kiuQXd8Q++lrV/Gwahnu515kY0dxB4rxidB1LjYhkUqQ8iNcZsKdW4grKriHqkj3RYgR18rRkAhBH24C13r7cZeeXVBvizSgAxC6vwZWIflg/Ajb4hWYjFxOdzieMcHIW510KNiQ1SoCzwPwgks8yfcaczzJ4YcBuS70HJwGeIN5sxcsSV4Lm9NerCOIK6ZXPX7oqcKVfHyOO136EFyK4dIVgRTBL14KrT/e78S42+pE5xGR2BWYUh7Z0ggN77iymzCOsEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+dCN5LQEx4h/uxxp39Cw1akoKKywbQL1tX6ulA8JmO0=;
 b=blZr4D+9KlX0HpBZvqurJgXSo7b6eP0o5zyuI70P5LO0xIOs/ZAEkleKpocX35gxF7n06VLWyds9TUqISnbf4bdDE8619OKMXNI1HjMAFP3a4YdLMBpVu7ObRwKLF4AkRkIXlfmLuM/tZCMBg+sYUw53zujnwiMipmVswL6NhaU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6322.eurprd04.prod.outlook.com (20.179.35.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 14:34:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 14:34:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
 json-schema
Thread-Topic: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
 json-schema
Thread-Index: AQHV5vbonmiG8tzofUyTMtjSu9BVs6gijm6AgAAGNCA=
Date: Wed, 19 Feb 2020 14:34:32 +0000
Message-ID: <AM0PR04MB44814713955807D7BB3E2CD088100@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-2-git-send-email-peng.fan@nxp.com>
 <20200219140921.GA7031@bogus>
In-Reply-To: <20200219140921.GA7031@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e68f2695-4a4c-4f16-3b9c-08d7b548d5f0
x-ms-traffictypediagnostic: AM0PR04MB6322:|AM0PR04MB6322:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6322ADB1B9576FD04B104F1188100@AM0PR04MB6322.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(189003)(199004)(7696005)(66476007)(66446008)(64756008)(66556008)(76116006)(26005)(316002)(45080400002)(33656002)(6916009)(54906003)(966005)(4326008)(86362001)(55016002)(7416002)(81166006)(9686003)(44832011)(5660300002)(478600001)(6506007)(81156014)(71200400001)(8936002)(8676002)(66946007)(186003)(52536014)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6322;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sjxLEs/B6syH+EZZGuKAMDHGoUoQr0HYMHBfg1FsNKGA7kzv2XQgoUKTNP0WkgQcyn92hNpg91Vikz4yPBfvbmxlt8HQ7Dp4qAqZqFcztuau0Wg5wcvRt4fqU77mD/7womp2lNl/OrZzxTnT4MBuTOhULCRNKaVZ6WrERXtlmtTUxGz2lR7WyQcX/3qEpB8CuBrXlECNBfImWKiGfrOHJRmdoQHrn11Delwv6njVg1E8SohoWsf/6A2nx8dJpbzs5oeLanJf7XZtkH9mhmY3jRek9ka8xO1i2Mgd02TJsAccjPn2nFSU6IrRTvxelucEzYzCMdx3drZbqgOBkjEqPSqjFZUtTThM5osnlQyedXoAw39x4AOOUGfDbJZ/1cNyK3DvZi82RpTUUH1G7HMXblV3o3UyWKEo7Ts3rcbz1rQeN0Px7ouEbaXbSToHl/ZLikd8sE6RuS/ldj9GFF1EDpcUkbEqKX0iJmZaDIjHiiEmyz8T6Uz/mR/rAUjZxTALDSzM6EP6j5H45MSBTc4L7OcW0MveQBbuozIqeNe5R8LbrCJ+qo1+WKCkHQuyJKpNzpQhNXkDED2iuZpaXM8/7nMd/p/jrdaKhzi5GUaIxFTIlObxBbY2O9fyJaPqYQrT
x-ms-exchange-antispam-messagedata: +P9Jjo/cZIRFqbLJRLTqG4hbJdY+KZcusJLnrosxf3vM4qT2/cAY3i6rMQZhp5tQgVs+8tK/LiS43ePYSdnst7SkX5Z4qjnnkiEriC5sGitRGskfs+hA8PuGQuw02pnnuKvKjqY+XKzjbqFrSWEFmg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e68f2695-4a4c-4f16-3b9c-08d7b548d5f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 14:34:32.7028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zhs0zi/AqxjfozAAghbFaSCupEM67q4EBEcVTDf+fsl3FKt1j92tNHJjrkt1pufKGcAnE99gXgKiAEgrA0dq4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_063436_861089_C79B8B86 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: Re: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
> json-schema
> 
> On Wed, 19 Feb 2020 15:27:37 +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Convert the i.MX remoteproc binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  .../devicetree/bindings/remoteproc/imx-rproc.txt   | 33 ------------
> >  .../devicetree/bindings/remoteproc/imx-rproc.yaml  | 61
> > ++++++++++++++++++++++
> >  2 files changed, 61 insertions(+), 33 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> >
> 
> My bot found errors running 'make dt_binding_check' on your patch:

My command:
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml

and output:

  CHKDT   Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  DTC     Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dt.yaml

> 
> warning: no schema found in file:
> Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/rem
> oteproc/imx-rproc.yaml: ignoring, error in schema: properties: clocks: items
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:
> 21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen
> node must be at root node
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/rem
> oteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor
> (See': '../clock/clock-bindings.txt)'} is not valid under any of the given
> schemas (Possible causes of the failure):
> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/
> remoteproc/imx-rproc.yaml: properties:clocks:items: Additional properties
> are not allowed ('Clock for co-processor (See' was unexpected)
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/rem
> oteproc/imx-rproc.yaml: properties:clocks: {'items': {'Clock for co-processor
> (See': '../clock/clock-bindings.txt)'}} is not valid under any of the given
> schemas (Possible causes of the failure):
> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/
> remoteproc/imx-rproc.yaml: properties:clocks: 'maxItems' is a required
> property
> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/
> remoteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor
> (See': '../clock/clock-bindings.txt)'} is not valid under any of the given
> schemas (Possible causes of the failure):
> 
> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/
> remoteproc/imx-rproc.yaml: properties:clocks:items: {'Clock for co-processor
> (See': '../clock/clock-bindings.txt)'} is not of type 'array'
> 
> 
> Documentation/devicetree/bindings/Makefile:12: recipe for target
> 'Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dts'
> failed
> make[1]: ***
> [Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dts]
> Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2

I'll check, and after get comments for other patches will send out v2.

Thanks,
Peng.

> 
> See
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatch
> work.ozlabs.org%2Fpatch%2F1240544&amp;data=02%7C01%7Cpeng.fan%40
> nxp.com%7C28b6280f1e8d4cd48fff08d7b5455348%7C686ea1d3bc2b4c6fa92
> cd99c5c301635%7C0%7C0%7C637177181663776763&amp;sdata=XfOrYdrVi
> qB4jwZRjPFLM82Zz5BjTZQF7gNohDOcOCw%3D&amp;reserved=0
> Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
