Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B524C1DDCC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 03:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtO6rLqVOk7s8srwsMwQhjgNfcRJxJXt/yKbCl4lOGc=; b=M3v6RrEoaBBjQp
	gl+kTka7GEhyi6/vZl5W9MQ/T3hTHxkRpjhSDjfSKEfSq+9RszG61eqpEYkh7EZA3OlHNypAvgFRC
	9RA94XBSq5qAovng2QGG9z9doYmz/Z/adIA9tCYxujXGQGlS++agPHo6KerrCuuEvsrnGVxLmQkHP
	TUbOYZgHW4U6fW77rf2/oS/sG7jPjOS4u5mp9yQS6vXh8cVdCQSeYGMzDUTy42/DfHVVL6slmOoeX
	Qi/uv2oEjxezn7UcakB1Y6TEUzN5lVMGFCFCaIaBh9TcT2ZNm9w1heyCsZQ3m3kL5r1/S6pA5n2vr
	eBxGqufjaab73zIKXitQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbwdS-0002f7-U8; Fri, 22 May 2020 01:38:06 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbwdI-0002eg-RL
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 01:37:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvqeFTtBLJGnP3qBzrgXgP+hCSCtfXz9pAMosCO6ZrnzseVudMLUFVEL03rc0t843pjrt5jahPo5PgOaNTn+O559ZuV8vASO/EIkNXaGanfnSonCEyzCly4uFXxWFsoQXWLu50WTGKH7uek7xN4haKS6ljoXhEFcCrUU68nXK2tOpwol1arZ5gnrtUiKUFanwSDfCRCplnKFRK9K2gL0MCYeHuWPoFEcark6GJBHy7nFCm2pxNNmF897U04Whn8O0nT6ZHa+Jjdl8lVuvVHAKeHxgOr2NeyM4LdRQvSohu7PzJYrycjXEj1fcF7nWiNHJab2lfKgOgrbmYcL5oXU2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YPZj9mc+KD1gDj3R2xMW6cCh/xlqFwY9VglawPdkIyk=;
 b=RL1xdbEwkO/WWTW4FKoE1bByhOo6aSC9GavsAIqnjuhojiocewH4tjePP9OuQInh7JdOvX84r9WiqUDteLl/gA/4TWjhM91KkGO1nJfob531Sn/c/FCJv9j+qhLaFCO4f4p8xL3UnuIFAdbUYl2oGkN4hVlyQ09OkjhIxEWANurriE+lAFnhOXqXssxBK82LubjkWouSG8F3xh1SCSOvnL3kDxbKOZVXADKBzfj+l7F6HeDdAakYsqjzIrE2Tr6AgV3BV2Jp1uO/AoeqOM8r+LYVpRWrC1rOi21CUCW9d46ylUaQtQTSKF6uwwbKhuuv15evZTaB9UCZf6Tj73DJ0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YPZj9mc+KD1gDj3R2xMW6cCh/xlqFwY9VglawPdkIyk=;
 b=k/sGV6e71f/+5AxOrF39KpYFcB9L3EgKaR18Lr1FqSSUgg4O2Y09TftvMDot2HiUw46wjTAA70biXTLs4ttfV3fCgjlJqAIZH24K/U+olhaEWfJm+xZqX7TkP6TC6F2bLoRHIyqBNUPoTAG1BJrwtWaJdlLYGNLfxBZy2zhTwao=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7031.eurprd04.prod.outlook.com (2603:10a6:20b:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Fri, 22 May
 2020 01:37:54 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%6]) with mapi id 15.20.3021.026; Fri, 22 May 2020
 01:37:54 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Richard Cochran <richardcochran@gmail.com>
Subject: RE: [v2] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v2] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWLYlRTWEgO85ypUqCIkI/iJo+fKivllkAgAPBanA=
Date: Fri, 22 May 2020 01:37:54 +0000
Message-ID: <AM7PR04MB68851007C2B525E78E4B5A34F8B40@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200519025307.628-1-yangbo.lu@nxp.com>
 <20200519161528.GD2865@localhost>
In-Reply-To: <20200519161528.GD2865@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc957eeb-ac94-44ff-0c16-08d7fdf0bf69
x-ms-traffictypediagnostic: AM7PR04MB7031:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB7031E0A8AC7D0E9F5A6CAE78F8B40@AM7PR04MB7031.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KpAOfhTMCcd8PSBpXDQcBg/rzdw0iS5tCvPhqHdehObFV+6myv/RuZl0FkeOgXLmq41+qbUwPx+QecQnW7pAQZY/YsnOHg/Hz4muODs6XPVaxYct+A+uTLMLTGzSWQUsAqeiusPo1aBrW8QHZpAdkB+7BGfVFkA1T3R7e8wdosZpfvYKbNKpWC1sUMbCerOd1psehpEFD1K5gVmAdybRJqKg1iwc5K2Jpi/sEfTpOBLQ8s5urWDCHZISG0CzUrx8k1349GlrZxbQfMyeJosVpjmrmPmVG1yIDMhyKTzFF8YAGAGIJCYccqOv+UHrn/+7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(54906003)(8936002)(52536014)(71200400001)(76116006)(66946007)(4326008)(6916009)(66446008)(2906002)(316002)(5660300002)(7696005)(55016002)(478600001)(9686003)(26005)(53546011)(6506007)(66556008)(66476007)(8676002)(33656002)(86362001)(186003)(64756008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: qHmru3dre7MFdHbQxS4hbx1ke+XivXuV+e0gsMAHHaKtFBeJB2XyjZf8kELKHsDY4ryAQ4cZBoJFWywzTjWhaa8X8dWrfpYGnZWzYs7zQNmRw53tEpHw9M1r8sD/zSji3tEdjIz1gC3IhEy+Wtl3e+OgQBupgmLeYuHPj8S7tlwEFQMc0JIfbxbGCxtbjtavbu0T3n/HNdNaD7lIZJ09UO/EznYd6aENUbcDcX2Qr1TinniXIEOPsioJqVRA2gGmaUobAQgSQSXMjWVa4HSC5kAuBB3cjAq1mgmVpJRQN3tBhf6HRPY3pJYm4KcgEijjIje9zDPjtp7Q9P0qPEB6ox4IphlhNhUpOvcjaIJsi/yusxjhQdRBMQcJpjM5ujJIIStCumx83ka7OqPFHZcL0Rkbe+vRblUU9cnT7RxOQCJihyeciGEAKxDbfF2iiyNtNgCp9ahT4Iw9c5jNbPL/v5xFybPlBc6JeZuhAc1zlh0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc957eeb-ac94-44ff-0c16-08d7fdf0bf69
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 01:37:54.0768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iYHhFxPMFVGdCq9wBYTH5fPygurd4Nw5qvUoecJRYCkpBAnXypxgyDHqOC1kvgINTdvtR/UgjGwlQa20XBiN3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_183756_885285_0AD83BD7 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Wednesday, May 20, 2020 12:15 AM
> To: Y.b. Lu <yangbo.lu@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; Shawn Guo <shawnguo@kernel.org>;
> Leo Li <leoyang.li@nxp.com>
> Subject: Re: [v2] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> On Tue, May 19, 2020 at 10:53:07AM +0800, Yangbo Lu wrote:
> > The timer fixed interval period pulse generator register
> > is used to generate periodic pulses. The down count
> > register loads the value programmed in the fixed period
> > interval (FIPER). At every tick of the timer accumulator
> > overflow, the counter decrements by the value of
> > TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> > counter value reaches zero. It reloads the down counter
> > in the cycle following a pulse. To use the TMR_FIPER
> > register to generate a 1 PPS event, the value
> > (10^9 nanoseconds) - TCLK_PERIOD should be programmed.
> > It should be 999999995 since TCLK_PERIOD is 5.
> >
> > This patch is to output PPS signal on FIPER2 which is more
> > desired by user.
> 
> I think it wouldn't hurt to spell out the effect of this change:
> Before, the period of FIPER2 was 100 microseconds.
> Now, the period of FIPER2 is one second.

Yes. I sent out the v3 to mentioned the effect of the change.
Thanks!

> 
> Thanks,
> Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
