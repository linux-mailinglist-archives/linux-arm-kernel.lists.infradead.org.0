Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC791CEF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZGQBVlNmF3WFLzaPHwXm4EV1ZFO8Bx5lZKgcoTcgrc=; b=ARCPmYjFVwG9uY
	4ECAoTtY1+wt0wnM6vJl21JHXqikb2VPyMjhCvSTxzTYV8LXxuB1+v5hXtVyfrl8x1/ATTcEm9+oZ
	/IxCA+GEE3X/KW15c4OMT7tjWHAEbpE5szHINhDyQz3khd2JpzLtPxxPPOjA9U24fSij8TIXwil0+
	zGs5tKQy9dIGGC8QyaI5m8OIKHd+ev+WOT5adkRoAWbnfWsXAW+CCiqXRGqZmOMA0gAo626aobPrV
	HkpWVCl6DJM8032+E7ViZtbhGy+Z++WdEsArvWX5oHArp2XQouV/w1BVLurO0efXsStaKcnrT5ESX
	aDzOxJW6lKGY4Djw48jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQc33-0001Ig-KD; Tue, 14 May 2019 18:21:09 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQc2t-0001Fc-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:21:03 +0000
Received: by mail-oi1-f195.google.com with SMTP id r136so12869293oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 11:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pw9JQbzKS0a4HXNL7Bkj2dhXDflsHMPuLdGRZTT4jqU=;
 b=IdRe4iLfIvZ89nxUhGZIqviY5ospILBgY+T6xe+OM9X49W0a2w4jEnbNWQrvyEBJfg
 ky/cmcvM9JWdt4Ntj9AGMPiCcRkmxpedFkpSy1KHw+49ClROGUHjz0wrJIRX+5Ao2DjU
 oUh0HtvtAlTB/qytWQWrILheE45Y8u6alXhf70BEiwvNM+FT2Asnltn8TXxWo9xD5Z7H
 +mXmk6a6/Mk5rOFYjX/SVsiM2PPcW3BfPOTvDdrARZZa6YK4BWzLs+gw/kUHUN+qx8Wj
 +nFVZIZGApNtNKSHJ/mCqto0p49RjH9zkbzwl5CU4dQCSOcJXCYKesQ1pmBk6HCTaRI0
 0PPA==
X-Gm-Message-State: APjAAAVB0cycK6r5IPkDI3/K169wUmjPTZPgAftOsVycmxoh1YTNB/qw
 wLzr+FZMX78MJPAnt+H85w==
X-Google-Smtp-Source: APXvYqxZeCsZUomLSIAJ/MyTJbnDCD5r2MgFiIhPMfVTTg2CPXMGsQkk5wZZ/VGWG2FzDkYqmDF21Q==
X-Received: by 2002:aca:7297:: with SMTP id p145mr4065474oic.87.1557858058769; 
 Tue, 14 May 2019 11:20:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n95sm4392204otn.73.2019.05.14.11.20.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 11:20:58 -0700 (PDT)
Date: Tue, 14 May 2019 13:20:57 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v4 2/8] dt-bindings: remoteproc: add bindings for stm32
 remote processor driver
Message-ID: <20190514182057.GA27475@bogus>
References: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
 <1557822423-22658-3-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557822423-22658-3-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_112100_012701_8A8EC467 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 10:26:57 +0200, Fabien Dessenne wrote:
> Add the device tree bindings document for the stm32 remoteproc devices.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  .../devicetree/bindings/remoteproc/stm32-rproc.txt | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
