Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB0BC362B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZ2nQxTorIdBP552xOWbUUmHMGDr5Q1XqpO4gBDX0EI=; b=bgcSkIKD1Tsx3n
	PozVJR+I1sLtIB5gZnUz3yoLaeSuzqO+GWKR1iED9rTuDNwB6sTRoHpdq6HKygj0fntLtk8CKitKs
	IW47GB/N8mNqZ5UtwQS7i+pIjxUMQ4nEhffd7hKLl3wPlUiOcTBFMl1VtcIkpYzPG7E3DWPepeuyw
	HiS8R6MBRgpeUH2bgu3cHpToFxvQfBHfl4ciwvKql9wMTT5ic269XHIK/rq1CJR/388Lg6qkjwvIc
	77kUjidIVSz5Fj4Sue52pv6YRGPkBRAtjKinMZNjlZzh1LkSaLE7N19ywc4Ps3OrxrLsQGnA77qpI
	GzX2zzrMQyO0s/mmN0aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIUH-0007U2-Up; Tue, 01 Oct 2019 13:46:45 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIUC-0007Sf-45
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:46:41 +0000
Received: by mail-oi1-f194.google.com with SMTP id t84so14415527oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 06:46:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7Db/D52OR8qvk1x6SmwGs6HmPRhnzJN5DgDvNqwdXBU=;
 b=uJKCEnH6cF459WzEa42DC2wcacN1n2SNhVeCHhqERsiWl78Ad5Rg6FZfdOSur2bhIg
 tD+hT/n1I9CHjcQYH7kaudqMrIdIJzqFiTjGbpG8E+5fb+H9gO8tkbPt0qIDMCkFGC9D
 4IVPMCJMg1oWQJQk1GpbuqTIUT7UDJ5drEbA251DjjBwTA3X8cFp1fl88tLKTBVwVrh9
 xRC0oKdxeodQH91YndR8h7MEvI+GjMde9h0tOcVvi3BcY+HxdII/xatIm4nQ+GhNofgZ
 XOuD4SAY+wfpPJDz8qzLC6uu3qdIy4XljWKSgzkOFso+j5BL8bhLzmzWpj8inTlNJ1fY
 QnpA==
X-Gm-Message-State: APjAAAWOcTLzea9Ek0FV/PNzsOhAbtovVFl/AUYiN0gNRXvuk4VCE13G
 GzS+pA9yFsQTgPFDpx2pFQ==
X-Google-Smtp-Source: APXvYqwhBrdUz7WDdxqtLyElalQ37NxNI4bFYk4pJWgqPgK8hRBtijiM/MXJh1P47UD8Fpz68iGkxw==
X-Received: by 2002:aca:7291:: with SMTP id p139mr3805492oic.53.1569937597112; 
 Tue, 01 Oct 2019 06:46:37 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u14sm4788587otj.61.2019.10.01.06.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 06:46:36 -0700 (PDT)
Date: Tue, 1 Oct 2019 08:46:35 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 4/8] dt-bindings: arm: Convert BCM2835 board/soc
 bindings to json-schema
Message-ID: <20191001134635.GA26744@bogus>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-5-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569672435-19823-5-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_064640_168536_8290DDCD 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 28 Sep 2019 14:07:10 +0200, Stefan Wahren wrote:
> Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
> All the other Broadcom boards are maintained by Florian Fainelli.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 48 ++++++++++++++++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
>  2 files changed, 48 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
