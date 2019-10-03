Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF04BCADEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYeW7B0OO9n0gIwfHfC/ABgUnF4hHND/ioHYFOy2guM=; b=ZCayLkmc5sCWSi
	2VyELW2yZOR9cez4O13+rl6CYDkGcdE3VtlujxbAmc7ir9ic6/r+wnu0Mud6xCKKB4ogQLsrV/4FU
	Sntz7PrTAGi/yzUFCqy6pyUti721L7SFWpkW829HshGvaAsrd0ToMH1sW2fY49v3I9n0Mno+30cig
	sqprVGdb47BpIPyhM4stZTGKJzq2WZ517h34JD9JFNx2SZXWOSZzpfRqYiWGFPAx//COuDfOxY1Ud
	+MIvRlHpjqYwbwFwwgxHXirtxNprsG0ASM37OxeEOHH5KIHMe7K7/16u51r7CvoteZiYg/XWnt+7D
	CCwD3Q8BE+p31Erb8Tiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5e8-0004ue-E4; Thu, 03 Oct 2019 18:16:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5dw-0004se-U7; Thu, 03 Oct 2019 18:16:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D6F22070B;
 Thu,  3 Oct 2019 18:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570126560;
 bh=nY0LFXVk/SNSsj/nGuYEk8lLimBHZ/kip/5QktLE30M=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=2gRfkDNay4GQ8GVL40xt/FVRFNW/T6303w/jbXj7QQJVtdz7LzvfbC54mYR4mS8r6
 KQrbne3Qg2j5ZURd8qpfR/Rh1gEJ2uKXn/h1RYTKEuhbn9SwE6Q8jFz72JIOLIqf2W
 RxAgIOfeWXuJqXwwCg4HHAy4gJrGQtAqfIWHrd38=
MIME-Version: 1.0
In-Reply-To: <20191002164047.14499-1-krzk@kernel.org>
References: <20191002164047.14499-1-krzk@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
To: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>, Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-pwm@vger.kernel.org, linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: pwm: Convert PWM bindings to
 json-schema
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 11:15:59 -0700
Message-Id: <20191003181600.7D6F22070B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_111600_990143_AEBC3E4C 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Krzysztof Kozlowski (2019-10-02 09:40:46)
> Convert generic PWM bindings to DT schema format using json-schema.  The
> consumer bindings are split to separate file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Change also pwm-sprd.txt
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Change pattern for pwm nodes,
> 3. Remove $ref from #cells.
> ---
>  .../devicetree/bindings/clock/pwm-clock.txt   |  2 +-

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
