Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639B31BC90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+xjM8DIdEUUTLX+wGMQNEb8u6vpZZLQbQo7uOtqMsw=; b=hlC2GNvXeZSiNA
	r9xdgyMQ/KVCsR/HUu/wu4ADQMC9kzMKvERn7LgJt+LSMwSCPr3UbESK/K1e9lAzRadM99GUjN/Y1
	du5jpZxGR3VDqV9RM1W7IUm5Vy/V60tfWpyhHyxtBebUE/ENy4CcV/aGO97BUAcAYqz3RZ+fkefr4
	2Wzh+FvDxO+ksVHdJWc+JuW8HphQDkXWX6nND6VDhDpI1D3/P4d80XUEQ5QxcwoqlJXee10QdxiHi
	utcymdKKDPL5K5dj75Gk4WhnH8OIyX57J9f55N4aJ0j2BVhqpMtl+fiCSIftrz2fM9ELHGH9wQKUf
	ta6K8E5HaHV18GdgluKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFHs-00045x-89; Mon, 13 May 2019 18:02:56 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFHk-00045I-Ty
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:02:50 +0000
Received: by mail-oi1-f193.google.com with SMTP id v2so6628966oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 11:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/XhxD4qfD0ns8reknvj9RpAcHKvugYCkDKZURXupK5s=;
 b=CdXF26CDzMfp1wjK8nz/aorQqSlv/3ei1EVfeKrQ8AD2ZLtVBU6JDAISGrum08yPoV
 1TMAWaQ9gcKkda1xMI/PaExApcCBz+DJxac2CizQ8taerxBJpNfc5dha+3wBtcVFXGQk
 RAKkMP8AiszeTz6LjKh21mvBhwLbutj+GYa33LQsm9P7/zpK5v1Ol9JsW1xyRfmJAPyg
 A+cfAM+xGuFwiMvjP2SlkbzIMt129r3ZhjYgqmzKoZEbYVpzaGOxdxU1rePlqOZLZQrl
 UPQiJKoDqaYRcFfsBzf/8X/BulQxb5icuIU3c2bKjkTSEHwr9sC36wZl7YXUIPLknGvC
 O6Tw==
X-Gm-Message-State: APjAAAXnjCN8C7NUGKhC8eSdq1okZgSw9RUTvTOJpXnxmOEzroQBK2T1
 uwnd9oP26AwyuLqc3Ufrug==
X-Google-Smtp-Source: APXvYqx+ua4Ihwv0KGSXt2vA9ULzrBLsnrobys6zGYP5eS/LZsAKrESt0LAOr0df0+FCAMzvi5AZjQ==
X-Received: by 2002:aca:bd09:: with SMTP id n9mr301808oif.56.1557770567715;
 Mon, 13 May 2019 11:02:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y3sm5243396oto.58.2019.05.13.11.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 11:02:46 -0700 (PDT)
Date: Mon, 13 May 2019 13:02:46 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Document Avenger96
 devicetree binding
Message-ID: <20190513180246.GA8487@bogus>
References: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
 <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_110248_967353_C35485AC 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 03:35:32PM +0530, Manivannan Sadhasivam wrote:
> Document devicetree binding for Avenger96 board.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> index 6808ed9ddfd5..eba363a4b514 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
> @@ -8,3 +8,9 @@ using one of the following compatible strings:
>    st,stm32f746
>    st,stm32h743
>    st,stm32mp157
> +
> +Boards:
> +
> +Root node property compatible must contain one of below depending on board:
> +
> + - Avenger96: "arrow,stm32mp157a-avenger96"

With which SoC compatible?

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
