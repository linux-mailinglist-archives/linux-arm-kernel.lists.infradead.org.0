Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2411B1934A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 00:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsKgHJmwRfqP4Efc4lSksonxOQARwvDjfuxpx4f566E=; b=G8RyLR5GCjEhEc
	sF5eN7oSLRfZLIx1cOH+IFJebaYNm2qDWeZTJH2SJ7DPar/PLMiKk4DkQjoKiQkZVwWuv755mXxW5
	xAZKTsdh5FkKje8ezIcTeeCxgbs41pFHCUSI1XIP/mtRXTHVemXVzRAhXdRMXhO1q81jAy6auNQsc
	QeY93UcJ9orQIc996N8AbnBJBrHzC/wdWCHg0JX5kosu4wd5R4iFIeFWJkSmmiAZUBaHPXG9R0FW1
	/RLqj7KWNvR9mKctpFkqe73EBxKZOodjAz2yG5PqOxmy5Mv8hQv7jmtze0Gq8oXOshJlzle2t26OL
	85sXmQgpG/rWibldbADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFXV-0003oI-Bj; Wed, 25 Mar 2020 23:34:25 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFXK-0003lh-33; Wed, 25 Mar 2020 23:34:16 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id D9ADB3E993;
 Wed, 25 Mar 2020 23:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1585179251;
 bh=UmMfQfL2Dh6nfn2syBX2sC1MPLmcaAcwUvfWVe3vkpM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BPWtzEWeaE0xPqB52s39r4KFFu9CAc2XWbyWEeiYjMFFp4zI3Jnc7Ce1qomgad3+i
 Zssb5erETKV/5tFlC9CDhOpLk9pnxg2NCChpeKVZIiBN8eTPwpTU1e5qXBz7i2qmMi
 ohX+2HrLcdpwIAUyrpKCZpDJiGxTBey+OAukZuAo=
Date: Wed, 25 Mar 2020 19:34:09 -0400
From: Brian Masney <masneyb@onstation.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: sram: qcom: Clean-up 'ranges' and child
 node names
Message-ID: <20200325233409.GB16767@onstation.org>
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325220542.19189-3-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_163414_211827_8874092C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 04:05:39PM -0600, Rob Herring wrote:
> The regex for child nodes doesn't match the example. This wasn't flagged
> with 'additionalProperties: false' missing. The child node schema was also
> incorrect with 'ranges' property as it applies to child nodes and should
> be moved up to the parent node.
> 
> Fixes: 957fd69d396b ("dt-bindings: soc: qcom: add On Chip MEMory (OCMEM) bindings")
> Cc: Brian Masney <masneyb@onstation.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: linux-arm-msm@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Brian Masney <masneyb@onstation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
