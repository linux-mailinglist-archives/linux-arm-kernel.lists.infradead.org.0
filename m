Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE8816709F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj6SSCGcRAs2SoyUgnAmRtgUPd09RRflf/u0xvUxQMg=; b=lmnxjm/txBEohf
	oUaT9xTIUOIueCLO8HWd1F1av9d3BtHqEXub1Kg8XjXW1kTGnkDHZii3YJckIQlMQENRqu2bZFUh1
	eYuNq/+QDCT3Z7hGoYAynaRmo/AterOjLddLc+d55gVb8r4Owln6Y9tSPIdPLW2qMuM5DThzF+QTs
	2vHi3JVhjR+RmHJOtfPdayhoTqJEBX43LE3WtEh/CWYbJxyL0fWOYaFUepshVbbMixV1CupVix2bu
	jNxWHFp5GdP0qUR0U4DkCkQiqe3IEddWoLbwSw9HfuhS5I1aenyqV3e15Tibei9B4SEArJI8H83Zp
	b3Pym3gOaplJUoOmvyjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j531K-0000zC-P3; Fri, 21 Feb 2020 07:46:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j531B-0000yK-Ao; Fri, 21 Feb 2020 07:46:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 8BF432904EA
Subject: Re: [PATCH v8 1/6] drm/mediatek: Use regmap for register access
To: Randy Dunlap <rdunlap@infradead.org>, robh+dt@kernel.org,
 mark.rutland@arm.com, ck.hu@mediatek.com, p.zabel@pengutronix.de,
 airlied@linux.ie, mturquette@baylibre.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com, laurent.pinchart@ideasonboard.com
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <20200220172147.919996-2-enric.balletbo@collabora.com>
 <0b2046b9-90de-c894-7502-993b5df12e7a@infradead.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <5c19af7a-170b-2cd1-da98-e4125504eb34@collabora.com>
Date: Fri, 21 Feb 2020 08:46:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <0b2046b9-90de-c894-7502-993b5df12e7a@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_234637_507144_049603B9 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Randy,

On 21/2/20 0:48, Randy Dunlap wrote:
> On 2/20/20 9:21 AM, Enric Balletbo i Serra wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> The mmsys memory space is shared between the drm and the
>> clk driver. Use regmap to access it.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>> ---
>>
>> Changes in v8: None
>> Changes in v7:
>> - Add R-by from CK
>>
>>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 +-
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 50 +++++++++++--------------
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  4 +-
>>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 13 ++-----
>>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  2 +-
>>  5 files changed, 30 insertions(+), 43 deletions(-)
> 
> Hi. Just a quick question:
> 
> Do you need to select REGMAP or one of its derivatives to make sure
> that the proper interfaces are available for this driver?
> 

Right, I will fix this in next version.

> thanks.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
