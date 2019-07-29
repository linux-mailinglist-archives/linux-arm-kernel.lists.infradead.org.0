Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB3179B64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+6pO+DX4srloQq3iKplv6GSZ9lpXS2vEurPV5UfDDU=; b=TOoom8SsWWFqm9
	M0IWsfJFGWIWlpmLkwrGrFOjB1BX3AVp7ipL21GSPFcz7X/9uDClzgi2TQpLatuSk3j7NhvHfzvJt
	I4xS+xlaaG4D0uOJseg7pL1QfaDYiiSHXbLxcNpaPOeIZOSNoXiG4RdaQYu0MdV3rk8qzD/u4OeVW
	MkuoB3A/JSYqGApsxpPl7u/NtzWctb0ZcTb2xvPJBAF8n4gaAdn45rUmKG9ritJGN3eEfhH1eG7lZ
	xGyj0zbouwtk9SAK1oCLB5h/sBr4WgcRQSyJWv3QVjJElQk2RkvGWbhitC6WVKyMlmYc/pfJNlrww
	DHQWjD7XHDuK+XM5TDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDTH-0002MG-Vl; Mon, 29 Jul 2019 21:46:20 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDT1-0002Ka-OI; Mon, 29 Jul 2019 21:46:05 +0000
Received: by mail-oi1-x241.google.com with SMTP id 65so46381424oid.13;
 Mon, 29 Jul 2019 14:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N3q7xJdwh8PFVLuqry097P3Xvdg3K97aXzT+h+VJXcs=;
 b=Sxm6JuVIa/VBOyYU6R6afowaBbcZWBLQ8edTLaMy6eWWGnu2Do83jIjFSm89RTjzLQ
 WNcZYaXlNOS1PN98f4DahJMh63AQ54FoFxJyE8SGfv08OEpnF+XHgHKz1NpvWKuurj3s
 uRo6TgOuKm0klWbvezGd+QDPTLlLkmywlgospjfgk5xrWKas/gu25VksFkXytRpBjemG
 8lEbYNCYq/Qw9xroqwUx9dGGV1OVktApy0a++h+hf9a11R2CrgkyyH7ZMRRPA+0F82m3
 wepW205mRdVUF6qELog6dHXbdBJzGJFNDHBIIlBIXbow1EsTA8UFXLDw8fm2efcoMP04
 7b5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N3q7xJdwh8PFVLuqry097P3Xvdg3K97aXzT+h+VJXcs=;
 b=jvEGFiP5DCt4CnRDBZnzCNXEF7Ju5ZCUmbdKXQ5bIdb4uJgN7ELWQCI7uI7WamJa8a
 tkQ1ugGfotpPVKdFTCs4Z70RNBPyUZYyS5NIF20JckPLJY7IYxvaFS4pkyAlzGn6NTLM
 LKGO+IJwkNYpUEcUcXo2LVhMpmMWgeryx0ypbH1RzuF4QilQC56h+vLqbkxTt/SstgO4
 4LhQIy5eghqxfwwChrvUvQGZ4J/TlfpxfVsQuzbvKnLMPRYexYIAIYbjXBbq/IbBDu9K
 twwB/myXA7pKPJowRr1hcI2Aa0lr4+o95C9+92YWhPLnyJffZR2kQeZ2vlJiC3TV7/7z
 pvJA==
X-Gm-Message-State: APjAAAWLgmw0RSAU6B+uRF5S36BTgDRBetZhAku9r90C07yNSeICLxLh
 IvSaNqYteVsDj9gCmUA7sKQaFeua3Sx1m0UhcT4=
X-Google-Smtp-Source: APXvYqzH9o6vMPXW5m2jTBkNKSzRv8Plc0jl6T3q9UDoCcIxmNEvygjudEsgt5EPfe13VReOdigLLl5CWKltcKD27jY=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr57350197oic.47.1564436762794; 
 Mon, 29 Jul 2019 14:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
 <20190727194647.15355-2-martin.blumenstingl@googlemail.com>
 <9814939f-8580-c8f6-5c2f-7e64db60e6ae@baylibre.com>
In-Reply-To: <9814939f-8580-c8f6-5c2f-7e64db60e6ae@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 29 Jul 2019 23:45:51 +0200
Message-ID: <CAFBinCC5Bz-Oe4G1dtABrU+RFWUmqpdgyuDdRPp=Mo_Cucz7Wg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: meson8b: add the nvmem cell with the
 board's MAC address
To: Neil Armstrong <narmstrong@baylibre.com>, hexdump0815@googlemail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_144603_792716_C4F31A1C 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ottuzzi@gmail.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 9:11 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi Martin,
>
> On 27/07/2019 21:46, Martin Blumenstingl wrote:
> > Amlogic's BSP kernel defines that all boards with a MAC address stored
> > in the eFuse have it at offset 0x1b4. It is up to the board to
> > decide whether to use this MAC address or not:
> > - Odroid-C1 uses the MAC address from the eFuse
> > - EC-100 seems to read the MAC address from eMMC
> >
> > Add the nvmem cell which describes the Ethernet MAC address. Don't
> > assign it to the Ethernet controller, because depending on the board the
> > actual MAC address may be read from somewhere else.
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  arch/arm/boot/dts/meson8b.dtsi | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
> > index 30fca9bb4bbe..c7de58b71d08 100644
> > --- a/arch/arm/boot/dts/meson8b.dtsi
> > +++ b/arch/arm/boot/dts/meson8b.dtsi
> > @@ -402,6 +402,10 @@
> >       clocks = <&clkc CLKID_EFUSE>;
> >       clock-names = "core";
> >
> > +     ethernet_mac_address: mac@1b4 {
> > +             reg = <0x1b4 0x6>;
> > +     };
>
> Is this a fixed position for all boards ? if not, I'll suggest moving
> it to the odroid-c1 dt until you have more users.
the 0x1b4 offset is hardcoded in Amlogic's kernel sources
if some board uses another offset then the manufacturer had to patch
the kernel to make it work (like Endless did)

+Cc hexdump0815 - can you please run the following command on your
Meson8b MXQ board:
$ hexdump -C /sys/bus/nvmem/devices/meson8b-efuse0/nvmem | grep
000001b0 | cut -d' ' -f7,8,9,10,12,13

this should print the MAC address that is also used by the stock
firmware and/or printed on the board
if it is then I'm happy to provide a patch also for your MXQ board so
it also uses the correct MAC address


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
