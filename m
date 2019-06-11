Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B003D704
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnCf+mOknQZXbtOpWA8bYzInbPv9MvVs1BWSlkeuAeU=; b=JvnVT8ikxBfHKI
	P2sk+yhkgIiCVn+9dNbp+R4AUK8RAGCXVVqa8Qduj4Jw8lNMcm8ob9QIi9ia/ebyf80CdRRrIWvgx
	XWvRo7f5Pf+GEm9IVVEh9ckdD16zTA2by4BpzaRrguREs28wKTzfVPiG7y1bTQIOle66O6l9hC+Yr
	a2rgYYr83NuHRBEzZjQ6OGhOQoWMxPKwjqVf0EvLcpESz4GSOxdirwI8C2ZYq2KLA8GgiDqLzEMJg
	N1jXZ9e/bbaS8WPGixgYAmtpPINlDAIbQGhrr7wHijbB8uzJrpNb+7vd6DGfi5vrgkuk3g0tjN2YC
	KbjmDKhOpCtDmxwYjL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hamdh-0000ck-Th; Tue, 11 Jun 2019 19:41:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hamdY-0000cK-TF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:40:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id w34so7512607pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 12:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2Tl9Z0NsfgrApufoe2WUbK2OeIisauNIixsAGf/fSmk=;
 b=vsAEGERkAaoThhFQXBii705fmbt72E/99Uu7FZajp8SUf8GTc9LlYBfAC9HjBDp5sL
 4EKL6GI9Rp7rOn2WJp0TItbwY1VpF5bcED6xmFO6HO1yjnxBmgJQRVff+Szsd7nDo52k
 o1KbxC6jfKkSBlesArxZfIgVWHOPkeVNKjzoOo2dLBfe0tMVlsJMNhicCRnqqzah4M1p
 nQ+X+wveo4NUY1wN8RdZqJ6VXO8ZpGZsQhfe115nX9JanaBCN6VcbYPC8c0LrFdvg90V
 DNFLgkX/ED/WENER8nOIEnsilSeYqIY4TNFJg1PXRtIJq4SgPMjABUQl+T2ZO2lY8t8G
 +ndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2Tl9Z0NsfgrApufoe2WUbK2OeIisauNIixsAGf/fSmk=;
 b=kdkleGoKW/4MIMxqBK/e7DA3nDde0ghFHJj4dsyqupRn2LDHbX3Ggay070MT3dYTaC
 ozjZPhzdWcGkSPgKjgpNEBlovarA9H/9CKpq7l/8u2pGqeq6ej5F/DcICR8bVGSyRhcM
 q9DukfzegzSD2O/D3fS2E0dRNJmq+pbAhVCU+05OGrQ9F0+WjcCriPWryJ26AhWzgb/R
 F2UVtL06RINGYbsXR6ch5ZdmD3hg0lqIQl2PCyqD4UIJf7SlgNJ9ED/4bpnW65mVlg8B
 bHbEKz7J8SL8abj3o5rzVqwJfFsTXZt8qitdILG/EsaYTGGAU3QyslBfSImPccZOoOqJ
 fxpQ==
X-Gm-Message-State: APjAAAUC1YV6sUL9dK6Qo3pYFAOzZNajHDmJXYdI5HLH3Gx6H6ARkkWy
 zSYETKQFe4AQlOOOh7AaXbqsDw==
X-Google-Smtp-Source: APXvYqzXVcc6fXXOJJq5bogayd4145zzm/qfoD7KDrsL3o2QfDRsySAjhmLpJFJJtPni27dVTOe/2Q==
X-Received: by 2002:a62:2a0a:: with SMTP id q10mr77972329pfq.79.1560282051640; 
 Tue, 11 Jun 2019 12:40:51 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c133sm18710319pfb.111.2019.06.11.12.40.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 12:40:51 -0700 (PDT)
Date: Tue, 11 Jun 2019 12:40:48 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190611194048.GR4814@minitux>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610084213.1052-2-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_124052_978592_E00EC231 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Jun 01:42 PDT 2019, Lee Jones wrote:

> The Qualcomm Geni I2C driver currently probes silently which can be
> confusing when debugging potential issues.  Add a low level (INFO)
> print when each I2C controller is successfully initially set-up.
> 

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 9e3b8a98688d..a89bfce5388e 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -596,6 +596,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");
> +
>  	return 0;
>  }
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
