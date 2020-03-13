Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6587A184EC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 19:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NXa1PJ7dMbJDnqG+Jx45gYTKCEb84pDfV8GNY0f7b+Y=; b=jVgFP+GDyfvCDfvRc6f4apUAN
	pIudU4RsB1ya5z5LuBum09XR7W5gQllo1ZaFotPAd9PZQWHDSTE5bNSh8jxsDbu6ukD7in63RZvEx
	xS4UUvYN9gfOUzJAfJKIrxfXEzy/hztDNa+C2aUka7OEr5oYheWXRzgFzCKOCQ+WPWu2gEi/GcHvs
	KxHqz+uZ1akzQCQ6misqDsk+BW6LrueOCpgp7wxkagXK+pE9ccUG0fQo6Jf52syz2hGTVEnIYz81n
	q0weHoCKcKib0Ejj/yhE/HLwzX2Bn4pzHg+L/bjEUHZmx/Q0PUE6DKFrU1Jyo8SjMVoKTNr+LYuvR
	4ZXCi8Gtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpD6-0000eq-QR; Fri, 13 Mar 2020 18:39:04 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpCz-0000dk-50; Fri, 13 Mar 2020 18:38:58 +0000
Received: by mail-io1-xd43.google.com with SMTP id h8so10532412iob.2;
 Fri, 13 Mar 2020 11:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=cUuLSwZPrJiRgANKoLpU4cPUGPy0b1zzEtLmRHixawM=;
 b=pdQfPVjVSSOD59vLUiszT2k4KPe/kCBMeiZthSOeCrEeeOkRG8ORIuJ1tYwaFCwj7u
 mXd5jKvuHQ/shmhWkwEj9Fk0eZaWbfn+DzvqSmOOog5LZr/U6DbKJEEj+3Y/IiOHpmvS
 RtKijyA3OxrinDMGSFixNsJjU5MTktY8LhoUPjYhNpsRBEWp/IOgqdm0054pahtufaBK
 A8+jD31s69s+r8vC8XtTkqdjQEYSRmUdF0dP2tZeMxQ7dfB6ha/rWpsmmPCsneTN2ABc
 sP6XarxcnXmSWfkKOoqav5la81uCFB1uFNpM+B09YTSNR5M9LwVh2Nkvf6Lxw7vODIRr
 UNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cUuLSwZPrJiRgANKoLpU4cPUGPy0b1zzEtLmRHixawM=;
 b=KPc9JCN7VMnh0b/dekIDXblpPK6ira4dQ6Xo7r5ah8uHRVlbg3v5l/qTDLLtkDe7Ta
 2Joha7Wu16Vm2uuD2vzVbVEKV67W4mf7Xmz2TOXD1+6e4Ke5IYEEQRFlWEP++7HOfJdy
 cLnv+OHJHUlc8fuU0ZoVQMtusmibnEnLa0sKNM3C8ueYP9sAjMrgSxMJF67MTX84bwVL
 1GBxljdcHxbt1PamMrKDzeq4XpG1Jcyco+wr2qmf5jzm20PYJ0xHCPp93pYqVmydrJLG
 sOU3PtpkmNJy/7DhdRd1MM6xvd4HyfMAtUD6Dp+mU31BEz2flSkpJdBbMazN6Fz9Sw9E
 ACRw==
X-Gm-Message-State: ANhLgQ0XprQqIFnS2eSu3SdmM+LNFCaJE3IMj3kBo0fsy7hAS3Ifq53h
 n06BABKQ90zPXxiz87vGzPA=
X-Google-Smtp-Source: ADFU+vtdsZ5CoLT8VEqVJq5gzOg+u0Z6Cy0SMBjXfTDYMAWxmxvUIJQyio7XZupCGfrbMwfmlLrgyA==
X-Received: by 2002:a02:5489:: with SMTP id
 t131mr14297947jaa.134.1584124735873; 
 Fri, 13 Mar 2020 11:38:55 -0700 (PDT)
Received: from [10.30.196.58] ([204.77.163.55])
 by smtp.gmail.com with ESMTPSA id i82sm9783468ilf.32.2020.03.13.11.38.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 11:38:54 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
 during reboot
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200219204224.34154-1-JPEWhacker@gmail.com>
Message-ID: <ed50e114-5efd-edcc-a287-3cacc4a28161@gmail.com>
Date: Fri, 13 Mar 2020 13:38:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200219204224.34154-1-JPEWhacker@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_113857_194177_CB3FFE51 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jpewhacker[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/19/20 2:42 PM, Joshua Watt wrote:
> IO voltage regulator for the SD card must be kept on all the time,
> otherwise when the board reboots the SD card can't be read by the
> bootloader.

Ping?

>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>   arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> index 312582c1bd37..acfaa12ec239 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -276,6 +276,7 @@
>   			};
>   
>   			vccio_sd: LDO_REG5 {
> +				regulator-always-on;
>   				regulator-boot-on;
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <3300000>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
