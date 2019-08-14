Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABAE8E064
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElXtFqt8a/T/SDkuQFZd6YADr/dw8OEMRpwd9rrJMbM=; b=kXoqSnPePQP46d
	7ODQwUepPNbwTbu9QPLV6/RBcLjjCYyDTl6qJ6LFvRBDlGXNH4Zilt2+16LDSIA4GnUBUez+OpGBQ
	oxX5Hm47QFXCCKm1t5uye6wbfdcAvwYEVgKGeh/Z5q4AW0orei4zTMJ9q+nvlkhkVenoxh3Ig2ckD
	0H2ToE9jzNuQYjfgGGNaXbFBGqcG3aB2FaNDyszCG6qlDswD0jZkXqpSqMUSnib9HVScPpJy8rvqC
	L24IagOEmUvFIkReMBpNXVdOWmzD9d/0mCoEzbGDAUFy3U20b9dUfK9CtB6i46L05G++t3Oa7H40s
	il1NAVLNkPfAz45IT6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1Vq-0006BE-JB; Wed, 14 Aug 2019 22:12:58 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1Ve-0006AY-Jo
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:12:47 +0000
Received: by mail-oi1-x242.google.com with SMTP id o6so297438oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fyqtiLbzf0B7EEuufXwlvVGQQuhpbnOj2sCLQecaeOA=;
 b=BzFVJ5u6T9n90c7pBUGG2W/PYxhbxig7Uj4ekhFiygJPJOXLLgkQH0CnbSKqfH/8ZC
 UE2W5h8jX9oSA377C53B1im+o74UWsm+XKOxd6726LqaaWGPDBgxwNhE3mUHX1w1qIC9
 /nkyM1FFI7mtW+uuEV4QB8p74qCRBZmjT9lb375mw15aVkMx9MqLgfyohNQSZdNXfLzY
 /lT7HKO0DymhH/Oazl37LYmfVMDy+mAlM3PXmUlF93mCJrk1GCVE92gUFRfHzZnqz4DS
 PwNk5o/PjFLJHddu4yEUrroPsJC1TR4CVCsGF9vx1u09TgKO+44P+IHGrenLVd9rsZPu
 Xkbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fyqtiLbzf0B7EEuufXwlvVGQQuhpbnOj2sCLQecaeOA=;
 b=tolDCATj2W7yn7G/DYURMK5/FH4nsE571+fBAVrhxJqUW3I2zOLPDr/bDX7WFklSpb
 AqkzHbK+MViwLtxgaZNVwSZW5AfOiVGHYgIOLoMsC1oatCvbnM+QorjRgGHJOfuwA+FO
 TrGondgjUqfrpDYczhKqPdaySh8wJGWcwGF5CHz5lxY4lipmlmXimsmZmAzMDe6Af5cg
 D+He83N3nRg5BdHOiaHeq/PybdUQCYlDRix3kR30JtzHJJGdThk1JsFa8PhDR9fnAMVc
 x7972fUD6vSKOjyu3Lgkv7Kh047T6Y+PUfcFM47qeON6+MfsYylzsNaM8qO5uPGJDb/R
 uFVA==
X-Gm-Message-State: APjAAAXO+As/omJ1XJ7ATlPYXOySbWRQnD1QVfbgCfCKVjT8Dhs/v0JN
 qoqpskMmbqUVQwRDsxbqS+6gJjZdqqjD++J/lMc=
X-Google-Smtp-Source: APXvYqwlvuw12f5lw9fJpzGHCs9IjxCkWVfv0r3UGHD3THhT3ik9lOmV+44RtNITkDQKYXIEMzjTe97zwNxCpTzDqYc=
X-Received: by 2002:a02:9981:: with SMTP id a1mr1736754jal.17.1565820764529;
 Wed, 14 Aug 2019 15:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190814193536.15088-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190814193536.15088-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 14 Aug 2019 15:12:32 -0700
Message-ID: <CAFXsbZoRhy1OtsybHJQDef09gS1UGBhU8a+ZrF31O1THBGgeCA@mail.gmail.com>
Subject: Re: [PATCH] ARM: vf610-zii-cfu1: Add node for switch watchdog
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_151246_678981_5557F0AC 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested-by: Chris Healy <cphealy@gmail.com>


On Wed, Aug 14, 2019 at 12:35 PM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> Add I2C child node for switch watchdog present on CFU1.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/vf610-zii-cfu1.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
> index 7267873b5369..18c19c092dd1 100644
> --- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
> +++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
> @@ -239,6 +239,18 @@
>         };
>  };
>
> +&i2c1 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c1>;
> +       status = "okay";
> +
> +       watchdog@38 {
> +               compatible = "zii,rave-wdt";
> +               reg = <0x38>;
> +       };
> +};
> +
>  &snvsrtc {
>         status = "disabled";
>  };
> @@ -324,6 +336,13 @@
>                 >;
>         };
>
> +       pinctrl_i2c1: i2c1grp {
> +               fsl,pins = <
> +                       VF610_PAD_PTB16__I2C1_SCL               0x37ff
> +                       VF610_PAD_PTB17__I2C1_SDA               0x37ff
> +               >;
> +       };
> +
>         pinctrl_leds_debug: pinctrl-leds-debug {
>                 fsl,pins = <
>                         VF610_PAD_PTD3__GPIO_82                 0x31c2
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
