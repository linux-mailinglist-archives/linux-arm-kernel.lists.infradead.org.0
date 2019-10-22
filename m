Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0865DFF89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/G+z1vAgSwWnczdh7AAiO2vNlGG5wFu0bEp/nRjKn+g=; b=sMo/NcWmhsJOMc
	RZh0ynqahZl6tFL6hy9x8mo3iiaaLPSA+sBKucHaSprWtfAzCXO0AmxN+9T9rljNrh/kDIoYbDFpn
	ZgHuAbWvOQo4uAEbA0SlIZ3lQuY+jC48qNxfhJ+AyGQloIh+8I1IageGeZcYX51PCFTGiXZzaccdC
	YrZ71glhLr3YvceVSvnDGdP7BfYyWZB/UG5ZSl5X1nz5iGaMkXaqaWq34sqyFrmU8IMf4RsqsZHpY
	XgdWxb5VklhLxE+uuNqygyHKh+w8Ovd2HPSZv4lSMjWCX6Dw3OlOaFvj4wKbzEfwbjegogdazHmIt
	f5iMDoDRn+SB3NNn1XWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpfB-0002Bq-JF; Tue, 22 Oct 2019 08:37:09 +0000
Received: from mail-he1eur02on0625.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::625]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpf1-00029u-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:37:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MyI3KM6T57C76M8GK2rSV5SDRgJrvbxEvNwJPxJoV1UGILMOoJNo8IG0Y0jUVl/NWuaj72/QsWIdrKQIOazk/tQvRFJFsL5XO2It8Nj3zISbtJ0Coh9ZjtWcdmLtMKGkkEnsr8WtFWRVvNrr1k45GWXkCI+IyGIjHL1SYa6we3AsCv8/0X2nF/oxYAhvXmcnsCBYfDj8d3RMa39Of+3j2OLN9fHxd7Ie0jW1y+z3GQAvPzJt39mmlXYkY83M70xPYNMC0e8l+f990mVAwvv29v9QzaWwpCh6L6MC4sAwMB416IFX0x8xiEk3KyaZTl5psITxCknPpw1n0Iyi3BVC9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stwmg0OizPp2+nyPdC+KT02MhX3t+bf4yKUhEqNkjgE=;
 b=d3U2y3CMLS8LWAm6EjdIknPeKLmpDAh6hhdkILX/KaQ46yedVph201nAFlEktjKNB8lYMV3XJ1qU7egciYWY1wBbMqU1c34ej7mUVg7158+WPllj4vlSZKFquqBt7CdA2l0SdeBWaHPA031/ov/w6o/9B+hjuYDBPbJer1DyCB+lcxsr6u3mdxB7YwS/g8yXePWGmUXOht4lSHM/gvU1mwEMn5VPmMGAB5/jXREKwhb46zyTxCzwr85oLLSJDKyUIgPy3slbElKPwpHjTvkW9ftucrEu/AYjCulaTPnUB73W+mjvx/qqUbxzJmDAREhpPfcTSPE6CFGBtEndXDPolA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stwmg0OizPp2+nyPdC+KT02MhX3t+bf4yKUhEqNkjgE=;
 b=K1drMWADM3OgjX497twXlKim3NGToOdVKd9SUijgDseDXIURTUS3KDdvY0dpyN9vByAtVSHq7sv9WD0Sxs/dhhzOFJgvJms2TWJWbYct3QP8G+GhvVMfT9ZjtcfHAIgDEyOUEkKK0CdGIJvM0GmaTTJS+VKjRbvJRSXjA6JkX4s=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3658.eurprd04.prod.outlook.com (52.134.65.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Tue, 22 Oct 2019 08:36:52 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2367.022; Tue, 22 Oct 2019
 08:36:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default speed
 grade value
Thread-Topic: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MN's default speed
 grade value
Thread-Index: AQHViJMjrjphINO/nEKP49CFCN+2HqdmUvUAgAADUQA=
Date: Tue, 22 Oct 2019 08:36:52 +0000
Message-ID: <DB3PR0402MB391687A3723E810119A58866F5680@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1571719179-23316-1-git-send-email-Anson.Huang@nxp.com>
 <20191022082400.7dsoo57mt7wfpqs7@vireshk-i7>
In-Reply-To: <20191022082400.7dsoo57mt7wfpqs7@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea30b8a5-e85e-496b-6fee-08d756cafd4d
x-ms-traffictypediagnostic: DB3PR0402MB3658:|DB3PR0402MB3658:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB365839A73F4318F9BB88A617F5680@DB3PR0402MB3658.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(189003)(199004)(6436002)(11346002)(64756008)(446003)(76176011)(6116002)(3846002)(6246003)(99286004)(476003)(44832011)(66946007)(76116006)(486006)(52536014)(66476007)(66066001)(66556008)(9686003)(26005)(102836004)(7696005)(86362001)(186003)(55016002)(6506007)(53546011)(66446008)(5660300002)(256004)(316002)(81156014)(8676002)(8936002)(54906003)(7736002)(305945005)(74316002)(14454004)(229853002)(4326008)(25786009)(81166006)(6916009)(33656002)(71190400001)(71200400001)(478600001)(2906002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3658;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w7SDN1dgh/gcYXrSf8TK1Hl8XrR6d0/K97Ci3iaxBn85oSvibrdM/IBP8uvm+hzqtkFbtDR0GHjyC4wuErKe/8bWsdT0vGsO0jXkOjD/T04vFeCB3oNCxSRo+H92eHroCgGeChS8sMlC8apMVyM7r36iFa2lR6Eg1Qs4gP1VimX/N2W1KYxLItnZhAE9J//+fW7wWhevxDrZED3rNvC/30Nmh2sFNgUnL9N/ITcoG5/c2MNGe8rZRyV/PdRVQ46eEgRdJDODKv+dEgQN/32k+7N/7KLAkXbBiIfy737gV6MIRbyho3S6pP98SAEkMl8YYwF3fN9egrd53tI8R/z68WrdBS2GaCjKIhi/CywcZ/oaNb63Q1HMjOUul5BGp9Q/KCM9WzrQYiJgDfLq1qlS0GaZXVe6UstOWbXn1JzeQgQFn0CXNAAW4A39aJwZuyIq
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea30b8a5-e85e-496b-6fee-08d756cafd4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 08:36:52.7778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oBy6pLcwIHG5tXBq9V9pWxbhx7vsJB9A/e10S18YWXHBxEQMsebZiWFrB639y06Did7VF0taAi0gbolN4I5S6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3658
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013659_203401_EE860589 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:625 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rafael.j.wysocki@intel.com" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Viresh

> On 22-10-19, 12:39, Anson Huang wrote:
> > i.MX8MN has different speed grade definition compared to
> > i.MX8MQ/i.MX8MM, when fuses are NOT written, the default speed_grade
> > should be set to minimum available OPP defined in DT which is 1.2GHz,
> > the corresponding speed_grade value should be 0xb.
> >
> > Fixes: 5b8010ba70d5 ("cpufreq: imx-cpufreq-dt: Add i.MX8MN support")
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/cpufreq/imx-cpufreq-dt.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/cpufreq/imx-cpufreq-dt.c
> > b/drivers/cpufreq/imx-cpufreq-dt.c
> > index 35db14c..26531f0 100644
> > --- a/drivers/cpufreq/imx-cpufreq-dt.c
> > +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> > @@ -44,19 +44,19 @@ static int imx_cpufreq_dt_probe(struct
> platform_device *pdev)
> >  	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >>
> > OCOTP_CFG3_MKT_SEGMENT_SHIFT;
> >
> >  	/*
> > -	 * Early samples without fuses written report "0 0" which means
> > -	 * consumer segment and minimum speed grading.
> > -	 *
> > -	 * According to datasheet minimum speed grading is not supported
> for
> > -	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
> > +	 * Early samples without fuses written report "0 0" which may NOT
> > +	 * match any OPP defined in DT. So clamp to minimum OPP defined
> in
> > +	 * DT to avoid warning for "no OPPs".
> >  	 *
> >  	 * Applies to i.MX8M series SoCs.
> >  	 */
> > -	if (mkt_segment == 0 && speed_grade == 0 && (
> > -			of_machine_is_compatible("fsl,imx8mm") ||
> > -			of_machine_is_compatible("fsl,imx8mn") ||
> > -			of_machine_is_compatible("fsl,imx8mq")))
> > -		speed_grade = 1;
> > +	if (mkt_segment == 0 && speed_grade == 0) {
> > +		if (of_machine_is_compatible("fsl,imx8mm") ||
> > +			of_machine_is_compatible("fsl,imx8mq"))
> 
> of_machine_is_compatible should come right below the above
> of_machine_is_compatible here, instead of a leading tab.

Ah, yes, fixed in V2.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
