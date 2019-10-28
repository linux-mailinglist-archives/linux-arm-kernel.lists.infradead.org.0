Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B0BE6EB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV2Z3Ip/wf48sml9mdGYIidqix2ppglX7wIMwiP/03g=; b=f/xQheTUFLGJcJ
	OkfsM5RPPP9KYAx7COuZMNwPWzuGaJodDsqMNpJxPcSo//u3apE7vba0Ojz9OQ20lbuGCRLGjXC8/
	3Xi88QM0h53gYx6zQTES/A75cGLqTpXAuia6W0+4kq++y7m1+cvkuxkJ+Yqe5Gn655Auw8TKvQk6v
	sFkhfABdrG6lkLqSqI0WXNXYKxXpQWIU6MFUVICYYf4TUw7w6+jlChaQq0B68TsAqU+Ek/qgfT5V9
	9hVDHba1S0Iz9XAXTFVEVnKW6gCqOplBZPelS7NgOiQenELpNVWSlDp+6h2RtddMQRQjz33QAoYkz
	Ms6z1rjUyGmh7efdoHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP11Y-0000IZ-Rl; Mon, 28 Oct 2019 09:09:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP11Q-0000I3-VT
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:09:10 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BDCD214E0;
 Mon, 28 Oct 2019 09:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572253748;
 bh=06/Pl06TvqrXiyjDtIoxIRWAVHdXaluNLujJ17bIh4o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EBpmOOZvz8D75YXXw5BE4NMAxLmPkk4uRgXlWiSOa+2sSC9luD5Q59idDmSFPN3eJ
 B81Mrp05O/LmiHhbSVWvidUXzVN726SMI+lsJSQxXzdwF8/vmlf13GkjdZQuH7p1rK
 lhS+yjVBczlGPfK9NMXlE3MPPpU1O8hJTmF5hcA8=
Date: Mon, 28 Oct 2019 17:08:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 0/9] Add SoC serial number support for i.MX6/7 SoCs
Message-ID: <20191028090846.GA16985@dragon>
References: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572232370-31580-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_020909_039238_FA5D9C06 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:12:41AM +0800, Anson Huang wrote:
> i.MX6/7 SoCs have 64-bit unique ID stored in OCOTP bank 0, word 1/2,
> read them out as SoC serial number which can be used from userspace:
> 
> root@imx7dsabresd:~# cat /sys/devices/soc0/serial_number
> 0000028FF618B953
> 
> Add support for i.MX6Q/6DL/6SL/6SX/6SLL/6UL/6ULL/6ULZ/7D, as they have
> same unique ID layout in OCOTP.
> 
> Anson Huang (9):
>   ARM: imx: Add serial number support for i.MX6Q
>   ARM: imx: Add serial number support for i.MX6DL
>   ARM: imx: Add serial number support for i.MX6SLL
>   ARM: imx: Add serial number support for i.MX6ULL
>   ARM: imx: Add serial number support for i.MX6UL
>   ARM: imx: Add serial number support for i.MX6ULZ
>   ARM: imx: Add serial number support for i.MX6SL
>   ARM: imx: Add serial number support for i.MX6SX
>   ARM: imx: Add serial number support for i.MX7D

For this particular case, I think one single patch is even better than
a series.  So please squash them.

Shawn

> 
>  arch/arm/mach-imx/cpu.c | 38 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
