Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8BB765FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CCQ6CiXl1SNijBtA+0U0WMIoWoT8XOdrILI0GRoolPs=; b=iLCDNUWkI3NT3q
	Okj66vQcTqkqUL0eEQHr+VvWeKfzbgtmoWyNVrwy3ExPu/L7ogxp9Saj2GSUiA5kEBC04OOWgGYpH
	O10ch/A9/gs7GUoxSgRAUoF+awhMhY3gkB3ko0bPlmc+xIQZumKRq/Z8spC1efkj7HpFlMYaoT/9n
	Es4d8mGmR2K/WKOgqvCtmQ7NRkotx2Er5fA3CtDqiPJwhNwSs+VYwqxzu3BLkz/1VQgEsvrkCrhPp
	xLIV+eoO7I8vP8ZBYHEYqKxeKoHC5jNj3+i2tYRrC0RV6GrSJSf9e7bWUB7jCCjy9YKK7R4yDyhHX
	iwyxzMOgAogq/TYG9fVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzSK-00087R-Tl; Fri, 26 Jul 2019 12:36:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzRo-0007ui-EG
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:35:47 +0000
Received: from gondolin.me.apana.org.au ([192.168.0.6]
 helo=gondolin.hengli.com.au)
 by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hqzR8-0003yI-Sq; Fri, 26 Jul 2019 22:35:03 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hqzQz-0002Bv-KJ; Fri, 26 Jul 2019 22:34:53 +1000
Date: Fri, 26 Jul 2019 22:34:53 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/2] char: hw_random: imx-rngc: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190726123453.GA8415@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717090438.31522-1-Anson.Huang@nxp.com>
Organization: Core
X-Newsgroups: apana.lists.os.linux.cryptoapi,apana.lists.os.linux.kernel
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_053545_117537_E7D3F600 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kstewart@linuxfoundation.org, festevam@gmail.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, rfontana@redhat.com,
 linux-crypto@vger.kernel.org, kernel@pengutronix.de, mpm@selenic.com,
 Linux-imx@nxp.com, tglx@linutronix.de, shawnguo@kernel.org,
 allison@lohutok.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> drivers/char/hw_random/imx-rngc.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
