Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80502B394E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 13:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLYm8NooO3KOCqFcVOUwEaNPx4fVDpjxme9i1+cLTGY=; b=VfjkxnS6AlURub
	1w4jK+r9NbCBngRUo01NnbaJMZJwIy3kJ5dejaRywOYjswP1LKbFtRDGB1t9m+p9L/E+MZUL/vEia
	GxJX7fC5U+Tzk8DoWAoWlrssR2SAof4W1XwzA8645jYmHGAgL8JEb7fyL8/bmpFV16OQh5P56ta5M
	7U/GqOVuCweDUP7TMvh+ciAB1p1bsQVHOa8wsF7CKYxUmFzuFrGGoGU9Mt+3nzqamreaKV3hHMhOr
	T06QCgp2I1DaHBz7z5ecCp+5r/NiT68IRsUu5wNikb6OW9C1GYO+SGtV+3iBsF4iOzNXIw6n+K6S3
	DnhjrV5w+zev/KuTx3zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9p9x-0007Bl-8U; Mon, 16 Sep 2019 11:27:09 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9p9i-0007Au-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 11:26:56 +0000
Received: by mail-ed1-x542.google.com with SMTP id c20so23727719eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 04:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+fK6Wp6Chr3W3LdwK3sHJlbFClJr2sTjHhperAy44lM=;
 b=jxTaAc3pOi/Q5KpsOBSSsEOApF27/xLVLOWnpdZtozTP7yLdezgZWUW4nQ8e9mCQ6W
 exLBlK46mka7M5VAiKsreg+o1K7EiA66YlsPfnd/UfkYx3LoXUw+IApuap3tq29r4coT
 BbYF/9ia4BEimBz6rrtcyeXUd50pONvdvUlKm/1Xix7qSzeD/E6IOpEKYx70Fk04TqkZ
 NNPgTgj2L30X55YTTGxPDCNiN5qOYeHUdFZXFz4gFjP9CdgzzA070TkWnwNcI57YVkTn
 SzHyy6CXOqYEUqRg62ee7K+nhwpsMJykiBlOZEvFHHiU21S8+5p49pMxSdgd3EAHo4VQ
 auHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+fK6Wp6Chr3W3LdwK3sHJlbFClJr2sTjHhperAy44lM=;
 b=QySXqikvadMBQDvOj77QUOJ7SlHiRAGik5uCaoFbkezB38Cr2CIOPrpLKt650lgrH2
 oPnFJidhsMHCk1vjSI7lxiuYjCB4FwE/cbpqrzb4AfmpNvwULxwYKB3ICpdj6sX6xkm5
 ND+ZJ5H9xdlNeUVmL99HnJB8XXsk83wU97USnQD2HzKaWuSk2YVuzoRBGTI4t2xTQPm3
 qjiqr4PhlzgceaLVFOtbZCm5+AGHc6yfcaj9J6YEtJPk5LxEsi2vOJjIGnbXB48gdfI8
 Zv9CoO1MGcplH0oxeCs8NAbp6NGng8FYcyf7DZdSS+1dVvUDVm9x5FzeKYzvfmLkNys0
 Aotw==
X-Gm-Message-State: APjAAAXd6cfQJxBms6QJYwLlyiKTOlsMbN45FdszqBEhYWE7YOa+8XV/
 kOAbVVGw9hQZhzxXJYbpi8M=
X-Google-Smtp-Source: APXvYqzIQglWMTFsOfQxg+7tDxOq20k1S/HL66P0fgfg5ff7WsOMGGmM03Mq9AjDmEb61RTIq5JwMg==
X-Received: by 2002:a17:906:f82:: with SMTP id q2mr994093ejj.143.1568633210935; 
 Mon, 16 Sep 2019 04:26:50 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id bq18sm4279161ejb.84.2019.09.16.04.26.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 04:26:50 -0700 (PDT)
Date: Mon, 16 Sep 2019 13:22:28 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Message-ID: <20190916112228.GE16292@optiplex>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
 <20190913121608.GD16292@optiplex>
 <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_042654_441774_7FC02B33 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dongas86@gmail.com" <dongas86@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/19, Aisheng Dong wrote:
> > From: Oliver Graute <oliver.graute@gmail.com>
> > Sent: Friday, September 13, 2019 8:16 PM
> > 
> > On 12/09/19, Dong Aisheng wrote:
> > > IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a
> > number
> > > of SS (Subsystems), those SS may be shared between different SoCs
> > > while most of them can be reused like Devices Resources, Clocks, Power
> > domains and etc.
> > >
> > > This patch series aims to improve the MX8 architecture to comply with
> > > the HW design to save a lot of duplicated codes and benefits us a
> > > better maintainability and scalability in the future.
> > >
> > > This patch series depends on another clk new binding series:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fcover%2F11046287%2F&amp;data=02%7C01%7Caishen
> > g.dong
> > > %40nxp.com%7C2dffe4b2a0734c5a031408d738447876%7C686ea1d3bc2b
> > 4c6fa92cd9
> > >
> > 9c5c301635%7C0%7C1%7C637039739035971290&amp;sdata=JsAy8vUkkCp
> > n5HYh79oC
> > > vekH3SJAICg7VQnLMP01O3c%3D&amp;reserved=0
> > 
> > Thx for your update of this patch series. I'am running into the issue that my
> > linux next-20190904 unfortunately is not booting with it on my imx8QM
> > board. Kernel is just stuck during boot see below.
> > 
> > I applied your v5 of your clock binding patches series and applied this series in
> > v3. Your former two patch series worked well with next-20190716.
> > 
> > The last messages from the kernel are:
> > 
> > [    1.019208] imx-scu scu: mbox_request_channel_byname() could not
> > locate channel named "gip3"
> > [    1.027316] imx-scu scu: failed to request mbox chan gip3, ret -22
> > [    1.033480] imx-scu scu: failed to enable general irq channel: -22
> > [    1.039646] imx-scu scu: NXP i.MX SCU Initialized
> > [    1.047414] a35_clk: failed to get clock rate -22
> > [    1.058682]  lcd0-pwm0: failed to power up resource 188 ret -22
> > [    1.064314] imx-scu-clk: probe of pwm_clk failed with error -22
> > [    1.070538]  lcd0: failed to power up resource 187 ret -22
> > [    1.075690] imx-scu-clk: probe of lcd_clk failed with error -22
> > [    1.085965] mipi_csi0_core_clk: failed to attached the power domain -2
> > [    1.092359] mipi_csi0_esc_clk: failed to attached the power domain -2
> > [    1.098777] mipi_csi0_i2c0_clk: failed to attached the power domain -2
> > [    1.105278] mipi_csi0_pwm0_clk: failed to attached the power domain -2
> > [    1.115744] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
> > [    1.123923] gpio-mxc 5d080000.gpio: IRQ index 1 not found
> > [    1.130276] gpio-mxc 5d090000.gpio: IRQ index 1 not found
> > 
> > I see similar messages also with your older working patches, only the last two
> > lines are new errors.
> > 
> 
> Those warnings are because we are still missing some domains added into the
> pd driver support, it does not block the booting.
> 
> But I did miss to send another power domain patch to avoid gate of console domain
> which may result in the console hang.

Thx. This patch indeed solved my problem. So now its booting with
next-20190904 and your patch series.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
