Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400F0F515D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XecDtyfiK6tahvFE/WtpR73FHJA80C1eMvtNOz5w2Q=; b=NtkFr50W8hPPKB
	wKY8GyC7UoU6kN588y9eeDytde1NClBA4JT/+6xH7gVI6jpCmIi3RoOc2XUeXFN+V8enQ2MFFQT4d
	hRj7JaKMDwGOFfKPWyw2iH2RF4QgfIJZelr4M3Ev3knovWlduFenB+OLVRT+9ya4/Ej8UlOQNddHd
	v8Km5LBtUMgn5qweKAoZrAsN7KeTGt81GTNhacwRQh5n8Cl45tw7KAdaZEkPYsDKLG9beTJBUFmSP
	78EvIMv/UhZgdmhz2yen7irIqsQODyYia6vqlIwSYKzj0OjV7RnZRnq7ued17k0nO6aoxEjyKVbol
	zbIv1i/CIvi465yU7YgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7Lj-0003vf-KX; Fri, 08 Nov 2019 16:43:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7Lb-0003qA-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:42:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44B1F206A3;
 Fri,  8 Nov 2019 16:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573231375;
 bh=g4CoKvF3KBeAiTVPLjlckAUsjTuuIjtO+HohvgouYnY=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=0ZpsztU1FYRY6L52Ezgj7+jOOs1x/hVT/ozS92H5H+GQTKKKDb+rMwk7lVULhGsF/
 dGkdS59Ii91Y5vgj+xTa/pyKyS5XkSwV6lSpK4251lQ1R6b0j49oYgNTuw3uUfeI3I
 WaQv+j6fKwqgsZhzEUdOkSDt+Np7ZYDzDQDg98no=
MIME-Version: 1.0
In-Reply-To: <CACPK8Xe7dmeVjQYObzOw9LdwxH3+1XTcU+RJOZo5C69j8d-yOg@mail.gmail.com>
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
 <CACPK8XcGgGsoLNpCccKPb-5bojQS4c5BePewwocc-z29On7Rjg@mail.gmail.com>
 <20191107230029.75ED72178F@mail.kernel.org>
 <CACPK8Xe7dmeVjQYObzOw9LdwxH3+1XTcU+RJOZo5C69j8d-yOg@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 08:42:54 -0800
Message-Id: <20191108164255.44B1F206A3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084255_727644_999FFADF 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-11-08 03:29:41)
> On Thu, 7 Nov 2019 at 23:00, Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Joel Stanley (2019-10-31 21:50:42)
> > > Hi clock maintainers,
> > >
> > > On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > The AST2600 has an explicit gate for the RMII RCLK for each of the four
> > > > MACs.
> > > >
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > >
> > > I needed this patch and the aspeed-clock.h one for the aspeed dts
> > > tree, so I've put them in a branch called "aspeed-clk-for-v5.5" and
> > > merged that into the aspeed tree. Could you merge that into the clock
> > > tree when you get to merging these ones?
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git/log/?h=aspeed-clk-for-v5.5
> > >
> >
> > Can you send a pull request please?
> 
> Sure. Here you go. Let me know if you need it in a separate email.
> 
> The following changes since commit d8d9ad83a497f78edd4016df0919a49628dcafbc:
> 
>   dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
> (2019-11-01 15:01:18 +1030)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
> tags/aspeed-5.5-clk
> 
> for you to fetch changes up to d8d9ad83a497f78edd4016df0919a49628dcafbc:
> 
>   dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
> (2019-11-01 15:01:18 +1030)
> 
> ----------------------------------------------------------------
> ASPEED clock device tree bindings for 5.5
> 
> ----------------------------------------------------------------

The diffstat got lost? Anyway, thanks! I pulled it into clk-next.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
