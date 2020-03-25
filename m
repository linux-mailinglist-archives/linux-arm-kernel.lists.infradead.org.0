Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B0F1921E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 08:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBAyrO4Wk+ntAntpNqIIyKxOccmxAwq0bX0sWWbvJHY=; b=DG6YIcRZU8hT0o
	Wi/3L0T30HkLH9yfsLMyhkB2eBzg4LFagpTPd2YGPPL3i81ioWlF49W/QgZRA3wRjbnsxG7XHCOlC
	yMtMFN0itd8Opm0PjSMdjmZoRPzcSk16af+r909ZrK5K6YdWS4ZG4eeDY6rBdTIGqVTD4quottLx7
	m9qMvsZYzB1dLY1KTmVC+emT390/FnVwsw5nUWDvpkEYHqFCyB8ojbY3zM8hGMXtk03L2ZwJcVqzK
	wU490xekuTAwcbLKY0SfUPt4UYE0Lbv8sqtGlvMo91/9U7x7+ZWYOQdlY6cjYsWQrJCb/fb4jlOzw
	pj3HADEk2gHmsuAWQblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH0kn-0001bQ-7Y; Wed, 25 Mar 2020 07:47:09 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH0ke-0001as-Be
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 07:47:01 +0000
Received: by mail-ed1-f68.google.com with SMTP id a43so1219733edf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 00:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UaBcRiu0jhd+aZ3qoAfM9Jyg226NuZ7pG6QSrBAUzKE=;
 b=URd0sNMutyOTLjSGuecvy9M2kwS1f3C5RFhaw9RoPBFY1toRXo6UQL72FRqA2cxdPD
 6H7Nv82vgmmZYLXOPui2jv5Qr5+6+nQQV7xh7sK+vf8ogXazweeyKzxj+23jIr2a3oRG
 GU7rARJBi8FfArYd6IXTNQfrX3MzFCjmVtxIcnPgZ/hh4mcz1T7Gg1Uo3TF7JvMiw/i9
 VlXL2rSfaBwwe8FxIYpMwYZ2YLTBdS+VQ0ibqXtSPrV7i5UnBP7UPzEUpoPjWFSwPpyt
 9imBuWAfW26WqEOy9Xyl4fbMnO7BN1kVs8PYa/Mf8dT898b+6mMW2LnQuh14vKBxTCRD
 3Vug==
X-Gm-Message-State: ANhLgQ1yPmhNZt2TxH8kppgWxd6pxz3FEpZ/I8zU7kZxPppIBgnuXoZI
 ZvQhestqsCx1mOrGVYQFuW0=
X-Google-Smtp-Source: ADFU+vtMcCFFhN/9DmhxAFJzYhIdK+iRP4YL5ukwhPlffOfTndxsoNgCwnBl7CzNaMJbVvRaQUDS1w==
X-Received: by 2002:a17:906:c4f:: with SMTP id
 t15mr2040012ejf.193.1585122414316; 
 Wed, 25 Mar 2020 00:46:54 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id b5sm1497332edk.72.2020.03.25.00.46.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Mar 2020 00:46:53 -0700 (PDT)
Date: Wed, 25 Mar 2020 08:46:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 1/7] arm: Unplug KVM from the build system
Message-ID: <20200325074649.GA4640@kozik-lap>
References: <20200324103350.138077-1-maz@kernel.org>
 <20200324103350.138077-2-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324103350.138077-2-maz@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_004700_400058_7819F679 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Yoshi <takashi@yoshi.email>,
 Daniel Golle <daniel@makrotopia.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Marek Szyprowski <m.szyprowski@samsung.com>,
 Russell King <linux@arm.linux.org.uk>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jan Kiszka <jan.kiszka@siemens.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Stefan Agner <stefan@agner.ch>,
 linux-arm-kernel@lists.infradead.org, Quentin Perret <qperret@google.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Olof Johansson <olof@lixom.net>, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 10:33:44AM +0000, Marc Zyngier wrote:
> As we're about to drop KVM/arm on the floor, carefully unplug
> it from the build system.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Acked-by: Olof Johansson <olof@lixom.net>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Will Deacon <will@kernel.org>
> Acked-by: Vladimir Murzin <vladimir.murzin@arm.com>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> ---
>  arch/arm/Kconfig             | 2 --
>  arch/arm/Makefile            | 1 -
>  arch/arm/mach-exynos/Kconfig | 2 +-

For Exynos:
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
