Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C863F1D4925
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHDTbTo9ZAjFVQnQcKIE3AvDLprYnXwdy8eMPyapACc=; b=Tzcz7lzaI91Px9
	dvnKgVSQbcdTu8RRg6fh815WR5KMgUvOGQtX2vL6JNUPoyCZilPKnkIxOVCcCx5Dhir0Uj+sXXTYE
	vLT2X/cPOEI3gSLLzwHtUPG71doaCbZoDNotiM23gHFdv2/9wOArGvt6kpsqtuhzdVCzxhlH7wgkj
	MCnfybBX9FIWZ0Di+AleMfZ8wZQiseNKN9GyzHtpn3ZYdzB6vuKiCuy5p69sRjpgeydB75cmVg2XV
	0X+ngATg9hwy3OhT7DKkfsN97bEcd9vJ9heW/dedlSnsm3U1HK9ZVuNvdcPAZnbCcTkIR+gKt4e5z
	njJE0qghNZKF8UnfPjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWMy-0002Ou-5j; Fri, 15 May 2020 09:11:04 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWMm-0002Nu-HV
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589533850;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=5rOBFNRSIm8wOG/3ZTXTdyUjSY/V30dWRh3affiRjZo=;
 b=WqgaIKIsQ2h1AYuo+WjjNoKUYYhvzWGt3xBwyiS/i6WOWe3hkGsRk79Of81Kqy4fum
 PaTaI4pFm3RZJbPKDG7yAMMwz7GwshkKhCFv0lJ40Q/1U7S5w7cEbCt0vkHYRcXr/ura
 vUij3uMwBSq6Q69xOd8tUzM9wyhGua5soyYhk7mneN7AZ8SD1jTaEjfrp/5Ic+xiT4WF
 PE3fD/54P1IHoaS1+pG+ukBXlKUhjvQId3RssX/ZbQt4yZVEJYOTRQXn+GsPqC0lv4i7
 GSReKvXoqLvBISAYkvt2dVr7PnxsKSDKroXG2HQg5opSZovMqH4SVLJA58aE5q67Q9GF
 Nw0g==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJfSc9C1S"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id u08bf3w4F9Aj0s8
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 15 May 2020 11:10:45 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Fri, 15 May 2020 11:10:45 +0200
Message-ID: <3640422.T8yoyu11Ch@tauon.chronox.de>
In-Reply-To: <dleftjimgx8tc3.fsf%l.stelmach@samsung.com>
References: <4493123.C11H8YMYNy@tauon.chronox.de>
 <CGME20200515090158eucas1p1b653fc50f1ad4f0f6c92525ab3188d45@eucas1p1.samsung.com>
 <dleftjimgx8tc3.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021053_173321_5335C76D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:12 listed in]
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

Am Freitag, 15. Mai 2020, 11:01:48 CEST schrieb Lukasz Stelmach:

Hi Lukasz,


As I mentioned, all that is or seems to be analyzed here is the quality of the 
cryptographic post-processing. Thus none of the data can be used for getting 
an idea of the entropy content.

That said, the ent value indeed looks too low which seems to be an issue in 
the tool itself.

Note, for an entropy assessment commonly at least 1 million traces from the 
raw noise source are needed.

See for examples on how such entropy assessments are conducted in the LRNG 
documentation [1] or the Linux /dev/random implementation in [2]

[1] appendix C of https://www.chronox.de/lrng/doc/lrng.pdf

[2] chapter 6 of https://www.bsi.bund.de/SharedDocs/Downloads/EN/BSI/
Publications/Studies/LinuxRNG/LinuxRNG_EN.pdf

Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
