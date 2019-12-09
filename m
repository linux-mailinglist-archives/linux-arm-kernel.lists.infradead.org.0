Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A591164FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 03:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyevX3L1vLGe6J6+wPF7gSYnqztKVkLyrqCoAsgCbf0=; b=b64mnXmISxLmVT
	2/3JopF9j4PezKmQsn6FspWc/fUPOQhdD/m761kCTiqKfvcwAIVSLsJtunFjQ6U+CdSS5/NnCFUVj
	78yU4gSgNIrHw7QaKZ8xkgKoqmfTZliQCBPWtubgLGWv5iQDSkXfkWJI3FcixxJJGK2s2UdpKDthI
	xukzWYo8W2ziMpTxIufTPmVNdAp5VkkOOEuHmUqC5k4SvtByiYYxAac2RSgzVcOqovAqF/xvmwHCy
	OfbRLh/G6bdZ01V3wShdwZ398xROLqikLZ+P210yw8l8571m4SX2oA+wgf30ERNEtB8KH8oI5+2gy
	wJkRNWhTyTuR3ToOW90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie8Ue-00052c-6O; Mon, 09 Dec 2019 02:09:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie8UV-00050i-TO
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 02:09:41 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0999720692;
 Mon,  9 Dec 2019 02:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575857376;
 bh=JLxEqqxpCe5bAhydTfPgjTU4mz3YsyGNgOQW8WOzdRs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lxrbap9TBH0X8QV3+OnMlQANVGLtE+Y1v6WFoNN88Oall/WRwM22ZHbfLlTsamfPV
 80bexNXMoqUJPkGHgoiyg1o4HNwtrcJB6z87huz7v4u/x1RuanopuAgvc1g1TmhgTK
 ljx8XIQStAfOohLuWTLXq76pA/MAkQBb61y8Whi4=
Date: Mon, 9 Dec 2019 10:09:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Jan Remmet <j.remmet@phytec.de>
Subject: Re: [RESEND][PATCH] clk: imx6q: disable non functional divider
Message-ID: <20191209020923.GT3365@dragon>
References: <1573818017-31949-1-git-send-email-j.remmet@phytec.de>
 <20191202134119.194625-1-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202134119.194625-1-j.remmet@phytec.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_180939_995371_25760553 
X-CRM114-Status: UNSURE (   8.92  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 02:41:19PM +0100, Jan Remmet wrote:
> The /2 divider between pll4_audio_div and pll4_post_div is not working
> on imx6q. The frequency is not halved as reported by the clock tree
> and measured on clko.
> In the technical reference manual the divider was removed in revision 4.
> It's also not listed in the imx6qp manual.
> 
> imx6dl manual mentions a divider for PLL4 and the according register
> description. So keep the divider here.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
