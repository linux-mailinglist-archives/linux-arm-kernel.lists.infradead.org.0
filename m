Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7E11F429B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NpGzMpwi60nzNEgLrHcImEICYVjtUAnfNjGSdatrYLo=; b=fN+msW0tSNm9Sy0C+bB6Ht8eW
	mtJPRjR8EkoJUDrKNF0MF1hxOGdj7wNhz+Yohy45hDDzYfQ6RNDiDOF0IwS9crNA5wsLCF5O81pdV
	3O3y0xalZzJ40lrGr+Gd9X4UWPUJsXJUWNqeVNOoVryEx+6uQAxVjGuz7KrBiMbOLJpLvpVBH+CQB
	0A4xPazh86yHNqJ35zJBBgt2wNH5qfHyELiRtf0652nprnTaR0kKS6A544G0+OGrPyuNBDtBeP6nd
	uxTkpR7GxtYiQmlk0d+JUjZk2n5TLsIzfWVqY66S+h6xKGWtIGZ6ySUJnpYeQPN30uHIVjvqjKP6R
	0WHmjiGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiHF-0002tt-PG; Tue, 09 Jun 2020 17:43:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiH8-0002tG-2X; Tue, 09 Jun 2020 17:43:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 77DE12A07B0
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH v9 11/11] Documentation: gpu: todo: Add dw-mipi-dsi
 consolidation plan
In-Reply-To: <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g@mail.gmail.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
 <20200609162700.953260-12-adrian.ratiu@collabora.com>
 <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g@mail.gmail.com>
Date: Tue, 09 Jun 2020 20:44:26 +0300
Message-ID: <87sgf4i16t.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_104302_252534_E791E585 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Tue, Jun 9, 2020 at 6:25 PM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> This documents the longer-term plan to cleanup the dw-mipi-dsi 
>> bridge based drivers after the regmap refactor and i.MX6 driver 
>> have landed. 
>> 
>> The goal is to get the entire bridge logic in one place and 
>> continue the refactorings under the drm/bridge tree. 
>> 
>> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com> Cc: 
>> Boris Brezillon <boris.brezillon@collabora.com> Cc: Sam 
>> Ravnborg <sam@ravnborg.org> Cc: Daniel Vetter 
>> <daniel.vetter@ffwll.ch> Signed-off-by: Adrian Ratiu 
>> <adrian.ratiu@collabora.com> 
> 
> This cc's the world, but not dri-devel. Can you pls resubmit 
> with that added? 

Yes, sorry about omitting dri-devel, it was unintentional. Will 
resubmit the same version.

Adrian

>
> Thanks, Daniel
>
>> ---
>>  Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>
>> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
>> index 658b52f7ffc6c..2b142980a4b16 100644
>> --- a/Documentation/gpu/todo.rst
>> +++ b/Documentation/gpu/todo.rst
>> @@ -548,6 +548,31 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
>>
>>  Contact: Harry Wentland, Alex Deucher
>>
>> +Reorganize dw-mipi-dsi bridge-based host-controller drivers
>> +-----------------------------------------------------------
>> +
>> +The Synopsys DW MIPI DSI bridge is used by a number of SoC platform drivers
>> +(STM, Rockchip, i.MX) which don't cleanly encapsulate their bridge logic which
>> +gets split between the Synopsys bridge (drm/bridge/synopsys/dw-mipi-dsi.c) and
>> +platform drivers like drm/imx/dw_mipi_dsi-imx6.c by passing around the bridge
>> +configuration regmap, creating new bridges / daisy chaining in platform drivers,
>> +duplicating encoder creation, having too much encoder logic instead of using the
>> +simple encoder interface and so on.
>> +
>> +The goal of this rework is to make the dw-mipi-dsi driver a better encapsulated
>> +bridge by moving all bridge-related logic under drm/bridge, including the SoC
>> +bindings which chain to the core Synopsys code under drm/bridge/dw-mipi-dsi/
>> +from which they can be further consolidated and cleaned up.
>> +
>> +If this goal proves to be impossible then drm_bridge might not be the correct
>> +abstraction for these host controllers and unifying their logic into a helper
>> +library encapsulating a drm_encoder might be more desirable, in other words to
>> +move away from drm_bridge entirely.
>> +
>> +Contact: Adrian Ratiu, Daniel Vetter, Laurent Pinchart
>> +
>> +Level: Intermediate
>> +
>>  Bootsplash
>>  ==========
>>
>> --
>> 2.27.0
>>
>
>
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
