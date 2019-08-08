Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3915786506
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wrlq2itvyIoQcEfu9wkc+H3HhFO61gvYOK5I2bZj4kg=; b=F7ab0JzitlqeNP
	lOKvCleHqJRiWZv+qpgKuVDX7lr391Jww/W/mVKvvAzIquolPvWh/CidOEuciYL4Pw43hTeIUU0cy
	0eTHazJCx4ch/ALGCN4KVaYHTV2bFEz+Mtt3vzD1C/0qkeaQ9XLDVMz1EZxMSSCXEZYm32hivE8hw
	fxVYTxADIDGpyncuszuc9iFUllWkNrQW9QXdpDlUyx1hkFLTMPB+hGN7K5UNvf8ahgbjlHOaFOrHT
	8KQorLr32mli8vHR2baXRnebmxGAzXkV8AT1howY/vX6XlTlbAd+0PZ9yJIiTd5QfUqCb+A0fQUm5
	ZRWbngonXkuARMwZ02dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjvE-00024y-U7; Thu, 08 Aug 2019 15:01:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvju6-0001ss-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:00:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A890217D7;
 Thu,  8 Aug 2019 15:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565276434;
 bh=7ABlbrr024uC6TeWzpfCfq9aUOmdkt772JW/xbpxA4Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ITO6wphfn03+Nq0nJtFCyJCa9O06MVYjKZw3c6HlAztuSUSoDy/kzaxCRTZf4rbdT
 COJeEwFzkStAiTJtpokkS6AwEK4fwrvx4ebMzVcUyMLvzwCTbjdlF9i8FplNOnjAse
 eOaoygo89uORFI/foWt3HdnqkatV30mLu/7pFgIQ=
MIME-Version: 1.0
In-Reply-To: <29453ee8e820457d87a8faf9d496390e59c6826f.1562073871.git.leonard.crestez@nxp.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
 <29453ee8e820457d87a8faf9d496390e59c6826f.1562073871.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 2/2] clk: Assert prepare_lock in clk_core_get_boundaries
From: Stephen Boyd <sboyd@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Leonard Crestez <leonard.crestez@nxp.com>
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 08:00:33 -0700
Message-Id: <20190808150034.6A890217D7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_080034_871779_B210E86C 
X-CRM114-Status: UNSURE (   6.58  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-07-02 06:27:10)
> This function iterates the clk consumer list on clk_core so it must be
> called under prepare_lock. This is already done by all callers but add a
> lockdep assert to check anyway.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
