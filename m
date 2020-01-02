Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C38412EB8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqOGcAvFZioto8OMiWAEtfnSvjLqDca0n3SzD+oNYM4=; b=A3cjS4UxNfB5TB
	eo+ybEJiUG1pJjyX2h+wuBjOPvolik8yUfssGBvg+jVudu/LubNOIUjBUVIBvEBJenyR09voyw788
	cJajaePJAn7I5128cnF01SyuCCM1k99TlEbimVeoOvySPboaqGBIGSaWdYHxNkLWAmj/2K7Rlh3aV
	Eny2z5OlmrXEdgCk//cMZZemN80AGVMBdRnXwPRc7RzVKH2UyYMpt/P2lFPFdPUJdpFupCIEuORJq
	h71V3BCl0/Z19YE108HltecZOiHHvtc5AjaH/xURYNUm36+m8nfsZwrKbaNpmjMhkTzFSMDI4Q7KB
	4B6Vx1pjni0xHhYjEAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in8Ow-0003Rv-U1; Thu, 02 Jan 2020 21:53:06 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in8On-0003Qv-Br; Thu, 02 Jan 2020 21:52:58 +0000
Received: by mail-ed1-x543.google.com with SMTP id dc19so40221278edb.10;
 Thu, 02 Jan 2020 13:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hvu2XgZLIAybTxeXvSxciwNCDI/QTjrV4RLf06zuwtk=;
 b=pt+8L1kfxsX0Xxqv1s32vYhKZ0Ehx0enq8/6v/tV9pcIelS/duSghfq9QbBGzbWmtr
 K7ef23N6Wc1GG6zhr+FtBE1UzCgHZq33Wc4wop1pvAc0TwGWv6IyTQHw32qhdqEP0NTI
 RnZKGzNyx4U9n+jtQVCpKI7TxoG5iNG8RtI7ULvxf1ivAPLvjrDrXBBi1/FZpnmJgHsI
 5RWeO7GsrQe5v/h+OB2aOQVQYgU49ciDf8wFuizGVYTXnMFnbftDO+wSVmKi1/AUdeii
 V1F8yfXoAWRUvHuq6Q8MfmZLQ5ENJYt5dIwrFo/vJ99osCuIDlsOPQJL7iKy/RNKzMS1
 CAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hvu2XgZLIAybTxeXvSxciwNCDI/QTjrV4RLf06zuwtk=;
 b=n1OkQcIPioma4AprybTzIZIDLXYiv2ZpWazuGP99oOw95eXw9dX1pVu9W7hxhHOMw8
 4/fFgLW0w3Fzxxg1DXQePlkJggbDQr73cT7z5irZzs/y7rjQOy3xG/LRnhF4FDR9MrLg
 G4Arb/XwElwNbqslG91q5H/H+N1axBA9iTPVn4kRe36HCJ0Zh3lyN5b7q7lYVAXlAzmO
 0Ki+SnsJK5sI8KxeO38629IJEP28+Ssf3wkqL6mZ4ZvAnETxx6/fk74IqSeAmPYG68q4
 q3AcWo57b5aqNaqEt5EqS99PS6v4zM/FMfL6lNhRNx1KsKkfuxcsPKsJ1vUeUcJieoVF
 wwmg==
X-Gm-Message-State: APjAAAVUZq2gX3tm5mAvc+JiHaE5Ag7mKtDyQK6f/mwzprAzIkMmJRMK
 9w5K9aDCZZ+nd+jIqvQNKHH9RuVakKcsPcxe1os=
X-Google-Smtp-Source: APXvYqyLuGqANpkEmw72e7jynDm+fNMM49TQnwz/BBk2Zt26OUL6Fve8YN1sQTqqR68Jp8kkufLSn3wjnTCMkt89RHE=
X-Received: by 2002:aa7:d6d1:: with SMTP id x17mr53418384edr.57.1578001975370; 
 Thu, 02 Jan 2020 13:52:55 -0800 (PST)
MIME-Version: 1.0
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
 <1577428606-69855-5-git-send-email-hanjie.lin@amlogic.com>
 <CAFBinCD8V-Swihz+VJ780sXJtM9cXprDcGCHVuHjjCx0DEOodQ@mail.gmail.com>
 <d66abc21-1440-503b-3515-6c495bf0db80@amlogic.com>
In-Reply-To: <d66abc21-1440-503b-3515-6c495bf0db80@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 2 Jan 2020 22:52:44 +0100
Message-ID: <CAFBinCAEO=c+5oZrUmW=YhqD5tQkm0NUSbgwxHYqL2UgcK4c5Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_135257_430898_F005BBFA 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, devicetree@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Liang Yang <liang.yang@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Hanjie,

On Thu, Jan 2, 2020 at 1:30 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
[...]
> >> -               if (i == USB2_OTG_PHY) {
> >> +               if (priv->soc_id == MESON_SOC_G12A && i == USB2_OTG_PHY) {
> > on GXL we have two PHYs (0 and 1), the second one is OTG capable
> > on GXM we have three PHYs (0..2), the second one is OTG capable
> > on G12A/G12B we have two PHYs (0 and 1), the second one is OTG capable
> >
> > you already wrote that there is only one USB2 PHY on the A1 SoC
> > is really only the second PHY port ("usb2-phy1" instead of
> > "usb2-phy0") used on A1?
> > if "usb2-phy0" is correct then you don't need these checks (there are
> > more checks like this below)
>
> Actually, A1 have same phys("usb2-phy0", "usb2-phy1", "usb3-phy0") and register base with G12A.
> But A1 driver is designed to support host mode with usb2-phy1 only.
OK, thank you for clarifying this interesting decision made by the HW team

...]
> >> -       usb_role_switch_unregister(priv->role_switch);
> >> +       if (priv->soc_id == MESON_SOC_G12A)
> >> +               usb_role_switch_unregister(priv->role_switch);
> > I didn't expect this because in _probe usb_role_switch_register is still called
> > on A1 we now call usb_role_switch_register() but we never call
> > usb_role_switch_unregister()
> >
>
> Actually, usb_role_switch_register() can be called only in G12A.
>
> dwc3_meson_g12a_probe()
>          ...
>          if (priv->soc_id != MESON_SOC_G12A)
>                  goto setup_pm_runtime;
I completely missed that, thank you for clarifying it

>
> Same with second suggestion, this different SoC extra logic could avoided by add constraints
> to .yaml.
> I will do this in next version.
that would be awesome if it works out!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
