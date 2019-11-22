Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6CF106EAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjE/YnuxrtXZr5sKJnuerLydk0z9K5hikBB/Kn8cLWk=; b=oo/1EGz4lLhkYp
	BGMx8Zzf1PUqhhp/RnLaru25VAFigVzcqJg73ZLKRHCnFSeiMtD79sC6kX7hDX4VUvSEpXqLlmGmu
	IC+Ug4sBZE2HOeGEHKXL9K2SIPD+2+qOGnkW7ADrDToQC7zR1ZQCTvMWZpyyeHe3MF9NA5MceFlC0
	pjNEgkwyz9YByhMOCV5bzLGvzPFxZE1ZOD68adLuecfN1PZLKiDA4sve8OxHZUNoE94Os7yr0PcQi
	BumGz9su9Z5qc8FO4xTef29Hn03smJDXexhFx6vETWsNQq/wkw7aPhVz47i/+XIjP23x/6ytphO9K
	RWrRoMWBi0ZA9h+E+SkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6pv-0004Jm-MI; Fri, 22 Nov 2019 11:10:51 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6pS-0003vM-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:10:24 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iY6pP-0005Jx-Kx; Fri, 22 Nov 2019 19:10:19 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iY6pO-0002kH-Fr; Fri, 22 Nov 2019 19:10:18 +0800
Date: Fri, 22 Nov 2019 19:10:18 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] crypto: allwinner: sun8i-ce: enable working on big endian
Message-ID: <20191122111018.uss7n573hdtmx6ed@gondor.apana.org.au>
References: <20191117160745.32197-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117160745.32197-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_031022_929481_4CD0435E 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 05:07:45PM +0100, Corentin Labbe wrote:
> On big endian kernel, the sun8i-ce crypto driver does not works.
> This patch do the necessary modification to permit it to work on BE
> kernel (setting descriptor entries as __le32 and adding some cpu_to_le32)
> 
> Fixes: 06f751b61329 ("crypto: allwinner - Add sun8i-ce Crypto Engine")
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 50 +++++++++++--------
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 24 ++++-----
>  2 files changed, 40 insertions(+), 34 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
