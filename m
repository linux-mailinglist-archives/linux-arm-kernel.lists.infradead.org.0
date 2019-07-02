Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81015D80F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 00:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/XdswpcFGo/MA/dGexUe1hv0XPBk5mSB4Q4ZDFECDU=; b=H4Gzs09qZJo25s
	mwEx5eKR/4Z44oa87IOREnR/OiOFc1S3+3j26E5mpErmdI7E8pDDdpOnce79A6gFG37G0d1k2CL0p
	9/DmED1gDseJZtV7rVbA+k6/LJtyI3JjfotVqzgI/yo+nV3745lGm5EbIFgI8LgfSc96txPFPTlJj
	SI0ITjIQbHEL3+5MoVjElWEp8s3xlCPGJGAdcL00DkFClBB+ClBWS3FiBtVM4RFHw4hTT7carshZF
	EA0fP+6wULQ1dJnUbsKNX029MUXtKlOA4HeOfpduzjHn2uMotH9wOKbOaMgTfeYWHpz/Kz/FzyMcT
	mRdpJWxywvFIwM+C4yFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRCC-0007uL-5d; Tue, 02 Jul 2019 22:24:16 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRBy-0007ts-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 22:24:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 428AA1400CB15;
 Tue,  2 Jul 2019 15:23:59 -0700 (PDT)
Date: Tue, 02 Jul 2019 15:23:58 -0700 (PDT)
Message-Id: <20190702.152358.586281786791539430.davem@davemloft.net>
To: martin.blumenstingl@googlemail.com
Subject: Re: [PATCH] net: stmmac: make "snps,reset-delays-us" optional again
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190701224225.19701-1-martin.blumenstingl@googlemail.com>
References: <20190701224225.19701-1-martin.blumenstingl@googlemail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jul 2019 15:23:59 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_152402_987269_2A946BD9 
X-CRM114-Status: GOOD (  11.50  )
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
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, colin.king@canonical.com,
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue,  2 Jul 2019 00:42:25 +0200

> Commit 760f1dc2958022 ("net: stmmac: add sanity check to
> device_property_read_u32_array call") introduced error checking of the
> device_property_read_u32_array() call in stmmac_mdio_reset().
> This results in the following error when the "snps,reset-delays-us"
> property is not defined in devicetree:
>   invalid property snps,reset-delays-us
> 
> This sanity check made sense until commit 84ce4d0f9f55b4 ("net: stmmac:
> initialize the reset delay array") ensured that there are fallback
> values for the reset delay if the "snps,reset-delays-us" property is
> absent. That was at the cost of making that property mandatory though.
> 
> Drop the sanity check for device_property_read_u32_array() and thus make
> the "snps,reset-delays-us" property optional again (avoiding the error
> message while loading the stmmac driver with a .dtb where the property
> is absent).
> 
> Fixes: 760f1dc2958022 ("net: stmmac: add sanity check to device_property_read_u32_array call")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> This is a fix for a patch in net-next and should either go into net-next
> or 5.3-rcX.

Ok, applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
