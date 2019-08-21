Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97CF982B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfTCjZIGNpdB5lTP+FA/r15FNMyR+FYJPUq49J0vRnc=; b=gHGx+9ate2tkKv
	6okc9IMlzBswRNVx0mUR/b1JBcYBKpv/pngD0esqMSiJ8KjAEckuB+QYbc06RmQuh7wxmqZjeGEKQ
	4JiihJK3Zh6Q9Nesktxnzw6cQZyZUkmeUl7Af2pYuZx2WcCC3m/h/ABd2TNb8z+Ru6hwpXDUG7Kms
	EfgXRPKh3PckvhvZkYxMoXNJ6R4CA930vrIlXDrapZ6eTEjAvTX1oRtPkATPAw3uYFwdvK2tRb1c4
	SvIVH5YhxE5EkaCXz8VQvO+zZjEa1XEVg78rWE5ujApLpTTDaGYy/jbbHZgg4qka9hZ5VaPN51eNY
	x5UuexdWNXR+bq8MEz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VI0-0000E9-ML; Wed, 21 Aug 2019 18:24:56 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VHr-0000DN-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:24:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id b1so2976749otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xj642LOUuahy+rYAJ7XSvVLcFTloxyknrp7w0AGW3JQ=;
 b=VhP9TAAcGOZmUJVMRk8AjrmHnWhVfH56wYvLdWLXpFcLzeWz7N1JvfzfQiYG6r6u40
 8VF2MneuUJDPIQXu2DB6C/zC6I1ouD8ItLWcEBBWoersl8CrQW1vES1+PcfvVkGUCDgB
 CIlZIZXNGSB+Pel6RJG4gl9HEmkAHg7hvR5pDahOqfMnXdFFRkF7FezAtqsS85/BIbCK
 +DJ1fy4+AOu2HMbUD8XVAtn4Lix/JMj6ystQcHTQAFa4/8IqV6VmDYMM6v87VB99EEph
 FAJvpfO18LYpBD3lfhDBfb52TW2cUj9kD3qtl7cQ2JaFYAji5yBqhHnpgS6mr3s5H199
 lMJw==
X-Gm-Message-State: APjAAAWJSrYLR8wT/4uTBqpj1lcCmjREzZXInp4W/kEgtZudk6EFpi5p
 1Cmx6ZyjJIv1Wmr9QKSu2RR9acI=
X-Google-Smtp-Source: APXvYqzn+v4yVCzNPWIXhmRz3AdMu+fycoMKN7LNNf8XGpK3Hy8shxP66dzdzXor5TPJ4npISlu7dQ==
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr10969493otk.107.1566411886789; 
 Wed, 21 Aug 2019 11:24:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i17sm6178004oik.32.2019.08.21.11.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:24:45 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:24:45 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2] dt-bindings: arm-boards: Update pointer to ARM CPU
 bindings
Message-ID: <20190821182445.GA9101@bogus>
References: <20190731114201.7884-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731114201.7884-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_112448_257310_0A22AF24 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 13:42:01 +0200, Geert Uytterhoeven wrote:
> The ARM CPU DT bindings were converted from plain text to YAML, but not
> all referrers were updated.
> 
> Fixes: 672951cbd1b70a9e ("dt-bindings: arm: Convert cpu binding to json-schema")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> v2:
>   - Add Acked-by.
> ---
>  Documentation/devicetree/bindings/arm/arm-boards | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
