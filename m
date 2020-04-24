Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A891B81DF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 00:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JrMsBJC5I3NAlRwpVexkBA8eHmtmV5IsBxCa9ZzPVQ=; b=rOSp/FQIbskcoS
	G8Q2OyKCow0YeOdFKfxHb/HMfeSgcW2MkcrXsQqV8QNS9iS0bGyH3YAQlIHWWZh73eSNhAYvUtIfi
	3PkKTsEMNHHJxL8CqnSw/7tMvW7oTOt0JrC65lco5k9hPJiocehfV+yAUjgSvTQ2YcCIOX+if26s5
	paGcVhsGp4tjDJOH+H+587O9AGcZcYjRlV72Ai+fittWGE+1IXg2lLmTdI0irJaApMHVSHQFnpPxu
	fk6C3t/4PuFVTq1ngUmKWTypYPVfSpvMAq6fSYHXjoUOuC5BAmfhpci1S+mFzi6vtpCfrmWe7EHju
	JWdyTlp2ZNbMZZ8b/EMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS6Sa-0001Vt-O8; Fri, 24 Apr 2020 22:06:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS6SQ-0001Uy-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 22:06:05 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CACB20857
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 22:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587765961;
 bh=JivJTIRgDiUIQy8eirUs45TtyuILvCgZqRvnH5Wfcmk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2syVbBmoK8XrkPtUfJDqtPoO+QllnBQNWmGqXWVUUPjXUdNygPj3yDGu1IkZB/ltc
 RY4Eubr6n1HDACvMv60r+ICK/pBsG5rUEu4y9TmhfkD9POKfJZTfhhMsmgypj2StyW
 EDp7nlwKG4kh9mFheZAtzuxFuQZcuePnmfbko3QE=
Received: by mail-qt1-f179.google.com with SMTP id 71so9259766qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 15:06:01 -0700 (PDT)
X-Gm-Message-State: AGi0PuZoNI+M3JgLFdcDkXQQkpKXVXHhGOjJ+r3+70aWyVO4D/rxo7lq
 oYe/YkZ5FdkcQ0mWlgoXmn2gMNRNQoENWk0INQ==
X-Google-Smtp-Source: APiQypIVltF4TcBafK99loWjJjLLH+9EYxohE3EW1fPkl7KXSdN1YZmaVY0jfUimAylQ+g9ffp3oxucLw5yVf10M3Zo=
X-Received: by 2002:ac8:47cb:: with SMTP id d11mr10875122qtr.136.1587765960749; 
 Fri, 24 Apr 2020 15:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
 <20200423064808.10468-2-etienne.carriere@linaro.org>
In-Reply-To: <20200423064808.10468-2-etienne.carriere@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 Apr 2020 17:05:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKvQasaBCHC2s68WmtfwGN+t349tzmF=ySkuYz11HzksQ@mail.gmail.com>
Message-ID: <CAL_JsqKvQasaBCHC2s68WmtfwGN+t349tzmF=ySkuYz11HzksQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: arm: Add secure-clocks binding
 description
To: Etienne Carriere <etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_150602_215214_229A5EB1 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 1:49 AM Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> Describe how clocks property can leverage secure- property prefix
> for clocks handled exclusively or shared by secure and non-secure
> worlds.
>
> Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> ---
>  .../devicetree/bindings/arm/secure.txt        | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/secure.txt b/Documentation/devicetree/bindings/arm/secure.txt
> index f27bbff2c780..9bc94921f2a6 100644
> --- a/Documentation/devicetree/bindings/arm/secure.txt
> +++ b/Documentation/devicetree/bindings/arm/secure.txt
> @@ -53,6 +53,25 @@ Valid Secure world properties
>     status = "disabled";                             /* disabled in both */
>     status = "disabled"; secure-status = "disabled"; /* disabled in both */
>
> +- secure-clocks : specifies the Phandle list secure world shall use
> +  for the related clocks whereas property "clocks" specifies the
> +  clock Phandle list non-secure shall use for the that clocks.
> +  This configuration can apply for example when a hardware clock is
> +  shared by the 2 worlds and the hardware implements a specific interface
> +  for each world, i.e.:
> +
> +  clocks = <&clk DMA_NS>;      /* NS relies on clock handle DMA_NS */
> +  secure-clocks = <&clk DMA_S>;        /* S relies on clock handle DMA_S */

The device has to know what it's clocks are for and should know if
some clocks are secure only.

> +  Another example where use of "clocks" and "secure-clocks" can apply
> +  is when hardware implements a clock that secure and non-secure must
> +  share, as a shared GPIO bank clock, and secure world relies on clock
> +  device driver whereas non-secure world relies on a software service
> +  exposed by secure world as SCMI clock device. I.e.:
> +
> +  clocks = <&scmi_clk 2>;      /* NS relies on SCMI resources */
> +  secure-clocks= <&clk 5>;     /* S accesses the SoC reset interfaces */

If you have this case, I don't think this is the solution. I don't
think it scales well and you probably need separate DTs. It's
something to solve in the system DT project.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
