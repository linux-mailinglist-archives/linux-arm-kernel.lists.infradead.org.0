Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7004D3A31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxECHDTw0JxHmjjJlILpK/6gin5q/Tw19WMlLYqm9E0=; b=EXKo8HJnplipaC
	Bip/yq9LHnrOLaK4SlPtZTWWfRe8z3nK33+1ne6Fnzxda8v7yt2GsRVbBQ3AinDoYqk7Y2yReMxXd
	NdzkavsiEzEbR4wxQF9atXLruLHkVwTEDxKC32mvJHWOo5SZvo4YYIP7avqu6BHUTYlnGi2fMeBoH
	JnyMj3c28fdNiokowxyXKftduQC47EXB7V6uUVHYNohGMp1WPv+BvXhvxPKmlrIOxoYXDMQk+NK8O
	Toac4Y6rtIS7W/sZgPB5qOdQmhiW3GWYxldJH4NeSrDY/ghRlqDAk/6KMleij93n2idPM2B+Ao8sC
	WbYUgqiOrW/t+zXK9BHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpZ2-0004Yz-GW; Fri, 11 Oct 2019 07:42:16 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpYu-0004Wx-PX
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IoXlssjG1luXMNpP9iA7nYasHU7jHnQgpQnqZCdm4Qo=; b=czOrRXCDzFObju9ojt2G06iQ+3
 cUQUvK2zXFw6UP/ainnCbMNd2CAZaKTfSPfWTt5EpMustJkIeBPrnpEnlZVf/+9HTepP/TQSmdHxp
 AXeihDs1ceh5g+L3G1t+eOFKW1jC2D0S2KEnn+Pc3paPKAXA6X+rprYAaeC1VKMKl4ek=;
Received: from p200300ccff0b9e001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0b:9e00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iIpYb-0001YV-Rx; Fri, 11 Oct 2019 09:41:50 +0200
Date: Fri, 11 Oct 2019 09:41:48 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011094148.1376430e@aktux>
In-Reply-To: <20191011065609.6irap7elicatmsgg@pengutronix.de>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_004208_980544_01240C11 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 08:56:09 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> Hi Andreas,
> 
> On 19-10-10 21:23, Andreas Kemnade wrote:
> > The Netronix board E60K02 can be found some several Ebook-Readers,
> > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > is equipped with different SoCs requiring different pinmuxes.
> > 
> > For now the following peripherals are included:
> > - LED
> > - Power Key
> > - Cover (gpio via hall sensor)
> > - RC5T619 PMIC (the kernel misses support for rtc and charger
> >   subdevices).
> > - Backlight via lm3630a
> > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > 
> > It is based on vendor kernel but heavily reworked due to many
> > changed bindings.
> > 
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---
> > Changes in v3:
> > - better led name
> > - correct memory size
> > - comments about missing devices
> > 
> > Changes in v2:
> > - reordered, was 1/3
> > - moved pinmuxes to their actual users, not the parents
> >   of them
> > - removed some already-disabled stuff
> > - minor cleanups  
> 
> You won't change the muxing, so a this dtsi can be self contained?
> 
So you want me to put a big 
#if defined(MX6SLL) 
[...]
             pinctrl_i2c1: i2c1grp {
                        fsl,pins = <
                                MX6SLL_PAD_I2C1_SCL__I2C1_SCL    0x4001f8b1
                                MX6SLL_PAD_I2C1_SDA__I2C1_SDA    0x4001f8b1
                        >;
                };

#elif (MX6SL)
[...]
               pinctrl_i2c1: i2c1grp {
                        fsl,pins = <
                                MX6SL_PAD_I2C1_SCL__I2C1_SCL     0x4001f8b1
                                MX6SL_PAD_I2C1_SDA__I2C1_SDA     0x4001f8b1
                        >;
                };

#endif
in the dtsi?

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
