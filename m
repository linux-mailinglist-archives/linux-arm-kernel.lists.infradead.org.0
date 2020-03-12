Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9018F183D3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jNw+goM562S/nZTULWyYuJjifnlIrG7AKo19hrhOSU=; b=NP/Ew7iUa3AYZh
	PbrLUMUj1m0rboVIRSEDj+dkBmncijBBqw2OiQeXSERGqlVGZ1N3H0A/y/2sgGSlvNweSctn5+l+c
	YqeSiCZbj0JePdEVG1LGdFLNx5klgrLKMMFmqF5XYbCPURAQIEBJedMXXeiLTu4mV4AzqK9xna9gF
	QojAujWKGK4jqUM1Mb7CSodFtLLY5ymwaq3ac3kLE+SI0hRuB95ZlMe9q0k/2/MNBP2TFxYw+BB0d
	w0H2Q1TbO3sCfW5CCVl4Ard9dBpRD0d8I0q0wNT+84e1SQLnQvHWs8BLG3O79Iz0Alz3KrsAFEHNe
	GA0mTZgXv/aq4Q0G4Etw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCX8Z-0002p7-LG; Thu, 12 Mar 2020 23:21:11 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCX8D-0002hq-AN
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:20:51 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9EE54240002;
 Thu, 12 Mar 2020 23:20:46 +0000 (UTC)
Date: Fri, 13 Mar 2020 00:20:46 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/2] rtc: sun6i: Make external 32k oscillator optional
Message-ID: <20200312232046.GB3384@piout.net>
References: <20200308135849.106333-1-jernej.skrabec@siol.net>
 <20200308135849.106333-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308135849.106333-2-jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_162049_511670_39245111 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/03/2020 14:58:48+0100, Jernej Skrabec wrote:
> Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
> (H6) don't have external 32kHz oscillator. Till H6, it didn't really
> matter if external oscillator was enabled because HW detected error and
> fall back to internal one. H6 has same functionality but it's the first
> SoC which have "auto switch bypass" bit documented and always enabled in
> driver. This prevents RTC to work correctly if external crystal is not
> present on board. There are other side effects - all peripherals which
> depends on this clock also don't work (HDMI CEC for example).
> 
> Make clocks property optional. If it is present, select external
> oscillator. If not, stay on internal.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/rtc/rtc-sun6i.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
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
