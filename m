Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53F216BC15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH5rGCeFIZr1lnoNfOgaPQ0yvjzOhxANo0V8ARs0EI8=; b=ApJxsM+/VnI3MD
	m+74DVSf7Nh+rOsRJPWlRI/AedpLPHRAbMowwrp1BAbdet5+3okO3le+0A6sk3BGEaFEqfiDdb6Wk
	pX7xhZIZ29a2Ai6+4NfAU/QuRVeo5cos2BbuwVIwv7d4YWipsaJEKc/qne0dYFWbWfwaoDLHzwQwF
	M2LKkGFkSlpuBAGeuYefJxgtTNLZLh4WBNIj8u6yWzqDzQWxzlJ6uJoNWuUB9Sdzh29msdRMkPaq6
	l16y7Ygh3mrZSZHfa4fFVP8TL+L4GY6sr70A1k2cIjCpsnCTLdRimrubWaeZ14ZVDWD6vSKmZKD08
	Ly0M7eGnFUzJK0pCoNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Vqo-0006rQ-QY; Tue, 25 Feb 2020 08:45:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VqX-0006ja-VX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:45:43 +0000
Received: from localhost (unknown [122.167.120.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B3B420CC7;
 Tue, 25 Feb 2020 08:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582620341;
 bh=I1N06m9H8JQ9n2bGaqanCvfsSQpjqak5lJJ5OOW0dUQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GGsnqIh5k9qaitFovTeMIC74Y8ev54Z8gYaHXGKw3uTGmA52z/i0Y/ZskvvFUL8Mv
 9RC8VaNyPsI+UCC+g/mH1vNhtQkjDQsqVvC9sjgv0HjUAVgojyMRwdX8Fs4qiLo9ec
 2HwgDw3Ti0QO6+baBzbhEYB4EqZ9/GkNtffE1gwk=
Date: Tue, 25 Feb 2020 14:15:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: Fix the event id check to
 include RX event for UART6
Message-ID: <20200225084537.GM2618@vkoul-mobl>
References: <20200225082139.7646-1-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225082139.7646-1-frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_004542_049176_5D25F8F2 
X-CRM114-Status: UNSURE (   9.17  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.ml.walleij@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25-02-20, 08:23, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> On i.MX6UL/ULL and i.MX6SX the DMA event id for the RX channel of
> UART6 is '0'. To fix the broken DMA support for UART6, we change
> the check for event_id0 to include '0' as a valid id.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
