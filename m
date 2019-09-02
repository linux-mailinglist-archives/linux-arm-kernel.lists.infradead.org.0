Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7482FA540D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNvAZxabi1h7OFXHssgazHcuSGN0AY38XYAsK7WnhWo=; b=N0q2bB3inAIgfL
	A07t8b3BNFKp6cVBE3joDLnuwdWWdTHPsoKCs+HWulrBONDvnXKH66PMNtmwL/aKy7N2nRf7IbzgY
	4GQ7VA8r28t6mtZsBYf/s6KdrDKNFQBUQEk80XgbygI8klYr6rP8lHBHUCdbj7Q+uZUg0zTYznA2T
	zFYeYjlGNxwiZG498lqqU7jXzGQXXEMW2O515ZWwsZnQNejKV6jag6sHc9J1YEBrmcSaWG+gIx71Q
	KgOcW4Kn5GiNjvJowauN4oGQIsrQKj4rOwCu4/4ZA2v8X+pDIVDd57bA+2SCDylXV1dt1m3EcEa25
	iu9/5Pq3NBHe/m2XbT3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jdo-0001sO-SC; Mon, 02 Sep 2019 10:32:56 +0000
Received: from mail-oln040092070053.outbound.protection.outlook.com
 ([40.92.70.53] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jdZ-0001ro-MZ; Mon, 02 Sep 2019 10:32:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q7RL4JzppThEOGuni15BfXQKo4eraxoUWeYC5SS+EC/O6myKg+q0rXwYK03QFGa6qIhvITEsg5SyOOmOHKrIVmPJyfNKKHWv3/zPQR+hA+4t6JQtSTkVFho7a94S//JdUQqgSbytC7pDQE+kDBf4K5BbDDYJQ27TGkaBl16TsOYWgJDnOyAL4+rVdwRTOUr+dqp1au5hiJFtY2T2q63GvCmwuXY9rOftEAVxbhIeDS76rVxl8E421mIIturOK8TRdMRi9ypMLXRcAaLXlZZ/zU+1pDfY3nIj0PDPL1pXE0fWCN/Ucc/p1T1UtYpkpmnLo9hz06fDF954Wy7rCtb9Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mMy0bYrDmhv8lbTruCvXNPgcPqXv372WjYxd1S80E7s=;
 b=PqtFtgL9qfsy0+lXQqm0r+aiFCzXFgUKeEHG0vuhKuqsbJWTnpU/8WabxMADJi0tvNEF8iU3AyTPyJdvOpNZh4KADA7pFGOmngtsalc/1M4jgebM2TGfUxLdnRONL1p0GhLjCVB9clb51XFUSjKkNvr95BzCQwX0VRqqqwTupgH/w3H+RbqGIpmtI14qQ0UJWXOd5tNBddYlm/9B9OEjSG0rm4C4rQWBX4Hh5ZvtdIcaB/+sWZEQz9iALGOaw6UePy9r+uAK1EY06msfjXm6YgP6PdkhlHyfTXjPXJSeZQOsUmE/NpBgg7EDslji/8znAj9zGoB/P+4BQaKfwBHuNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from AM5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (10.152.16.56) by AM5EUR03HT039.eop-EUR03.prod.protection.outlook.com
 (10.152.17.109) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Mon, 2 Sep
 2019 10:32:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.16.60) by
 AM5EUR03FT032.mail.protection.outlook.com (10.152.16.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Mon, 2 Sep 2019 10:32:38 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036%5]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 10:32:37 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Neil Armstrong <narmstrong@baylibre.com>, Cheng-Yi Chiang
 <cychiang@chromium.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Thread-Topic: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Thread-Index: AQHVYUIsW0s7539kVU2Jt4QPypUBOKcYIv4AgAAN9AA=
Date: Mon, 2 Sep 2019 10:32:37 +0000
Message-ID: <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20190902035435.44463-1-cychiang@chromium.org>
 <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
In-Reply-To: <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0902CA0020.eurprd09.prod.outlook.com
 (2603:10a6:3:e5::30) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:11AFA484E24FBB2CDB4BF31F98FE745128D47FBAE604F925178CCA20798AFEF0;
 UpperCasedChecksum:CEAEE32EF148EBB03EB444A95DF68042F6507D089325A6FC5FE9125E539400DE;
 SizeAsReceived:8557; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [A8LugvH9kj5T4xfRlk+80mbCfMFbMrmW]
x-microsoft-original-message-id: <d6fa2d56-335b-e15d-da18-749ea0341fad@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR03HT039; 
x-ms-traffictypediagnostic: AM5EUR03HT039:
x-microsoft-antispam-message-info: aPYwSGaRGf/92nAQF7WaYOyubhfYLufZAH+FzJ9zdaNyO4ale39c/SDQ8VerWyS8qfidyZqVm3lWQUxlMf+YMp5pW0YO74TbIMgWC/2ck7aCNT3CyKJ20Wf8vQFlvNnlI8Z1eNL4y0AeZsmrzNHr8rmgL2Wq8nVdVEjB6Jo8ZgQeqi27NodGvdkrcyadRWyZ
x-ms-exchange-transport-forked: True
Content-ID: <28AEFB56CC9D7540A050CC1E73674443@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f14e6ad-372f-4349-ed8d-08d72f90dfc7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 10:32:37.8279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_033241_741737_7D02E7C1 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.70.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "dianders@chromium.org" <dianders@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-02 11:42, Neil Armstrong wrote:
> Hi,
>
> On 02/09/2019 05:54, Cheng-Yi Chiang wrote:
>> In the designware databook, the sequence of enabling audio clock and
>> setting format is not clearly specified.
>> Currently, audio clock is enabled in the end of hw_param ops after
>> setting format.
>>
>> On some monitors, there is a possibility that audio does not come out.
>> Fix this by enabling audio clock in audio_startup ops
>> before hw_param ops setting format.
>>
>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
>> Tested-by: Douglas Anderson <dianders@chromium.org>
>> ---
>>  Changes from v1:
>>  1. Move audio_startup to the front of audio_shutdown.
>>  2. Fix the indentation of audio_startup equal sign using tab.
>>  3. Rebase the patch on linux-next/master.
>>  4. Add Reviewed-by and Tested-by fields from dianders@chromium.org.
>>  5. Add Reviewed-by field from jonas@kwiboo.se.
>>
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>> index 1d15cf9b6821..34d8e837555f 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
>> @@ -109,6 +109,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>>  	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>>  	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>>  
>> +	return 0;
>> +}
>> +
>> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
>> +{
>> +	struct dw_hdmi_i2s_audio_data *audio = data;
>> +	struct dw_hdmi *hdmi = audio->hdmi;
>> +
>>  	dw_hdmi_audio_enable(hdmi);
>>  
>>  	return 0;
>> @@ -153,6 +161,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>>  
>>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>>  	.hw_params	= dw_hdmi_i2s_hw_params,
>> +	.audio_startup  = dw_hdmi_i2s_audio_startup,
>>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>>  	.get_eld	= dw_hdmi_i2s_get_eld,
>>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
>>
> Looks sane, Jonas should I apply it now it's rebased ?

Sure, looks sane and compiles without warnings on my build host.

Regards,
Jonas

>
> Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
