Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937E037352
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Kdfxeo7hE4tCih3unDQEJ87kSTpNTaVR9ltcyOk+Mw=; b=opW/K5ku3Iyyjs
	GbpKKsbIoFIb5hDQqgetAM5hWw87NP/kdUVwhNMwPaXG3ypbv1LNglpzdyBoBCe4IFQiGCNoerGDX
	62gUlSMuoxFQlB/hRbzzSwRoTnJMGX3zeBH57XtjjoZ3/H+rqktxbNBnUpVH1TWlQur5I4+t5Dukx
	F82bf6a6xutj3VORDHRx+NBXzg93a1HbsiP39ToEl54ubuRUX+z9S8SPNdm8Cb9GN7i/jG/GBIfG/
	r61m5BQOkUw7pRQjGNSKMp5KuaBaFivY6d9hhe2v63rpr+RAhAu99MJqihMUZWavCQX+HDjCGAd4E
	2ogIMyzHNHk2sLh+eGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYquK-0005UA-G9; Thu, 06 Jun 2019 11:50:12 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYquC-0004c5-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 11:50:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 04:50:02 -0700
X-ExtLoop1: 1
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga005.jf.intel.com with ESMTP; 06 Jun 2019 04:50:00 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.162]) with mapi id 14.03.0415.000;
 Thu, 6 Jun 2019 12:49:59 +0100
From: "Rojewski, Cezary" <cezary.rojewski@intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: RE: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Thread-Topic: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Thread-Index: AQHVHFf8jLmQMNr5tUuhDON+nU23VKaOfj5w
Date: Thu, 6 Jun 2019 11:49:58 +0000
Message-ID: <3BD9CEE4EBD5E74B98FE2D277EB60E0B3900D3A0@IRSMSX104.ger.corp.intel.com>
References: <20190605100801.2488-1-maxime.ripard@bootlin.com>
 <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
 <20190606110647.iojplb27mdo276xk@flea>
In-Reply-To: <20190606110647.iojplb27mdo276xk@flea>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTBkYjYxMTktZGE4OS00ZDRkLWJmMDktZWUzZDcwNDg5ZTk2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNzZUSUxtK2s4XC9EWVd0TWt6SXpJeHV6YUg4UWZcL0Z4aEhBSEtaejR6MW4zZEI0NG0zaU1qRG1SSWlDV1lBN0ZMIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_045004_957209_95C44B56 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>Hi,
>
>On Wed, Jun 05, 2019 at 04:36:28PM +0000, Rojewski, Cezary wrote:
>> >+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
>> >+{
>> >+	if (width < 16 || width > 24)
>> >+		return -EINVAL;
>> >+
>> >+	if (width % 4)
>> >+		return -EINVAL;
>> >+
>> >+	return (width - 16) / 4;
>> >+}
>> >+
>> >+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
>> >+{
>> >+	if (width < 16 || width > 32)
>> >+		return -EINVAL;
>> >+
>> >+	if (width % 4)
>> >+		return -EINVAL;
>> >+
>> >+	return (width - 16) / 4;
>> >+}
>> >+
>> >+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
>> >+{
>> >+	if (width % 4)
>> >+		return -EINVAL;
>> >+
>>
>> In the two above you start with boundary check before mod yet in
>> this one the order is reversed.  Keeping the same order should prove
>> more cohesive.
>
>Indeed, I'll fix this.
>
>>
>> >+	if (width < 8 || width > 32)
>> >+		return -EINVAL;
>> >+
>> >+	return (width - 8) / 4 + 1;
>> >+}
>> >+
>>
>> Other, probably less welcome suggestion is introduction of unified
>> function which ones listed here would simply invoke. All of these
>> "computations" differ in fact only in: min and max boundary. The +1
>> for _sr_wss is negligible, you can append it on return.
>
>It's not just about the min and max boundaries. It's also the offset
>at which to start with (16 vs 8), and the offset to apply to the
>result (0 vs 1).
>
>That's 4 parameters out of 5 that are different. For something that
>trivial, I don't think it's worth it to put it in common.
>
>Maxime

This is what was going through my mind:

static inline s8 my_unified(int width, u8 min, u8 max)
{
	if (width < min || width > max)
		return -EINVAL;

	if (width % 4)
		return -EINVAL;

	return (width - min) / 4;
}

static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
{
	return my_unified(width, 16, 24);
}

static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
{
	return my_unified(width, 16, 32);
}

static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
{
	return my_unified(width, 8, 32) + 1;
}

However, if indeed 'start' offset is variable and may differ from min boundary, then my approach would fail.
Otherwise, treat it as suggestion, personally I find it easier to update only the unified function (development phase), especially if you're planning for adding more of these (the min/ max variants) in the future.

One more thing, the i2s ptr is unused - consider flagging it or simply removing from declaration?

Czarek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
