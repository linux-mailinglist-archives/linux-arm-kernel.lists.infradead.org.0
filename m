Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301B0127642
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qp+b4pG/dcBBwYcV9gILSz84Jae5qpGtS1cS1FgADw=; b=fQUzQW7lp02VMc
	E4GK9xpBZx3TUWjuKZOuoI9i6F5q0f4ks2tSqaMxMwT7e2eOsTMDZyTJNvo5yS6vsHYGFGh7WFc1+
	4Rkaljpnw0uCbXXFERqEIZgadeeSNrpTYrhs8coIrLZNwUaZ/1WRQPzkRt1GIy1M5hgifJ5hPcmEL
	NHQtK1nkq5wiGz0QnNFBXtdlDakfYnGL7mjlZtibHuIZ07BwguiNN6gysvFaOscMgUEn9MxYfzlSg
	DPG6/RTtpW/s/Bbp3hYB+JeNviLSMAXHP391fh/RMr/h4dzjd7n3CSqGYW7baVMi9aLKFsKI0RSHf
	EhJ0nKNEVRbv0OvYN52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCOs-00074T-C4; Fri, 20 Dec 2019 07:08:38 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCOO-0006pv-9m
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:08:09 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iiCOH-00007K-Bt; Fri, 20 Dec 2019 15:08:01 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iiCOH-0007rr-4J; Fri, 20 Dec 2019 15:08:01 +0800
Date: Fri, 20 Dec 2019 15:08:01 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] crypto: atmel-aes - Fix CTR counter overflow when
 multiple fragments
Message-ID: <20191220070801.is2wplradsjjjejg@gondor.apana.org.au>
References: <20191213123800.dsnxfh4tja2q5kbv@kili.mountain>
 <20191213144529.9613-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213144529.9613-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230808_566526_C27AAF6E 
X-CRM114-Status: UNSURE (   7.29  )
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
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 dan.carpenter@oracle.com, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 02:45:44PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The CTR transfer works in fragments of data of maximum 1 MByte because
> of the 16 bit CTR counter embedded in the IP. Fix the CTR counter
> overflow handling for messages larger than 1 MByte.
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Fixes: 781a08d9740a ("crypto: atmel-aes - Fix counter overflow in CTR mode")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
> Thanks, Dan.
> 
>  drivers/crypto/atmel-aes.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
