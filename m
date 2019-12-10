Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B171183A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTV+6S35u0Jl0+sVxnFjLPzokqkn9rJbjm2RVPvZdR0=; b=Ci2fE9QW5Nsl27
	a3f5uTyzKX0MzXqF1yCbpXZLJJ6uQMMNXjqg9ddhzjtB0U5mdTRVTzcAn6l8lxgjeKuORtG3uWrbx
	nuGORKK0GJ4XscZk/YbUiTeHnuKInZvABGuGwhMw11oiaDyfa7i2eP+EJcc3YOHGKj60eBd2mqv4Z
	Kxvw98+tnbE2+Ri93/wPSc+nU44a0BT3OzRSBeR4X3adzPTmG0F06xp3W//X+rNnL3ovuHyuFiBn1
	KoKUOng8sRwq58XE9jUxXAopPFfbUT6kSiAgD5gRbNbJDwLvdzp1Q0UydTHiuCbVMQ8tIdu9rkAZx
	mILXJWj70Ew3NDk2+bcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebvJ-0005zf-O1; Tue, 10 Dec 2019 09:35:17 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebv7-0005H6-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:35:07 +0000
Received: by mail-ed1-f68.google.com with SMTP id i6so14218479edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:35:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RH04wiz8V0hoWb27QqHxPfCqkEIpOrBir1lGd6+fDNE=;
 b=CL1RfKTFLc28TqYm3ABAZmRjx1ysadaOolsVqQOZyfKYlfpGYqJ+aMeVgOWwd3/wkP
 j3a5EGCkvNxglP1Viw/s+YUDUJXWRBL3p9KadMbChex4839WVM+6sIWbLeabnpl0MtFF
 0S+DFiTL3pjqwXJ4/O6MVriCLbp4gdzPSzPNWtYajHQuKtkSgu0O1imhmzPe2hWsoCfT
 hG6Z4HJ1GPhRWFgyRqY2UG+wqKTdgrvdDVX/veGrz53tOhZzNaCS21T4r9c+6QXzq2Yw
 q8+JSriwsydsgzncn+cqywIgvBHn02RkD3+oPeTxno0Kjghs7O6a6NkOp+o+Arj+berr
 e/RQ==
X-Gm-Message-State: APjAAAX9XPDdkerspNOBpyFO6dq0s5RhWCUbhcGvDRIZxfAKDQAevDlN
 8xdnbHG6765+v/Hvn5UakLp1N6rAeHw=
X-Google-Smtp-Source: APXvYqyENgik0EphQMNXy2nmmTx9ozFCM83ysLMTsypPlu69O7oxCruAas/rOtXjVArJbP0480xmaw==
X-Received: by 2002:a17:906:6d58:: with SMTP id
 a24mr2475955ejt.153.1575970502945; 
 Tue, 10 Dec 2019 01:35:02 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id b72sm52203edf.68.2019.12.10.01.35.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 01:35:02 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id z3so19224204wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:35:02 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr2041259wra.23.1575970502213;
 Tue, 10 Dec 2019 01:35:02 -0800 (PST)
MIME-Version: 1.0
References: <1575970087-11667-1-git-send-email-clabbe@baylibre.com>
In-Reply-To: <1575970087-11667-1-git-send-email-clabbe@baylibre.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 10 Dec 2019 17:34:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v66x0CLPBj_BJv0QzKXi-p61dqcKSjCrT=XO-vkEXR1YFw@mail.gmail.com>
Message-ID: <CAGb2v66x0CLPBj_BJv0QzKXi-p61dqcKSjCrT=XO-vkEXR1YFw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: allwinner: restore hdmi_con_in node
To: Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_013505_874901_DC9ABB2A 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, aleksandr.aleksandrov@emlid.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 5:28 PM Corentin Labbe <clabbe@baylibre.com> wrote:
>
> Compiling today next (20191210) fail to build with
> arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts:53.25-55.4: ERROR (phandle_references): /soc/hdmi@1ee0000/ports/port@1/endpoint: Reference to non-existent node or label "hdmi_con_in"


Patch subject should read:

arm64: dts: allwinner: h5: emlid-neutis-n5-devboard: Restore hdmi_in_con node

ChenYu

> This patch fixes the build by restoring this node.
>
> Fixes: b120a822ef10 ("ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts  | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
> index fb96d356055e..d6cc6592cfa3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
> @@ -15,6 +15,17 @@
>                      "emlid,neutis-n5",
>                      "allwinner,sun50i-h5";
>
> +       connector {
> +               compatible = "hdmi-connector";
> +               type = "a";
> +
> +               port {
> +                       hdmi_con_in: endpoint {
> +                               remote-endpoint = <&hdmi_out_con>;
> +                       };
> +               };
> +       };
> +
>         vdd_cpux: gpio-regulator {
>                 compatible = "regulator-gpio";
>                 regulator-name = "vdd-cpux";
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
