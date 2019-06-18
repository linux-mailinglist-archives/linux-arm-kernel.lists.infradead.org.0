Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA294AC19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zax77zKzikxrtRKjoJHaCWZf0ZwSlZgKRuN4Oa+yBqw=; b=abukXq+nMT/0bC
	JgTVD8MbJ7jnIH3ILUh1pnghgiHCCZ1LNIgGWRB8LHrOR52rSFjX1cwsIM9O6Fiqwg3GwCGr8ZvsH
	D0q9SOloWh48CcYdTKiqMg7fzoH/+Su5ZFNmrKHlLhYQy3N7Tv5pGrXS0bIw2LqkwYgi5AAaUUx8E
	C6Kr6+NMccODqObGdUV680skBYbA2zSWz3BCNIzkTFBI7feyMqgHHkg2i0JJHdwSBsUd45ytJzg7u
	JGkMpyUDG46WPL5lWkrlCfIns3Kntk1RSLY7eSoh3XTVBttoMYnB6EZX+xXXsOmynZpPsTKbo6BOI
	H1hmJjA6k5n+A3CWQIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdL77-0008L8-QC; Tue, 18 Jun 2019 20:53:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdL6x-0008KT-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:53:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id F3C85260A33
Subject: Re: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>
References: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
 <7hr27qdedo.fsf@baylibre.com>
 <CAFBinCCrpQNU_JtL0SwEGbwWZ2Qy-b2m5rdjuE0__nDRORGTiQ@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <7d0a9da1-0b42-d4e9-0690-32d58a6d27de@collabora.com>
Date: Tue, 18 Jun 2019 21:53:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCCrpQNU_JtL0SwEGbwWZ2Qy-b2m5rdjuE0__nDRORGTiQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_135347_724919_5D72C899 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, broonie@kernel.org,
 matthew.hart@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 mgalka@collabora.com, enric.balletbo@collabora.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 21:42, Martin Blumenstingl wrote:
> On Tue, Jun 18, 2019 at 6:53 PM Kevin Hilman <khilman@baylibre.com> wrote:
> [...]
>> This seems to have broken on several sunxi SoCs, but also a MIPS SoC
>> (pistachio_marduk):
>>
>> https://storage.kernelci.org/next/master/next-20190618/mips/pistachio_defconfig/gcc-8/lab-baylibre-seattle/boot-pistachio_marduk.html
> today I learned why initializing arrays on the stack is important
> too bad gcc didn't warn that I was about to shoot myself (or someone
> else) in the foot :/
> 
> I just sent a fix: [0]
> 
> sorry for this issue and thanks to Kernel CI for even pointing out the
> offending commit (this makes things a lot easier than just yelling
> that "something is broken")

Glad that helped :)

If you would be so kind as to credit our robot friend in your
patch, it'll be forever grateful:

  Reported-by: "kernelci.org bot" <bot@kernelci.org>

Thanks,
Guillaume

> Martin
> 
> 
> [0] https://patchwork.ozlabs.org/patch/1118313/
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
