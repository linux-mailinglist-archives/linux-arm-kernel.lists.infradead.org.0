Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCAA170B8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMwYBv0QjfPqUK2PfZNBHTgM9L3QzhKAxB15aipCtFY=; b=VXwewK2Bo9Gklu
	YQTjA9Y/3ar42J+0p+a7BqrwLAcHB5v1yfDuLJh11BNklttzyfi9og8aVAyfISyN3o6nfoV4QKBK+
	R7alefTXclD5vJrZZo5rQ8LYODalMac1WJpnIQiwcrqlM5p3pxJH8xQ4djI+APWL7XCLbqL3+POR1
	dEGAX3yZRTI/GTIKNDFTf4Wn1hW0pOblOpWQFKOrVR2Ak3RPCaKLPV6s0Um5oLnZ5cvrXhCDN58yH
	MGW0RHRk7XHPTMWPFRbUC4g/JSe4KzuXk9kIqMTqLve8tdpMzj/odm4qrgMdjxr/MpV37C/zBE/WI
	AFyCoLdi5pCwE5yCJLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j758T-0006r1-2O; Wed, 26 Feb 2020 22:26:33 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j757z-0006AT-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:26:08 +0000
Received: by mail-oi1-f193.google.com with SMTP id l136so1263959oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:26:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UWbO1l0dKYrwXhur6BhA0nbAdawh07B/aU89gTQHOJU=;
 b=QP+c+9/lb9XwkzCaYlnQkeURRJqrwrGXLHX2NMvmP5WjKqKeYrX8VT5DFIA1sgpxyC
 ZqzAdxVKcGmq4GK7yUm7Vo5riSMvdD20+RgxQtZB8fbGFg+zoBWVDlyFO/qkj9R5mGdl
 w6FqtPIUr88j9zM4Tr2jHWPPWjDO5tBQrYFtWu8UQLUvWoUrm7RJJIrJavE4vDhO8DyL
 AZkgcYNGBozzapPKg6EhqU1P3QYxpbR30Idvx4RCzOUl210G8w9nGlKrKWo/Hx7O6r3r
 OUIv4DtqtK0es5IlRJCkqtPL6Ikc1DnoB7+HFKtIx9jBI8joaTpJnkYoIUUmh7HdTOPn
 J3ZQ==
X-Gm-Message-State: APjAAAW8+X7K/iu2sgUDjTJNqhbQ+duoHyi6YuLt+8hWU8bObB89oTQP
 ptZMB7c2Q1XmJ3G6QkE/6Q==
X-Google-Smtp-Source: APXvYqx9QlL3+RzQlSfMukZq151Bwi6bn55GU8EJxQB41VDbp0tf0aW65Uy6p/nC0ulip1LyOvHk5Q==
X-Received: by 2002:a54:4091:: with SMTP id i17mr1023289oii.99.1582755960672; 
 Wed, 26 Feb 2020 14:26:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm1241692otp.14.2020.02.26.14.25.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:26:00 -0800 (PST)
Received: (nullmailer pid 13339 invoked by uid 1000);
 Wed, 26 Feb 2020 22:25:59 -0000
Date: Wed, 26 Feb 2020 16:25:59 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for
 PocketBook International SA
Message-ID: <20200226222559.GA13288@bogus>
References: <20200223031614.515563-1-megous@megous.com>
 <20200223031614.515563-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223031614.515563-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_142603_787111_1760FD35 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Sunil Mohan Adapa <sunil@medhas.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Mark Brown <broonie@kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Feb 2020 04:16:12 +0100, Ondrej Jirman wrote:
> Call it "pocketbook".
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
