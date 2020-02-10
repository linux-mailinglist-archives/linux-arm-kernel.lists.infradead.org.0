Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC8156D98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I50vbrphYSdz4GK/KcaJnj1wp8xRQWP0ePySLxLb63Q=; b=JDpNaRTCrKjQ4u
	7NqQRlNnHhlvcMg2cmtwO7agyC1RmvvYl3cta7OizQnAskZMHbQYHm2wcEEiyzcBDFhxhmzZBLFBR
	aVWQYlQY0l/c58L/3P0IDmiM176yExvkvAvAPvZQhpGFyBfu3yo8++3LPDvHhVE/ols1bFVlNtZ/B
	hTB8wtSbG0S5AlNilq94qWSLbXxOTt2z0g3rYENf46qPXvjvilELdaj2SDeBRh+qTOX256JW2FwNu
	zOpvcaRDUiQKiIrMTLd3WnU/1PNhYiWx7/xEr36EMeJ0RUd2T9JwYpeXHa/28yC9fhU4VeIJLP+tK
	UYJX2kIbdJXXIwLHdeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0yoN-0006tK-01; Mon, 10 Feb 2020 02:28:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0yoF-0006sx-9R
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 02:28:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id a23so5150520qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 18:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A2hVfVVesl1I7h398CNSJxTmpIb+Kk1JFe2I8ygn1Xg=;
 b=KOjhJo+j/14twubHUiQecoKuUMzxJsS2AExv5XM8clrpBmyY1O0IiCtrsp+JtqycO8
 treo2jRBtklijyTDszDf6YngLha8w3jbTOIK9ckqgEXwW5yw1NMSbWVrf8SBN/ukoOm5
 0ayg/fAfeQ0vlXenhKzDCe6Djb2kFPnnKivJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2hVfVVesl1I7h398CNSJxTmpIb+Kk1JFe2I8ygn1Xg=;
 b=Buf3jBNRnQBgGoFB0m/8rOXj71uVyoZ894gt8kisfmyPP/iJ9gFFPnSQzXZL+3YpRM
 NyVloHaJqHF1XommgmeeI0fP0qBxhM95hro+2z1DGF/W0oFPf67UgOQHYMusCBiR4Jh5
 FyRcMPIvMeFET1Pmo8SNZDsdGkbZvZxuG9MnPDbI7QT4mxnOJTG4nFW4l3naT8zWjgoU
 7vMamtNXRjUKY8w6elmRalAkO5c5rvK6cmZkOvm4/k6JDqWPmGjLmzfXrCghv/ult/2A
 0eFx5gYnfEisUmnX4p6IPW9MF3KR2hNbuo3ci0Ee/lTEUzQ6gbxEOGPewowlutHN9YTv
 t/oQ==
X-Gm-Message-State: APjAAAX30lVvBAAHS44VHRXIf6deN2r9drJJ/3JMbmkDF4VlGhLLk6qL
 ICBhcn2Bj208IhAtGnhwVCRCykDxv5OIRCgflMRh/g==
X-Google-Smtp-Source: APXvYqzUlkkO8FdUe/RhG1U+nakzNskPxmR8Aa8M/wDnOL2BqgGPWFC9+/BP9Ggn8sDUkznCBnfkkds1gvWmNMOmwHY=
X-Received: by 2002:a05:620a:c96:: with SMTP id
 q22mr8923890qki.330.1581301704884; 
 Sun, 09 Feb 2020 18:28:24 -0800 (PST)
MIME-Version: 1.0
References: <20200204224908.19967-1-eajames@linux.ibm.com>
 <20200204224908.19967-2-eajames@linux.ibm.com>
In-Reply-To: <20200204224908.19967-2-eajames@linux.ibm.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 10 Feb 2020 02:28:13 +0000
Message-ID: <CACPK8XcYSoAM0VZFZSnVTRXHsEcib+-s8e3p7HD67VV35hEA=Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: ast2500: Fix SCU IRQ controller
 node address
To: Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_182827_373069_D06A7ED6 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 at 22:49, Eddie James <eajames@linux.ibm.com> wrote:
>
> The node was defined with a unit address but had no reg property,
> resulting in a warning. The address is unecessary, so drop it.

Please add a reg property instead of removing the unit address.

The hardware still lives at that address, even if your driver doesn't
currently use that information.

Cheers,

Joel

>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index 569f9d74c696..aeee18fc1e7e 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -222,7 +222,7 @@ syscon: syscon@1e6e2000 {
>                                 #clock-cells = <1>;
>                                 #reset-cells = <1>;
>
> -                               scu_ic: interrupt-controller@18 {
> +                               scu_ic: interrupt-controller {
>                                         #interrupt-cells = <1>;
>                                         compatible = "aspeed,ast2500-scu-ic";
>                                         interrupts = <21>;
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
