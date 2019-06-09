Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9A13AC0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vFsThx8yXFLGxtNQxQKQiIMWZ448oc8aeRAOJfw6wc=; b=nk0xrOth/1s/I1
	HvjT8fsDcC0yBSXao0oQXi0BntSziTSRKScqODTIv/0BWFCU+rfQM1NHV638emKJNHNO7JAwk4Phn
	DEqzn3HFAuys1TgLN8gLZSSwjtbdSSf5U4oNdKPdB8fu9K4sAPJ+KbR87/AcAdebVEY6QcI4VB40X
	HKxfC90jyhSzIhoWg9v2sA2SxmqPwPAWJqCFxJuGzNzCRKOJmKw40jRSMYpIWKl8denvMn+b0YMAR
	9PgnitrAk0C2/AhpND7dxYlU/JMaI4RJZ6DpyM/8NbxjwWzyHY9i1/hnNiDfqE6iRyePpI7SHICkl
	C8vp2fcCSAKlwbbZreUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5Nb-0007YP-77; Sun, 09 Jun 2019 21:29:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5NN-0007Wo-Uz
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 21:29:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so6104465ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 14:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KlrRIE/V5p97wscV0kE0tjEI2tlj1dGG4/jhRhsQRG0=;
 b=SOfnaOissSEz9PzQM9mMat56H+3dTOhDdmHyybdevIOxcr2JCQbgWnlzcNKHngS1ar
 6lN1VKkdZ7yRsOEp3hxL2mmnVB3bx7Bt3fbe68ItUxhUV/h8lH5jvN09txUIAd9HBDLE
 yOOfbglZUGy7zp+pLIy/Ti6rWwE+usRIvmnTmud3sfwtqzQKUHMYKqjtVmg24PXE3Mzm
 Pn8DnWXEw80qJN5Q6DxN+u/Wp9UeLNygpfrvD8EfJ4LhF+F6T8+6uT45UEmVss0EEoUa
 W/2popw6Ssix8aXzr8GK94RxD4Jtw8n9CeKclonaMsYy5s2V9HHbVhzr9bM+3qkt66Qj
 Iwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KlrRIE/V5p97wscV0kE0tjEI2tlj1dGG4/jhRhsQRG0=;
 b=Xpp3YYmuMexSKLWdH1Eyk3cyqsm4diTG1lgfyJ3sHYsY0B3yiMVsWrY0mm1wgBk+Pl
 xbjrUuOFHRzjksPQIzeIn6sNPP2nSXIrZ4kZY1zeRWTilnhqwn/YuXLJYiRd3p8q7fwY
 UyWpHdVYR8pGsbtHKUzeMcSCpyag7EkyLuO/BzgcNHeL2Ye5A4220Viag0tfQLL7Kcwn
 UqNV6MP4o/8cCz3fkDjSAcRbMfVmfIV4bhQB5/r4aBbM58WVERdmCKUjZw1S3Cuy59vB
 kICHuHltDD+cawI0cb6eGqLiFEVSuXhexl4Wg+ZnsYanaRlBozHJK8t818YjmERN5q+P
 P4pA==
X-Gm-Message-State: APjAAAUzHec+D1duFcrpXxzww74uDmIu4vBjAL58Hmj9g6oBCx06b3v1
 1167WD6TJYtN2jzBPQDxmvRZp72XOMhqGsS4Jr0p3A==
X-Google-Smtp-Source: APXvYqwD8jFnBTiQeRvhyH1OObx2r8DdreQqyuGuLnn7YPW7qYYuahnntAMr1MNIp51bnR6Kfl+SJrOrjoX25IWmQoQ=
X-Received: by 2002:a2e:8902:: with SMTP id d2mr34580225lji.94.1560115755209; 
 Sun, 09 Jun 2019 14:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-3-martin.blumenstingl@googlemail.com>
 <20190609203828.GA8247@lunn.ch>
 <CAFBinCA1xp5+77DhYMFjX31D3DsaU7d9EqFkWbn+UFFx5LSqEw@mail.gmail.com>
In-Reply-To: <CAFBinCA1xp5+77DhYMFjX31D3DsaU7d9EqFkWbn+UFFx5LSqEw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 9 Jun 2019 23:29:08 +0200
Message-ID: <CACRpkdZ4n+nCip-uoqbDvQeT0ZpJUfHVnp-D8qCSKfgJEapM7w@mail.gmail.com>
Subject: Re: [RFC next v1 2/5] gpio: of: parse stmmac PHY reset line specific
 active-low property
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_142918_004779_0B5C4828 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jose Abreu <joabreu@synopsys.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 9, 2019 at 11:21 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> my understanding that of_gpio_flags_quirks (which I'm touching with
> this patch) is supposed to manage similar quirks to what we have in
> stmmac (it also contains some regulator and MMC quirks too).
> however, that's exactly the reason why I decided to mark this as RFC -
> so I'm eager to hear Linus comments on this

The idea with the quirks in gpiolib-of.c is to make device drivers simpler,
and phase them over to ignoring quirks for mistakes done in the early
days of DT standardization. This feature of the gpiolib API is supposed
to make it "narrow and deep": make the generic case simple
and handle any hardware description languages (DT or ACPI or
board files) and quirks (mostly historical) under the hood. Especially
drivers should not need to worry about polarity inversion instead just
grab a GPIO descriptor and play away with it, asserting it as
1 and deasserting it as 0 whether that is the right polarity or not,
the gpiolib should keep track of polarity no matter how that is described,
even with historical weird bools like "snps,active-low" etc.

So I think you are probably doing the right thing here.
This patch is:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
