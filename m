Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCAD30C8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 12:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74rtMI9MUwfnMoXuCaEpEi/C3uZJfSQqeTpA9CNNe5A=; b=EqHa+mBG8wOUWn
	3sXo9x1/Qu2jlJslmUQkFJdBm6Yw9lx/dR5wG/DezWp2BJ0B/VNezq7Kl/lL4iPih5vfmf30L/VQE
	T5j7LAFO57oiHqxqUE854Bjxmxw+JCx0/iGa3FegW+5XSRULJ6pDPnECNRBVj5BUFYyudsqx9z6gg
	PZLBtlJiLbtf8zDaJEkZSkq+RbGKdxVEgc3Nh6swSw6okAilK8FhzW1Wru4QJvugcSSpYUFaqRhST
	3bXXKxk5Oug3EBRe5jJuupuT0688d4vPxn4ZeCJTprFoyrjhWNPfyYTV+R0JSJDveCdmrsTUssJX+
	jJz9SorKFdqvFr58G6yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWelm-0003D4-LA; Fri, 31 May 2019 10:28:18 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWelc-0003Bv-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 10:28:12 +0000
Received: from g550jk.localnet (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id A4A83C59F0;
 Fri, 31 May 2019 10:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559298485; bh=Se4dUZTYep0OSyM0WeJ2pYjOSnGAVavK0huOC+bbDCA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YH+IXwzLuOG3Z6tvsWcUim+3YLlZU9jcxO0xv+Y38t1ecU/TXC1hL1kwFL99yHXga
 hJoaRYID5kqhEUscXaNRwE0waJAd8xM3j0sFWwqz269g02BH6RRe4nenMKPUlGbOEG
 LYC0MdrlJTxZD8G0yw/6iRueY8ftowp/h4ovDw5o=
From: Luca Weiss <luca@z3ntu.xyz>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Date: Fri, 31 May 2019 12:27:55 +0200
Message-ID: <6901794.oDhxEVzEqc@g550jk>
In-Reply-To: <20190524092001.ztf3kntaj4uiswnv@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <4343071.IDWclfcoxo@g550jk> <20190524092001.ztf3kntaj4uiswnv@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_032811_336837_03B5DF44 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Freitag, 24. Mai 2019 11:20:01 CEST Maxime Ripard wrote:
> 
> It would be great to drop the -keys from the compatible, and to
> document the bindings
> 
> Looks good otherwise
> 
> Maxime

Hi again,

So I should just document the "allwinner,sun50i-a64-lradc" string in 
Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt ? Don't I also 
have to add the compatible to the driver code then? Just adding the a64 
compatible to a dts wouldn't work without that.

Thanks, Luca




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
