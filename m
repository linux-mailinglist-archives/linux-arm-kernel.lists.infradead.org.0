Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D26C8B12
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:In-Reply-To:References:
	Subject:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QR+YjlpyOkMbyR2+sHe7x497fDdBXaQEsAYTpDi2F/0=; b=QaAZFPZ5OZ9bLG
	apudp9lTzvMbMjEjs9F48vRxYM/mynmDUB0ZL/B2XpmMZkEbo+kqZxhwWBnrQMY9Iv42RyF/c+ZRI
	0KXD52q8V7ZvjcP8PWEyOSeIjbd7RlE0mDCNlzPPfiEszr4EJb3atcMAan65MYY4gl1XeSph/czKv
	+SCaMBhR9mLPAvIhasJf5G9nQ1AVvKQGbI2tRggqptSM30J564BSVQbCCoSaRhJBhI+mRbVP3hq65
	v+yPUl8ouIcfly43dVZ4mpVNiMDoCtKNs6IBWlAa4bxha10JRp3YgY5JCoRTUuJF/Bdle9oK9vmkp
	GH8n0uRd+xbd7rsnVOmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfTu-0002nk-02; Wed, 02 Oct 2019 14:19:54 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfTN-0002Fr-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:19:22 +0000
Received: by mail-qk1-f196.google.com with SMTP id f16so15119552qkl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 07:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:mime-version:content-transfer-encoding:cc:cc:to;
 bh=z8Shi7iPsdT4yk/0Roav1rVtwwblOxfkO9UncLfj12Q=;
 b=AGyFrN00bf/1YyaP2Cci/N4DUV3N9oonvEXYNtWUGKtlHG5anpClZTZ8y5mp/Y/uSU
 99/hoygiN9Ve2+xONZ7KNFjIyz8lVrtHpefUBkHC5MiQsHRoHbCvOmd/RWw47Zd3U3Cp
 FCdGY/9rHGj1m0GlezfNWKksRPCM4ndPxsjYvO7BEDTwclHWB4TBZOEW9yJ88PXy4/Oa
 ILQnrg4Zksf617i6RssTYk3zDXJ3DAK/YDXjSBM9zLKA/y2ouu32FCDA4o2iVO60AmJT
 pkJD8GueYfiTmJk+9wv1jIH82nknWEyVPGmk+VhE4KcpCRrll1GHdhy6WGLTc5fkiIlI
 zIig==
X-Gm-Message-State: APjAAAVGpEvmju1FsWq3UzsOZiPbIBLc3asnmvB+j+uc0wmoDp0z1hVJ
 aCafbMgj6/0nf+q+X5rXzg==
X-Google-Smtp-Source: APXvYqwX9sEGOCjd772Os8B5bxoO/qnVpokJm1RsuGpcikqc9bd2tVQI/70fY7iwbTBKnGQ7rUo9qg==
X-Received: by 2002:a37:68d3:: with SMTP id d202mr4045244qkc.62.1570025957013; 
 Wed, 02 Oct 2019 07:19:17 -0700 (PDT)
Received: from localhost ([132.205.230.8])
 by smtp.gmail.com with ESMTPSA id x33sm10486592qtd.79.2019.10.02.07.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:19:16 -0700 (PDT)
Message-ID: <5d94b1e4.1c69fb81.63a32.683c@mx.google.com>
Date: Wed, 02 Oct 2019 09:19:13 -0500
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/4] dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-5-linux@rasmusvillemoes.dk>
In-Reply-To: <20190923081348.6843-5-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_071921_628028_6C33172D 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: , devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 10:13:48 +0200, Rasmus Villemoes wrote:
> We need to increase the pwm-cells for the optional flags parameter, in
> order to implement support for polarity setting via DT.
> 
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  Documentation/devicetree/bindings/pwm/mxs-pwm.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
