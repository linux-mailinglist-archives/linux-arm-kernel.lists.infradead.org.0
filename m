Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF459122B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WNxWIpIP9W7Gs5m+GlQfLKymIChT3CD75Msw1kIwyQ=; b=Z1X152WjdU5cA7
	Ub+oPXxbyt31Qvkm1UT6biiFT8JtEtSlnffwTxPZ43Hxl2wHpkCIC00QCESVcq9wSTv7lrQDg6saG
	gxGeF4dS+rWasLjZvi6CzozHKbJCEiG+N/c5t7XVIjHEXNT+cjqtRg0vppZHlyllZVjXvYpDufubu
	0ek4rn4lWvSGAuJhuPbvZVST8KfEZfFvwO5aGK+Z/BHRjq8J5jBVgQHhQyWgRTEXEfYg6CuO/kz5V
	27/mNL/KiG+xR9X7Uu/UiwMYPFeGXI0jq/2ww4VS42yFFu59f1h8oNUIl/Yq6ZSdbYPAmvlXBtVCh
	ei62MIvBjEItCvYi+BJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHfD-0007HR-IZ; Thu, 02 May 2019 19:46:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHf5-0007GZ-W3
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 19:46:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so3201023otu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 12:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wxtOkr3KGpgPZTAV1KtJFXkUF9r12ab9Mq01prC07Tw=;
 b=qZMKMGWtbNnPOWmZVshQ1dX1/sYRtelQuB7vkS0Jz+fl0jFuOMHDxB/h2pCo/+2i4q
 inEM75RVI8lNS1dntMtovOp3ZfSu0L6eCeGDHRu0xIDVk258RWuabz0+hzd71tyg6yyj
 744nZX46n2QVsoZWdcTDNYl7smuG1OL5HtXcPtH0Q1gRTYrV72dJtVyzQdrrLxvRUqqk
 FYgykQR+JaA2eSydxOJnMUxXLy/9R1P0jcEyLaQ9dtADfdnxXVIHTSkghgOt9ZqqZ5oq
 orD91IPHzYUVjnWfnRC1dVotdw+FwPX0XrTjdQoe3IF6LHjuwAm9oSV7gDTNMwHRk4gy
 +sjQ==
X-Gm-Message-State: APjAAAX91gqQNgSDTFlUO0MC+ofLEBs6zst78f/t0Vh1jvpUJZgsKUSd
 PrhERcKEOnruzlUM2O6Znw==
X-Google-Smtp-Source: APXvYqyUqX9iXXgB8ggvWLANR9adKg4zUX0xV1DSbc275Yf7NL+qswC5/uihS1/Ue3gGOap5UosCzQ==
X-Received: by 2002:a9d:4002:: with SMTP id m2mr4021772ote.325.1556826391290; 
 Thu, 02 May 2019 12:46:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u22sm17078072otk.49.2019.05.02.12.46.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 12:46:30 -0700 (PDT)
Date: Thu, 2 May 2019 14:46:30 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 3/7] doc: dt-binding: ci-hdrc-usb2: add compatible string
 for  imx7ulp
Message-ID: <20190502194630.GA20293@bogus>
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-4-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428024847.5046-4-peter.chen@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_124632_027676_2E128C95 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Peter Chen <peter.chen@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 28 Apr 2019 02:51:20 +0000, Peter Chen wrote:
> Add compatible string for imx7ulp.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
