Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460EB47735
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 01:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZZvmN6tAx2oAnstPECNioZKrRB0pB2VoVRHKESebus=; b=KPM7tSQ+AcYwN1
	MbCo0oyN23hQ0PT8j0GWDJ5s8vglmImQdWTCAsMSkxnhcd5pYUw72QZpNnZR47bQCutE/84fKO1U6
	c29FF7HWglYK9r8VJAlYfgtBR929a1b3dPED/VzkQx1ygvMkVdfF2j1TkKOg3hNwWPI1i85TQIlF1
	aNWHPlFyqrRjG8A2kYQnlYtd+3k7riF3rqMnM5D6lwcnw0HjUezKm8lZgn2+uL8e+qyg4UtS3ZTsO
	UjKml8UR78TQoH8k+rpHTQFsw2PWm+6ZrFu4gt9uaCKFjvY7c5nl/NXUxc3GhV6Wo7AXlHutTE1Hf
	HeN7ujpjLNX/SAPEwNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcec3-0007WL-Po; Sun, 16 Jun 2019 23:31:03 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcebr-0007Vz-JE
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 23:30:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id b11so5139049lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 16:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VsR4qH3Quc1HDcau96Vt06vNS8VQPWCgwBfYnvLlFks=;
 b=kDHAcFuFt5NMBgIOjjU+UpqZA+OtobCPFqC7+hpNToj8eHB8gWvQQF3/VnBGsqeSKe
 uKk7kykPnNI5+xlTWKQ8ootvDKXC4XFLW4Og1fm50Dan2KIY5XRuJMcJ6xuR8+6d9Y4p
 0qUBjoq9DclFgx+D45Aux4HrE9ORw1PvSMpY0yHc+ic341QXKWcjyjLDfKOpjU2cdDwp
 CqqUchYgzXEbeMx73gaBtFXQhauP8DEFoq6841UEQbTaRr47TEQo6kd19tx2k1MYluNQ
 bjfpdvMwuKiSx4lRRmcymOSQrWgB0Jy2Cg1Hd6ruzBPk3OGLdWIVr+BAAMGmUhSe4U9a
 l0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VsR4qH3Quc1HDcau96Vt06vNS8VQPWCgwBfYnvLlFks=;
 b=C/ROIT+rqsB7Llu48keKOv72LSFJFCBGS8s8fmirGBvR3Ebe/s4+XSl12evYr+tedD
 R/bD860wrv6wkRfEWiTK+cHTF70NyuYag1bZWX3xtFmQ+RyhfNTRCISY3QFiYtE6Arp/
 nm64RI048zxRJo7Ym/wNE+qqa3uu1emFFv75fJEAN8m2Vc3Nyge65Vk909QuUe6FudvF
 wNDuKx+MeQw8OXdhz65skoojOO+wdahxag9LRWyFU5qUco0yk7ArHkX92ic5fbb0QHxw
 9sUO4UBUtJjccKC9saSleQptxrYCAAFmgwaZ1wPt69tkDA9P77IUjSWGInYzDc8gCAz0
 R/Bg==
X-Gm-Message-State: APjAAAUS7zNPPEa85rPwPwP1tT5W8A6RfPl09WYmwOVZoleIR9QA2cqv
 Xh4noLxjA6KnWueZBQhVK4TXFy7tieV/KVbaLEQ=
X-Google-Smtp-Source: APXvYqyeZ+75kYMyAoqTlOvU8ClVoGdKhHAO+Y1dv/4UZYIDHtsn1nrDZ/L8vzK8qffqSgwkgs/yw5jn9fD+iAVLg2M=
X-Received: by 2002:ac2:5a5e:: with SMTP id r30mr10747258lfn.12.1560727847800; 
 Sun, 16 Jun 2019 16:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190614080317.16850-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190614080317.16850-1-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 16 Jun 2019 20:30:56 -0300
Message-ID: <CAOMZO5Dpu_HLNWfCzx=hJTwbEJoGnY2KsXQM2JTqv34anfzGag@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_163051_660174_F69B6934 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Liang Pan <Liang.Pan@zii.aero>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Fri, Jun 14, 2019 at 5:03 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> +       mdio {
> +               fec1_phy: phy@0 {
> +                       pinctrl-names = "default";
> +                       pinctrl-0 = <&pinctrl_enet1_phy_reset>,
> +                                   <&pinctrl_enet1_phy_interrupt>;
> +                       reg = <0>;
> +                       interrupt-parent = <&gpio1>;
> +                       interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> +                       reset-gpio = <&gpio5 11 GPIO_ACTIVE_LOW>;

According to Documentation/devicetree/bindings/net/mdio.txt this
should be reset-gpios instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
