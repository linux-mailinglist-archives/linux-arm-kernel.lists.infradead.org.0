Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4567111A83C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5fWLbCUgGWd+28pIYZ2Tz+l9lU/G5xwJGE8tjci8sM=; b=Ym2Bz5SyMSBPgX
	N0ujkOpNf8/hiiDyViwG5Yko5qkRidnSfhylavOmDUWiHrNllg4yBHyoYYkp/vmsLoLUtjBs/f5sf
	g65N9VgpL4BlZ5f9u69c8ZKU0/RWfxj9AuD30mKXU7KcnFSsiSCw/Yinl+WP1g/oNnJfMRdd6Tdrb
	4lY23zyTkmIc1ylUFhNBjWTWJ34TqiZz5qvMn+f3Uk5f50quYIhcV22+01q3hrkXOuP1884B7mbiZ
	U+gbvFA/fBE9cXkS2UUlQ+90oriDSJFq1DooagZknhgoQAcaO7SCPrd85TdBk2Ivqn+l0xKFNHASy
	b/cF2PgDJvgAtDgZJIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieye6-00074m-FL; Wed, 11 Dec 2019 09:51:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieydy-000745-5h; Wed, 11 Dec 2019 09:50:55 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieydq-0000iP-RW; Wed, 11 Dec 2019 17:50:46 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieydn-0006eC-Cu; Wed, 11 Dec 2019 17:50:43 +0800
Date: Wed, 11 Dec 2019 17:50:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv1 0/3] Enable crypto module on Amlogic GXBB SoC platform
Message-ID: <20191211095043.3kngq7wh77xvadge@gondor.apana.org.au>
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <a4610efc-844a-2d43-5db1-cf813102e701@baylibre.com>
 <CANAwSgQOTA0mSvFW5otaCzFPHidhY7VFcrXZHjCD-1XkQpcx3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQOTA0mSvFW5otaCzFPHidhY7VFcrXZHjCD-1XkQpcx3w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_015054_365121_8519B8C8 
X-CRM114-Status: UNSURE (   4.50  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:07:53PM +0530, Anand Moon wrote:
>
> name         : ecb(aes)
> driver       : ecb-aes-gxl
> module       : kernel
> priority     : 400
> refcnt       : 1
> selftest     : passed
> internal     : no
> type         : skcipher
> async        : yes
> blocksize    : 16
> min keysize  : 16
> max keysize  : 32
> ivsize       : 0
> chunksize    : 16
> walksize     : 16
> 
> name         : cbc(aes)
> driver       : cbc-aes-gxl
> module       : kernel
> priority     : 400
> refcnt       : 1
> selftest     : passed
> internal     : no
> type         : skcipher
> async        : yes
> blocksize    : 16
> min keysize  : 16
> max keysize  : 32
> ivsize       : 16
> chunksize    : 16
> walksize     : 16

Oh so you did actually get them loaded.  You need to run tcrypt with
mode=500 instead of 200 to test the async ciphers.  Does that work?

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
