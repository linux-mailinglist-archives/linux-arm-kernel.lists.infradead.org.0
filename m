Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A13E583CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVIa+JtVCNdQc5lNW6QhHyhIVW89dUhJxz6iu+A8Oq4=; b=totE76BmVd2RDj
	eluOahPtRIpNyEqvLcg+KsDDMUnXdqfeypjPNrLJHHdO/c4P2PPqCKSbDHCwwmHcqGmwKA2VS4cB8
	AvNs+jKUaK8IXFO8A9hXdAWmVgLW2C3b79ROFhcHKrc//gKAFDMyMbpbdLkql3lpjGVoL+ZuoAVyb
	LcOZjNdyjXJgFUBexrfD0hMErVmmeEYXfbPf6AlYBypQSrM7C7WmMmZVrlA43gguAZgc4NMe5gx/2
	A2zjqKuSwqBOtlDSQMGQdGUbosccUHIVEl2+72Lu08yUhjfQdXvUQVM5ZqAEWE3+fziCzhBiazU7N
	TsNEGnOazzSbvEjqX5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUjG-0003WT-VR; Thu, 27 Jun 2019 13:46:23 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUiu-0003VB-Ko; Thu, 27 Jun 2019 13:46:02 +0000
Received: by mail-qt1-x842.google.com with SMTP id p15so2472380qtl.3;
 Thu, 27 Jun 2019 06:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RvlLa2f6FXHpp41B30iGxN9xdJLyVpWbPdRkmCrlMUM=;
 b=M9s5jArQGsv3jFLsOazm3k0Su2Ijc3P1WDdeP9ro/cWAwLGYbv4XUsyCwC44qXPBIH
 SBTsevQrWVmbdulLcgJzJGiVpX+jZ5b16alhATkJ1j1sJI2gEaYpBBq1SyUjKJQZlb+B
 yc/jS8FJrVezk4HOhfIzhysnc5zmQh4bo3KG0ByWmNRJ+2JIgj0dhGYcajVGFmfwR27t
 hbWHLJHo6ylkWL8FJndTQTJ+4SP8RK+JmUwQysqwRAyeTZQJisNWvYcRM49NEzSrwxA+
 Ha/oUMqwW+h25eRehXb5Ew6yRYt29oG5OLcAk/AFlw4gJIRHqCnP+r8GbfB3/8T5J5B/
 irZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RvlLa2f6FXHpp41B30iGxN9xdJLyVpWbPdRkmCrlMUM=;
 b=KW5/Y31RvUS2oQNpffF0HBD3eCaVR0ImGfqy84jbc2pM78qm19sd6cZovBgpRvKL+9
 Cdnmj+GGW9VRYOmFS5RDCtv5Q6+hSyRj19g66s2+0uJi5FZxsgZ/661ghDup5Fbulvw6
 Rlq7lG3hY9Qa43AdHjmH/kIIM4+nSj2cYE8zp8mkxc9ZghKEo02yNeImK5NKga8IIoGE
 ULpPPQWkG4rscCu32aB0uO1zdZk5oEEuACovmnsNKLKcYiYfprjMNS0oN/QW7eXmkBHK
 N9dPCopiGT0RHTqab2huG5j8sCdS917osPcqVtQXVevw9angX9WhxfZVijCMDYcwp+OG
 cuqg==
X-Gm-Message-State: APjAAAU0jd1KdV3JisKK44omHPioy7mp67Nv6hNdOcar1jON4u1fkXmo
 anMpHj8g3pIcQKVUUa9Ovno=
X-Google-Smtp-Source: APXvYqyhMoXbBadlv3aGIW8CDGWxS2SVIQP2MLynVqH4G4BIBYr3VYanG9PLF35D+hUOSanOADREqA==
X-Received: by 2002:ac8:4705:: with SMTP id f5mr2976812qtp.99.1561643158801;
 Thu, 27 Jun 2019 06:45:58 -0700 (PDT)
Received: from ubuntu (ool-18b82048.dyn.optonline.net. [24.184.32.72])
 by smtp.gmail.com with ESMTPSA id o12sm847801qkg.99.2019.06.27.06.45.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 06:45:58 -0700 (PDT)
Date: Thu, 27 Jun 2019 09:45:55 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Hugsun X99 TV Box
Message-ID: <20190627134555.GA25086@ubuntu>
References: <2273961.GTPgWWlV5T@phil>
 <20190621205308.5177-1-npcomplete13@gmail.com>
 <3247989.aGYRIomCNH@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3247989.aGYRIomCNH@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_064600_703963_049384C6 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 12:38:25AM +0200, Heiko Stuebner wrote:
> Am Freitag, 21. Juni 2019, 22:53:08 CEST schrieb Vivek Unune:
> > Add devicetree support for Hugsun X99 TV Box based on RK3399 SoC
> > 
> > Tested with LibreElec running kernel v5.1.2.
> > Following peripherals tested and work:
> > 
> > Peripheral works:
> > - UART2 debug
> > - eMMC
> > - USB 3.0 port
> > - USB 2.0 port
> > - sdio, sd-card
> > - HDMI
> > - Ethernet
> > - WiFi/BT
> > 
> > Not tested:
> > - Type-C port
> > - OPTICAL
> > - IR
> > 
> > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> 
> applied for 5.3 after doing some reordering to make things
> alphabetical.
> 
> Heiko
> 
> 
Thanks Heiko!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
