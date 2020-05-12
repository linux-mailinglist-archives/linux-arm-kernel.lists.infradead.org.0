Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E71CEA47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSCOi0BvMUJI5rKO7a+DbtiNm7P2RbkS30+4RxA4sxc=; b=e1uuKVKEdtBw9m
	uaZ4GogkgHCDDmqHzeclWmnVAmZ/MesbkpxKWPZgUQPLECrm/2/bjdj4JjJMkV/ooiZjS8Pi581aR
	hPoDVxfTioEbA+7ySwGRmi5SMzW2Jbflbn+Eb/l/jFSZmJ1LGDSzR5VpAm+wJa3KF2u25TvgZvnCS
	JqwJtfNgX5xEJ/XYAuWOjiK947w1uJZZ5tmzphFH9LgLAPBq5P2P7WSZ15d8/b3wkj06ElEZ7qKc2
	qzuPFmjn4pNC9o/Pi8ByOPmzOTzK0hoZhxDz2ebye5pl2XqpZpD+ssM2m0XZYq6aXPk5J3R2GXm14
	NmuXvn1PqJTKNcxJjwnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYK58-0002Qg-41; Tue, 12 May 2020 01:51:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYK50-0002Ph-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 01:51:35 +0000
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 909F52070B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 01:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589248291;
 bh=TOxJQ8useNXlHqOGQiMvp/S/nDhqTDFghznaUa0/uIg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p5IIt7uZkMwrIw0sfUSXF2EWssNrJlRS+SHD0jR/hO7hOYSHT/ZJyLQ4f9rlKVh3+
 h7SkEi+TrQHofsgPWS4jpxQtRfhnJA3ubSknMIlTXAcCkcSQ0m05Tf2Y6lbsTDnBdj
 K13Wv8z8EqcNsxZ9VuwLBz2N/+kxE8jv11ZFf+lM=
Received: by mail-oi1-f180.google.com with SMTP id v128so89528oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 18:51:31 -0700 (PDT)
X-Gm-Message-State: AGi0PuZOq3MH2Bp+F+X+z3IFuQQsgrQ5uResmP5utRs3djza70x7l8CH
 02yRDPT+PnLqb4mTgq+xd6XFlasLfc/AfpFQZA==
X-Google-Smtp-Source: APiQypL/XqEe5cfCkvX4wVesmS2480UqrH6RbZniT1cjmaBIpnKBFXu2MNZpbZugUwsCKTbKaMG1sKVIuRyWE3/GCoY=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr22849330oie.152.1589248290884; 
 Mon, 11 May 2020 18:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200508134527.26555-1-etienne.carriere@linaro.org>
In-Reply-To: <20200508134527.26555-1-etienne.carriere@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 11 May 2020 20:51:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
Message-ID: <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: nvmem: stm32: new property for data access
To: Etienne Carriere <etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_185134_389335_3B4509E1 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 8:47 AM Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> From: Etienne Carriere <etienne.carriere@st.com>
>
> Introduce boolean property st,non-secure-otp for OTP data located
> in a factory programmed area that only secure firmware can access
> by default and that shall be reachable from the non-secure world.
>
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>  .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> index d84deb4774a4..c11c99f085d7 100644
> --- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> @@ -24,6 +24,18 @@ properties:
>        - st,stm32f4-otp
>        - st,stm32mp15-bsec
>
> +patternProperties:
> +  "^.*@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      st,non-secure-otp:
> +        description: |
> +          This property explicits a factory programmed area that both secure
> +          and non-secure worlds can access. It is needed when, by default, the
> +          related area can only be reached by the secure world.
> +        type: boolean
> +
>  required:
>    - "#address-cells"
>    - "#size-cells"
> @@ -41,6 +53,11 @@ examples:
>        calib@22c {
>          reg = <0x22c 0x2>;
>        };
> +
> +      mac_addr@e4 {
> +        reg = <0xe4 0x8>;
> +        st,non-secure-otp;

This fails validation. You need to drop 'additionalProperties' in nvmem.yaml.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
