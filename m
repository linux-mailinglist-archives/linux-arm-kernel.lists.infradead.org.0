Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595661741EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nmyvJxe6Gi254+IlF28ONJxRmQhT9wx9xCzcq7pnFk=; b=TV5eTRl9drw881
	MIw0mH4tXTuWJZz99R8hDZsPRDs7oDPJVQeSu8pH1LwESHRHV+97QzcEbn5FiZWXNulHS7kge9oBN
	YGnXYCka33PdZKJNm5kzAILhb+ACNBXgIje6moS8jftd+dxR/N7QQGZSGbsDv0UB97NgKW77fK4cw
	uwnWTlIBmVlxwihtBkCSDr2iLh0HjpFT2KcPvSBU0uYJGZXiE6nmvEL6W34zooma1FfOR+E8O44Jp
	4+ZuPs2SHyUsrfuee26CNXVAAP9YrBs4gwJlIltGBZ1cg4RMop5iYHmccKrPK2srOAtcMf/DGvHxQ
	M7HHM/eDQgayyfbhDONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nzx-0005DN-PJ; Fri, 28 Feb 2020 22:20:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nzo-0005CZ-22
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:20:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 799AC246A8;
 Fri, 28 Feb 2020 22:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582928435;
 bh=QPeyoYKkbBeXHqqwk3y3ZNw5BMffN4OcCOUYua1ytBk=;
 h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
 b=Bp0yKU0ZDwuLsWUatPMo6XuaRon1LkIPMDS30vVKNFC1BzijlX37FUrIgweH4nrAO
 Qyr6jENQocpqZ8XJRNDpA5TF6VPs8aJDPe86eevI5x/FNTiizNud/xSy/8D4mKClgR
 nHojkMwBOG3OAvr19SvX5zpyRBTd1MPVNrhM1Gao=
MIME-Version: 1.0
In-Reply-To: <20200227182210.89512-6-andre.przywara@arm.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-6-andre.przywara@arm.com>
Subject: Re: [PATCH v2 05/13] dt-bindings: clock: Convert Calxeda clock
 bindings to json-schema
From: Stephen Boyd <sboyd@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Fri, 28 Feb 2020 14:20:34 -0800
Message-ID: <158292843457.112031.115976626383540546@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_142036_130613_5E4CBDAC 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Andre Przywara (2020-02-27 10:22:02)
> Convert the Calxeda clock bindings to DT schema format using json-schema.
> 
> This just covers the actual PLL and divider clock nodes. In the actual
> DTs they are somewhat unconnected (no ranges or bus compatible) children
> of the sregs node, but for the actual clock bindings this is not
> relevant.
> 
> One oddity is that the addresses are relative to the parent node,
> without that being pronounced using a ranges property.
> But this is too late to fix now.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
