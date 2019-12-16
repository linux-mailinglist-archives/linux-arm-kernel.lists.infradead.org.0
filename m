Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF13D1212D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zh2eiblIEK1b7NrKbLBYSgCae0+JeTBFa0PgRXzYGE=; b=D4wayv06wmJONc
	4D1dtp8NcEr+ygxHmfZvlDmWHwNjiJQ0OQGAc1PIrpcBqxFPOHZ3EufOwpf3OgpuoeqkZLMwVEs1H
	wo8a7O1K9DE3LWrVf2yNfPNtsqrLuGYS6lFLjwl5unEsduaL6030DYQH8Fr/4L5x5b4Tb4fjPhKoT
	sVnxFvEOv2kTSSNsnW1WCfEZ4GeQFTGv0fA/jVa2Wkex/VPwXSWk9dg4FO9vYUKQl6v1yaX0lY78u
	Zoah1p71WtddZJfS8Ex29+oLAg/sdKlqKft2L7VcodvNIwjtAPqWJ0Pqhjy+qsqyml1rY2bEl3ESP
	HcZ8RXs5FyF9uFfXydBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igubj-0000mB-R2; Mon, 16 Dec 2019 17:56:35 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igubR-0000kM-V9; Mon, 16 Dec 2019 17:56:20 +0000
Received: by mail-ot1-f66.google.com with SMTP id 59so10119147otp.12;
 Mon, 16 Dec 2019 09:56:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aw1ByhbMIhX8L3tpVoMfqyhN1NAHJbr1+p+FNO511mw=;
 b=cogG854EzSyaScDLF3OCFg3G3O3irEskSIK/aoNJVRKuEhTESOGCeUdxQgSNUxrGtM
 r4rjux4NlUXMWSUdIumhvT2ranZft9l0Ci+f97jVjLaddrg8/GBfNnGG0yQinq3FjM+s
 by0mNjDEuEyWb0zgVbEswTnPYbltZm3uRYv/+0UWEG/Jh0BdcasFml81DV6f9uOOk1iJ
 Fkrb4pyAAlRMpG5hRy9QkD8aUxWtfxB1L82v4vDSSPjkTtzf0SvPmYXXoeLNdufyceEU
 rBJHodnSYVvT+WMdVTcwkZY5ktIrKsFfnMGTrjHIeWcdIMbny0Hj2vay4N2ZwEIuIEOv
 XNVA==
X-Gm-Message-State: APjAAAX1m+8pB4bOyCFpIXueW4f2r9Pb8XKYkj0HoBmMF4LImMJz8WKY
 EFmCjdtWcSUB+BtW0TjZcA==
X-Google-Smtp-Source: APXvYqwnnF6ea7JjKjRTbA+MoqjFiZwsAnK2w39lJst7Lqh4AyRaVH2JJ0Lo6JAUE+Ksjh06jg4ewA==
X-Received: by 2002:a9d:600e:: with SMTP id h14mr32060423otj.113.1576518977031; 
 Mon, 16 Dec 2019 09:56:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p127sm7017255oig.26.2019.12.16.09.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:56:16 -0800 (PST)
Date: Mon, 16 Dec 2019 11:56:15 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
Message-ID: <20191216175615.GA23392@bogus>
References: <20191216122448.27867-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216122448.27867-1-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_095618_015710_6892BADD 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 13:24:47 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Further review of the dsi components for the px30 revealed that the
> phy shouldn't expose the pll as clock but instead handle settings
> via phy parameters.
> 
> As the phy binding is new and not used anywhere yet, just drop them
> so they don't get used.
> 
> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> Hi Kishon,
> 
> maybe suitable as a fix for 5.5-rc?
> 
> Thanks
> Heiko
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
>  1 file changed, 5 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
