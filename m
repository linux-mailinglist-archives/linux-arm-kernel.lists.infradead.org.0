Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7894014A76C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D74FOGpt3LzsY+fzZCGLb1qTqbLQatCg5ArYV2zX5tk=; b=kU3cnj6Yv57FyQ
	LXXDUo+AGup+UmJrZZUUkpS6qZeDe9DQ2TKLbNHCyV9aR+dotVChlgIooIUsPxZN2X8fhODy6gQTD
	gVggkVuCJS86VooVC4HIsfFJP4egYD3yt2aJrTAkuAHg1xe1T1ajsgPanFaYOTXJfjMaKetDOyWCh
	RsCAtGPD/qk61JJBZxrm1gfgDqyl+h/G9c+qd51LdO8HbcJjtZ/U9wcH5wk1I/7NkCjBdwAviXLDS
	0Jf4z2Yc6OmkUhzAYGZ4c60vyIW1sMRB/eNaMi7YNitmXO6ILBeJOoF7L2SRtcHdOYHNhW17zQkvR
	4L5XSvi9ftV2EyDTIL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6W0-00067d-MK; Mon, 27 Jan 2020 15:41:28 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6Vo-00066R-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:41:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id 66so8754109otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 07:41:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SSAka/+unOWdID+dlGzjX+fU3/o5RpQNSVZW5gnH3WE=;
 b=M7r2CAWmYcEL2a0L0zjbcGT7wGgCYrTwHIrZRcst33fT3vIVWwzhXnNlkwsLaH5qlJ
 K+Noq+GtMqvkiKGAP4nBYs5SYE+Nzim8Q40zgOP9erKTYJySXzd8NtBXHB65ut4wvKPV
 avnX9Zbn4r/pTRp1KzLJWzRgV95kx57CcRMtsjIYbBEI2FV0qYx3PaivX01bLPhiXYm/
 2plk56iMd1X4d1NNl7uf9Rz7NAdUxMcVJ6r6PUFoZPDCqqZSbY3vaRdhMynpGswZzXc+
 7srIxX3ToKaM95ESeZ0/sWpYTL56RtGOw3GjspiSrlWN+4J9HhcRc/ax0f9/Lh/hH4la
 bUZQ==
X-Gm-Message-State: APjAAAWGi02QNlBr/jCakJqRs6/kO4VvgdxoAXvoUjpEB9Q5VxFNl/m/
 3cr5EwdkYdPOYwz7d5Y7tcggG7E=
X-Google-Smtp-Source: APXvYqyFSBoR7e0fQ95loR0phVN8/LbKEX99IjMFvGvg6Ft5a0R3Rhk1dKI6rdHuGUXnQJKSH+UUPA==
X-Received: by 2002:a9d:68d1:: with SMTP id i17mr12360581oto.367.1580139675043; 
 Mon, 27 Jan 2020 07:41:15 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l207sm247662oih.25.2020.01.27.07.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 07:41:14 -0800 (PST)
Received: (nullmailer pid 6960 invoked by uid 1000);
 Mon, 27 Jan 2020 15:41:13 -0000
Date: Mon, 27 Jan 2020 09:41:13 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V6 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
Message-ID: <20200127154113.GA6904@bogus>
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
 <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579439601-14810-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_074116_540626_E52DE4F8 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Rajkumar Ayyasamy <arajkuma@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-gpio@vger.kernel.org,
 agross@kernel.org, Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 sivaprak@codeaurora.org, sricharan@codeaurora.org, linux-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Jan 2020 18:43:17 +0530, Sricharan R wrote:
> Add device tree binding Documentation details for ipq6018
> pinctrl driver.
> 
> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> ---
> [V6] 
>   * Addressed review comments form Rob.
>  .../bindings/pinctrl/qcom,ipq6018-pinctrl.yaml     | 153 +++++++++++++++++++++
>  1 file changed, 153 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
