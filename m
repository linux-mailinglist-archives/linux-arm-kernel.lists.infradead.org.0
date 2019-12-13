Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B742811EE7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxCaTSS4CikZ/jVakK9x1bAQeaMh3wc75MJ7Q+CgBX0=; b=u75lAGiuyzt7Zq
	NHRjhqP22IhFxCznnfbtrE1ZYjufAc/th0/s2oaXkf20UQB+PCZiyt9rny4dUapPYgZyUYOI3UEkl
	oeSCsZ6w5PZCfgO/97/WQVBv/eyu20onWMf0SqNFEyQCaYUPJgdHBdk2eptq/eHKde///guFwPiB+
	MRg1FwP8K515ZXfTuMVbAg7llVJBET+ne1rG7zRa1Sz1spfb3oxiH+3pHB1JAEub7plWZZRaoVUrD
	wnDpEUTl0u+DVFlabbFYklFhVujPWcCODdtumXk23xSOnrSS25smxia/cmtx6sxMz20wENtVVOgOs
	p5IdHqlR2K3CHXM82afg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuKe-0002Bj-CL; Fri, 13 Dec 2019 23:26:48 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuKS-0002BF-KT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 23:26:37 +0000
Received: by mail-oi1-f193.google.com with SMTP id j22so2057780oij.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 15:26:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9tBcNOCxqPdqixtTHmzQKgwSJzOr34ZtfeLXIY6339k=;
 b=tCtZD6RD8P4BpZmSHUQ0Pfknw76LgF6bZBU4VEJcQFjg4Ugc4N/a1nad7evne0BHGB
 nBkgtHvQ+SWOx6kUoBGer0l8nWBltOv+6UPHUjjqqtSeyaaD2JZdR5PcqvA7Sxs5Yjdt
 3klfy1wLasFK7+auz5IufmF9sa+8H/dlojwEL0yWmeI1qXS7LwrroF7lu3re9Arsy6Tq
 1nmouQIRlg6j/e5hqANp7kLfN60BvA6VKGQr2HZPjnPByuIxOzJ+OaEZUVEWpXab0K+q
 5+krPfYUx58Zytu8uKd+13L/uXQ16uf4l2E+tXyOsxmCIVapC3NoGkBg1ogjTTpEtZ16
 n2wQ==
X-Gm-Message-State: APjAAAU5ZQbQpY0GoJk5U1p0JENKoLphkBXJti9D+egALgsooYuX6jP6
 vSmknTz9mxiujqkJQph+hBGMsSE=
X-Google-Smtp-Source: APXvYqwNYGgD2lL8HkWOAPYgLrNju3VL3N1vf+LrHhWb+bLnt1opXtXZP9zsrWmQ8iKm2ZyeU5xyfQ==
X-Received: by 2002:a05:6808:102:: with SMTP id
 b2mr8248272oie.127.1576279595637; 
 Fri, 13 Dec 2019 15:26:35 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l128sm3844610oif.55.2019.12.13.15.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:26:35 -0800 (PST)
Date: Fri, 13 Dec 2019 17:26:34 -0600
From: Rob Herring <robh@kernel.org>
To: gabriel.fernandez@st.com
Subject: Re: [PATCH] dt-bindings: rcc: Convert stm32mp1 rcc bindings to
 json-schema
Message-ID: <20191213232634.GA21711@bogus>
References: <20191202150343.27854-1-gabriel.fernandez@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202150343.27854-1-gabriel.fernandez@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_152636_671973_17F5E5FD 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Gabriel Fernandez <gabriel.fernandez@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Dec 2019 16:03:43 +0100, <gabriel.fernandez@st.com> wrote:
> From: Gabriel Fernandez <gabriel.fernandez@st.com>
> 
> Convert the STM32MP1 RCC binding to DT schema format using json-schema.
> 
> Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
> ---
>  .../bindings/clock/st,stm32mp1-rcc.txt        | 60 --------------
>  .../bindings/clock/st,stm32mp1-rcc.yaml       | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 60 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
