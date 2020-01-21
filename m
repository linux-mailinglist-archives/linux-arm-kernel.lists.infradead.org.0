Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F5714465C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 22:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2awRZvFPxzuSMRSZZFAqlQw213gs3Us1RAg9cHBAdcM=; b=kHxsfxAZnMExxn
	QJtZ6okMYjT1P8LhJDZ5IqOaAJ7IcHo/eQ/NFTBjiurAer8g/3WfASbO8XeQFz6VrGL7uTWHEfQV5
	C29cMpDir81cxa6VOO36msbl2QPRA7nKlZ0d50aDTdQjr1rFyg5vDDRgGWyG8dXZO7zg4T9nlraLy
	Qhf21euW8lx7ojhecW32N2w9fEu3NIuSSigvsXlVRmx1XkMNDqsU8yeZ3QO4O9Nd9kpAj6Tgg1byl
	sUGlwXqZpv1Cg5FovRYIjNpcg5y+bBr8xUNEn7xMWQ0qRzfoIGbhE6GE8vdcejVvVmyxHdjM5JxHG
	h4iqi+QvBBtEPuWzJeLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0yu-0000BE-Hm; Tue, 21 Jan 2020 21:22:40 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0ye-0000AO-3q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 21:22:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 482M1n32PCz1qqkg;
 Tue, 21 Jan 2020 22:22:21 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 482M1n0XB8z1qwXd;
 Tue, 21 Jan 2020 22:22:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id v1ehCpYUl4BC; Tue, 21 Jan 2020 22:22:19 +0100 (CET)
X-Auth-Info: JdDdtOo0Op1/Vvk/mJowZKUgz0y2r9iKg7GMIc8hnEc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 21 Jan 2020 22:22:19 +0100 (CET)
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
To: Stefan Agner <stefan@agner.ch>
References: <20191114131751.26746-1-marex@denx.de>
 <6a2e711d186e216f34c6cbd5b66f2a19@agner.ch>
From: Marek Vasut <marex@denx.de>
Message-ID: <d52d2145-d260-eaf1-de3b-a140198dc0cc@denx.de>
Date: Tue, 21 Jan 2020 22:22:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6a2e711d186e216f34c6cbd5b66f2a19@agner.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_132225_850948_5EC045E3 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 2:50 PM, Stefan Agner wrote:
> On 2019-11-14 14:17, Marek Vasut wrote:
>> The bus_flags and bus_format handling logic does not seem to cover
>> all potential usecases. Specifically, this seems to fail with an
>> "edt,etm0700g0edh6" display attached to an 24bit display interface,
>> with interface-pix-fmt = "rgb24" set in DT.
>>
>> In this specific setup, the panel-simple.c driver entry for the display
>> sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
>> from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
>> will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
>> imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
>> the panel-simple.c and non-zero. The result is incorrect flags being
>> used for the display configuration and thus an image corruption.
>> (Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
>> the ipuv3 clocks pixels on the wrong edge).
>>
>> This patch fixes the problem by overriding the imx_crtc_state->bus_format
>> from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
>> present or if the DI provides no formats. Similarly for bus_flags, which
>> are set from imxpd->bus_flags only if the DI provides no formats.
> 
> So this basically prioritizes imxpd->bus_format over what the display
> provides? Is this correct in all situations?
> 
> I was thinking that interface-pix-fmt is the legacy way to define the
> bus format and it should be provided by the display nowadays.
> 
> However, I guess there is the case where you connect a 18-bit display to
> a 24-bit bus (leaving some bits unconnected). Depending on how the
> colors/bits are distributed one cannot use 18-bit mode on SoC side but
> has to use 24-bit. So the bus format becomes a connection specific
> property... I guess the interface-pix-fmt can serve that role. 

So, can this patch go in ? It's fixing an actual issue for me -- very
much what Stefan described above.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
