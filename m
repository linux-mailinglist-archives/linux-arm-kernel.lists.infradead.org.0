Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E142438162
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 00:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6gymxUKG4zWlmAWxQgtgsaA50YQFwDawZtLwOX7YZY=; b=o9r9LALW+SLwti
	nHf2Zas0qoTNfozKmXVUWgEAar6E5Qn4U5m++Kc2i9DwlCRAS0LLwpfmw4xhkyq5AvyWs+IymtMIV
	TaEpT3knWc5NqAldlsO5tBlAC7e0//DciyQDshfhDMH/1HsSF5Qr6e+FAl+Vu6Mhuhf0rPbK3RAI3
	dp++GvKZy42fZZjQK7OOGR5IRVewqY303MM47vWiCqBzyKDAqgKCm8uv+H0ZB0bAgNzBK/mlSsqhW
	DqS4Q6sdrclOiv8L/Ezplz+U0TIQg5qdtG5ZEaHX2LJZefepd+1rKXXsYcB3iqv6GOohG01yA2cYm
	xetZ/G4fQhLGAYeD6AWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1Jo-0004LS-Vp; Thu, 06 Jun 2019 22:57:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1JD-0004Kc-LF; Thu, 06 Jun 2019 22:56:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45EE32089E;
 Thu,  6 Jun 2019 22:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559861792;
 bh=E9bmdThWnZM5wjGabhY6OrvCZOTpZUpOafsqSHjs9Ys=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=1hvEr86WkE0f1Yq9Z/8HZ5ecFcIGHEmS55k3uZCRfL3j2BEhI0D4/CGyT3wZbBOJT
 p05+xotlO1lU8rbyQ98+T942EtW2xoEx0Ad5JE+oNxT5oI+BQxNfw5NFkC7FWk/zBV
 4kVXW0eXIMypcY8YrNOajUZEngWqu7TCRRnESJs4=
MIME-Version: 1.0
In-Reply-To: <20190502121843.14493-1-fparent@baylibre.com>
References: <20190502121843.14493-1-fparent@baylibre.com>
To: Fabien Parent <fparent@baylibre.com>, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, robh+dt@kernel.org,
 ryder.lee@mediatek.com, sean.wang@mediatek.com, wenzhen.yu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mediatek: audsys: add support for MT8516
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 15:56:31 -0700
Message-Id: <20190606225632.45EE32089E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155635_766345_A862F4AB 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Fabien Parent (2019-05-02 05:18:42)
> Add AUDSYS device tree bindings documentation for MediaTek MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
