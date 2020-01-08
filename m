Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E5A134D15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbQ2gPf4C/Vl2I4CBAKEIE2+N++M5P1Jhu0UtT4q46s=; b=JOrkSpRgXoqy25
	QbPiVg4mQ5n51YWSdU8oUtThiVrUbP99JSDJ5RsJ9EFC19ItvuR3/pq4FrK12FTjh9X8o3Vu/LpO4
	9jo1//WOE4WIlKpUZ9H8Alq4LdnF775D7i0ToTXso9mXTUshPzOKZYaUEz6yxPnOc/Z9GlOgvu0X+
	vlGip+F9eZSPTuHQVviah64dhCb+qSPL1dyrnIC+trEXEZ7fUX1gsFoXW8CPfnwZqQaOflqIeA4lX
	CXyw2/zQAYq/wQH6APDgAWOuHq8uEf7qWk81xLAepu+VZr3EAl0JByYELZoIHewNe5z5PNaX+KG8o
	BXKHE7fOoMJ6jYVlP1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHq0-0005lr-Ue; Wed, 08 Jan 2020 20:21:56 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHpr-0005l3-7p
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:21:48 +0000
Received: by mail-wm1-f68.google.com with SMTP id p9so316277wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 12:21:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DAChl6Ul9fKSKLSUyoPgGNo0ChhyAr0XJVth8mI90zs=;
 b=TkaY8dZ5NHUR+xoBaW1RNVFs1ueCv5yyFnOsFpP1YdRfM/uYnBxCbb9oSOryR+zOIB
 bCb98f4aAtNKhtFo1Ijtr+sRbWmzlQOaPKCEv7uEvY8NDsnwnr5N8Qds+WCx6yz3xuj1
 cMQHrh02t5wW3f80QfXBJsXqutqLmCgqvEoGqKzrAlpZbTRyKs3L7SAaygFfU7ZSSua9
 TrNElSB21DwpaeTz+QtH8+ON36Kf/PFLb6sx6iS4s1Rut9VVDhE+wxr3JJaXaFL5/LF+
 ngultWMhAYgRALIOFMcNTnuAU+DiUAFZqAhPATl9qg+LpUuVXhzM0ZTyWWv5CH69rnVi
 vEdA==
X-Gm-Message-State: APjAAAXTs6+VwBFsYO2BDSap8VBea2xZKqqVGT0ZNQW1SgomKNFrG0SI
 4B8kBGurX3Gtbgo2vXdrMY8=
X-Google-Smtp-Source: APXvYqzpZx5bVmQEcf1bpPT5tN7m0CBp56yBmQq5PdtRIz3mJs/1AeH+ujtV+juGwD4/yfPcficuPA==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr408703wml.83.1578514905607;
 Wed, 08 Jan 2020 12:21:45 -0800 (PST)
Received: from kozik-book ([83.218.167.187])
 by smtp.googlemail.com with ESMTPSA id q3sm238868wmj.38.2020.01.08.12.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 12:21:44 -0800 (PST)
Date: Wed, 8 Jan 2020 21:21:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: exynos: tiny4412: enable fimd node and add
 proper panel node
Message-ID: <20200108202142.GA8492@kozik-book>
References: <20200107191020.27475-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107191020.27475-1-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122147_279783_9A36CAAE 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kgene@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 07:10:20PM +0000, Yangtao Li wrote:
> Enable fimd device node which is a display controller, and add panel
> node required by it.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
> v2:
> -update commit msg and merge to one patch
> ---
>  arch/arm/boot/dts/exynos4412-tiny4412.dts | 25 +++++++++++++++++++++++

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
