Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3B41D4839
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqSARRnBXv1NnWEfOza9PFtvaeu7UH8vWySTl96zcpg=; b=Gpe8PFdaKWwOK7
	ut9ZOoYe6gbJkyqX8h50jQHgtP4EyPL4KGBFqaaf33r03H086iYh7ivzgVq6l+fYlHuX/SN8HguRZ
	9aYaTEnyMKHB2vcPh+YxEUxCd1L5uJq/aGBr1i5ocaDN5VQVUkPflB6axQDCr6LL3GewnTQx5uak2
	/l6HpjWdUJmQ062yVa/OG82ST6c2ZrhblBZ3DxWrCQ/l6QHHTtcofNqIiT6OLzDtW3hTzHxGD+6SN
	7X5FNRKShNPKO0TMrq8tTXbBzXQRnZ9gZikKeb7o24rLpa3vSF+QtVB++yD6s2rL/KL5wzyHFo2Ks
	qMiPaflWRx5KBReBZmow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVlu-0007uv-C0; Fri, 15 May 2020 08:32:46 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVlh-0007ra-5y
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589531551;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=cHEQOWUyIIldwmU2G5ztyzURhkG246vmV36B4A8PLNg=;
 b=kENrgC7m/Kpgq4j8ANtKS+MN4QHd1X5Fd+CUkBilHO5KjkgDbUN5te1VZhEnV0W4Sa
 yBYncnBkSM30eVmV5h4J9lBl16fb55ACLL7P9LPqa/syAmW8WmkYEWca9dDnexJTIlpt
 O+G97y8cmWa0iHCtqxpNVktz+CFuoeewTNEwrW19t4KNBnyNd4PCComcE7iCODj7JlPX
 Kq7H8xb9NFElBwtW2QsSSgQ9/uWceuG6PEUg/0LkmkgxyCnNvS2ovI4WUz82QSyFnWQ8
 vyafwZI1y3kBg+BM7+iiGJMzypUJctwiHTRpd7J/iw3IczyQfjR+nFcclLr/G4EORekK
 4iPA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJfSc9C1S"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id u08bf3w4F8WN0ZL
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 15 May 2020 10:32:23 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Fri, 15 May 2020 10:32:22 +0200
Message-ID: <2080864.23lDWg4Bvs@tauon.chronox.de>
In-Reply-To: <dleftjtv0i88ji.fsf%l.stelmach@samsung.com>
References: <4493123.C11H8YMYNy@tauon.chronox.de>
 <CGME20200514221852eucas1p2bea169d0b4467b0ec9e195c6ac58a08a@eucas1p2.samsung.com>
 <dleftjtv0i88ji.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_013233_814368_0192AEFE 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 15. Mai 2020, 00:18:41 CEST schrieb Lukasz Stelmach:

Hi Lukasz,
> 
> I am running tests using SP800-90B tools and the first issue I can see
> is the warning that samples contain less than 1e6 bytes of data. I know
> little about maths behind random number generators, but I have noticed
> that the bigger chunk of data from an RNG I feed into either ent or ea_iid
> the higher entropy they report. That is why I divided the data into 1024
> bit chunks in the first place. To get worse results. With ea_iid they
> get even worse (128 bytes of random data)

I read that you seem to just take the output data from the RNG. If this is 
correct, I think we can stop right here. The output of an RNG is usually after 
post-processing commonly provided by a cryptographic function.

Thus, when processing the output of the RNG all what we measure here is the 
quality of the cryptographic post-processing and not the entropy that may be 
present in the data.

What we need is to access the noise source and analyze this with the given 
tool set. And yes, the analysis may require adjusting the data to a format 
that can be consumed and analyzed by the statistical tests.

Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
