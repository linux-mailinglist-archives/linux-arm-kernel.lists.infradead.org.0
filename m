Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3FB983B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43q+iJ1os0OdxPH+USurVh2vfdhKwWQ7C9xZdegNTTI=; b=iab9lZymjE5dL3
	Afv6bfxrqjGY2kcu4wySA4thNlkc87p9OpsWgE8ber+wRDXVbji2NpIVZNeIkTosIodWw7Q2ojQvv
	Hq5qKA2UEI6n1ff+7UUoEWCYQu81YzEEzVGGgcZOFqk/Xz1PkiwbOY08qHQiHkZmXZDsZicjSmA31
	epAxt8QsJsdB7A8palEqXc0lwqRnNdS25zJnasJkJ2OCtjpjthadplYtnxArn1nPRGxOFMTby5IRb
	HYjyBooZUcl1XId5nsQiqAuLv0b4CtdgB7Q3DY8KP5ewX003g8VKILSRU3YDKfp4nCK2gBHUKzAtI
	miia8JvfVpwHX0GDG7yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Vk0-0001CQ-6e; Wed, 21 Aug 2019 18:53:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Vjr-0001BY-Jc
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:53:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id k18so3076043otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:53:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=35w30kfg8waZGig5Tgp5myLfGxs2v26s2C8ndD5dbgE=;
 b=h/jeXAwJjUBJ2iMI9NZffWX1Y1hA0S7SHwuzEIKahsRZ3VXnZ5Zy3a5Ivt6XWzZAGH
 AzCgxMkSf8oI5EAh05Fu2AJG9ot5rDy6D721lKzQGEjBUwulgpBZMWh+Vj4jBkb6NvWI
 cUIp9/Gxy+hE1XMTd2mbYvzAvj0fz90oh8p+rrI2H+EfqRmecIv0wdJOCo7VefyeCCZv
 JIzyAsAnBeLSEC1JsIfTrV+oZ72jHNvJHBuyBJnfr0mUd/L0bkEcetaOw7/ujt+9IioM
 nMEtejL3LMo1gXE6K9R80hKEGnRV1pjFJmJXuKfGsW1UDQTo1TcobSoUxLt4xidLZiqz
 b/rA==
X-Gm-Message-State: APjAAAUYsuFPwihp4hoiLDJmZJqw0qceeBtJcFn3TYHAg64D/6I3J/Ro
 dLbTMlKl6GDF4kTX6owbKg==
X-Google-Smtp-Source: APXvYqx6qzNVtFhlJaMG2/mMChFWJqtieUnJ35anReOkOofFGHrpDYvfpmmHired3qcAnjde3+xLIw==
X-Received: by 2002:a05:6830:1345:: with SMTP id
 r5mr11259617otq.158.1566413622284; 
 Wed, 21 Aug 2019 11:53:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d27sm8061374otf.25.2019.08.21.11.53.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:53:41 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:53:41 -0500
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 2/3] dt-bindings: cp110: document the new CP115 pinctrl
 compatible
Message-ID: <20190821185341.GA29195@bogus>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <20190805101607.29811-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805101607.29811-3-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115343_647883_AB054054 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-gpio@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  5 Aug 2019 12:16:06 +0200, Miquel Raynal wrote:
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
> 
> A new compatible is going to be used for Armada CP115 pinctrl block,
> document it.
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> [<miquel.raynal@bootlin.com>: split the documentation out of the
> driver commit]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/cp110-system-controller.txt          | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
