Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCE0158DEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVw/obeYmvT+bGBovJJ2uHYhKhZfgPSWTam+Rp/HlAY=; b=NFLGC2OIqH/2Pf
	ZarhUsQLioiCcrsP9UUzHqejnPoelxMpVuXFijWsZVojH/WKNZFscLYm7nmDPjI3ROStBavXUrAVO
	D1D47/SNR4GjNzDdYc0E5vrr/NyJYFfaYP8glyuCwh82J4+NAZO3wcUEUpuNHrb66ePEUtmlDAykf
	y60m8We5+d8vEgz2dYKtSgkNf8/VCFZFHUrndR1nMgXnXw3sh2JqIgsXfh29d3SmSDFJpuWEUNLO6
	4T3W0BGnf0593X9bJSb8QHdS4c/v0qUZjrh6S/CLydhVZAZoER6/n4DIaxtX2xnxp9+hzXclrWLfk
	yQWii+KbP9DNNXZJzqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UIR-0002z5-RK; Tue, 11 Feb 2020 12:05:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UIL-0002ye-8U
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:05:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 380A61FB;
 Tue, 11 Feb 2020 04:05:36 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52BEF3F6CF;
 Tue, 11 Feb 2020 04:05:35 -0800 (PST)
Date: Tue, 11 Feb 2020 12:05:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 6/7] dt-bindings: arm: Add Versatile Express and Juno
 YAML schema
Message-ID: <20200211120533.GC52147@bogus>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
 <20200210092713.279105-7-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210092713.279105-7-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_040537_394251_091FD6DC 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 10:27:12AM +0100, Linus Walleij wrote:
> This implements the top-level schema for the ARM Versatile
> Express and Juno platforms.
>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

With my limited understanding on YAML scheme for DT bindings, this looks
good to me.

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
