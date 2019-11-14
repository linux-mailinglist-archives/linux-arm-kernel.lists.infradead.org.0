Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66388FC63B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NuQi9YWaLFoJK6mtT25nTsbUBfIshTM5q3OjF5nAp4=; b=m23yeVYPfZUYaK
	fenwcjkPtAh4NE2bkl+8ckt5ldj1/zq818SSx73S8FjdhH5ugaciJjPugRVDulRu+3MPj5h8wOYbi
	fPbyukqqIbLr2N6DZxw7g4vyXItWJkxRrBfC8+S48MyS9/kTpTvGOEdwf8Cat+u0VH2DrKxGKL6MY
	CCmof2i3UYcm6KtI1ZT0e269qKGBZB/yK8n7GJaZ7FihvhKsHNhorJ2ajEW+sG6m6kq3ADWDHW5DR
	3S6TV93k2CM2YikE0fMp1H3CX5Afbf5tu33bmYwfPXP8QkyacDcieaSCRpI9DTDRGjHVpvOqcM0fK
	yxTHjN6JzZUXrY/1aHhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVE91-000796-Ke; Thu, 14 Nov 2019 12:22:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVE8u-00078a-FF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:22:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id f3so5653821wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 04:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8bzVgw88CaLy2KUogwITc+dBMd5fiNXna9S1N2mnVQs=;
 b=X/3xPO5kuNrBJLKweoYmYcyV8zgmox/eflPhHwsYyXS7FILfmGbQgR4HDTanXXJT2z
 cdfY65Mu6DedGpHOS6jdMXRXK1WI7U6pGhqmAcN5GDQOPrhCLiqgIA996toqyUiS5svY
 AdpWBzI74pB4lhMhd1s6OzuxLCNzSQDRK+g7vCWBsu7PVyCoUrbBlPhZUwlMRvyRbDRh
 q9GmBslOQBthGM9f6pLnp6HupTVFxlWHg6/8KjsKlOhL+m2hTxDhMsUm8YKc6an1iw0I
 z13yn63SLPoqPN88ZXRzZ3a0bqxUx+NnqcANLWRNr9ah6pTibe2jsH5Jb0stN/hFzIHr
 LW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8bzVgw88CaLy2KUogwITc+dBMd5fiNXna9S1N2mnVQs=;
 b=sCNLe9O3wltZFIGWCwibWwx+9P75tTgwJCU+5fba1KH9F5MhI2H0TzJNPDMr+p/PRL
 kZjcsdiMMmKU4GGQaKQREbXeVg9DtXu5FA9wUdCGLODrOyJHJH8Oe7CV8mW0dic3Lkd6
 SBcubXg7X0dduT3GVXJacK+3pg/3W7m+hohUQ0Scb/2+3Ni8Hns12kh2FWlMDYljCVT8
 9joAjI1UMauTGUENen6hbFhzAEM1gDnib6N++gXK7Wp2UJYGf00NX1497H0TomW4xaFC
 dOPKRlvxGML/6sbxBNGQkerom+5F27ETIS9UBVW4ht4W4FQJwewhH4OiN2M5499NVI0R
 Pmeg==
X-Gm-Message-State: APjAAAXlbOlzxYQR4SqSQl1teHQB5wtNb4j/Mwg9fqE+rsbnHO910nar
 FN3gNI22eqHQ2W7NxdHno8c=
X-Google-Smtp-Source: APXvYqzq0axH9K1SI9aOBmROdq4m8CEr9kfWQqSRK/gLkmHzB7mxHgdPrRx65210ZXzqZgEsaNpR3Q==
X-Received: by 2002:a1c:dc44:: with SMTP id t65mr7881852wmg.169.1573734150490; 
 Thu, 14 Nov 2019 04:22:30 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id 76sm6493422wma.0.2019.11.14.04.22.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 Nov 2019 04:22:29 -0800 (PST)
Date: Thu, 14 Nov 2019 13:22:28 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
Message-ID: <20191114122228.GI4147@optiplex>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_042232_533287_4F70C29C 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/09/19, Dong Aisheng wrote:
> This is a follow up of this patch series.
> https://patchwork.kernel.org/cover/10924029/
> [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
Hello Aisheng,

will there be an updated version of this two patch series for recent
linux-next? Then I can test it on my two imx8qm boards.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
