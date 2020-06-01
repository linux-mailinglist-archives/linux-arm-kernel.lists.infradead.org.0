Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81DF1EA0A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gTSHh8XDsMaXoOFZBG0Zecpa59bIDhsNgMI7pN61eas=; b=T4SalM8I7qY/94p5tBrhJ4/es
	AZkbaVZ82r3/gHxoS5QQoR68v0oqpR1LuSToeDkD9xaKPlgJoXiE2Uclg13NdN+lB9Qa5Jo4FSYCE
	RBQN7JZ/oBYryj4gSeD9trFe2AjbyUAvdsuBc8BZv8GdaxhdW3SfvvrUvrW01MnpI9KBpy+WN1OuJ
	xuiMoyFszAh/BFt49zC5/AvrQOniv+VLmqlqCD+ayVLSuD8wy5ZRGeNtJdICeZzXMPthllPrki+ah
	sBmQxOmUjllsbuWo1tFeVRSEe+KFq+CqqvlyQWQLmZvJlFKRV729zg//4pnddQo5v0Tq/Wk5iJ9jW
	FQhxlOemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgWI-0004sz-Ak; Mon, 01 Jun 2020 09:14:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgWA-0004oW-D7; Mon, 01 Jun 2020 09:14:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 52E552A1629
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Philippe CORNU <philippe.cornu@st.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
In-Reply-To: <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
 <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
Date: Mon, 01 Jun 2020 12:15:02 +0300
Message-ID: <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021402_575314_B0F57C70 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020, Philippe CORNU <philippe.cornu@st.com> wrote:
> Hi Adrian, and thank you very much for the patchset.  Thank you 
> also for having tested it on STM32F769 and STM32MP1.  Sorry for 
> the late response, Yannick and I will review it as soon as 
> possible and we will keep you posted.  Note: Do not hesitate to 
> put us in copy for the next version  (philippe.cornu@st.com, 
> yannick.fertre@st.com) Regards, Philippe :-) 

Hi Philippe,

Thank you very much for your previous and future STM testing, 
really appreciate it! I've CC'd Yannick until now but I'll also CC 
you sure :)

It's been over a month since I posted v8 and I was just gearing up 
to address all feedback, rebase & retest to prepare v9 but I'll 
wait a little longer, no problem, it's no rush.

Have an awesome day,
Adrian

>
>
> On 4/27/20 10:19 AM, Adrian Ratiu wrote:
>> The stm mipi-dsi platform driver added a version test in
>> commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
>> so that HW revisions other than v1.3x get rejected. The rockchip
>> driver had no such check and just assumed register layouts are
>> v1.3x compatible.
>> 
>> Having such tests was a good idea because only v130/v131 layouts
>> were supported at the time, however since adding multiple layout
>> support in the bridge, the version is automatically checked for
>> all drivers, compatible layouts get picked and unsupported HW is
>> automatically rejected by the bridge, so there's no use keeping
>> the test in the stm driver.
>> 
>> The main reason prompting this change is that the stm driver
>> test immediately disabled the peripheral clock after reading
>> the version, making the bridge read version 0x0 immediately
>> after in its own probe(), so we move the clock disabling after
>> the bridge does the version test.
>> 
>> Tested on STM32F769 and STM32MP1.
>> 
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> Reported-by: Adrian Pop <pop.adrian61@gmail.com>
>> Tested-by: Adrian Pop <pop.adrian61@gmail.com>
>> Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
>> ---
>> New in v6.
>> ---
>>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 12 +++---------
>>   1 file changed, 3 insertions(+), 9 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> index 2e1f2664495d0..7218e405d7e2b 100644
>> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>> @@ -402,15 +402,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>   		goto err_dsi_probe;
>>   	}
>>   
>> -	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
>> -	clk_disable_unprepare(pclk);
>> -
>> -	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
>> -		ret = -ENODEV;
>> -		DRM_ERROR("bad dsi hardware version\n");
>> -		goto err_dsi_probe;
>> -	}
>> -
>>   	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>>   	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>>   
>> @@ -423,6 +414,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>   		goto err_dsi_probe;
>>   	}
>>   
>> +	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
>> +	clk_disable_unprepare(pclk);
>> +
>>   	return 0;
>>   
>>   err_dsi_probe:
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
