Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0EF1C55EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:References
	:In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GaLL9T7/Do9xirtfYf7quGKb7uuSfJlfhsyBNUqrz4=; b=SZsqNK4/9ak+vN
	oFJ9tEhv6TU4l51v1SGV/HI7UAEHy7ycjD6AbDbH0NGSlrDexkGf/ixaSFbhkI7J1hiGoVT3sV/19
	7k3pkXun20iKVTHuBP6Gzm1KeJEiHp7Gh8Lsd7lWVwDB6fpMRaGaDnav7PggislFgedAtoWqX7mmI
	eDVckSL34Q7dTLDUKNdK4dhZQUZh6RjUxHymxkV6mSaVz52VRUq9yCPQH7AERm7BNSEE3w5ndZw2W
	AdKl++F0YzGbpoi0dOaByzxN4+m9KKVx4V9zQC0Qj/jb3ILPupKQjBujeqnn/LGmSJXugC7rZUr/Y
	K4t2CZ9h1jcy3WctjN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVx28-0005eI-JS; Tue, 05 May 2020 12:50:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVx1r-0005c8-Om; Tue, 05 May 2020 12:50:34 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88A24206D7;
 Tue,  5 May 2020 12:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588683031;
 bh=QLn+uOYzl/cbRxyiEyBEun7Xm83d5G4JJgdYrFQ1mEM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=LlydU9w3oIJGGcpoyZ0pzki1EndLuSQlFTvtvEWjo9UsVpbxJ0ukXp3YGq9LxhQ9C
 btXFl9N+9sydEFBTK8xLhNSpEIPuzgQ+i3t+viO8J0u9gSTdvMvOVJ6Zbqwo7cQ9xH
 V+mtntBtQKy+G2c5Y4juTV2mgMojTipJmPx2O3Pw=
Date: Tue, 05 May 2020 13:50:28 +0100
From: Mark Brown <broonie@kernel.org>
To: linux-spi@vger.kernel.org, Jacko Dirks <jdirks.linuxdev@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20200503200033.GA3256@vasteMachine>
References: <20200503200033.GA3256@vasteMachine>
Subject: Re: [PATCH] spi: bcm2835: Fixes bare use of unsigned
Message-Id: <158868302840.38681.2575208609097582325.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_055031_823682_25FA6E4C 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 3 May 2020 22:00:33 +0200, Jacko Dirks wrote:
> Signed-off-by: Jacko Dirks <jdirks.linuxdev@gmail.com>
> ---
>  drivers/spi/spi-bcm2835.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
> index 11c235879bb7..e10b8f3b4bab 100644
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8

Thanks!

[1/1] spi: bcm2835: Fixes bare use of unsigned
      commit: e37687c98ab9ee5872e672b81c44932cf5356d58

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
