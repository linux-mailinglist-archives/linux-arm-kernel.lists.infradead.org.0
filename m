Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A617EB17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 22:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGll64/S5WV1a8GLqR7VMeksBHwxy9kjwoQeYbjBXEs=; b=rrYqGy3tYeD48l
	lAK4eHFIuIUgasNGV8PremPjRhOXolBZEw6J4/7gVRSTqJClpmGNcGZehw8Utewh4KzUZEyuQuyxQ
	fHpjFTdzVH/aXs9Rx7+Bsx3SrFwRNq3yoZdrSoxobHJ8nk5yW3rFuz+zXolHz0SguGBbo7lqLXS0H
	tUjYmmrJWiQyuhmiuhPxm0j8rZkuQxe05h4/D6NKeFDrUiSag9isnHj4OQNOhCZrjk68+kMKtYUO3
	MK4dQX498EqhEYJob9SROYZgtI5jHnay+LIrwWdvgt0LqxgIGi1oaVwxVpv1hA9noNGWt6Y6I/o3x
	ZDDkNfhFIYY8bG/fHLJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPpo-0001GF-Lq; Mon, 09 Mar 2020 21:21:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPpa-0001FM-SC
 for linux-arm-kernel@bombadil.infradead.org; Mon, 09 Mar 2020 21:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DZMH+5CDJAGB6viHmRDOX+5H23X6INKr65JNMQMEq9A=; b=iZpo1qE4y4cYirhkd7G5UpB+VR
 V7QgyvTCTnXq7lbjb+NgcGpLnQoIzXGuzT1l/I7mSTC0JMlNIBIS3AD7vwrFRtJstIH2pV3oVs5ky
 xXW0u+vjO9M0hkfA75KQ6pccOhFFdfqWXz96UmK+TMZoz/miBHkQxqSDjpD5waFWjoFJ+8NAuKOkB
 AirVAw/qjnGzX1cz9/OyTpxn1JBDnRKmLMGXBdnPqLO3avgnbuY2n+wfWl+SW7iXdwp+k6XqAvz+7
 0/o7C3dhPy3dmlvhQ/1YQ5gHKdKRUV2MosYpy/sxXbrZ2Qys+J3sLTZYMhJgqjivN6FmDoW25wXDG
 1uQ4C/2A==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPpY-0001Ro-99
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 21:20:57 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4B152E0004;
 Mon,  9 Mar 2020 21:20:21 +0000 (UTC)
Date: Mon, 9 Mar 2020 22:20:20 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v4 3/4] ARM: at91/dt: sama5d4: add i2c gpio pinctrl
Message-ID: <20200309212020.GJ3563@piout.net>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
 <20200225155012.22764-3-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225155012.22764-3-codrin.ciubotariu@microchip.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Kamel Bouhara <kamel.bouhara@bootlin.com>,
 wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux@armlinux.org.uk, peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/02/2020 17:50:11+0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls so the i2c bus recovery option can be enabled
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: removed gpio pull-ups]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
> 
> Changes in v4:
>  - added Acked-by tag from Ludovic;
> 
> Changes in v3:
>  - removed gpio pull-ups;
> 
> Changes in v2:
>   - none;
> 
>  arch/arm/boot/dts/sama5d4.dtsi | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
