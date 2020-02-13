Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259C015BCE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhygqyMWh7fIGtZjXH7YB8CM8nasPUz7MSXYBbNOdFI=; b=JlA8T/LIoOX9RQ
	Z/OH6ld3fIWQ2EwR32tq/b57YDaA1ouuEqNgGOlU6/SrBuCdW1T6Ym+SdUC2u6X5eF3JDgC2dv6Or
	B4IphRvzpgUwfX+lh5TxEihYZef7GrwDsMb649wRS9UVbmMMvmTPnaO+H9NkA+d27Arqua5r2qN7k
	tGWLhyq2pL7de3UGtKeBGnTaf4z8tuQ1eoblOnTVTf1et7VkbwKoPC3ha4CDnbine+ZNfnk535NE4
	jeORRr6cWlp4ISGQ7iDsxpWpSDUKICdmJWrtoANE8EBnyFsYUYkBHGBDoD8jLMElOto1Thtx3nyIe
	H+yUaHMg+ofHaTeUI0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Bpn-0003co-2H; Thu, 13 Feb 2020 10:35:03 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Bpb-0003bS-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:34:52 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c825c743;
 Thu, 13 Feb 2020 10:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=date:from:to
 :cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=mail; bh=KtZ0R6I5rd1L3LwS/OgY7h9rrKQ=; b=gLm5/3y
 wGCk+Ly/53PgQmw5pBcSoBfnZgeVR6oqIALyYFiOyzjM0zxIFgA0pex1cjplFhJx
 5SSDItHjKW0CTs0HLn8J1AO77UU2SL8VeTuO1VfcXRgxqKZCKlV2VXpk0hQAEGFG
 ATmqyNd9iwiiVFBpTS4WMk3+N3VizgaD4033jGQfpjl8mnQLvYPA9nuYD4VHFzMD
 YNhE4fZFJzqtcuekbWj1bDC0IuKk8GNp/9sx3AnIPQs9NspKZTYOUlG0qQssGyAW
 mDRzCAVxH2XyeJgOzU4zTVY8ebKQRNr3vSTz29aFLp7oWw6eoGBjxTW9il3FCYvU
 7+ncwhCqsru/Q3w==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b6490da0
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Thu, 13 Feb 2020 10:32:48 +0000 (UTC)
Date: Thu, 13 Feb 2020 11:34:44 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] crypto: arm64/poly1305: ignore build files
Message-ID: <20200213103444.GA700076@zx2c4.com>
References: <20200203233933.19577-1-mcroce@redhat.com>
 <20200213092355.i77luefms23jkud2@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213092355.i77luefms23jkud2@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_023451_431731_326024E0 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Matteo Croce <mcroce@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 05:23:55PM +0800, Herbert Xu wrote:
> On Tue, Feb 04, 2020 at 12:39:33AM +0100, Matteo Croce wrote:
> > Add arch/arm64/crypto/poly1305-core.S to .gitignore
> > as it's built from poly1305-core.S_shipped
> > 
> > Fixes: f569ca164751 ("crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON implementation")
> > Signed-off-by: Matteo Croce <mcroce@redhat.com>
> > ---
> >  arch/arm64/crypto/.gitignore | 1 +
> >  1 file changed, 1 insertion(+)
> 
> Patch applied.  Thanks.

Probably makes sense for 5.6, no?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
