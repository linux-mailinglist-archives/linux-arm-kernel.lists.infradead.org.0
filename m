Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F11FA9F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KRoxEoLGlBiYZNnOqoI7BHdwo1qDMXIG4+B/+NyzCs=; b=RtknnJuDtAJpgZ
	YYKbEhjALzDAew3bYu64h+VqujAN5qYwNsJeMVHGGIhgsg5fsL3DbWcf9gy1JhlDyaw/v3xx8RHmj
	N1Xl5fzLw11oe2FZOlixctlmQg/e2Z9keFXQ9OR5NbwaTokuVISA4eEder8mBjmemTlXDlGi6brtB
	PSr8MDCUQh4jAo4xPxg8u68OVpKTB/QSu6aszxMeWWMOhIUw76GfVw/lIWXG04kMtzEHvTfxIW+V4
	npiTDzipij5KwUn4PgXuKLcDKDudG/vLXGAPXJEPIyLMuc+2WDbGbsDvjg0JNzhYnBGSsN8JXAPVo
	ryhnhyjLG1zrXKqC9FuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl65T-00029x-RF; Tue, 16 Jun 2020 07:32:51 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl65L-00028x-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:32:44 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1jl64M-0002Xj-Rn; Tue, 16 Jun 2020 17:31:43 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 17:31:42 +1000
Date: Tue, 16 Jun 2020 17:31:42 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH] char: hw_random: Fix a reference count leak.
Message-ID: <20200616073142.GA30519@gondor.apana.org.au>
References: <20200613214128.32665-1-wu000273@umn.edu>
 <CGME20200615131915eucas1p2b8f3fa0ceb757e36aa888a4476de034f@eucas1p2.samsung.com>
 <dleftjr1uglb5t.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftjr1uglb5t.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_003243_164488_4AAF9CE1 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philippe Ombredanne <pombredanne@nexb.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-crypto@vger.kernel.org, wu000273@umn.edu,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 03:18:54PM +0200, Lukasz Stelmach wrote:
>
> I believe this fix has already been submitted
> 
>     https://lore.kernel.org/linux-arm-kernel/20200522011659.26727-1-dinghao.liu@zju.edu.cn/T/#u
> 
> It hasn't been applied though. Anyway, thank you for your work.
> 
> Herbert, could you take a look at the Dinghao's patch, please?

It was part of a number of patches that did similar things.  The
general conclusion was that it should call put_noidle instead.

See

	https://patchwork.kernel.org/patch/11574843/

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
