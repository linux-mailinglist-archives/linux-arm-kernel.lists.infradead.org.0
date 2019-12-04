Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B37112B3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ncaHTlsLXAznFIOkP357hnhFtSZcLUp6PuPkp3t9Dc=; b=lfq4ayhay1Kup3Nhwl/nN1Dp+
	Sb7LlucQpAMPBIRjM9bd8yXaSiVjWcNgcgfwpjBZvaP5fhydqwonWUL5kfbaj7xy7T8hNOqh3YF8h
	F0z9YTP79OLwk6RAhMKwb97s9KB42V5Vx+vkP4SjfYFbzROsv+FxwY/l3B1GmFnEL4fRfTVjNtAB5
	8IzFCF9FK4NnGKMVOiEVCnzSWEax5ilO1fl3+j5Mv+TfwiZY5GrhKBK9JrFBD1Yw6ykeSx9jC3D8Z
	JSaQzKUFOVYnlnmFLwdYDI26i0u0d9aQVe3+zC/cz8/3gaL+W5arCq9jAD8cmrCxXqXu20ZdQH3qs
	CDVLUeSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTek-0002cp-2H; Wed, 04 Dec 2019 12:21:22 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTec-0002cO-JJ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:21:16 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1icTeU-0002F5-09; Wed, 04 Dec 2019 13:21:06 +0100
To: <anarsoul@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v3 1/2] arm64:
 =?UTF-8?Q?arch=5Ftimer=3A=20Workaround=20for=20Allwinner=20A=36=34=20time?=
 =?UTF-8?Q?r=20instability?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 04 Dec 2019 12:21:05 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CA+E=qVfaBcUN5iB3kaK5gHyURpWt7ET6_js=sLiDg4PCDXXTYA@mail.gmail.com>
References: <20190113021719.46457-1-samuel@sholland.org>
 <20190113021719.46457-2-samuel@sholland.org>
 <472c5450-1b60-6ac7-b242-805c2a2f3272@arm.com>
 <CA+E=qVfaBcUN5iB3kaK5gHyURpWt7ET6_js=sLiDg4PCDXXTYA@mail.gmail.com>
Message-ID: <4b922079aeed04f31ff67b3e7fb78022@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: anarsoul@gmail.com, marc.zyngier@arm.com,
 samuel@sholland.org, catalin.marinas@arm.com, will.deacon@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, robh+dt@kernel.org,
 mark.rutland@arm.com, daniel.lezcano@linaro.org, tglx@linutronix.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_042114_780470_2F959040 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 marc.zyngier@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[please note that my email address has changed]

On 2019-12-04 04:18, Vasily Khoruzhick wrote:

[...]

> Unfortunately this patch doesn't completely eliminate the jumps. 
> There
> have been reports from users who still saw 95y jump even with the
> patch applied.
>
> Personally I've seen it once or twice on my Pine64-LTS.
>
> Looks like we need bigger hammer. Does anyone have any idea what it 
> could be?

Which kernel version did you see this happening on?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
