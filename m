Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D81C156D9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmA7janrN53D1jliwyD81rp70t2xVrs0n6UFM68KxLQ=; b=VTGIzauw8SiGgx
	AYF8lRXWXs0s04viM2uZgCOx8tErYUJBn4aopJ7dYR60Vh13X5FhoEkOu+wnHT8vAdElHVDBWlDwb
	tTOcrviJ6gDh7iJQPWMJStWO5ooBQqLBg5QBHuOzIKN3JxipR1ErP+dcEPuvbzKpNBK0v4Ectxr++
	41ict90/NRvBJfMD1FFbjXzDs2h0nreiOk01XHq+TaAW+zcIah1HdropGDa1M7G+/m0CI3x2aakwX
	QvkWNdlfhl03GUlsv5cnjpTct7vzH6C3lusNPBpqYmeB80LXyEImQpriXGl2jpNZ3Y/K3TfbCmKDp
	xXa3oo7Etel//wI4V5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ypP-00078c-8L; Mon, 10 Feb 2020 02:29:39 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0ypK-000789-48
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 02:29:35 +0000
Received: by mail-qt1-x844.google.com with SMTP id d18so4047293qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 18:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ra0rpldUyx5dQ3cALlEVBxf6hudJtV4wQ0FpwYENXlc=;
 b=Vot3Gk5rrSJb99S4ur/g2DWtP16aRkPxY1kmM1/eWqxjFECGCtYqTEfCzE71cF8MJG
 Y8LpDwico/I/Z9X30DRHGnLWHSQ3F0DIY8zQzeXMy96PomCYJbtqiwlt7ayxu3I2sfqA
 Kz21kD/8LnuRhDY+yWY+iYnwPcnR++Pbyz6k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ra0rpldUyx5dQ3cALlEVBxf6hudJtV4wQ0FpwYENXlc=;
 b=biEJ54V7ah8WkHzcmhvOOHg4ZogA/+dJ8zbk12ecNbzG5TkpzTUueroZe/nXYAn79V
 NIafQwa/PBu2GoKx/lqFnK8btZLehYcvfEft1IjiSzojeXsuaZMbcWZYmLsm7ZD5z8Lb
 NAChW6AQ3N9gvzDb3uHYAwDpMUV2m3XgqkMirDAfdSRtc/hAMJiZBa8QCpebYaseOVJ8
 mDQ6vwws8h77dR4WtRzkb3R5hB58dpHnVOOsOAJEwNrZPzC0h0d6zAqr96UQX0wVGYe8
 tEnWh6DjNNskcpjl05QC1fVjrIaa/+bZzysY8NO/wtdf/evoigTiiBH4ADPvARBs69Oh
 bCrg==
X-Gm-Message-State: APjAAAXztr2CZsW82YDiqlNDjGo3RpCBOylMPpAshvCokxcmdhFtagxO
 OHTyGBjwikWKVgU1p+GWonrU2+twRYlYyh6PY14=
X-Google-Smtp-Source: APXvYqzcGvgfoldOPlRF0oV/3hA3tC1aE/eu4yDH5GYf9atHD8eepmRE6qo+l9/K1/ie+5Ux+ddb5DSELZ856Ev5PVU=
X-Received: by 2002:ac8:6b53:: with SMTP id x19mr2941384qts.220.1581301770229; 
 Sun, 09 Feb 2020 18:29:30 -0800 (PST)
MIME-Version: 1.0
References: <20200206170234.84288-1-geissonator@gmail.com>
In-Reply-To: <20200206170234.84288-1-geissonator@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 10 Feb 2020 02:29:19 +0000
Message-ID: <CACPK8Xdg0ocBzDqtkoo8cSCpUq+QjHQ1PKrsVZd8NPUvPFeFCw@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: dts: aspeed: witherspoon: Add gpio line names
To: Andrew Geissler <geissonator@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_182934_163619_58588700 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Geissler <geissonator@yahoo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Feb 2020 at 17:03, Andrew Geissler <geissonator@gmail.com> wrote:
>
> From: Andrew Geissler <geissonator@yahoo.com>
>
> Name the GPIOs to help userspace work with them. The names describe the
> functionality the lines provide, not the net or ball name. This makes it
> easier to share userspace code across different systems and makes the
> use of the lines more obvious.
>
> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will wait for  Andrew before merging, but this looks good to me.


> ---
> v3: added more detail to commit message
>     removed linux dev-5.4 from PATCH header
>     removed redundant status from gpio
>     removed blank line
> v2: added upstream to patch
>     prepended fsi- on fsi related gpios
>     prepended led- on led related gpios
>     prepended presence on presence related gpios
>     dropped pin_gpio_a1 definition
> ---
>  .../boot/dts/aspeed-bmc-opp-witherspoon.dts   | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> index 515f0f208ee6..2269c73b8987 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> @@ -193,6 +193,40 @@
>
>  };
>
> +&gpio {
> +       gpio-line-names =
> +       /*A0-A7*/       "","cfam-reset","","","","","fsi-mux","",
> +       /*B0-B7*/       "","","","","","air-water","","",
> +       /*C0-C7*/       "","","","","","","","",
> +       /*D0-D7*/       "fsi-enable","","","","","","","",
> +       /*E0-E7*/       "fsi-data","","","","","","","",
> +       /*F0-F7*/       "","","","","","","","",
> +       /*G0-G7*/       "","","","","","","","",
> +       /*H0-H7*/       "","","","","","","","",
> +       /*I0-I7*/       "","","","","","","","",
> +       /*J0-J7*/       "","","checkstop","","","","","",
> +       /*K0-K7*/       "","","","","","","","",
> +       /*L0-L7*/       "","","","","","","","",
> +       /*M0-M7*/       "","","","","","","","",
> +       /*N0-N7*/       "presence-ps1","","led-rear-fault","led-rear-power",
> +                       "led-rear-id","","","",
> +       /*O0-O7*/       "","","","","","","","",
> +       /*P0-P7*/       "","","","","","","","presence-ps0",
> +       /*Q0-Q7*/       "","","","","","","","",
> +       /*R0-R7*/       "","","fsi-trans","","","power-button","","",
> +       /*S0-S7*/       "","","","","","","","",
> +       /*T0-T7*/       "","","","","","","","",
> +       /*U0-U7*/       "","","","","","","","",
> +       /*V0-V7*/       "","","","","","","","",
> +       /*W0-W7*/       "","","","","","","","",
> +       /*X0-X7*/       "","","","","","","","",
> +       /*Y0-Y7*/       "","","","","","","","",
> +       /*Z0-Z7*/       "","","","","","","","",
> +       /*AA0-AA7*/     "fsi-clock","","","","","","","",
> +       /*AB0-AB7*/     "","","","","","","","",
> +       /*AC0-AC7*/     "","","","","","","","";
> +};
> +
>  &fmc {
>         status = "okay";
>
> --
> 2.21.0 (Apple Git-122)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
