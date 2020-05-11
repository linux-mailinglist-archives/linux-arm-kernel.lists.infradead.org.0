Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44BC1CD834
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgEG/B4BXONlaYy+AFMD3feRlWeBvIfxZ2mcJAWCTPE=; b=u9dcPMJUjRli2L
	AlEU0pWYyey2bOawf/yK3N/kWRWOFM4XTYzojeq7c/ZXS9RlElW/MsNxJfnlIVrjfzpqNRVD5evKL
	mvW/ZrMdtyRC5q+x989s+IrM/KwgLk4HBRCq7NPwa0fp1kjAOSTUeIDvz3kR+LrKLIf53RBLvbx/U
	pyvd+CM3y1g/SCgexkX9jkETTRe7IGYHurMeKUx9UlCfxS4kidOe4SM5szgp4Ho0ak5hVXtjW++yn
	SVGilr0pGb6rlvS+Sx/AvpCNXIlKbBlO30rlievEd2x1tU7S+5MEfJ2tZ2JDnr1L8iS8t7QrRnR8V
	3/Bx5gGierlepEUm3ZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6aF-0007Dh-M9; Mon, 11 May 2020 11:26:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Yv-00060R-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:25:46 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C62C2082E;
 Mon, 11 May 2020 11:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589196332;
 bh=qMkiO+nWfOUzErqZNGHGc5Th27FIV5HW8D5tvjyuXHs=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=0oXMv+ETdO3rQxlCT0GO3lg73QBlXaBRcVjUnmUmVSboJLx5amHazoi5qvJWKDrRC
 zzEaPGumfz6VaPkcXFGWHOspaKif1CwGLM9rZiH91DnCeeV2pivO4KSRJcXUb7LItx
 EDEHzmf2oVptDj5bzZr3iOYblS4ZmO+DHjPHJI0Y=
Date: Mon, 11 May 2020 12:25:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
In-Reply-To: <1589185530-28170-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589185530-28170-1-git-send-email-hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] spi: uniphier: Depend on HAS_IOMEM
Message-Id: <158919630590.8372.2120054682053294081.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042533_298368_EC225F9C 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 17:25:29 +0900, Kunihiko Hayashi wrote:
> The driver uses devm_ioremap_resource() which is only available when
> CONFIG_HAS_IOMEM is set, so the driver depends on this option.

Applied to

   local tree asoc/for-5.7

Thanks!

[1/2] spi: uniphier: Depend on HAS_IOMEM
      (no commit info)
[2/2] spi: uniphier: Use devm_platform_get_and_ioremap_resource() to simplify code
      (no commit info)

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
