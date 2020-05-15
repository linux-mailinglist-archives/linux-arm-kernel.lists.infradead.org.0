Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2062E1D45B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VFmUlW0saeoMEoblnmVBTf878vcRdwVv6lDht2ihSTQ=; b=kMNbQEJ12Gr6SY
	jpSJUh6ZfHM42nFYrRdNppqXJ0IKhWdLnua79E4fxBJm2IR8r3c+21AE6diPyVBLEw9/k/0IlGbYC
	HRLz03XnelgdbUOZ1BJXCueazWvB0r/E45C4PAiio2PcSH2GWvWkUnagvO0g57dKq0OnPNqicMfiP
	etL9fEHQcqfHCxkzOZp6jhLSUOsfK+er9scftiqdTY7AgspKtWdJkHdgNLbYjYdASOpbQlUxWaov4
	qOs3Hs3/QZ6RhdPD1H/Maw3CyTq9JNCPlh4Mj1tGDNoXNIuOu6bXDgzmkXTC2zNe/BwBpWybpv+6+
	A4Cf25vJV+nLyO9R2dtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZTeQ-0001Hs-2n; Fri, 15 May 2020 06:16:54 +0000
Received: from [216.24.177.18] (helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZTeB-0001Bs-IP
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 06:16:43 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jZTdV-0007KG-6Z; Fri, 15 May 2020 16:15:58 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 15 May 2020 16:15:57 +1000
Date: Fri, 15 May 2020 16:15:57 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] crypto: xilinx - Remove set but not used variable
 'drv_ctx'
Message-ID: <20200515061557.GA11092@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505101200.195184-1-yuehaibing@huawei.com>
X-Newsgroups: apana.lists.os.linux.cryptoapi
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_231639_968341_C18F6412 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.24.177.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FAKE_REPLY_C           No description available.
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
Cc: kernel-janitors@vger.kernel.org, rajan.vaja@xilinx.com,
 gregkh@linuxfoundation.org, yuehaibing@huawei.com, michal.simek@xilinx.com,
 hulkci@huawei.com, linux-crypto@vger.kernel.org, kalyani.akula@xilinx.com,
 jolly.shah@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/crypto/xilinx/zynqmp-aes-gcm.c: In function 'zynqmp_aes_aead_cipher':
> drivers/crypto/xilinx/zynqmp-aes-gcm.c:83:30: warning:
> variable 'drv_ctx' set but not used [-Wunused-but-set-variable]
> 
> commit bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes engine") left
> behind this, remove it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> drivers/crypto/xilinx/zynqmp-aes-gcm.c | 4 ----
> 1 file changed, 4 deletions(-)

This patch doesn't apply to the current cryptodev tree.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
