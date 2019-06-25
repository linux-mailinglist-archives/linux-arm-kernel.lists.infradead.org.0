Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F43354FC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAmoK96k1MEoMU9DzCxgw5BKqpJpBEjqYOnvUL0aebA=; b=PHaqNvhpta5YL8
	Wcp+7g9c/EsLMLtHZ4mvNM/hcpRpodZkz5HbLqbrgkIKvWbUv6Z6le5cs6ODtdkmQZ6EeQVPw69WA
	JeQT7RroLDzZ2+najG6MU8qMv/8aR3pC2NYdklZ2aee5ZLNa1uhH7qUxXsFVVH/PyhpgrtohsMIcq
	x7le89t1WJ/OdrnEUEReja9EyiModQA+4A5Gwmym+iIM3vr2EBudmwlOjctP8RgZmNoGBeu4j0ktZ
	wxxYMgLcry1KE46cawpp+LnpSaZ8qhBRh8cZHVs/Abi9c5NZ4TQzNqW/njmwrsbNTtWvlhQd+1PuX
	BtYRLxyO+AglrciCZaQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl8e-0002Fh-ON; Tue, 25 Jun 2019 13:05:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7e-0001In-MK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so16169660ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BQiQmN+UX73s7noXdMSf9H5Q+xOttJ+yhOXbh7l0xvY=;
 b=T/OPDFD1M8lE95188nc8yb4y0AV6dZkjyYgKazkt0n/Z0O4IYFOMI5CA0n0BD4xv3L
 zz9nuqO2zoPJmpE5FUSSEMBcwYGx41mnz9jMoS/310TrBcoBLFI+0ifs08EqIt6D0cQy
 UYp4euofcdhx+qjQtpgevX5h5oKKDMh/D6zpU22TByhiBMi7njeRJ6qmi6EFfoYjKdV3
 i5z7JOdk23fTHaO7rlPf0xwHcdKovOOzaDL9oBpv1swFIdP0iyaptcbTR9Houbalo4aa
 2KT2a2LgWcF7UPEwBtQUtum+vH+ug8R3cccoZt1VpDhasfrMlCwCVMb6n8Z3B7OWjc8g
 HM3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BQiQmN+UX73s7noXdMSf9H5Q+xOttJ+yhOXbh7l0xvY=;
 b=lXYofBiKTqzs3GDc4kEzwjZWX0GX1zwIPoLPHhhSwG2ruskHp+BwgX9t9P4Il1aQ08
 uSfVGjFmzev4RH5dQvMSrrPrBlHU5B8Jf5aP7JB5rABY4GESWNCMtR0HvtKAN4tfXFTB
 mnZXiR1Ye6mxZplnJLPJz6PaKbKqJNMv09huqyHBlwOPLNAQ59OkHby+LJVzUjwcjG9Z
 AOz0SkfOh1+kojyr2P1eELzQj91vO7LAn7YaVYkMQSU1CZuun5LcDG7dfg6toM/AKWLV
 d/bSKL07RXChQdXn+VVoGn7Zn37aj9CjAmlwVyYPYuvj1wewYBDV1zVCsYLlJUp+ZSgI
 jFFg==
X-Gm-Message-State: APjAAAWKYfb618jEvThnf727cv5ttSXmH54Nni+5g5npMa5cGJuQ4PD9
 i2FmYLpjqiJQpJnTOE1liIueAwIKyqaWJA==
X-Google-Smtp-Source: APXvYqwhsSI9XbR4XXZj4TsU3bT97jL2qpRdePwFgqTAkJfJjf+XJvXERIzekTFetfGz3GxXXChybA==
X-Received: by 2002:a2e:b0ea:: with SMTP id h10mr23132346ljl.50.1561467869057; 
 Tue, 25 Jun 2019 06:04:29 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m4sm2253198ljc.56.2019.06.25.06.04.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:27 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:16:56 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Defconfig Updates for v5.3
Message-ID: <20190625121656.oi47bidyhnt5aj4k@localhost>
References: <cover.1561101309.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561101309.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060430_741167_79736F53 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:14:01AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC defconfig updates for v5.3.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-defconfig-for-v5.3
> 
> for you to fetch changes up to b995421faef5b24ee8ec60d66b356b57ca0c8b77:
> 
>   ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig (2019-05-20 13:24:06 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
