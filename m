Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172719A3C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 01:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EtTo62oEVcBQY9I2QPV7xaMU4VMyn9LcRdBxdkeZHo=; b=I3PoHNFOmdecBc
	R4TZcIxZ+m48ja7zLMWLeqekkebkkQQI+rwH9+pVh3xYY/CtdP5jFnDNS5dOPomvWqGfTMANLt5Ft
	UktvZ+d2yjbPRkOrGcxqwZ+b2nM2AJtg9Fqw6/QOnWemGbwruNgLA9qh8dkuzho9wIBS4lSaH+Dij
	AlLs1I+FQ4lh2CZZ2K7svAyScX2LZMDa6Gpc/n5dyR2i5BRnt3KTfkRvsFGqXdo4ZaTt2UrbtsZtB
	zv6KHvEYf9EV0GA7Agh63wbbPg/bnIdk2oUZ+xd1WJK/mrR3SZrM3+JN4+P3SY2LQl/hCiLFJBcAr
	ZAp5H7HqX9q0IMGJHHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wQp-00070s-Bo; Thu, 22 Aug 2019 23:23:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0wQf-0006zd-CM
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 23:23:42 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DF6051539DF80;
 Thu, 22 Aug 2019 16:23:39 -0700 (PDT)
Date: Thu, 22 Aug 2019 16:23:39 -0700 (PDT)
Message-Id: <20190822.162339.831735149510227752.davem@davemloft.net>
To: Markus.Elfring@web.de
Subject: Re: [PATCH] ethernet: Delete unnecessary checks before the macro
 call =?iso-2022-jp?B?GyRCIUgbKEJkZXZfa2ZyZWVfc2tiGyRCIUkbKEI=?=
From: David Miller <davem@davemloft.net>
In-Reply-To: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
References: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 22 Aug 2019 16:23:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_162341_483597_B6D8D87E 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kstewart@linuxfoundation.org, michael.heimpold@i2se.com,
 kernel-janitors@vger.kernel.org, wsa+renesas@sang-engineering.com,
 weiyongjun1@huawei.com, opensource@jilayne.com,
 linux-stm32@st-md-mailman.stormreply.com, stefan.wahren@i2se.com,
 opendmb@gmail.com, yuehaibing@huawei.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, ynezz@true.cz,
 bryan.whitehead@microchip.com, jeffrey.t.kirsher@intel.com,
 alexandre.torgue@st.com, jonathan.lemon@gmail.com, yang.wei9@zte.com.cn,
 alexios.zavras@intel.com, claudiu.manoil@nxp.com, f.fainelli@gmail.com,
 swinslow@gmail.com, shannon.nelson@oracle.com, peppe.cavallaro@st.com,
 tglx@linutronix.de, zhongjiang@huawei.com, allison@lohutok.net,
 nico@fluxnic.net, gregkh@linuxfoundation.org, dougmill@linux.ibm.com,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, mcgrof@kernel.org,
 mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <Markus.Elfring@web.de>
Date: Thu, 22 Aug 2019 20:30:15 +0200

> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Thu, 22 Aug 2019 20:02:56 +0200
> 
> The dev_kfree_skb() function performs also input parameter validation.
> Thus the test around the shown calls is not needed.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
