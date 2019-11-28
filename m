Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3787910C643
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CdHQEWFm2vBelVloOV8iqW10lA6xgFw/Hx2aGTVhj8=; b=fZLnXtYGZDd+Hd
	VRd9bQBhnTkSjjO0m8qA2BgEI8QvOuCob2cPaSJCKu7IPpuHfN9Z8+EIGC6nyPsjokL154Ul2G239
	lNiIjUlS2dVxVFoilCRhN9lWpszB0XIwtp903+dj5fXUUoWawDBwBRWVzIDfWf/0XG/qGvaNWWPXX
	5yO7vXlfsDrhY7GNABTE6zsrBAFgY0zbv+Ffiv+7o6Qw9bnMfVpynhXZR17LCgLwhEqKI60xtFP47
	o9mcGWN6nN8V3imrLJWpdXphDx5RCxqpEvSywyZOduxXl5SMBDxIqqn17Q6spudUNDseeChjryn5r
	OpKCG6kyN5+XGyn+yO3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGWH-0003PU-NY; Thu, 28 Nov 2019 09:55:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGW8-0003P3-7O
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:55:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id j18so6980981wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 01:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=isat9hh2CPhOOHLZVSbgQqR2m1NjFg+sucSFNzUZ1xY=;
 b=ThVXUk4GJVBhjYDxMNtR8rdZXS+n2FlvOhhtUon4mG8gB2RUtVXkyCRZ7C+sz0qVPo
 V/NEonkkZqFq5aJATe0krf026XYfOhbZFyhwMO/TuTS8XbZy1B1pbOdycUhtDJhPc0Nt
 OLOP0yKkTPm1mVYGhrMF+e1bpIOtUJAhhqhyORi8YaNJ5MjroOc/dziEyXVeqlrwUbRi
 +rkMvCc6z7TbvvWwEBrZM0d83gba1OV+fE/kUst2PKo+WZGlc31qD6zyiB6s9lLQArCf
 Tit9VGJ6m2qE0IyaDu0FLuIfS2aeYBZ4ORVYb/75NauLT4Yz1zqgNix8RI87HypO8Qq6
 IaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=isat9hh2CPhOOHLZVSbgQqR2m1NjFg+sucSFNzUZ1xY=;
 b=LcjoaUakepTEa5tNRNlLck624WQsvE8W9wKlGD+ERZJbhko9JGhv/RwHbsiu400jaR
 DHsVK/V/Ogz6Qkjkqa7yrUMp6mQ+61NjL4qnebxfPBqJwNHoZdC8UFsQ9puZfPFYmUCH
 UOCF8JUNMGUytTWDqwxbRxNVMxoZaGj8t0xVXlBKa0zEXfikn4OWe8VRYP8Qmt7Lb+a6
 b62WAw49DwaNxtWkuKfoC/K4twGo1b2Ivas+/8LC0U8iFChnRDXX72/akSylzLJ7fzdT
 91kyIQ3iiHKYjejFiC5kmln6iW3W0vojTP7mE6+1MBQAo+Uhve72QFohkugv7hruztk3
 z1kQ==
X-Gm-Message-State: APjAAAWTiiz/ZBcPC4wmA8eqTS9CD7+3KFDCFfpALif4sBLIVjyXLu4E
 tMZ33ffCM74KqRYGnNsnXM0=
X-Google-Smtp-Source: APXvYqwT8jxd9fEcntEL13r32y5QQkMemmRdJ0zaaVfAqM2tqdyqdntJZU9zV3B7/UhZ5iJSkzz6XA==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr9078967wmc.129.1574934918244; 
 Thu, 28 Nov 2019 01:55:18 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id m3sm22303095wrw.20.2019.11.28.01.55.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Nov 2019 01:55:17 -0800 (PST)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
Date: Thu, 28 Nov 2019 10:55:14 +0100
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
Message-ID: <20191128095514.GA2460@optiplex>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
 <20191029122026.14208-2-oliver.graute@kococonnector.com>
 <9b865fc1-3c7a-f1bd-8ef2-65088d64b314@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b865fc1-3c7a-f1bd-8ef2-65088d64b314@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_015520_266755_7F9F65E0 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [193.47.161.132 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/19, Marc Gonzalez wrote:
> On 29/10/2019 13:23, Oliver Graute wrote:
> 
> > +&fec1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_fec1>;
> > +	phy-mode = "rgmii";
> > +	phy-handle = <&ethphy0>;
> > +	fsl,magic-packet;
> > +	fsl,rgmii_txc_dly;
> > +	fsl,rgmii_rxc_dly;
> > +	status = "okay";
> 
> The two fsl,rgmii* properties do not exist in mainline.
> I suppose there were copied from downstream?

you are right, I'll remove them.

thx for your feedback.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
