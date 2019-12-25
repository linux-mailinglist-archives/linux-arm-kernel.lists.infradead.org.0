Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E577212A86F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 16:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOqfcylb+HT+UiY9pjPoSwL7oUEle0YlZJBzvfG7S+M=; b=YKoDZU5tgcVPd1
	NmT2UhPuhQOO6DN9UMT2XK8y1wcFEyyenJ7MHulxnj110hGVh/FdXWeMHcfYillhCBPZbjTrnwYz/
	bC3gyBtLIcz7mm3Juh5eRiU6wsaKbYPDzZ68eECK4SWspvj3SM6+t7oYToE5zawWO4QGgwUKR/3c3
	o7YDyJsc8x4G+e/IyFfCwOHomjMMsc9c+ZBIszW8N6M2EPuUFtl9n3EJ+l17g1fXP/nL3PwzEoVpi
	tdUounL/nrcCU8gomcJq4TfHyM2BO2CGeKy64497ZwPSXn3lR9ezUIGWE5F81Qjfg6RW+g0bbFqJI
	wqJuguCY+jYNwioeiH2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik8fr-0007uK-EQ; Wed, 25 Dec 2019 15:34:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik8fe-0007tK-I5; Wed, 25 Dec 2019 15:34:00 +0000
Received: by mail-ed1-x541.google.com with SMTP id c26so20143002eds.8;
 Wed, 25 Dec 2019 07:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IQuzNAwmqgU7RYVLn7PTMJDVE0GkXT3f08VIotAoPf8=;
 b=maKl18YnhUUwUWP34Z6+xmQFT4wWqYgGuloO+Qfp31P46l/mqFeex62X+uUYBEm0Mo
 wHj3kE01FUyhYyaKwLfvVZBK8cP6LSV8H3m9C75Y+/eBEBqhwN35q+fuW6zQXhvoCPz1
 un7GRiTmnZJewA/yQSAPonkVILnYGbWjaMWGyjMuFGqB05+ChJQDdKb5TUmJg5o3+4l7
 s1jsnQi+RIp07ucvGziUVeq590FbZ9CBblMiBlAOQCaQyvQkCU3j3VYy3DBt0ItJ7WR+
 w1r1odrANJYueogE9h94yCZ6/I8A4sPpuVMZjdCT24qSZWDPU0Y4wYQK+cm5w7H5eSkS
 xjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IQuzNAwmqgU7RYVLn7PTMJDVE0GkXT3f08VIotAoPf8=;
 b=UJqFqOqo9onHgq6H08ox8I/QwPiO+Gp645uNk/UZHvCEYK1D1P5UryeimYt0OdcWwt
 52rXVYhZ+LG0nx76iajq2RHq5p0mY3bO2xk0Lep4yJllZ4MqnJjgYlmpwwqEnkxHiDJJ
 hOVHie6MFbTKOtvAU+sW2AbOK52r/SiqvXNB5OuhG6S4Fi3OT1noBIPzY+xq3bj/3OBa
 REzJKaWEPxYp85QpNilxMeursM6QNJ9WLihgMdnpK+tJxD5+CRXVdH2MikaUX7tSPFNU
 JTJRiTH78isYJ3FuXMKlQ6TwZrIoFFQClYiG4U8KH1wIHPK4wthy46+ph6HoB6lawTjs
 5Uwg==
X-Gm-Message-State: APjAAAW341Fkh5Na1WtJaP8uZazyVZyM+YlELgXY/Upp5bljn0fAu6fR
 tzaR8KTb6TLJ7Q8Vh91MEJcjLxEmm+n4lpcpvBc=
X-Google-Smtp-Source: APXvYqycWgQrP2PDwcVEuoLkCCTA3pbXwZSoDU21360+ihalDIq0VLY6VnQxJCDFoH/GxYuVOPQ1BtRm6wr/QHLgmWM=
X-Received: by 2002:a50:fb96:: with SMTP id e22mr44962782edq.18.1577288035378; 
 Wed, 25 Dec 2019 07:33:55 -0800 (PST)
MIME-Version: 1.0
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
 <20191225005655.1502037-2-martin.blumenstingl@googlemail.com>
 <20191225150845.GA16671@lunn.ch>
In-Reply-To: <20191225150845.GA16671@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 25 Dec 2019 16:33:44 +0100
Message-ID: <CAFBinCA4X1e5_5nBiHmNiB40uJyr9Nm1b2VkF9NqM+wb7-1xmw@mail.gmail.com>
Subject: Re: [PATCH 1/3] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on
 Meson8b/8m2 SoCs
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_073358_623024_B574B33A 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linus.luessing@c0d3.blue, balbes-150@yandex.ru, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, ingrassia@epigenesys.com, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

thank you as always for taking a close look at my patches :-)

On Wed, Dec 25, 2019 at 4:08 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Dec 25, 2019 at 01:56:53AM +0100, Martin Blumenstingl wrote:
> > GXBB and newer SoCs use the fixed FCLK_DIV2 (1GHz) clock as input for
> > the m250_sel clock. Meson8b and Meson8m2 use MPLL2 instead, whose rate
> > can be adjusted at runtime.
> >
> > So far we have been running MPLL2 with ~250MHz (and the internal
> > m250_div with value 1), which worked enough that we could transfer data
> > with an TX delay of 4ns. Unfortunately there is high packet loss with
> > an RGMII PHY when transferring data (receiving data works fine though).
> > Odroid-C1's u-boot is running with a TX delay of only 2ns as well as
> > the internal m250_div set to 2 - no lost (TX) packets can be observed
> > with that setting in u-boot.
> >
> > Manual testing has shown that the TX packet loss goes away when using
> > the following settings in Linux:
> > - MPLL2 clock set to ~500MHz
> > - m250_div set to 2
> > - TX delay set to 2ns
>
> Hi Martin
>
> The delay will depend on the PHY, the value of phy-mode, and the PCB
> layout.
>
> https://ethernetfmc.com/rgmii-interface-timing-considerations/
>
> RGMII requires a delay of 2ns between the data and the clock
> signal. There are at least three ways this can happen.
>
> 1) The MAC adds the delay
>
> 2) The PCB adds the delay by making the clock line longer than the
> data line.
>
> 3) The PHY adds the delay.
>
> In linux you configure this using the phy-mode in DT.
>
>       # RX and TX delays are added by the MAC when required
>       - rgmii
>
>       # RGMII with internal RX and TX delays provided by the PHY,
>       # the MAC should not add the RX or TX delays in this case
>       - rgmii-id
>
>       # RGMII with internal RX delay provided by the PHY, the MAC
>       # should not add an RX delay in this case
>       - rgmii-rxid
>
>       # RGMII with internal TX delay provided by the PHY, the MAC
>       # should not add an TX delay in this case
>       - rgmii-txid
>
> So ideally, you want the MAC to add no delay at all, and then use the
> correct phy-mode so the PHY adds the correct delay. This gives you the
> most flexibility in terms of PHY and PCB design. This does however
> require that the PHY implements the delay, which not all do.
these boards (with RGMII PHY) that I am aware of are using an RTL8211F
PHY which implements a 2ns PHY TX delay
however, the 3.10 vendor kernel also supports Micrel RGMII (and RMII)
PHYs where I don't know if they implement a (configurable) TX delay.

> Looking at patches 2 and 3, the phy-mode is set to rgmii. What you
> might actually need to do is set this to rgmii-txid, or maybe
> rgmii-id, once you have the MAC not inserting any delay.
please let us split this discussion:
1) I believe that this patch is still correct and required whenever
the MAC *has to* generate the TX delay (one use-case could be the
Micrel PHYs I mentioned above)
2) the correct phy-mode and where the TX delay is being generated. I
have tried "rgmii-txid" on my own Odroid-C1 and it's working fine
there. however, it's the only board with RGMII PHY that I have from
this generation of SoCs (and other testers are typically rare for this
platform, because it's an older SoC). so my idea was to use the same
settings as the 3.10 vendor kernel because these seem to be the "known
working" ones.

what do you think about 2)? my main concern is that this *could* break
Ethernet on other people's boards.
on the other hand I have no idea how likely that actually is.


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
