Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597D792B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjMH5ABd/bxsyChvzvVitTrKVhJZ7CkF9NtYFpncATE=; b=OJo9BTK8PRgdVe
	O4cj1KImGVKeH4D2i9EUGF8r13vBI3EEVTSq7TC1hK+HIBOyZzWQ30UqxHglw+h3kUZ7PZ1x29Wbf
	WQRC0GVTo056pOayodF57172sdjWnMoICUtMb+Vd+6+Fmmk/s9DCOJybuLKltCmwssrMSoHVeV6PO
	/nsLtmulTBy75hhydmh7lLrLAcNPJjFm4nKqLW56u6ntGzSFinczEnZRq4BZiK2V+LuEAW7w+JzL+
	FDOMNg62gqrqA7WFGVBvSsEOSLbrIgC9pcT9/KyNoiCXAJFeZbfonSY5UyR94LQBlh6o80CxIOFss
	aYnRDj67aCpGlRSLY9BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9uE-0005v5-EE; Mon, 29 Jul 2019 17:57:54 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9tw-0005rd-Ea; Mon, 29 Jul 2019 17:57:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6124B14015B10;
 Mon, 29 Jul 2019 10:57:32 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:57:31 -0700 (PDT)
Message-Id: <20190729.105731.2008954478313187190.davem@davemloft.net>
To: martin.blumenstingl@googlemail.com
Subject: Re: [PATCH] net: stmmac: manage errors returned by
 of_get_mac_address()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190727192137.27881-1-martin.blumenstingl@googlemail.com>
References: <20190727192137.27881-1-martin.blumenstingl@googlemail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 29 Jul 2019 10:57:32 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_105736_487889_6875A216 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 linux-amlogic@lists.infradead.org, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Jul 2019 21:21:37 +0200

> Commit d01f449c008a ("of_net: add NVMEM support to of_get_mac_address")
> added support for reading the MAC address from an nvmem-cell. This
> required changing the logic to return an error pointer upon failure.
> 
> If stmmac is loaded before the nvmem provider driver then
> of_get_mac_address() return an error pointer with -EPROBE_DEFER.
> 
> Propagate this error so the stmmac driver will be probed again after the
> nvmem provider driver is loaded.
> Default to a random generated MAC address in case of any other error,
> instead of using the error pointer as MAC address.
> 
> Fixes: d01f449c008a ("of_net: add NVMEM support to of_get_mac_address")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
