Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E2E15B4C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:32:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWj/Pjs3fbcs3J1YRXupu0/q3ETgesc1COLHirn97gg=; b=q3Fuvw7zQgnBDi
	pz5ZqRPsWlM54WQmWrPs1LLnfHDzxGGvSeX6cKtENoCxbV4ZO5cYIMPdxpOJP08s+t1l7f8C+ZemV
	4Q+8SIiyYF0lqPG2u8OP2OkpVCDGx6LqW90j1riSRVIFiYotdAjkTl+ac4YBPnBgV4sOATzwxEfo7
	HHDJnUw8a4fFv4wARMpv8NJoVtEwLo5zA3+Yjo3pcTUS84DTtq+wFnfNbDOkrbrk4X9/Dc8O05ZKf
	7DCT8qKeZxYHWcu0Q2NWJMrCe1H2Vt/4JA75Z+oC0tvFffUG3ZA1BTpK3JevM+k5QviqR/MSG4nLs
	Y4vvDZqtQEQnvqQZV5+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21UY-0002gy-9u; Wed, 12 Feb 2020 23:32:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21UK-0002dJ-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:32:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE5F82168B;
 Wed, 12 Feb 2020 23:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550331;
 bh=yGxWmnU0+bJf4NtlQJ8vSgLa6xFdajfDlMYE/Tc3ORA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XmU58SVU3TWs/JJizkYx4X758sgRAxYgmTw5/2yQ1GlXVwnoGphaIIvsop8FS5caf
 g3JQ3pkxzxf5+b56xR93ObzS3hVxNjirI9uEgi4hJR0OkYYsoMmSTC/KzyAfAHSwsM
 /aG6ZlcexKl7ajVJWjX1NrLR/Dz9gDvdum1W+tTQ=
MIME-Version: 1.0
In-Reply-To: <1579261009-4573-3-git-send-email-claudiu.beznea@microchip.com>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-3-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 2/4] clk: at91: sam9x60: fix usb clock parents
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:32:11 -0800
Message-ID: <158155033113.184098.17218232086067316238@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153212_342420_1765B86A 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-17 03:36:47)
> SAM9X60's USB clock has 3 parents: plla, upll and main_osc.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
