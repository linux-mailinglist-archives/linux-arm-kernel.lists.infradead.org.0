Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025D160A83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaDAmULsBO9CJXuSMKrDeY+n5INLiAYxZvbcZsO+guM=; b=KKw6TMnTYTJebe
	1NqviVhmGqQCT0dOxWCndR5fQJ1SohszDrubuIpwg68fSAJWpgyivRwLjL4LjXMH8SGR6pZREoAfn
	aNCgpnSU5TmcQ4XG+iFSL9LP4388hENfSWZZpa5xjQ3El11Dajoyg4eK551nieyBUEB2L/NcdZjQN
	6CE0rNfhW2ggst8/WmzHGH++BRvg4e8C6SOF/upZ+ttD54sksV8PcWYsnuknpkcP+/cWJmbmvsXCs
	0Uf3ZPy8W0+L63n2M7Z01CZFpX43d9F37axAferwo6fs+pzJ62sNkTDsUnGW8G4t73mOslKYIahzd
	NNVV2PcByNWVFsnNCujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZyB-00078h-Co; Mon, 17 Feb 2020 06:33:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zxs-0006yf-Bv
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:33:09 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9CF6206F4;
 Mon, 17 Feb 2020 06:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581921188;
 bh=CyxzI+GzmV4pKh83UJxSW/z+UjMTnARzMVXr0BkrxE0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QtgbWYlOQV8N7o/dRd0bFt3DgJwiwMcpY6CtGKNYQMdXr5govhhfFasUq7epSQjSj
 sCgKdD00DgEXbw+6bG5qjLDhBMlUNAUi8+ANp16KKCih0IhAdv7XwNK7yOj9wYCfSp
 zfQeREuq3rvlrejdtKbTMJpoHlU1rcr9ru60p/5k=
Date: Mon, 17 Feb 2020 14:33:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: drop redundant initialization
Message-ID: <20200217063300.GA6952@dragon>
References: <1581498180-2652-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581498180-2652-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_223308_462844_89579AF1 
X-CRM114-Status: UNSURE (   7.52  )
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
Cc: info@metux.net, peng.fan@nxp.com, abel.vesa@nxp.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, rfontana@redhat.com,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, tglx@linutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, allison@lohutok.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 05:03:00PM +0800, Anson Huang wrote:
> No need to initialize flags as 0, remove the initialization.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
