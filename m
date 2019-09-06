Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E57ABEBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3kKCYqUQ2Q5N2ufY4SV+XYc3mxKr4iC1zS79GNgRaI=; b=utPZKJN/rRH7x3
	NLQIUzC2Vzfs3HL68zAMNoRL7iJEzpV3t8xxLGBnvqPJKvMdfbf9ycK7+Pd12Un3ILmdn0jQq3+Vp
	0MFN6EWZUXe9Rj5F5VhaXNzeauk9sQF9Qu7MNR1CfdXGGNHnTmIdliTV0oVvouD/nR0Cl/gx+8WlK
	pZNC4CwYbtYUMuNNIC+9HVF1xR0LxRD1MVMnmN9cRhr3v/1V1MF6COkj+obElA5reybvHvg6kNh4W
	UDUW/QQya7iiPGcFeoHgsRtAASGrHX/BKeMxMkrz+NHK0/lqKeRXwgWbYzNadsUNivk0rABIWmrNo
	zusJDoAV93hWIB2tW+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6I1n-0001og-1i; Fri, 06 Sep 2019 17:28:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6I1c-0001oP-Eo
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:27:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0146020838;
 Fri,  6 Sep 2019 17:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790876;
 bh=aLRmPl43ZbLFE5HkFDGotmTtNfpnGumo9iTQkZUEWHA=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=NXeAVOXDmbDAR6b8gVPBLnnahqfeZNg6ihO6nSKugJCoA53yiqFcfp+s+i98IaPGi
 FQuPIhtsTzbFZDerXuHHCUXk/+NUCuy+VNGEpNE59Ms9FXLGFAECSNE2elu0DUAkwG
 geVPM/by/joxsfKwQGQgNW8B+DkbdVN48mt/wzSI=
MIME-Version: 1.0
In-Reply-To: <20190813085714.8079-1-nishkadg.linux@gmail.com>
References: <20190813085714.8079-1-nishkadg.linux@gmail.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mturquette@baylibre.com, vireshk@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: spear: Make structure i2s_sclk_masks constant
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:27:55 -0700
Message-Id: <20190906172756.0146020838@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_102756_522051_01CDE1C4 
X-CRM114-Status: UNSURE (   7.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nishka Dasgupta (2019-08-13 01:57:14)
> Static structure i2s_sclk_masks, having type aux_clk_masks, is only used
> when it is passed as the sixth argument to function clk_register_aux().
> However, clk_register_aux() is defined with its sixth argument as const.
> Hence i2s_sclk_masks is not modified by clk_register_aux, which is also
> the only usage of the former. Therefore make i2s_sclk_masks constant as
> it is never modified.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
