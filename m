Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A911E4164D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 22:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2NWfurI8YM1TINPy5dCxvGvdOE9SQoYp1CQcJZOqOY=; b=N3gQ7/A1Vptg2d
	ZCJlcmR85fxD+QTaXLLovBsOibRPzqNZYxLaIpeaNbo+qvUxclmvsF0CJZEqGnFj8M0d0cCaPlKvZ
	joFgjIbLpfrnnhI3HqO+VUXM9VyQKBfklvD35PScPRfJ6Gb9UYQVxVfCWIJ6RYvLsUw4hlA9IUW4L
	RyolW7UPeirCioHW7r2lXrRTC85cB3B7ZN8CsRoAEtKcEsycCPHy1B9xY1/DJ33hoflWQGNB8kdox
	VrT9r0hMUJoMQ/QAnabTLZfuowvk1YJ5WU8DaZ5srKLVJdN2De1srJsCy8dPzA2Mb5GcGc05eb4ED
	9gNVjDkmOSmDuI2MCxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haned-00035y-8m; Tue, 11 Jun 2019 20:46:03 +0000
Received: from us-smtp-delivery-168.mimecast.com ([63.128.21.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haneF-0002xf-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 20:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=mimecast20190405; t=1560285936;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tZJI8JGdaiRefhCxahVuZzeWNJpxVME+msCpQoaQ87U=;
 b=do6NO8w5C+0NTBnW18/m6Mq6CWPkQuu8PjTIO366kI9HGjDVnxCbAPSGzU2gp6hNSZPzpE
 0Lky2rTxoIJZ368t4IMWMJpTejdMZhIBdUh00SS5YjyzKFG9hYLK7EjTlG/lLy37hYlKW+
 Qg2UFzfM7jDWy79Rr04bwylyfrQhRZI=
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2056.outbound.protection.outlook.com [104.47.38.56]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-bdqTYNRGMlySrZspClMRyw-1; Tue, 11 Jun 2019 16:45:35 -0400
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3673.namprd06.prod.outlook.com (10.167.236.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Tue, 11 Jun 2019 20:45:31 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::88d1:40e0:d1be:1daf]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::88d1:40e0:d1be:1daf%7]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 20:45:31 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "festevam@gmail.com" <festevam@gmail.com>, "Anson.Huang@nxp.com"
 <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Thread-Topic: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Thread-Index: AQHVIB9pLfrzWsaWqUqp88lz3VFaBaaW6UGAgAADtgA=
Date: Tue, 11 Jun 2019 20:45:31 +0000
Message-ID: <1560285930.2354.8.camel@impinj.com>
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
 <20190611063333.48501-2-Anson.Huang@nxp.com>
 <CAOMZO5BCuBKHs1jXkm3qFD84_xcB=0NSwE3SLJHx9kq4Stbd_A@mail.gmail.com>
In-Reply-To: <CAOMZO5BCuBKHs1jXkm3qFD84_xcB=0NSwE3SLJHx9kq4Stbd_A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53857865-7ec4-436d-3cd9-08d6eeadbecd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3673; 
x-ms-traffictypediagnostic: MWHPR0601MB3673:
x-microsoft-antispam-prvs: <MWHPR0601MB367358AF176EFC206A27CFC8D3ED0@MWHPR0601MB3673.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(396003)(366004)(39850400004)(376002)(136003)(346002)(189003)(199004)(86362001)(6506007)(53546011)(8676002)(81166006)(81156014)(102836004)(25786009)(478600001)(6486002)(26005)(68736007)(186003)(316002)(256004)(229853002)(99286004)(76176011)(14444005)(66066001)(6512007)(5660300002)(14454004)(8936002)(53936002)(54906003)(110136005)(6246003)(2906002)(6436002)(66946007)(76116006)(66556008)(64756008)(91956017)(66476007)(73956011)(66446008)(3846002)(6116002)(7416002)(446003)(4326008)(103116003)(476003)(486006)(2616005)(11346002)(71190400001)(2501003)(71200400001)(7736002)(36756003)(305945005)(41533002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3673;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nFppgJnFMfNsTzT7QOgDM8RaEWMgvIXCTUG7RUzqPPzP2/6BlOV9gkZOnGVrO7z35ws9LrMY/tOJyPt653iw83mK4uVLEw2VEDb/4Gr8m1jeiV49zS+gJjm10ScxrCoBioK1ejd8x2oaJjBEBRzyH/tsmKCpTOKc8k/h6ZAZaf7V5xsnGsqVD1DFbCqqCMFseK+pzzi44zb2EpeMZ2oZWWS37rhFJgyPzVCuzFFiAnu0+Reup6Irc7M6pvDGVo0Q+uvZGvk7F1LaGNeQLzLavPyKgmxTaUoU1p/vb6m7vemuoQ4eeREnmNEA1bx9pLGfjuQ3MaR9TbuHVjvtc4Q7ldlnLwIMQNvKJSrFDPaLC/9vsqBo6ko8//n9ClFiV+8hTSx0O4za5G4W1uWLWIjPxqvUaT26ZLqyvIpZJHO5XY8=
Content-ID: <DC1328CED465FC4189CCE1BF075530CC@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53857865-7ec4-436d-3cd9-08d6eeadbecd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 20:45:31.4759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpiepho@impinj.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3673
X-MC-Unique: bdqTYNRGMlySrZspClMRyw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_134539_300944_CBEDF813 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.128.21.168 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "daniel.baluta@nxp.com" <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Linux-imx@nxp.com" <Linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 17:32 -0300, Fabio Estevam wrote:
> Hi Anson,
> 
> On Tue, Jun 11, 2019 at 3:31 AM <Anson.Huang@nxp.com> wrote:
> > 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > 
> > i.MX system controller RTC driver can support all i.MX SoCs
> > with system controller inside, this patch makes the compatible
> > string more generic to support other i.MX SoCs with system
> > controller inside, such as i.MX8QM etc..
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/rtc/rtc-imx-sc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
> > index c933045..38ef3ca 100644
> > --- a/drivers/rtc/rtc-imx-sc.c
> > +++ b/drivers/rtc/rtc-imx-sc.c
> > @@ -178,7 +178,7 @@ static int imx_sc_rtc_probe(struct
> > platform_device *pdev)
> >  }
> > 
> >  static const struct of_device_id imx_sc_dt_ids[] = {
> > -       { .compatible = "fsl,imx8qxp-sc-rtc", },
> > +       { .compatible = "fsl,imx-sc-rtc", },
> 
> What is wrong with the current compatible string?
> 
> If you want to support i.MX8QM just add in its dtsi:
> 
> compatible = "fsl,imx8qm-sc-rtc", "fsl,imx8qxp-sc-rtc"
> 
> and add a dt-bindings entry for "fsl,imx8qm-sc-rtc"

Yes, I thought this is (was?) the recommended practice for IP blocks in
SoCs that don't have their own version (vs something like a Synopsis
block used many places):

* Use the first SoC to have the block as the base compatible for the
block.
* Always add the current SoC, in additional to the base, in the SoC's
dts's list of compatibles.  Even if unneeded at the present.
* The driver will list the base compatible in the match table, and will
add new ones for specific socs if/when there is a need for it.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
