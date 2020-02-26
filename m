Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4FC170431
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRFvS2QgWmiyhQ6uu2DmYZLJ+7A+kVa98tzElPTcCCk=; b=sWNzBoOpdI7Tkr
	Sy/b2H5x62BlGNibyP603Yt32dLLUFvvlQZWAazdtPdFZ2KtKCZc0R9ILFBHwdVJiFrrp95zgnp2H
	F8Dw7fF0AxVtKdUPGkJoWUE/zzhdFxETTwsXABQcvBOLJAVCEACsPZ1Xch/hZMGi/QuQhnXFGOaCO
	1OolmuPP0RbM1SXo7V0D/hiHnjAZzhcZMDtPjiLsKHyyRaeEb6feHp+s2xuHPd/eEysc6Brn6njCv
	U1wXRbLvCuYcvT2pbpA7aMQyH88dapd/4v3e+4Q4g0E1RwljqSFt1EdWTX9ZkxrbzacLr4Ii9wjfe
	fEit/FYX3GYE9Z4Nt7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6zRJ-00057U-JI; Wed, 26 Feb 2020 16:21:37 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6zRB-00056z-Ri
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:21:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so22849oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 08:21:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R8CgB5ofq/CEo+Bbd71eYLol0DUjIXGKdAp6HQA/9d8=;
 b=JeZA5InFQfjJJn8AtMfKLHOU/DbA2ATR5tZEhXPlSJp6ZFMEYJ4PQTcC6eokch79Y5
 wqakR8UnWlGhg4Xsster2FArW+5UCcWihc9LpTKTC47T5/HgEml8rNCPiLKxYmuBXMwZ
 R1Bk75J+ui2ZcImK5T5Hg6lS7WQ4wB97nXqcOIl+Zr2VjWd/IPHEwjSBNw9VORAG5gu0
 Kf74T73YS+QJQISBGa7FfsncND1Ow4eLf9DQymx/zvw6ge64Dlk7fiEoNDhCkshjIbRa
 kV4A0Vf1ubmGKzhEF+cXkJ7VniIXk0SWYcBha7ox+VFW6VCP0Nj4aBTgJJ9bAiLmz+Nq
 ouMA==
X-Gm-Message-State: APjAAAWFYwg7q/yGLh/RQapgmxfAXUszoYBg/LLaFU+IUWY3akZMbkgp
 6xkSmxV7dBPK2LPgV1v3fg23JIujPw==
X-Google-Smtp-Source: APXvYqx4y3t8f8l9YMHa0dnaCosRY7xiR2vi0DCieSBpahLqPG+tzB/Y2iH6dVgGLzxAw9q3lrEIRA==
X-Received: by 2002:aca:ab53:: with SMTP id u80mr3693789oie.94.1582734089012; 
 Wed, 26 Feb 2020 08:21:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t20sm939037oij.19.2020.02.26.08.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:21:26 -0800 (PST)
Received: (nullmailer pid 13405 invoked by uid 1000);
 Wed, 26 Feb 2020 16:21:25 -0000
Date: Wed, 26 Feb 2020 10:21:25 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to json-schema
Message-ID: <20200226162125.GA13349@bogus>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220162246.8334-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_082129_899540_D4960810 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.co, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 alexandre.torgue@st.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 17:22:46 +0100, Benjamin Gaignard wrote:
> Convert stmfx bindings to json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/mfd/st,stmfx.yaml          | 124 +++++++++++++++++++++
>  Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 -----
>  .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 -------------------
>  3 files changed, 124 insertions(+), 144 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stmfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
