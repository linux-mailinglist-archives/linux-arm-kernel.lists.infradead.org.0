Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B383CBBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze+2jzFPQn5bugVVuMGsaqd5v9yRi4eQMjolWYChJbY=; b=o5vS6460ywsJu0
	G85TPAGeLl2F8HA7Y+Jx0ZikcoauDklNbHOcOpP3etBiKw5qPVFI0GIc50obnVvtU0+8jGH5mwMYi
	XWOJVD6oXnBxwiPD2RsLiCEMD/ThuLUO5W7MMC+dEirmuhmgDLAay9fy5Z3WxgEFjNVcBElN3pqL5
	lIOFvhTzDQUjvqkv/oXYkTQ5SxUkY7jkkIwoZaEKYwd3ryun137pPsRFDqz0PA6UxqpUZkKiCduAq
	A/Ki1us0RHWKhjZMK/DCvevMvZkrh7iwWyDJ9ZHDqy3hkYq67Tbz6J8MdvBEmrL68YhhI4K8z8y3I
	P5B1SgJHhnAIjD6zCvxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafxs-0008Jf-Lm; Tue, 11 Jun 2019 12:33:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafxd-0008Ib-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:33:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so2755929wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 05:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=uTg/7JRU8sUAP9sX9B8uDa8ujHWb6WL/wVRCRAUyFS4=;
 b=phjikhGjKSi4pb2wHWUdw0OzLFiLWsxwJ/Sh2Wee9fPwhY3BtTzC6A9p3w6O20cWMh
 SGM8XSkFjeZmOGEhAJfgjEQikYS7VHtOP3QRqILl3Y+QQdCXqSPdNOzg1dh/rzzz7K2J
 CShcOxGi6/K3xTD6trwGA1HwXRukCQif9pi7gsxkMnP66bFM9FOEtaQS1CM8AxUKNn+2
 BugwkCJM2E5awXgKBqnZusf232XWe5RH2EgJqsUNKRNPwP5aYBC0FEasVPkYoQ7Uf0EO
 KslY2NHRsNu78ZdJ/P2Lo+5TrguVQE7xxGSg7ycI45TXJ7Zp1zKgWkl7+xJ0sD1D/sT3
 8oKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=uTg/7JRU8sUAP9sX9B8uDa8ujHWb6WL/wVRCRAUyFS4=;
 b=IUZPGk1EOYosE9xnbiBeKi3SRbzC4Lnly/XqL4jb2GW276DAANUrO+D375PmFoSoVv
 MzLZSVB4+mJxH54CUqvitOc3Ht53p4AqMwx2X4o59zblswzMhM7LRpzU/iZmqeY86u8g
 OK1+21vBDltyDX6UmoXu0Qa8ytwkFPUSU2uAh1FkzBnLlvhfeaYfRzy/6r08q6WxjSnu
 QezpC9X1e1LTKtw1F35m6ebnGhgsmJoHLYeG9SEDxVfeIITPW23Crgqxl8dpHOQ6/aAp
 YyNBlG58Tl6f1ayYuwgIF4CwKj9XRVaOgwwXtpk3DN0jPC0IPBGGx3cMaVV0n9C/ZaSN
 I+og==
X-Gm-Message-State: APjAAAUCj0xqqFjWeSKLzrrG3sgeacPQuZzvkT/WSd8a5R5hMI4CNmaD
 pJ/3KXeFkf/hO3/10Xap49P/Ig==
X-Google-Smtp-Source: APXvYqxLwUw5CKKBFj9Ct1lKarfejnmIdjY4bbArmlPVwr1dFEDnfL4CAH4jWhGtSv1JsgGBR6OCIw==
X-Received: by 2002:a1c:9906:: with SMTP id b6mr17472433wme.117.1560256387633; 
 Tue, 11 Jun 2019 05:33:07 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n4sm2205520wmk.41.2019.06.11.05.33.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 05:33:07 -0700 (PDT)
Message-ID: <f19341ab80bcba29d25c3711647d6ff7c96628ee.camel@baylibre.com>
Subject: Re: [PATCH v2 0/3] clk: meson: add support for Amlogic G12B
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Date: Tue, 11 Jun 2019 14:33:06 +0200
In-Reply-To: <20190528080758.17079-1-narmstrong@baylibre.com>
References: <20190528080758.17079-1-narmstrong@baylibre.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_053309_043779_E18AF478 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-28 at 10:07 +0200, Neil Armstrong wrote:
> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> most of the features and architecture.
> G12B clock tree is very close, the main differences are :
> - SYS_PLL is used for the second cluster (otherwise used fir the first on G12a)
> - SYS_PLL1 is used for the first cluster (instead of SYS_PLL on G12a)
> - A duplicate CPU tree is added for the second cluster
> - G12B has additional clocks like for CSI an other components, not handled yet
> 
> Dependencies :
> - Patch 1, 3 : None
> - Patch 2 : Depends on Guillaume's Temperature sensor Clock patches at [1]
> 
> This patchset is a spinoff of the v2 Odroid-N2 megapatchset at [2]
> 
> Changes since v1 at [3]:
> - Added the cpub_clk div2..8 and replaces the ahb/atb/axi/trace divs by muxes
> - Added the CLK_GATE_SET_TO_DISABLE flag to ahb/atb/axi/trace gates
> - Fixed all the G12A typos
> - Added martin's reviewed by on patch 1
> 
> Changes since original patchset :
> - Added missing sys1_pll div16, cpub div16 and cpub atb/axi/ahb/trace clocks
> - Rewrote "This patch .." in commit messages
> 
> [1] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com
> [2] https://lkml.kernel.org/r/20190423091503.10847-1-narmstrong@baylibre.com
> [3] https://lkml.kernel.org/r/20190521150130.31684-1-narmstrong@baylibre.com
> 
> Neil Armstrong (3):
>   dt-bindings: clk: meson: add g12b periph clock controller bindings
>   clk: meson: g12a: Add support for G12B CPUB clocks
>   clk: meson: g12a: mark fclk_div3 as critical
> 
>  .../bindings/clock/amlogic,gxbb-clkc.txt      |   1 +
>  drivers/clk/meson/g12a.c                      | 772 ++++++++++++++++++
>  drivers/clk/meson/g12a.h                      |  40 +-
>  3 files changed, 812 insertions(+), 1 deletion(-)
> 

Applied
Thx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
