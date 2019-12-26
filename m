Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520712AEB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 22:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqJNoLXT8y53iFGCRfnp6P/w2c+UJOhffqvqrCEBvQ4=; b=f3Fzz5K2XxRiQJ
	HRSktJFmtxcFHgKYndDnIN9p+wIWpe+TjXRgLwotepelPoIdi3a6mcgdYpOcCr4TMzE33bO0Dfae7
	wgIVWrPyB/guDcQGL3g47YrV/5MVqOA0bhyPOyLdp3US10VENvSsWTmHXZTwNQTDTiFI5FBa0op1k
	NTdrOgVYcg7Odpe7YqvKVkKYoOQYpxZq7mtgX9mHlLsYiT51QHcoHKarKm1FHrm9RdItkLxXOToAE
	g9g4hWgLHQ9oCYchFVebmyHhE5w23Y5R4p4A7fJ+7KHyplkcLit6Axtunr452JAQJHo2OrZvc3aPP
	VV4dpmIBAJP+vkBi6TIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikaMY-0007AW-64; Thu, 26 Dec 2019 21:08:06 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikaMM-00079o-Vt; Thu, 26 Dec 2019 21:07:56 +0000
Received: by mail-il1-f196.google.com with SMTP id s15so21039623iln.1;
 Thu, 26 Dec 2019 13:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9k7wtgHRpTwMfH9WAD4FBjZIk1Pn3L2y9QCGxHvomLY=;
 b=sdHsz2BDDixPQxUpb3rXqL4zbtzMZeUbXutf1hAjlHJm06jW9ZGM9aTxE7OuDfTHWZ
 JKH5Xn+DmGUXoFPnDrcTts6/2tNCWZoDlNPuhw0XKn7ImlgumWwYCCKY+SZmIxyyD1rk
 Q2FcuU+nWQ+Kpzjb4NNAlBARla7L9j5YnvUAKAiRHCfkcq7Qjd/je9IE5ey1sO24TQwz
 djAXPUu91NIvlYlHqehF5HDWtW1UDqkG6zZoDhehr+t81/nEimKXQRUQg0xLnvQGJI44
 orMdJ3zyeo+Rw6R/TxuZK0ZzOsV5SpICLgqduEFmsu7Ov7lXHrwWzZ/SrcwJdecB9roe
 pbbg==
X-Gm-Message-State: APjAAAXqDxZz87e83D3bBr+RhAEuKWMFdGTf+h90W3JiJW1T9Lj4k/1+
 iGzNZ9FDOaaEi8ySYEdeJA==
X-Google-Smtp-Source: APXvYqwxReudgDker7RqATUPrRlMIKQR3psE0VCnX9ECL4NfM9Ca/U71NcgWX1o7p7T/fabL70b0iA==
X-Received: by 2002:a92:8904:: with SMTP id n4mr7990735ild.88.1577394470816;
 Thu, 26 Dec 2019 13:07:50 -0800 (PST)
Received: from localhost ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id u13sm8968291iof.2.2019.12.26.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 13:07:50 -0800 (PST)
Date: Thu, 26 Dec 2019 14:07:48 -0700
From: Rob Herring <robh@kernel.org>
To: Akash Gajjar <akash@openedev.com>
Subject: Re: [PATCH 2/2] phy: phy-rockchip-inno-usb2: add usb2-phy support
 for RK3308 SoC
Message-ID: <20191226210748.GA27760@bogus>
References: <20191217075722.11646-1-akash@openedev.com>
 <20191217075722.11646-3-akash@openedev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217075722.11646-3-akash@openedev.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_130755_025524_76B84D04 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, tom@radxa.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 13:27:15 +0530, Akash Gajjar wrote:
> This patch adds usb2-phy support for RK3308 SoCs and amend phy Documentation.
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
