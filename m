Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4846A6A038
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 03:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fLZjemYXLSfc9Tu4ekCFObV5V3lCydvHzQLlU7LAySc=; b=ja3utQiOzWzeNhc5bFjYPgAk2h
	jrWsl5QcCi2nXeoCditUXZREvwsA0zlcXGcQQ3iGGDPljub/8vi9v1RQAIltKsNbLBPIRrmml6mgN
	i6tOYAdX9fMgEj0rB6pQoG0ZqKxMl/iKPw5B2hvNf7dCSdxRR1KAeEcME4wW153ahABJhu6d+KgBN
	nZmReB5yTK/FGm2ZwJgex8JB66HMvZsGur1SzSwQBOpIZKIzEuGJWVF53RKGXrBza9jZz/3yA4S1n
	g9zKQvKKuXxYattGV4PCOQOuCoTxgVZazCN7enW7yX4vofHoFFRiFa+QKQtQTnb1mQgv+supTOaw5
	0+2kT+9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnCFa-00059k-Ok; Tue, 16 Jul 2019 01:27:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnCFM-00059N-PY
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 01:27:14 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53D2320659;
 Tue, 16 Jul 2019 01:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563240430;
 bh=sh4ZD2n/Wnxya33LOsKQv54jHWqu/sdJYn9wdgedWOQ=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=pnKclTkvxS5sEkIbywKL/bJIrSh3SKF+Z5VEi4PVGbefZanhkFX9ANeOC1CiQIvWH
 185b5ZHl9YoSWRq4iICfV4Y3a5jdbSwRF9IOQ2ps4bYLCo5j5n2JJ4JEXeMd1QXrwP
 WWjEGGOc9HtQs5LQI7SNkx5UIX47GHgpLoPcmGzU=
Date: Tue, 16 Jul 2019 01:27:09 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [PATCH] ARM: dts: gemini: Set DIR-685 SPI CS as active low
In-Reply-To: <20190715202101.16060-1-linus.walleij@linaro.org>
References: <20190715202101.16060-1-linus.walleij@linaro.org>
Message-Id: <20190716012710.53D2320659@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_182712_851724_84A73919 
X-CRM114-Status: UNSURE (   9.12  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: , stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.2.1, v5.1.18, v4.19.59, v4.14.133, v4.9.185, v4.4.185.

v5.2.1: Build OK!
v5.1.18: Build OK!
v4.19.59: Failed to apply! Possible dependencies:
    Unable to calculate

v4.14.133: Failed to apply! Possible dependencies:
    ea6f23f59331 ("ARM: dts: Add TVE/TVC and ILI9322 panel to DIR-685")

v4.9.185: Failed to apply! Possible dependencies:
    22789ae3bbb1 ("ARM: dts: Add DTS file for D-Link DIR-685")
    9be0d7f87eff ("ARM: dts: add device tree for Gemini SoC and SQ201")
    ea6f23f59331 ("ARM: dts: Add TVE/TVC and ILI9322 panel to DIR-685")
    fe7bf9dcfff5 ("ARM: dts: add a devicetree for Raidsonic NAS IB-4220-B")

v4.4.185: Failed to apply! Possible dependencies:
    22789ae3bbb1 ("ARM: dts: Add DTS file for D-Link DIR-685")
    9be0d7f87eff ("ARM: dts: add device tree for Gemini SoC and SQ201")
    ea6f23f59331 ("ARM: dts: Add TVE/TVC and ILI9322 panel to DIR-685")
    fe7bf9dcfff5 ("ARM: dts: add a devicetree for Raidsonic NAS IB-4220-B")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
