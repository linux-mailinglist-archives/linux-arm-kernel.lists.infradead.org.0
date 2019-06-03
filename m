Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82279331D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHZ6ywFh4p1PB3b9SHEcvLV5QhMWSP3glHrAcNrRzQk=; b=iDSyEpyd/DQNcX
	RXbJfmlHLeML3nRqjI1YztbkrJ6QrIH+edJeOoYrTP9qmvEqSOrRMJB+7czGBTVwDE0l4MW6Z15pc
	efTTZABgFhPppJLBKN+WAcLyR1SttEagEJktEeoxyKZhM0FOnUxflmi2Aqzym8fvRFhKCDiiXqOWg
	p2OtH3HOvmh+6btyCGU8qOCKkYS3tcMQS0N4W+4DB2cMe0Y2NcbKKWw5vsfIapjsAsRt0WxJP3jjr
	CLJBaYzvlL6Mp/X6nuy4LC6rEjnk1ETJ+/QJD/jzghCY5GR2ygKlXlaVek2LyUPscAReIb1gPODkd
	gsEuobsuzr5BFjx/YvDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnkg-00007M-DW; Mon, 03 Jun 2019 14:15:54 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnkZ-00006P-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:15:49 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hXnkK-0003TA-Vh; Mon, 03 Jun 2019 22:15:33 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hXnkC-0002q7-KC; Mon, 03 Jun 2019 22:15:24 +0800
Date: Mon, 3 Jun 2019 22:15:24 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Harald Freudenberger <freude@linux.ibm.com>
Subject: Re: [RFC PATCH 1/2] crypto: Allow working with key references
Message-ID: <20190603141524.wmjmgre4qge7zqjh@gondor.apana.org.au>
References: <20190529224844.25203-1-richard@nod.at>
 <20190530023357.2mrjtslnka4i6dbl@gondor.apana.org.au>
 <2084969721.73871.1559201016164.JavaMail.zimbra@nod.at>
 <14ffcdf2-ed9f-be07-fde5-62dfb1fce4f9@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14ffcdf2-ed9f-be07-fde5-62dfb1fce4f9@linux.ibm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_071547_778634_2227CE1B 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: david <david@sigma-star.at>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-imx@nxp.com,
 kernel <kernel@pengutronix.de>, shawnguo@kernel.org, festevam@gmail.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 09:59:53AM +0200, Harald Freudenberger wrote:
>
> The "p" in paes is because we call it "protected key aes". I think you are not limited
> to the "p". What Herbert tries to point out is that you may define your own
> cipher with an unique name and there you can handle your secure key references
> as you like. You may use the s390 paes implementation as a starting point.

Well we have one other driver that is also using the paes name
ccree so I think we should all use this name for hardware keys
with AES.  Only the driver name needs to be unique.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
