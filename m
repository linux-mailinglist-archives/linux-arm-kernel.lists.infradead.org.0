Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF9D154D7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJhtJxC2HHNbm/EiXuAQgey0ibiNtfWGOGA37HsHIeQ=; b=QQh+5Y53P+1m4K
	j9oDvGSc55tEJw2ZRRxhWC0g2ynPeBP7mSzLeDeD8jlBvqkyUq0vxfwLi1qKq/oVcP5ZtGqwnjq8k
	4P8J+Xgcs57is4rzXaw/gmyHYLdtmDe5iN3HicmK0sOY0Kp6vGV//JJbUNKsgJxlAOcYxrlu70vUl
	yz3fGMJ24xp8UDSOkW1Y9BMbgkIVp4ZLgjUh363663tBDGisJ6HoXaniv9KtFgmkpxkfIIJWcNkmQ
	ai2qrtAO5V/5x2NTIvXSfbOWOe2Pl1LQIF7Yyqg/TWptz99E5qDpQjZy0tE7kbF0wIerOMN+FIL/y
	cpU5PZc/l6Q1n3uYcMGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo3Z-0000cj-No; Thu, 06 Feb 2020 20:47:25 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2N-00082B-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:46:13 +0000
Received: by mail-pf1-f193.google.com with SMTP id y73so61571pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:46:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zUJVXEe9nmb8lzTi4rWGnunn6uT7SLbqo7l18w5TMkM=;
 b=Ab0NszKnvmyjvumvIlBNTPb8gxT2xj97OGU5Z4lX+JRaKhfkeYG57Ykfatw/PbEKmz
 snyG6E5ADraNiwqWQN0YZry+VKGK6p12r4T1DtqJ1wK4aExe1mtJf4TJOmIVeFO42lf5
 IAJbYAjv+DKBWm9XGkvw/o5FQcY6sDTb0ehy0RzpETZSiflNlvwm+ENcfGP40d8m9T8L
 8At+xnWK1wiOeKOcoBcBSUbw+YvG2vHLpamjHxQ8355s+brPx3979eeW0DumxyAiL5Tj
 eoKOwSBkXNUDskqIbg2PXa2UsHA8CVyyv9gJzjstqjdLbxdKZ6l9O4hxrSLPyPh0nR+W
 jVsw==
X-Gm-Message-State: APjAAAUxATYb+zCqbEa9ewo0Giwt4pbwrFvBvb+E3RD/IRxjJp7YaCDf
 5VV1h+oO+p8Rp4PIjc88wsDsX/54sw==
X-Google-Smtp-Source: APXvYqwPyQbSQo7BMvabDsbXOSck7ihIN04c3RRAFzLU27liOcRjuh4U6Ul11wxJFT9owm46O1L3Mw==
X-Received: by 2002:a63:e04a:: with SMTP id n10mr5591161pgj.341.1581021970134; 
 Thu, 06 Feb 2020 12:46:10 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id v10sm292858pgk.24.2020.02.06.12.46.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:09 -0800 (PST)
Received: (nullmailer pid 11196 invoked by uid 1000);
 Thu, 06 Feb 2020 18:39:05 -0000
Date: Thu, 6 Feb 2020 18:39:05 +0000
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
Message-ID: <20200206183905.GA11134@bogus>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124611_877465_CC024025 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  1 Feb 2020 20:59:48 +0530, Sai Prakash Ranjan wrote:
> Convert QCOM watchdog timer bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 ------------
>  .../bindings/watchdog/qcom-wdt.yaml           | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
