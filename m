Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152F84C013
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9xN5c0rhtiIwndIZm4ANMoi9SMlumQoEveh0jBb9j4=; b=a7jsZR7Kav3lV1
	uX0nxBqyl8zLHeC0yADzd7XRoW30wQlvLMxBaShvslMRGMttz2kzdYE3F3EerZ8cr6/J+z8NcqIZv
	JWWR0Nduoizgin5Xo8EWKQu1maRsMmcXCIc4tePkXo9trf1BTyGwKLy8f0y/h6du58rpdv/XrQF1C
	sl9of0sT0vA/UyGGE8Lc1RJC6Fl74ubelgtuB8j/T5yB1KoU2XNZd+LaXOQEW4gVHwxzSOshEYUcv
	7xKUQjliELFsLjFgmtopLjEHUAut8spE8zzS/qr7f5QLmIffdzzfM+5pcxgjW/BWLuEWrlAeVyXQv
	493/Sh39+qx8aN90Jh8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeea-0001uX-Ai; Wed, 19 Jun 2019 17:45:48 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeUF-00045D-8v
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:35:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so226836lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H6nFYo1W7u7smqgdQOkCZedekCwWjKsij2XVSq9qOaA=;
 b=ikWmfACd18AAbMWou3st+ieXzirNCfV7cxvr3S6mSQEHNTpvibjZ2ttrZkPyoNEHlB
 VAvSkKUkGrCuNRom0GcY3aT8VGdcm1vFGUvSEl7vKZy0JY43rsAjRHo9yMi1K0UBLuM1
 5afeiaai4/dQK3zEU8/ZRQfloIRXnEM3Fqc3KZA86o0Cap7vJ+M2psPr4kUUHW2ckq/N
 tYpchQMigZ4+Hxw33ZG688P6vm2jLmSVh31dcu1j0EnQDO9fxqRPsGe/uWEVkgCLzO4W
 SgcGFYQ6Cuqcc/zR9gG8XBt7PByhD+vhxO5IdppPRDzGE74AaxnqNhtc1s0lj+IJkc/h
 ALEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H6nFYo1W7u7smqgdQOkCZedekCwWjKsij2XVSq9qOaA=;
 b=TTyXEapRIKwG0Wh1lCX5AnWwa9rAYY85OvHTSHu6LJ6vxtIjKVjn679oFkHhSKudeS
 6qpbxIgIH0tT82wM2WwJqPC0cU5GVF/84Kj5L8YrThRQMv371kHj4Q5F0BeRJOLIV3Qp
 2u9sebq/D54SnUugvKNoYEXUy4wkjgEgGXLGeV3Rzp1ey+XelXxtVRS5aYnql2o1VsIR
 DkOa4v+2sTvuwM5z5bpyvNnNaQSB/GMuTLg22icpTI5QWXTHNmECPhZZAZS0s7XF1uKz
 G1fJoM39294vQ5aGlQPJ9WgaWhasVjs3NMxkNNK6D6vzdwmVVp/phk0hFy4F2HaNr782
 Obeg==
X-Gm-Message-State: APjAAAU+bx5hJHeNTQU/Ja6g3nQ7WMxI4HbU7CzM6/Lr786UhLhAhcHd
 SZxeAh9eQqtusI/Olpp0b0jVWA==
X-Google-Smtp-Source: APXvYqySMwzePnkslphTyGRvGZ5fTcPfgrmnaB4ZRrToN2PQZdf6+ZHkDKuTjfE//AzrU7bg4cqIEA==
X-Received: by 2002:a19:710b:: with SMTP id m11mr57184785lfc.135.1560965705098; 
 Wed, 19 Jun 2019 10:35:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p76sm2675051ljb.49.2019.06.19.10.35.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 10:35:03 -0700 (PDT)
Date: Wed, 19 Jun 2019 10:34:08 -0700
From: Olof Johansson <olof@lixom.net>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v4 2/2] ARM: OMAP2: drop explicit assembler architecture
Message-ID: <20190619173408.wse4xgmuzv6hcvsp@localhost>
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
 <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103507_363451_840CF063 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com, robh@kernel.org,
 f.fainelli@gmail.com, gregory.clement@bootlin.com, linux@armlinux.org.uk,
 krzk@kernel.org, arm@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, nico@fluxnic.net,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, kgene@kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:40:51AM +0200, Stefan Agner wrote:
> OMAP2 depends on ARCH_MULTI_V6, which makes sure that the kernel is
> compiled with -march=armv6. The compiler frontend will pass the
> architecture to the assembler. There is no explicit architecture
> specification necessary.
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Acked-by: Tony Lindgren <tony@atomide.com>
> ---
> Changes since v2:
> - New patch
> 
> Changes since v3:
> - Rebase on top of v5.2-rc2

Applied to arm/soc. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
