Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15651EA88D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQblidR2UlYENNpkw61lDi/TdxepPOLKGo4vd9i2qw0=; b=r3deP88STTvPKd
	qLL7cYaQvk9laK/ekX0H+QxnNwTcBSf52xhyzIN6X9X/sy4sS6OB10K9nP7pHYLYksXEZroDEThzd
	44mwg0n8RSsyF2zDGF4SBWU6GVxZPCa3iVobQijpyQv3U2HlLkxf64gctVp/4rSUWiOUY8wFSSXag
	i2C5cxja/M6T+h7MmLtOk6tsk6B58mBikT+tnufl1M4IXmPp5taWrBqmoL9NVqDyarKswnqwMl6sr
	K8xOgS08g3qdCfTZbOyXXx6vTaqZyzDEVbSsjbz5EVQ03SU9DDTjRmPAFyVMZm38o+9n6wrYizTPY
	8eMz9PoSgX4EfleOAHwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoXr-0006i8-2T; Mon, 01 Jun 2020 17:48:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfoXk-0006h9-88
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:48:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id q25so408109wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EF2MUXWe+0T7eyxkA8rRyjXJ0lsym9S82yVeKfIolyg=;
 b=wS+C3T2s8Q7602JUv3jWGhy8HPjzuOYzUPOpfSA5smX0EG3VwfTnAlZsoGasBnlyfg
 4ERS3mJMRO2/G3pVMuJSD09lBkKa/NcDOuUqMb4g2CwqWQzMCBZvoQ41i3H50aDvU0Rx
 ERuHo8/KK/pjd5PZRwwIPJ7mKT7wV7tPAFfpZjYgZDp6jCA3KWWzxyjNE3+7HmbsVdEP
 /SpwYW0aUknx/oMKZE168CjaLYOdZj4+BaQ4/j7WddQdFJc3qUZtVYgRGgOE2Dgyfl6G
 HhzZGjddlkJ2txyX10rH5WJWrhyn7jSt+lSXuW5wTNQNHTeNVN9+BYBjjr/SvmVXYhlX
 Hg4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EF2MUXWe+0T7eyxkA8rRyjXJ0lsym9S82yVeKfIolyg=;
 b=Df3MYv9yhjbKrnxgz1s6izxbP3ZI7+eZR4XC9JQWafEGlUgHJ/rRv84geFh5lpnlst
 U7m++qmG0fgVA5JYSfbh8naj/UBu0FOXYnQwDNQoD0blBFMf0aIhcL/sxeAzYMVo5r4t
 WIl4zTCkislPNk9/f9uttDvOWCKVqRHfMK5fYi+cMBgGm/Zqu9gDX+4dSnD536UTpABc
 efV3NORLOoE9DM3qT1DtneeR5+wzjLmS1Gf7v8Kgyu2kB2XHrCcbb7MOY0PR7GHGh5Zx
 +Hdlo89JrTJF46KdjKZmdGqnRqX5YWL4xRdDgkAMhzaSE45Fye4aHT5q/hhrkwEXmwQM
 +6jw==
X-Gm-Message-State: AOAM5337fKDPzXxojIxn8rGMqcchYTIbDA8PAD+myGx771u2aQ2Dx4JO
 VTb+jtlSVOj4S5e+Yqn/HjmLmA==
X-Google-Smtp-Source: ABdhPJwGZ7xVM43OkmrdbN8kKFpqKZnhsQ0DhmfJ55I00xz5ohrw+O7sia6vxKrkXQ2zK+FBQy25gA==
X-Received: by 2002:a05:600c:2110:: with SMTP id
 u16mr426062wml.26.1591033686091; 
 Mon, 01 Jun 2020 10:48:06 -0700 (PDT)
Received: from x1 ([2001:16b8:5cbd:c001:98fe:8f8:cce1:59e])
 by smtp.gmail.com with ESMTPSA id l1sm297821wrb.31.2020.06.01.10.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:48:05 -0700 (PDT)
Date: Mon, 1 Jun 2020 19:48:03 +0200
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH] pinctrl-single: fix pcs_parse_pinconf() return val
Message-ID: <20200601174803.GD1371046@x1>
References: <20200531204147.GA664833@x1> <20200601161851.GC37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601161851.GC37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_104812_288294_661ACA21 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Robert Nelson <robertcnelson@beagleboard.org>, linux-gpio@vger.kernel.org,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 09:18:51AM -0700, Tony Lindgren wrote:
> * Drew Fustini <drew@beagleboard.org> [200531 20:42]:
> > This patch causes pcs_parse_pinconf() to return an error when no
> > pinctrl_map is added.  The current behavior is to return 0 when
> > !PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
> > incorrectly assumes that a map was added and sets num_maps = 2.
> 
> Looks OK to me, would be good to wait for Haojian to test this one.
> 
> Regards,
> 
> Tony

Yes, I would like to get input as I don't have the other platforms using
"pinconf,single":

$ git grep 'compatible = "pinconf-single"' arch/
arch/arm/boot/dts/am33xx-l4.dtsi:                                       compatible = "pinconf-single";
arch/arm/boot/dts/hi3620.dtsi:                  compatible = "pinconf-single";
arch/arm/boot/dts/pxa3xx.dtsi:                  compatible = "pinconf-single";
arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi:                 compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hi6220.dtsi:                      compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hi6220.dtsi:                      compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi:                    compatible = "pinconf-single";
arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi:                    compatible = "pinconf-single";

NOTE: the arch/arm/boot/dts/am33xx-l4.dtsi was patched by me from
"pinctrl-single" to "pinconf-single.  But, I think for upstream
submission I would need to move that to one of the beaglebone specific
dts files like am335x-bone-common.dtsi.

I believe this pinctrl-single.c patch fixes a flaw in return logic and
is useful regardless of whether beaglebone adopts "pinconf,single".
However, I would very much like to get input from others in case my
analysis is too narrow.

Thanks,
Drew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
