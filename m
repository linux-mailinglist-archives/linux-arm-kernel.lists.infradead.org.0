Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 723DE1DE88E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZgRHa6CIokKfocTeLM69o0QVS1mXbsbmBBc/EQlztQ=; b=Guv7xHUkd/ZY3k
	joeAjftas5puipHj/La9ILLuJRSv3o7cgrn1esZ4TEnjlVQQL0aEwQwDbjQEWMZCVOLmuq3TjS/Sc
	VXtpnGUARW7Na3UORySFCwVRW2J8prT1B5j0qvfIcC9DEwp3PDLqXNx37LFNtBcvLvtBRi/tU1UtV
	Uwf0MYwaoHh+HXLWL53raOixjuWNdNPYt2h9j5TpgT9VvJgM80xC+pMBP6Por5WAXNCWWwYBrLvSc
	xuHG4Gq1xOFjtGvAg98UvGTquQatKe+EVVk3BXNaBvwgLniBxczbLPDRDfFGz5JgcDCusM0TRdPCY
	CtGytHAwdpPfCyVvw6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8Qv-00072H-PP; Fri, 22 May 2020 14:13:57 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8Qm-00070r-Ot
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:13:50 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1jc8QD-0008Fn-G8; Sat, 23 May 2020 00:13:14 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Sat, 23 May 2020 00:13:13 +1000
Date: Sat, 23 May 2020 00:13:13 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nicolas Toromanoff <nicolas.toromanoff@st.com>
Subject: Re: [PATCH 0/5] STM32 CRC update
Message-ID: <20200522141313.GA859@gondor.apana.org.au>
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512141113.18972-1-nicolas.toromanoff@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_071348_807625_C3BE5AB2 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 04:11:08PM +0200, Nicolas Toromanoff wrote:
> This set of patches update the STM32 CRC driver.
> It contains bug fix.
> 
> First fixes issue if we enable STM32 CRC32 hardware accelerator with
> ext4 (with metadata-chksum enable) and other fs that use same direct
> access to update crc32 API without previous init.
> Second fixes some issues raise by the extra self-test.
> Third fixes wrong hw usage if there is multiple IP on the SOC.
> Forth fixes "sleep while atomic" in tcrypt test, and some other places
> (ext4)
> Last fixes concurrent accesses. As state is saved in the hardware cell
> and not in stack as other CRC32 drivers, we need to create atomic
> section to protect concurrent CRC32 calculus.
> 
> This patch series applies to cryptodev/master.
> 
> Nicolas Toromanoff (5):
>   crypto: stm32/crc: fix ext4 chksum BUG_ON()
>   crypto: stm32/crc: fix run-time self test issue.
>   crypto: stm32/crc: fix multi-instance
>   crypto: stm32/crc: don't sleep in runtime pm
>   crypto: stm32/crc: protect from concurrent accesses
> 
>  drivers/crypto/stm32/stm32-crc32.c | 230 ++++++++++++++++++++---------
>  1 file changed, 161 insertions(+), 69 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
