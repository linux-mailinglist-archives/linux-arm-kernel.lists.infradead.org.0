Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD9F1BA43D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fORWdTMf3twzXIRuY/BmHUe3iWbfiaSKm7XoG95RfTE=; b=qK4fRwpvsRs4T1
	Yy5JAnLWA3gtg+fcPMIEnND/NtUqqPLUkbSr1l0jf+IpHcZ+ZcxcmOeVkpBw47e3YgG7xAwgzundd
	/5l6TtnNCSubIY58q1U3tJ2vZdtZuOJDihQiImIhNoHQY0xOnr8YSzYmBIRdmDInZAMvPPwBBv332
	SzgmxTx6HcEGoN9ps5nG8XChzfvKFOIIm16PLjtSSfDRzQ1CcCxj7IVVWuS7k8Ot8+uLm7YhBYWcs
	+B6jbQA1YqSwvLar5F/uo3PfKktvbx7ovCS7GgcVz8gQDAQ+gBQROb5NMdlsfNOvgq3O0+JG8O2k8
	vhH9okVWg1VK4RXQBCqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3VY-00054f-Hy; Mon, 27 Apr 2020 13:09:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3VP-00053O-GE
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:09:04 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD0B52064C;
 Mon, 27 Apr 2020 13:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587992942;
 bh=bV1PKM7KpCxCRZJEtuGqiJ04oyD1/g2gNseB/UP8fgI=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=CjJmlxt9kCyLciLtehj1y6LsYtD7lEt182QGWIwd/60V5xjHrGMZAsfukZmihBSFA
 auMg1SAA7kev7CyJJclpfr2WF1wWU9qfEgz6PQKoCKZ2tPlRXp+Szv/TJaHiEtAHHc
 JCVJD2kv55UWmkiuNJLLDGIFI7XiuOy5tXQQgIH0=
Date: Mon, 27 Apr 2020 14:08:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>, s.hauer@pengutronix.de,
 shawnguo@kernel.org, perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com
In-Reply-To: <20200420142509.9728-1-tangbin@cmss.chinamobile.com>
References: <20200420142509.9728-1-tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ASoC: mxs-saif: Avoid unnecessary check
Message-Id: <158799293954.30174.3525396439519252505.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_060903_559990_60CB551B 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 22:25:09 +0800, Tang Bin wrote:
> The function mxs_saif_probe() is only called with an
> openfirmware platform device. Therefore there is no
> need to check that it has an openfirmware node.
> 
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.8

Thanks!

[1/1] ASoC: mxs-saif: Avoid unnecessary check
      commit: e66f385354b3bd29b713d8ab8556aa889723928f

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
