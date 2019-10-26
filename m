Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D0E577D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyCFREQ30uxkIxQA5OLR8fTzF/ius9ymaijeLmiAwbA=; b=LQ8m6gS71oeaeG
	jkqrje0I1XOM/Tz/Ikc5Vk1ukgxynKGFE6iHHVj0Cxl6H21eh+gzjQAKszswTI3hMFKmB86TjCbBA
	+zF4Ad8p4PGm3tvP5mGYQHIjYLRKg/IWlQ4TP3h0e+pXFmUxTVICgwHj7poMr0ewK1mFkShNm/NAA
	NNRwUU80tEpQ/R/ahX0hDQzdiBk4lgClPYflzYJh5n+LBjnoJBVWlDl1Esb8zyww32orILtScKReI
	AGqQIGoL9q0LOUHENznPB9IS7txuMFCt1Kj84sAl6GTXtIwwlxDGyg66jGEIWasFFWSfnpzTxqNX/
	7Hgj5BZwMCY/azXnBbjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9me-0004B0-A4; Sat, 26 Oct 2019 00:18:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9mG-000456-M1
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:17:57 +0000
Received: by mail-ot1-f66.google.com with SMTP id n48so3210142ota.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:17:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iSzDrVoqrHUXpxhq0CUJD5PvUFCtwOZDkPzXxXOj7UY=;
 b=K5UioobUq6yzv1eurVNKyfUMxahiqgjTcJGi0tB/jN3WmfBCwCx+TtOiEFZN+EIRBL
 l+rQeP0VHmN4NGbGXlINo1/CnF8CddfoGpvlLU++J1ApEI0WAtbSnZQ5+E2AhwLgUb7V
 wzaYAzO2CuASgbMFDb6HPjEC0iVlTejphjjSZNojxfsfptLQfnbr31bp3mrmlKoOkdCT
 /I0/xuSDwLHCJ5xMmEim8T9I+ZyHSXeqxWnFm7MSpDz+5C+cgOanZn55mabELNp/dhtr
 7hhm8gfdYA9e9fgmf/VraanZsx9RwBUI6+bc4PCbOugjkyPTtjdTlheIgUVb+dDw/SAW
 vQqw==
X-Gm-Message-State: APjAAAURF63lv0s/Zbk9EMueJo3j7xi7sEqKHG5FpUmdeNM9hlyaCPrH
 6gUj7WxU/vHB+zxIDAMJGw==
X-Google-Smtp-Source: APXvYqwr331z8ys+D6w3OJ2WrCPo+IcU7ON1CRtPKaOaqLH/cCD4TjV10X9neV6Ah8fSUzOkO/PO+A==
X-Received: by 2002:a9d:3df7:: with SMTP id l110mr4679151otc.245.1572049075529; 
 Fri, 25 Oct 2019 17:17:55 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s194sm1021099oie.19.2019.10.25.17.17.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:17:55 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:17:54 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 3/5] dt-bindings: reset: rcar-rst: Document r8a77961
 support
Message-ID: <20191026001754.GA7560@bogus>
References: <20191023122911.12166-1-geert+renesas@glider.be>
 <20191023122911.12166-4-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122911.12166-4-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171756_729226_1A9D5CC9 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 14:29:09 +0200, Geert Uytterhoeven wrote:
> Add DT binding documentation for the Reset block in the Renesas R-Car
> M3-W+ (R8A77961) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---
>  Documentation/devicetree/bindings/reset/renesas,rst.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
