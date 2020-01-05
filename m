Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE8A130674
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 08:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCOX02ln8vAtoKYfefv5Zh3Ku6T1mfppEf3RScaRuKE=; b=cyH8HTDVBt52AD
	5m2xYU/84tvp3tvfHf+T58whkJ4xvkF+Cwrawiu5yKEiISMjWj6vs7ogITQEYW8I26tKLx8OzNcyP
	JMw8Is90ZbtEg5rxUAaN+TQxX/ZIPNQ485kPlmJrDh3hxoaEogPrytBsTs3PZXeC1ZKKypuwuSQke
	tlgJAcHyf0UltPjv8NHPh52FWGBvK96WeIDQpgHg7VxgvxYwlvE7kzfMa3A2vCuAZtTu6EIYnk8Gx
	9/jTl2so4bTEd4bp4VLkPhUob/cjdDAND4eNNCAr+GmucsB1RKDYZrkHzLtfDKFtHGCoHE5g4vehe
	HfhUQxjLIyLy4CrDsPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io07Z-0000p8-Dq; Sun, 05 Jan 2020 07:14:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io07T-0000oa-Ei
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 07:14:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10452085B;
 Sun,  5 Jan 2020 07:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578208479;
 bh=kOXrx1wqEa/YU4lIH0OxdprB9v8RhMxQwy9bb/pK0gQ=;
 h=In-Reply-To:References:Cc:Subject:To:From:Date:From;
 b=H0FIKvn+Ai1x5HOYaGq5OBIo0Viyoj+P5TcI/toM3CSQQhWJ1/3rKDYZEP3yWOivZ
 HQnh7gXUzshpQ9o46RicBifMTSe6rnJcJQBphR2UqnzmsU7S2yrev5MTvWYxVunLL7
 m6ytha2jaet8zQT6A0bZm+kk9MFEck3iAM0UqYGk=
MIME-Version: 1.0
In-Reply-To: <1577410925-22021-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1577410925-22021-1-git-send-email-hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2] clk: uniphier: Add SCSSI clock gate for each channel
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sat, 04 Jan 2020 23:14:38 -0800
Message-Id: <20200105071438.F10452085B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_231439_513030_C6D54906 
X-CRM114-Status: UNSURE (   7.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Kunihiko Hayashi (2019-12-26 17:42:05)
> SCSSI has clock gates for each channel in the SoCs newer than Pro4,
> so this adds missing clock gates for channel 1, 2 and 3. And more, this
> moves MCSSI clock ID after SCSSI.
> 
> Fixes: ff388ee36516 ("clk: uniphier: add clock frequency support for SPI")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
