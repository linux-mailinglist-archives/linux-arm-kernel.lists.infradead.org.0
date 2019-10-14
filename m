Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B0CD6948
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uH5xleK27hvS/cQDb15MD6wR3gUAol++4MR5AYPteak=; b=DdcMYcGLqe7GO4
	VGOr4bqP9CJllfgzFhcqvyoKveDqzvPR/tdz1a/b+7UpmfEql5eAdxDoOgHaADGOB79oj03x9sXcT
	XR3JkzAYml6/zuYz1SMoShyHcIXHc1HdOc7UqFcHFIzKFN+dcTfa86NnV/TA6MgAssg02wpeA413n
	OviBiDUMdWf4FFsRNEsURHAnKMHjspHtsN3kzuDCMvXCUovDC/JQ8UzhFZWujQOTehJ4RN6/zA3dM
	L2yVQGhuRPTHzb9faYkZRz9tpYctPba9daWQnJcZIKSbiyNGOt0ywgjMjfcaBve62LueLFBJD2dKY
	0Vad08rZZ/GDe13aeflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4t2-0000YT-V1; Mon, 14 Oct 2019 18:16:04 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4ss-0000Y1-Fo; Mon, 14 Oct 2019 18:15:55 +0000
Received: by mail-ot1-f68.google.com with SMTP id 67so14597398oto.3;
 Mon, 14 Oct 2019 11:15:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TiZbwsrM4/f/r5LoaJ2jEpnL+9g4W53LGZPuPtXJ5LM=;
 b=pH+nSKx1fqtXS5VrLPflpTSiGfVcjekvYXic+MTeWHM+bT7Kg2NHAhi7qtghrD6dJ2
 C29HjrXaRgNbUv0y1bNOHlNJnWVgMxwZO6XaRZAJVufS3sF9nhd953Ur8QIH28PyyKJV
 LggqsgcyH1r/YdF0c1UCEYMhfbTOurE2gGTKoQFIq66sJc9rQjUC5lGBmSGcbtglovjl
 qoT0BhBoUDLEf4Rr/d8JfzUrlJ8YJaO9gP7XL/bUATUZjJbJLL9aaRmPzU+TQTx0Uk3I
 wMb+xswarxgp/zEBeQn30bmVduBr476qpmB2A2MN4twgQETeymQOgZvM4EY0LeRAQO20
 Xa1A==
X-Gm-Message-State: APjAAAWWEi+OlzGJyKx1j2ty1r6vlId1J2sfCzKljQvqWc3iACL5VA+t
 U5mYUuOGkU8Amtnisfl4Eg==
X-Google-Smtp-Source: APXvYqwwLBpes6pzkDEJ5uGNYvvOO1uZW4E2cZtm+9i7VdKdIHpEhdpbx+gD453w2aQEhuO6bNHFQw==
X-Received: by 2002:a9d:5f0f:: with SMTP id f15mr23799786oti.251.1571076953138; 
 Mon, 14 Oct 2019 11:15:53 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d95sm6216527otb.25.2019.10.14.11.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 11:15:52 -0700 (PDT)
Date: Mon, 14 Oct 2019 13:15:52 -0500
From: Rob Herring <robh@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: add rk3308 SoC
 support
Message-ID: <20191014181552.GA12199@bogus>
References: <20191012061528.27821-1-jay.xu@rock-chips.com>
 <20191014030348.18860-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014030348.18860-1-jay.xu@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_111554_527388_11DC5135 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:03:48 +0800, Jianqun Xu wrote:
> Add rk3308 SoC support to rockchip pinctrl.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> changes since v1:
> - Add Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> 
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
