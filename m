Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBFD1B9F57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zOqMCqnIRQ/3RWol+T5emQkP5H/Ejg5qPUoj/c3dAaA=; b=hn5NmOmd/DW4UHmjaBTPgAcmHz
	gEP/02sJkhhlvlqoUTm+Mhz4EufjqlxVlxJggr78RB8Ny9PJPFH1xG/CS9utsNfg9EpLqcN/9CA0u
	FYa6yf8uwK2insyaT38onIv22USKZCdWLSKQ45y7hhv+ab48HnNT6ECKCs85UC1HWv2I6HTWD7y0p
	uCdibVcwjnCI25Aj7ZWHIwamCHgITLFKP5LsjlWmiD3jeYAhafXipFwo4T6I+3iaiHgnJokPE2s+n
	5A5UszcDxQ0HkLVY0Wuj2jyF/v5BSFMkYOCcg4Tn3SbXqPAHdOuln50WSUvVwUNGOg3Ke55ibuwTz
	QM/sSX8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzir-0005ME-Mr; Mon, 27 Apr 2020 09:06:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzig-0005Kk-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:06:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id d17so19587359wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 02:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=EXiOJznWMubTqF2LbCKEgggZu2abecXwqnF4vnIGgUs=;
 b=Szjt1f5Pa/pEX5/hdAOy3hyklXSuFgdWqjESFkmFUQCwR/ajegBnINlZ+TC2x4jE1b
 HyOJR/fENBP1p2pYGwGLEQkMTwkpUKuuKKQyYkLEai7B+mVqm2VZ4MKTu3WWgnbTBg5c
 tgdjdWQ60glhnwf3mDSATogH90ab3Q7Sj6GH322jCRcnQB6Vz1g9U290HP4zVSMPwjFe
 kW633A9jC2rwOCiyPbhxtbwmI3XtTsTwDVF6PmRNnFGFupRdsNfZHxEVf0L9wOLYuRFe
 YQlIe9g4mGfgmjGv4fdjESnV/Jh86F6g8arR0o+P9RikVCR9I7OIUf520oyvjRW6pmx9
 pT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=EXiOJznWMubTqF2LbCKEgggZu2abecXwqnF4vnIGgUs=;
 b=PKwM1CRa0xHlxZoJR0+QZnIz9ua6ocpeIeNWqFv61wvJjgI4QC0DNx8hvVx71JhCiV
 UGFtYQLRNNEnMnxC8egGxfpZqfuYtIMVAG6JVnEqsNYQfw+t0PSYJESXhSDnpYWR+ZL8
 PD7S60PaRxNl3+2U7qiZXOvMqbWBVHGZQmrtAiQgK5FD1tvxeL+B9N5DtAKz2ieH7yXo
 d1OCpsoajqntUzivXN3p/FCFRRj62JizTzKw41idA3F86bVOprX7KLghUexFGJI6CrNH
 M7lkpetvb8PHzx5qDz8jIqp/ntcvhrelZ+UVHudZvFJSccxPMa1oXo98UYun3akU5o4Q
 ZxCA==
X-Gm-Message-State: AGi0PuYbf5QXkGyq4KJGM8fSkF8fQsco4lLlzDx1AoyjEmhUsG8qyCeG
 g9W48k+vzk3gQCdvzFHLpR+LuA==
X-Google-Smtp-Source: APiQypIQADqchVvUy79IlzNIYW/NgJbl0oE8RqheoxfGsqEOx3xtmDmr84gLPNKda+4a0GA4kvQOoA==
X-Received: by 2002:adf:afdf:: with SMTP id y31mr26004385wrd.120.1587978389304; 
 Mon, 27 Apr 2020 02:06:29 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id s12sm14045158wmc.7.2020.04.27.02.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 02:06:28 -0700 (PDT)
References: <20200426162119.GA23268@imac>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: elatllat@gmail.com
Subject: Re: [PATCH v4] arm64: dts: meson: S922X: extend cpu opp-points
In-reply-to: <20200426162119.GA23268@imac>
Date: Mon, 27 Apr 2020 11:06:27 +0200
Message-ID: <1ja72x2t7w.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_020630_635523_49A0FDB3 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joy.cho@hardkernel.com,
 narmstrong@baylibre.com, khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, tobetter@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 26 Apr 2020 at 18:21, Tim Lewis <elatllat@gmail.com> wrote:

> Add extra cpu pop points to allow mild overclock on S922X. The opp
> points are found in Hardkernel N2 sources [1] and testing shows no
> obvious issues on other S922X devices. Thermal throttling should
> keep things in-check if needed.

The Odroid-N2 has a massive heatsink mounted.
Do we have any idea if this applies (is safe) on any other S922x
device ?

It would be nice to get some input (review) from Amlogic is this to
included for any devices using the SoC.

In the meantime, I think this should be applied to odroid-n2 dt only.

>
> [1] https://github.com/hardkernel/linux/commit/f86cd9487c7483b2a05f448b9ebacf6bd5a2ad2f
> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Tim Lewis <elatllat@gmail.com>
>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi | 15 +++++++++++++++
>  1 files changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> index 046cc332d..1e5d0ee5d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> @@ -65,6 +65,11 @@
>  			opp-hz = /bits/ 64 <1896000000>;
>  			opp-microvolt = <981000>;
>  		};
> +
> +		opp-1992000000 {
> +			opp-hz = /bits/ 64 <1992000000>;
> +			opp-microvolt = <1001000>;
> +		};
>  	};
>  
>  	cpub_opp_table_1: opp-table-1 {
> @@ -120,5 +125,15 @@
>  			opp-hz = /bits/ 64 <1704000000>;
>  			opp-microvolt = <891000>;
>  		};
> +
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <981000>;
> +		};
> +
> +		opp-1908000000 {
> +			opp-hz = /bits/ 64 <1908000000>;
> +			opp-microvolt = <1022000>;
> +		};
>  	};
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
