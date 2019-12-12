Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E965211D91F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Amyt2gPtIsVez5nxQSZK+y7Dw3NRTbo0SA1qgTIqwCo=; b=hVIko2686l3PDX
	4gKq/Wv6OkRHZnbXhDonuJzRN5Vwu9Rchi+DKfKA0tutIZ4RoMLemPu89RE7yasJ7fMd3GTahXMUS
	3hrF4RDLAyRD7pLXzSQ0VDZmSkXdrz6P0gub1mmtJZDLTAbaQaUDY8EZX+H4avU117JXacBwI+8xM
	FMt9ZZUUDjMtnyj6riKcDe2bauk7h//EJina6E9j2+neeIBoXv7im/QMDrc+c1UjnIYYBvAzCg7d7
	uxiiaJuwrbGRwoE2aPsenI08MxammLZSTiZh3fHv3epmJI/oqaacl+kOd5h1REc9Ao9qONTsUh3aA
	DRbgAxcrbFWb7RAANm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWhd-0002xw-0b; Thu, 12 Dec 2019 22:12:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWhE-0002oX-Mz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 22:12:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 078B52173E;
 Thu, 12 Dec 2019 22:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576188752;
 bh=qsQtuvESmLGci5iJAEm1dwzoRJg3ZjZsFOo6TC1d/9g=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=ekb+iuD28RbLxVQx6VRq2FZ0IVJCn4Cpy9mimZ4AtPuPQWl7jm5pqEAGgtnxhcNtQ
 dwMUlFUINiNIbvTpdGPGBT+6Qy3ZOPLoFci07cU4N2Q1KfJ+hKb+ZWYJr4d8JDZ8ci
 nAO1VY+SQni+Lw0VFevtFcNrKsUm7F3PQGTCyTfc=
MIME-Version: 1.0
In-Reply-To: <20191209093558.50940-3-maxime@cerno.tech>
References: <20191209093558.50940-1-maxime@cerno.tech>
 <20191209093558.50940-3-maxime@cerno.tech>
From: Stephen Boyd <sboyd@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: clocks: Convert Allwinner A80 DE clocks
 to a schema
User-Agent: alot/0.8.1
Date: Thu, 12 Dec 2019 14:12:31 -0800
Message-Id: <20191212221232.078B52173E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_141232_773376_66D6EF06 
X-CRM114-Status: UNSURE (   8.29  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2019-12-09 01:35:58)
> The Allwinner A80 SoC has a display clocks controller that is supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
