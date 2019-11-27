Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8662210B578
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dkc7ISNrTY2iNrvb2NiaCHEi7Zcmsh3I39i2jqVuRYI=; b=ccX01BZq6JYbYv
	VBnH+HvKW6BEITQa5mtMHasiKbTwC6NVarEqnK/tL8Ei/FaPpplsBvEQbiH0enkNTCEBtXaQG2QZc
	9nB/xpwBT86gmSN3BJGJbUjXxX2rFu3HxykJScIrTpz8GwSXRisTgufuXTGEoizBKNHO38X6izi0p
	VhzL2duD0GLEZEi2D9Bc+uY/reJD2aVwfvlpr5ndugfGgwOWy+1ix2cPT98YQRLCXnG/Obs9JB3R/
	hmIW3WNWK9S/62Ai5dATsfhCcFuE0omC9IyXoX00yxnou0BiQipVn/UJqMoeDWQ2TNAwLKPWx9AkY
	xUA68fmrpU13XeQmhbvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1us-0007hw-J8; Wed, 27 Nov 2019 18:19:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1uh-0007gw-5P
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:19:44 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DEA72070B;
 Wed, 27 Nov 2019 18:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574878782;
 bh=3z/LI0ZW+lWzsFFtnbhGfCPlI9pGPLBMxsnuKFuuTxE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yCI00rr6Y6zcqdb8oSw3hpBOnEFRedT3VgxdgpCBrRq0CHnPg+iFvzaoFjMMou/tm
 lLPWW4i7EsV+xNfeARsrDmT3BPHdCbbuKt0StnvdNbWj4KfPY5Lrlcirz5leqh+QAk
 DLwSqC8CR65E43Xx9abjOEfXf/edj6DU1MR/MyR0=
Date: Wed, 27 Nov 2019 10:19:40 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3] crypto: arm64/sha: fix function types
Message-ID: <20191127181940.GB49214@sol.localdomain>
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191119201353.2589-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119201353.2589-1-samitolvanen@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_101943_223333_C52E2EA9 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:13:53PM -0800, Sami Tolvanen wrote:
> +static void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> +				int blocks)
> +{
> +	return sha1_ce_transform(container_of(sst, struct sha1_ce_state, sst),
> +				 src, blocks);
> +}
> +

'return' isn't needed in functions that return void.

Likewise everywhere else in this patch.

Otherwise this patch looks fine.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
