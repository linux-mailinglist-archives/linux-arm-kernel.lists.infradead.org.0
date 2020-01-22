Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1AD1459B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j2F5shtNIdT+icdcHCy0LjH/S9Hlm/jyAwQk0o8UNE=; b=TxYZWwtnfJXBlZ
	2lu/MU5+Hi1Ucf7BPtcq9iG3fH1yqLaVwx4sZnZlEa5kAIgWXQGlXOoPh+tVedgn0BcZC1hG5k5F4
	7WPaMur+phvz+9d4qZpoinTjS9I6EvjIiTO7qKS/Ka+H4vm4Bi6peZXE1ecstiEggEeFp3lEmAwvh
	96CZTOqFjE+N4d9zw4T83ikxVxSnF4Ydtuh6417da+h5kqcCYX3nN1mfatiYz9J684kSI3/1DCXzm
	41s337UtQEPC+Unm8QmJyY6b4MCduVs1XW3wH7jU85KN/CKnoR0cg4cXGMGFuUVBGMQqcckY/q5TX
	yz/b+Zek7mbQoTf5TgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuImf-0005F8-3W; Wed, 22 Jan 2020 16:23:13 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuImQ-0005Dk-Oq; Wed, 22 Jan 2020 16:22:59 +0000
Received: by mail-ot1-f67.google.com with SMTP id 59so6744507otp.12;
 Wed, 22 Jan 2020 08:22:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H48xzwe81R+26WhYO3nqyiBO2COcYsRIJ2Nk8wvtWJY=;
 b=Z7IIqHN3fqpv76a9gYrZp7YJgdlyN9F2FVGGp73wS0AJvDAP5oph/n4/vxWC1t5sCE
 eejZeTVK9Q0bh+ID/wmjpHl0ZDs14sQ1UTscX5uTOezINvE5HvuadmVnmpaHitIGG6C+
 5D6POSpQ8rtyUX6udBH3i2gGUKhFT/Ha0sPxxvOT1GT+qAjgHteEHxC4lTVcsw0dIAjC
 APQ8ZSgLIpUrW75+YU6XpPJ0b57ngH1az7aIiKhDfqL3UNFEQeARnD/9QREaSgZplFCt
 ekI3dTxkjf/0NtWn7p1CbeX6RCG9HsLChSugPBxiU/5jcoen2HCZPMbZ33IyAt+J6pUP
 cg5A==
X-Gm-Message-State: APjAAAXcYPM9YwpFQq2RO7ag08BYwFFm8xLnli4LuHiD6yOpZK91y8VP
 qQnSLgkw9cq/P12CgiTUiA==
X-Google-Smtp-Source: APXvYqxcjr0sfIFeNw2oiHRfxPjHsDbIHqrW5Bh7o4c21JY+hP+yL3lpp4Zd3t22QZ3ST/gX2WcF7g==
X-Received: by 2002:a05:6830:13d3:: with SMTP id
 e19mr7921563otq.135.1579710178117; 
 Wed, 22 Jan 2020 08:22:58 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g8sm14627581otq.19.2020.01.22.08.22.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 08:22:57 -0800 (PST)
Received: (nullmailer pid 7491 invoked by uid 1000);
 Wed, 22 Jan 2020 16:22:56 -0000
Date: Wed, 22 Jan 2020 10:22:56 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: spi: spi-rockchip: add
 description for rk3308
Message-ID: <20200122162256.GA7429@bogus>
References: <20200118230848.15326-1-jbx6244@gmail.com>
 <20200118230848.15326-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200118230848.15326-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_082258_802927_9A3778DD 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Jan 2020 00:08:47 +0100, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-spi", "rockchip,rk3066-spi"
> for spi nodes on a rk3308 platform to spi-rockchip.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
