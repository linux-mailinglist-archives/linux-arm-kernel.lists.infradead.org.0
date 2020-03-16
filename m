Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A0E186B94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qfOf8z+xVORQunlhe42INYTHC/UXYQMXBRpnWQ1/sU=; b=go7kqwMyqJ/Jbi
	nEA/Mbi2YLit6BxGSyfC/ldMmL+8+hq6gVuCjjttRhiN6QI/J1yeUr9eHSP2VxOkw9iLToVeTleDQ
	Ew1ijPYItiCtCe0WbLapE3fsvK3A6wER7GtYt0UPZOWoS6fBvaej1Q6Gr1M3ezU0tH4mi7yjqhRZI
	yLZZXiETe58QFdl4DwLT8eezfh2AYBqY222rX6hrAEHyNJZmGO5Dcwcms3S7Qdk5DqgTEJiIUt3+w
	0aFZtbcBCfLre2W1oxFW1RhaGcHgz4+r0LuN6fDSDGDObm80/0m5g5lzhJG5+XN0AgQxMQV6TayAt
	oDw00wLyy5cuyoVXaS+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpIE-0007e6-40; Mon, 16 Mar 2020 12:56:30 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDpI5-0007de-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:56:23 +0000
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 02GCtjAY009256
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Mar 2020 21:55:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02GCtjAY009256
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584363346;
 bh=2HQwa7nwNFrEoeIhVSQz+z9hPaegOb5WhBxknPBYxLU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=No96Wbyqqkf3oxZoxUKEsFANRPMHct/0RSVDnoVy4Xc+6L9nPItIhOFo9xAeMD47h
 utrxewZ6toi37TMD2rqdmzUu1QXTMWaXW2xxLGBNy3fXINYD+KAd3yAhGJsBlh6snB
 CAhi7nQTwcdWrnHr54PgxPd149VDmOkYVQto6ruTiU9mYOVKEJBU4ws+ZWtmoflzsZ
 kRca3oJRmcC6F6wCQ4Dvon34Su0Kv2Vm14x3lu8i1LLmTIbJTTfuVec/Q53Shj2yMO
 4dCwtH67oGQLY4/fdztCBwBDYHTVvVWpBOP2apIqT2OQE96DVD4bi3x1F4xHpCaIKO
 5kyCwUpSN/pGQ==
X-Nifty-SrcIP: [209.85.222.43]
Received: by mail-ua1-f43.google.com with SMTP id y6so6456475ual.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 05:55:46 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2tjLMix87nEC6IPuYjGnh0Jfd5P3GO+Xw8YXv8+N7vwQrJlBHX
 gLu9hHS5PhJaiIy4wPqCCtC6RyXazA+ls6ZyNFg=
X-Google-Smtp-Source: ADFU+vu3J2cRyDb6ek6J1P/y4nL1obn2Se7a010pRaJsc0IwGE/IEI6eKiVqsyEA+CwYoVvWuiwVJorthFmddZ79YEE=
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr8234963uad.25.1584363345215; 
 Mon, 16 Mar 2020 05:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584061096-23686-11-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584061096-23686-11-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 16 Mar 2020 21:55:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ98kUHQS33jQL+Kq5E48H75yvYk_qsWxT9ubrP-yRCdg@mail.gmail.com>
Message-ID: <CAK7LNAQ98kUHQS33jQL+Kq5E48H75yvYk_qsWxT9ubrP-yRCdg@mail.gmail.com>
Subject: Re: [PATCH 10/10] arm64: dts: uniphier: Stabilize Ethernet RGMII mode
 of LD20 global and PXs3 ref board
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_055621_975525_0F9B5800 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> The RGMII PHY needs to change drive-strength properties of the Ethernet
> Tx pins to stabilize the PHY.
>
> The devicetree for LD20 global board specifies RMII PHY in the ethernet
> node as default, however, there is also another board that has RGMII PHY.
> The devicetree for the board doesn't exist, so the users should change
> the ethernet properties by outside way.

Probably, users should change pinctrl_ether_rgmii
by the same means.


The change to uniphier-pxs3-ref.dts looks OK to me.

--
Best Regards

Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
