Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD61AE543
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R15e8HWFZlqA7lVWHsSrxNG3rJoEXK/MTf6oe38GHPE=; b=jL4Oeb5UwvY3zV
	knI0jSTEsFUF6e0fClEaxYVPFd7lfRk+qdNuvtXnGY/nP3h7AV6pqr5bf3tVae43VxFdjmhsRO3aT
	gUVsvah+VsEqkAtKzNkSkwDUkH4wKTHoJDMf5hrvb8dAxeCosp+/N07PHwx8XnSvzTK+ccniytDr/
	VKP2w6l3VttSQ4dKZuuxzaF3wwX05M5eUkMGw/wQWGpGA8X3FLxQMzfo5aDFi4ZFEcs+ZGmiyd6LW
	BFcDz3f9Pm6y4+NK548MYY6hwi4vMZQMiyuO7L/Jv0T9fBWqOn3ynQQ/wEo8ACqe0OwtQndwexs3z
	SZKnvHZByVYsl7obw9jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPW9v-0002Fk-Jh; Fri, 17 Apr 2020 18:56:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPW9n-0002FC-2m
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:56:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E23BD206E9;
 Fri, 17 Apr 2020 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587149766;
 bh=Dm3R98EwUsHzxty01uoqbg4lClykQLLZ0/eLOPZF/aI=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=s84ng54P9XXBCp2gGV+A6cOqwWuqWzcbakKh/O/Bjvr2W3MXBlCBb48hpMi23Vkp3
 C++UWR1jhP0Zp3UopEesVXIaopvo5fQCXKi+Iw8+KraqZ1iqhrELT1EslYmXTXNMp9
 S9a4pcHAcd0AViiBUn3sXgKgSkAR7+nc9/R+ZavM=
Date: Fri, 17 Apr 2020 19:56:03 +0100
From: Mark Brown <broonie@kernel.org>
To: alexandre.torgue@st.com, lgirdwood@gmail.com, tiwai@suse.com,
 Olivier Moysan <olivier.moysan@st.com>, perex@perex.cz
In-Reply-To: <20200417142122.10212-1-olivier.moysan@st.com>
References: <20200417142122.10212-1-olivier.moysan@st.com>
Subject: Re: [PATCH] ASoC: stm32: sai: fix sai probe
Message-Id: <158714975762.9428.15651619763000447218.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_115607_152277_3167D6E9 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 16:21:22 +0200, Olivier Moysan wrote:
> pcm config must be set before snd_dmaengine_pcm_register() call.
> 
> Fixes: 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>  sound/soc/stm/stm32_sai_sub.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> [...]

Applied, thanks!

[1/1] ASoC: stm32: sai: fix sai probe
      commit: e2bcb65782f91390952e849e21b82ed7cb05697f

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
