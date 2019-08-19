Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF6491F3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE9iQky49JUeMr3I92f3Hr6lFE55WuOBUwgzO2c8pg0=; b=cd2odqukP42EnT
	Nd74vDKIU3XzT7bX4pSc065KnTPgi/za0qNntqzrDoRPZKaZsnCwi5ZIlXH8HxIJgeKED5L0rgPQ7
	ojoJboLiqd1XBd0JlJ0TYTE90Uxu3k/LHh2blE3J7OXxSbIwTFY2v+h2ZEgHzjDmTwzKgeC/j/7dN
	Itio9LvTYDS9+QhmIapvFEfk2x+e1hjOmWxD83Ma3G3K40/rD/mWh1qWk3XWbfLlzUQWK2IdTdGOI
	/g3E0FrZO95P89/1gNkT3KUZlp0JnDf+wfRUxvk3af7ZgxRDY9Ahk+PwO98zRwHLYjcK+CTAnuMpI
	Tm0euGeAO1H1Uv8iZheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdHE-00054R-Al; Mon, 19 Aug 2019 08:44:32 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdGB-0004SN-98
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:43:29 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id zdFuhLYKWDqPezdFxhnQeg; Mon, 19 Aug 2019 10:43:19 +0200
Subject: Re: [PATCH v7 0/4] DCMI bridge support
To: Hugues Fruchet <hugues.fruchet@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <1566204081-19051-1-git-send-email-hugues.fruchet@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0cd073d9-3d25-9e22-f243-f72e395e9e96@xs4all.nl>
Date: Mon, 19 Aug 2019 10:43:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1566204081-19051-1-git-send-email-hugues.fruchet@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfH+ohgSwKLOrkTCl8qsJ7Y57Hym1F4F9FyCoyVRp/fBrw7CsqXSSkud9Lcf/tqU+l68nNtkRppyvDraao0dc4GoqELCakj53fmo0M9Xtt+xZB/ZAMN9/
 6llV9015cHgtvqEwpxTEWRgxKzhtBL2OT8JR9Ls2JJ6CEETn5xfOHl0278TnlfQq3CrK+WlqvopZ65Z1/gko+rJUnnTTYx83lu48dLzTfGHGFVNrxzKcdO5z
 IjNy1J5RQGb10psoVY1YXoBZH6GyoIAaP2WLonYyM6eYqy9o97MMfYicolvwFJ/HmBVW4SBSGOHuS08UNvnUNpfZZlK6Dz0xjbwE/hHhbyREyKqfBDBKqkwG
 gP7AF1fGzRetJTkYJfl+8Y20ohRW7IZ6YSHFOV4twVIfVqFjNaoNG0ax01yaOhUYSKCW9e9Qc5+CJv/lcV+sOUZnqyg0PY9uWpoQ9rChkqOmtiY0J4QHDIrF
 3gw5+h+hq8Gq8RkChTvY5s9NrcTByHSTsrw1oTaaF0PXdcF/2sqgx+KrucLdy5JwzpY/y6gcHLhg3fB+jOYm6XERNz0JU8TCOzxL73Mcu/YfZZz8IUDiwuNT
 cU/3DMUtDsuQsCxI3QCFDYm/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014327_612594_3E14361B 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mickael GUENE <mickael.guene@st.com>, linux-kernel@vger.kernel.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/19/19 10:41 AM, Hugues Fruchet wrote:
> This patch serie allows to connect non-parallel camera sensor to
> DCMI thanks to a bridge connected in between such as STMIPID02 [1].
> 
> Media controller support is introduced first, then support of
> several sub-devices within pipeline with dynamic linking
> between them.
> In order to keep backward compatibility with applications
> relying on V4L2 interface only, format set on video node
> is propagated to all sub-devices connected to camera interface.
> 
> [1] https://www.spinics.net/lists/devicetree/msg278002.html
> 
> ===========
> = history =
> ===========
> version 7:
>   - minor fix on 80 char trace message

v6 is already in a pending PR. I don't really want to make a new
PR just for a 80 char warning.

It can always be done in a follow-up patch.

Regards,

	Hans

> 
> version 6:
>   - As per Sakari remark: add a FIXME explaining that this
>     version only supports subdevices which expose RGB & YUV
>     "parallel form" mbus code (_2X8)
>   - Add some trace around subdev_call(s_fmt) error & format
>     changes to debug subdev which only expose serial mbus code
>   - Conform to "<name>":<pad index> when tracing subdev infos
> 
> version 5:
>   - Remove remaining Change-Id
>   - Add Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 
> version 4:
>   - Also drop subdev nodes registry as suggested by Hans:
>     https://www.spinics.net/lists/arm-kernel/msg743375.html
> 
> version 3:
>   - Drop media device registry to not expose media controller
>     interface to userspace as per Laurent' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153417.html
>   - Prefer "source" instead of "sensor" and keep it in 
>     dcmi_graph_entity struct, move asd as first member
>     of struct as per Sakari' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153119.html
>   - Drop dcmi_graph_deinit() as per Sakari' suggestion:
>     https://www.spinics.net/lists/linux-media/msg153417.html
> 
> version 2:
>   - Fix bus_info not consistent between media and V4L:
>     https://www.spinics.net/lists/arm-kernel/msg717676.html
>   - Propagation of format set on video node to the sub-devices
>     chain connected on camera interface
> 
> version 1:
>   - Initial submission
> 
> Hugues Fruchet (4):
>   media: stm32-dcmi: improve sensor subdev naming
>   media: stm32-dcmi: trace the supported fourcc/mbus_code
>   media: stm32-dcmi: add media controller support
>   media: stm32-dcmi: add support of several sub-devices
> 
>  drivers/media/platform/Kconfig            |   2 +-
>  drivers/media/platform/stm32/stm32-dcmi.c | 318 +++++++++++++++++++++++++-----
>  2 files changed, 268 insertions(+), 52 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
