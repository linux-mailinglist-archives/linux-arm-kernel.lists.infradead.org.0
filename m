Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A477A3F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNgcjMZ7B7f41+s5hPEeT/X1ETa2vAoGoSKYEPSIbyk=; b=PMy8cZ+3lcG7nS
	J+stsQHwk2CYtQjh5/fwAJ5F22SCCsFEjjfyUZtZhKpBRIBvENijW07UF22BdQWSm4SF/cqGdHkVP
	oALeStTPuMJH2L+DpKhvR5Kv/HtJoS+ynTw5nuSvaxXdhoFZo5KzFemvbNxvyV3kikDDmT/oz0Fdk
	b9KC8urYm/sgzray/kNBO78H+ekMdqPz6P+bbCq3pOWggWbZ1F0CPoR74choTFF7sqwCxwiDLjJkZ
	qNU8DSc/jovcSGBTorVamfLGcz8ysaeuyJ9Fv+1FmO3cFd4/XiohOwBymwVeOgwfoOLdlcD/mh6ua
	mfLAHnzIsaVMF8SoBnxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOMC-0000ro-Rd; Tue, 30 Jul 2019 09:23:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOLx-0000pf-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:23:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id l2so55924365wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=SRl6Oym7H9Un804DCDBW+OKthVL0/MehEFhPNzj7nQc=;
 b=RZP0LTltur2tXVfnLlFb3sxCk4RIrpNkY+ZMOizbAnwJOUwlbFM/ASG3OS64BMKFlO
 rX0NxhNBeUb03KCveiw7BsLtp7Y5Q7jlLF+MJPrc6wR6JeKiwfzfb3SH3DOhhHYcyd63
 CTNAKEQT3ega2bFKh9K5nEEBWiTdNbL2J4G3DgRi2DZ3Q2kUHD44S711hDAOTR6BMHzC
 VhCecUseI3CqDx7A8MhYCNskaXsOa5VkgHUca4KF/cVY1QjjKzm9gJZRdCIZ5fnmsVRN
 3qkpS/ZLgVaeJBlt/fpHL95b7iFIUqFpSkdTFMjxEJ4MUjCuhOJWM5AwygJhv+sUI8Pe
 0t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=SRl6Oym7H9Un804DCDBW+OKthVL0/MehEFhPNzj7nQc=;
 b=l2LhzeIC0Hnvch7LnadVmik+fRdNar5zBkax2oyqaUzghWMUksYwgZZ9cRfr2OsLZO
 DiLGmoa+QpFpqfxvupMF4lMVy1IGj3ImM38j1itLB+o2M+jwZPMGciR43hBkov71Hcnu
 K+nAmCxRiMoWOXQx0cfxarWjj5c3LisG8QAf+rH0ZhuAmFg0QzJnC3TqtVd1Vw+FlxYz
 prhOqkMh4odKbs0tXr7omC7TyrirgZR+20qOtY5wywe0YSeTIA2D0bq0CovwY66/1Lsi
 b5LadyA5Kr5haIVnSSaisHNwVHnT0X++jWM8bfaiTrjH5QaJabfnG25JF7HJVdS2SNw3
 LQJA==
X-Gm-Message-State: APjAAAU3Von+mNxv3Ke+xGGNaFm5NxoETy0SAdGAr7zT2Uc9i/fwNtOm
 Fid7ojW9UAx9Ma95YXvm5W3IuQ==
X-Google-Smtp-Source: APXvYqw4xbTN7s8DUis/v85pKNebf3+z6Rt6gyVLssbXbjErbl2YdUrChQDcR+Zgdb5oN25HQGa8Jw==
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr103347180wmc.89.1564478607335; 
 Tue, 30 Jul 2019 02:23:27 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id g10sm48071944wrw.60.2019.07.30.02.23.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 02:23:26 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Carlo Caione <ccaione@baylibre.com>, srinivas.kandagatla@linaro.org,
 khilman@baylibre.com, narmstrong@baylibre.com, robh+dt@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: meson: Link nvmem and secure-monitor nodes
In-Reply-To: <20190729183941.18164-6-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-6-ccaione@baylibre.com>
Date: Tue, 30 Jul 2019 11:23:25 +0200
Message-ID: <1jpnlr27w2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022329_553472_7778442D 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> The former is going to use the latter to retrieve the efuses data.

Actually, if you really want to not break bisect, this change must be
merged before the driver change (patch 4).

I'm a bit surpised to see only the axg and g12a here ?
Doesn't it apply to gxbb/gxl as well ?

>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index 6219337033a0..b8244efb85fa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -117,6 +117,7 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		read-only;
> +		secure-monitor = <&sm>;
>  	};
>  
>  	psci {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> index f8d43e3dcf20..2b07752e034f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> @@ -100,6 +100,7 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		read-only;
> +		secure-monitor = <&sm>;
>  	};
>  
>  	psci {
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
