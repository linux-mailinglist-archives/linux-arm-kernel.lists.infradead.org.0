Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29CDE50F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZIuDD0c2hALB2CG7J1u0naKrIijgXZ2eNDyVQopGN4=; b=qAY37X++yb48AD
	zYhZSP9xmVKXspWaVl5GGRvNnudIbGPVqXYDowMsnyB/h3uxdk/N4/+xYrCheGS3R7YSLgGeSvXUc
	XSCVYy+JCPpWAPONIEwv+py8Zk+lffj9CmNbsf7y7dXssAQtWDrkzKaeOL/8ly52mw+x8elfcw5oJ
	RmjMNWoD4VGUX+Niwirw+iFFLLE/PXr7rVxgRuTsv3MmFuwzSh4tglJ/xpMlrokfprWNwrN2ffW8C
	/4twg9pTG5AImBZIuKkYqnJ3vJGo75ueAKPm4Y09dOF0taeRn/b3N0WnguftacXPtNAJ66+YJDsFd
	nF6BLry1TQbMc7BUPa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2DV-0002kh-69; Fri, 25 Oct 2019 16:13:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2DG-0002jo-TP
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:13:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id k20so2068547ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 09:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mB6mOiameCLn7ECgOsZDZNX+3osgS5//YQBE/xEepmE=;
 b=MS83xhDic1YELsqGMOWv1FIcEeIB1jLJPftmcg1CuvSQ8Nsbg8IFrOBK5UX6jjbMWg
 9yKyswLXC0AbIb+CkwK9ihrIzMwFqfpowjxzD1AcSK9YjRRMUFqs6UUiX/piaEWD97qw
 WKenONVjubag+gr5YjCMl8Mv8+FW92vJbqMyZ+wef9SEdGOtgq5LnDvEVVw3Xf8uX+7a
 nsUNBfu1ChEJy1ISyQZ5rqVR7+9Lny0oySwOKyj45bIqvSdiOlR92bDLH3cqRGtt0ZQb
 Xfox+/+1x0PjEp79OCfsOeFVhlPgKd9p5of2mNvZDulExtauwztvTlW4A0giXvtSpWRW
 Ewnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mB6mOiameCLn7ECgOsZDZNX+3osgS5//YQBE/xEepmE=;
 b=fcehTboaRK59ar929JWdu5QQQgBOq9hj2eTTrxnVgC9xrkkfpeuD7qeQvsNbfO86vo
 l9xgIrkW07CQ5gc6Cx0UCmsNDc6ow3TOaWrI6LYyy9GRt43kUnWd2yaU0Gwqu8KsrSj+
 bsy5RbrlPt0g9yiU+eB9J0QetrA1hCMnpTnvshpSmTLmzoltdq3Vw2Gx94X7on46iIfs
 /L5SWPR0XHJoiABvG81mCkOjPaPTsbCtJBrsvBKnpBi3rA8WjLQatskRRf662KuAmSZP
 Xri+1yvB5BeRcCRDZWANXyuYGANrwnixplT8v0dB8JKNrMxdUA6H+7kn4lUYP2j9mS51
 L88g==
X-Gm-Message-State: APjAAAUqakbbpPPopUZPtEXIo6DnBMK7b/BnmVz+FtUhkyya8aNrf7KX
 e7YWZTkF3TzmlIqYAffXGl+DagOd/DHmCRV73k4=
X-Google-Smtp-Source: APXvYqyHonqmh4/CbrukJyLKnuA4pR1UCu0y/hzkxGXusYKZlXPsTpHG5HvHueJO/kAiF5w2B+JU4YX17zbFK4BscB0=
X-Received: by 2002:a2e:b1c7:: with SMTP id e7mr3031685lja.239.1572019996188; 
 Fri, 25 Oct 2019 09:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191009204343.9316-1-festevam@gmail.com>
 <20191025061601.GE3208@dragon>
 <VI1PR04MB7023DFD8E28412640BB02F9AEE650@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023DFD8E28412640BB02F9AEE650@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 25 Oct 2019 13:13:18 -0300
Message-ID: <CAOMZO5AVOL+CgkNJ8WMOs5JNGxZNUw_Ofz==vJiVgobENj-4_Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer
 interrupts
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_091318_950323_D9043C4A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Shawn Guo <shawnguo@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Fri, Oct 25, 2019 at 1:09 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 25.10.2019 09:16, Shawn Guo wrote:
> > @Leonard, comment?
>
> This worked fine for me but after a bit of digging I was able to
> reproduce by using upstream uboot:
>
>      U-Boot 2019.10-00181-g17fd9915a4c6 (Oct 25 2019 - 17:28:28 +0300)
>      ...
>      0x020E0158:  00000000
>      0x020E046C:  0000B0B1
>
> versus:
>
>      U-Boot 2019.04-00890-g6a5534d13b9e (Oct 25 2019 - 18:56:40 +0300)
>      ...
>      0x020E0158:  00000005
>      0x020E046C:  0000B0B1
>
> But apparently what I reproduced was due to incorrect mux? Fabio: what
> is your exact bootloader?

I used mainline U-Boot 2019.10.

>
> Anyway, as far as I understand explicitly configuring pins is preferable
> to relying on bootloader anyway.
>
> Reviewed-By: Leonard Crestez <leonard.crestez@nxp.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
