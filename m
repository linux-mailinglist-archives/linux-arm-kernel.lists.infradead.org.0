Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A13960831
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkP93HmOVd/UrdFc/em0e+FRJ+teMRDoCEz/TXGR5Ls=; b=rACPqvi6MGX1md
	Uc6XQdW/UNq+E6kTuXowbKW5BO7Jt8DmcGCXNdfrQ2kuBgGF0h5mzQm8PQJ+pjSkfZXMTDoz0S8jM
	mHA8cBUOmdTfzDZm+rB2MisJrM2R7HIAfv1AR+vUVJ0OLQW7ErNqVeDZ77jvYEjorPKGSjccJLoVh
	kF+NEQEygzI6vaN50kRlrPYM2ycr6tE5PkKd0Bq36hb7h54yUchuCMszPEnPZZe3gYkFI3W5naRLR
	RGaPcj4Pe+Zg1YsNqW3HfsnTQ1AgJi+dTgnt+oS4ykd9irqb/iUh/lp8qrzaz0JiE1Cl6JkYCqr1T
	m5MwZQPvnVN0m2u42oVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPSh-0008Kh-2X; Fri, 05 Jul 2019 14:45:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRB-0005pc-6s
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EFphJe1CVVP/nzRxA8x6BhXKv/0bjU3/TiVkvgOFPek=; b=ks5Gl4uWB0yDzaU8M0qhMi/wEi
 pvlGfNAtdVkxiI49Z4r3KfXaeEfVD/B7v8NTprXE3zkPEHh4+iA/0q2PuI1kShMrVh01ETMhuMQcA
 O84pEdOLhqTkN4lxZ3a7sdayKH0TQh5ovQ00J6vtHyd0fq2fN4xwDs0J7rgsoVC+tlfZWJxnymYtV
 h1DiB01wL+Z6nCC6GA9nwOyNxlXDhMkrc2OHwWJqsK9K33Co8Z+pEMR+B5GuPz7OWxglgy/ZBeyEe
 hOwLTqTmenguvBpZnI5dm97JoXQn/vHZ6CJEgdEWN/4tQJQCgEzhKz4nQ2TihW/PmXapsjkmdApsq
 54f4gY2w==;
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNHb-0001i4-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:25:44 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x65CNqYQ030318; Fri, 5 Jul 2019 14:24:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=EFphJe1CVVP/nzRxA8x6BhXKv/0bjU3/TiVkvgOFPek=;
 b=BYLU4XNoWdTNPUWd8ceyUbCwUOTaR3Zl4KnD/DGwy4jIGIeLB91fgSU0JmDTNPxB+m8B
 snlkGg5ZlGmvMkbPmJtFJx1IBbJSAsrxEj8p2sFSRZ/55OFHIdcJn55lp4s138lzPju/
 2uKvrqJyrQP7KyltAKDUlXNckkyChpMBpj2exHAtp56yQ6Xe0YEzz3TMiVVDFV6yf+qK
 k4aCeQ/5gDkYiLxkHyPIu3B2qN1jxWF9hWyWQsPcWDqaTiLt5lzuSXvfC2uHYySkX71q
 yoaDFjY2zrcL7+8I9p+xMmvyzjquq0X4bq+uO99TSuQ+S57jzx1ZKE6MeT+G7r4ZXl4C nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tdw4ajaab-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 05 Jul 2019 14:24:14 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB07734;
 Fri,  5 Jul 2019 12:24:02 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 72FD32C47;
 Fri,  5 Jul 2019 12:24:02 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jul
 2019 14:24:01 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 5 Jul 2019 14:24:02 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Olivier MOYSAN <olivier.moysan@st.com>, "a.hajda@samsung.com"
 <a.hajda@samsung.com>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@siol.net"
 <jernej.skrabec@siol.net>, "airlied@linux.ie" <airlied@linux.ie>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jsarha@ti.com" <jsarha@ti.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/3] drm/bridge: sii902x: fix missing reference to mclk
 clock
Thread-Topic: [PATCH 1/3] drm/bridge: sii902x: fix missing reference to mclk
 clock
Thread-Index: AQHVMO2KR4mZoMb3BkGaiUB8X+1y2qa71auA
Date: Fri, 5 Jul 2019 12:24:02 +0000
Message-ID: <39d9bf8f-a906-7f69-582d-b2996e600c0f@st.com>
References: <1562082426-14876-1-git-send-email-olivier.moysan@st.com>
 <1562082426-14876-2-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1562082426-14876-2-git-send-email-olivier.moysan@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <DDC1C03DC92D944FA408C2A9B6DAE01F@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_05:, , signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier,
and many thanks for your patch.
I do not see how audio could work without your patch, so:
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
Philippe :-)

On 7/2/19 5:47 PM, Olivier Moysan wrote:
> Add devm_clk_get call to retrieve reference to master clock.
> 
> Fixes: ff5781634c41 ("drm/bridge: sii902x: Implement HDMI audio support")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   drivers/gpu/drm/bridge/sii902x.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
> index dd7aa466b280..36acc256e67e 100644
> --- a/drivers/gpu/drm/bridge/sii902x.c
> +++ b/drivers/gpu/drm/bridge/sii902x.c
> @@ -750,6 +750,7 @@ static int sii902x_audio_codec_init(struct sii902x *sii902x,
>   		sii902x->audio.i2s_fifo_sequence[i] |= audio_fifo_id[i] |
>   			i2s_lane_id[lanes[i]] |	SII902X_TPI_I2S_FIFO_ENABLE;
>   
> +	sii902x->audio.mclk = devm_clk_get(dev, "mclk");
>   	if (IS_ERR(sii902x->audio.mclk)) {
>   		dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
>   			__func__, PTR_ERR(sii902x->audio.mclk));
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
