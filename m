Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E9D6917
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErkPXlGJ5t2Px5GWwSnYHyl6xL1jr/qN8MQIxX4HeXo=; b=nha9zew0s6xyjg
	DgbBsjNH8RdN8FuHEK1hY2s8/wOJd0WqdAmehsAuHTpDaKf1j0eq37n8ag9/nj20zyKolDgfgmMMs
	FayAnZIzeq12bPKxpQljz33ZwxD97ECEdXpXk03ncxx89wedNKUrOEF4TYnO1Q+dt02CKW7g8QXPn
	D5o3vjYkG0xY436CliC2k0PcH3x+se5F9CGJQKDxYIoW3VWp/lbDlg6Y8f4wRQn6U7F0dI4ZFaHqV
	RLEjUXnSMnMEQjC7KX6JccmjPYRPc9/NqIb5+HpegiJqy8UYaSZ7N172suCXLnm5wKJjxg0h5ERKI
	KBPDyT2BqM+j3hvrnhKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4lp-0005GI-DB; Mon, 14 Oct 2019 18:08:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4lg-0005Fi-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 18:08:30 +0000
Received: from localhost (unknown
 [IPv6:2603:3023:50c:85e1:b5c5:ae11:3e54:6a07])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8B9641429F7E8;
 Mon, 14 Oct 2019 11:08:22 -0700 (PDT)
Date: Mon, 14 Oct 2019 14:08:19 -0400 (EDT)
Message-Id: <20191014.140819.2180009161399855683.davem@davemloft.net>
To: ard.biesheuvel@linaro.org
Subject: Re: [PATCH 23/25] crypto: niagara2 - switch to skcipher API
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191014121910.7264-24-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-24-ard.biesheuvel@linaro.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 14 Oct 2019 11:08:22 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_110828_855692_93B58C4B 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: ebiggers@google.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 14 Oct 2019 14:19:08 +0200

> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Acked-by: David S. Miller <davem@davemloft.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
