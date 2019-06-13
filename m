Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6084323C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 04:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqJ16+vI9s7hw0xf9eZvAA60a4TgfYQeNETd8SKKliM=; b=gQ8BUsTMDD9xY3
	vWAUU27r0gwaHjAciRBi6fKseQiBnTw3WllMhDDkDf52+VAK6IVgkYm6yKYoH08msxRuJytnLsXeb
	Z2bZCsLrOWD++CyM6o+K6xvsK2aZcZ0NJCXYpOwniVnKIwmkzePE/uaemy1IIodWX1lFlXxN/ano4
	pf9jALlPYQho8L7PNHW3VTikfLvthf5CjBxeIuiezg7yhoII6S2tDTXVd+lVAHAshne7tjT5a351x
	H/BYVrRF5Yorl4dQwVkih5rG+pwZAUaeT6SOqvQlJwvJLK9scthJhQQ8/32qYLd6QAmiL7SdgRe5p
	rLpD4BbBemvL3j6Up6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbFaZ-0001dS-AK; Thu, 13 Jun 2019 02:35:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbFaL-0001d7-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 02:35:31 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC58420B7C;
 Thu, 13 Jun 2019 02:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560393329;
 bh=vPst04mhCl3KIJo/LpaMenWyVwtqXqolMhGHFBGokHM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h3dX+Ct9uOVCm6ikypOSf56jJ0R6OqUWb3PzVg+C5Z5emu7tcZLbFmLlrPknQhoDS
 xSzdLAw8clUVDiesy1W6VFdoWHLhVM8+gOtoFzyFNJRBOGE88NWgqwNJMI5XYp12TS
 WpIbalQ91kg3+LqIFJV2Wq/PjiGHbfsTncngghCE=
Date: Thu, 13 Jun 2019 10:34:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH v4] ARM: dts: Introduce the NXP LS1021A-TSN board
Message-ID: <20190613023452.GF20747@dragon>
References: <20190606222817.14223-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606222817.14223-1-olteanv@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_193530_332385_15B47168 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 01:28:17AM +0300, Vladimir Oltean wrote:
> The LS1021A-TSN is a development board built by VVDN/Argonboards in
> partnership with NXP.
> 
> It features the LS1021A SoC and the first-generation SJA1105T Ethernet
> switch for prototyping implementations of a subset of IEEE 802.1 TSN
> standards.
> 
> It has two regular Ethernet ports and four switched, TSN-capable ports.
> 
> It also features:
> - One Arduino header
> - One expansion header
> - Two USB 3.0 ports
> - One mini PCIe slot
> - One SATA interface
> - Accelerometer, gyroscope, temperature sensors
> 
> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
