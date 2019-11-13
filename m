Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C28BFBB88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 23:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAMwJJxJWSVSsMOgeoTbDFlUhPRaRuh7xvJyCXO6wJM=; b=pGCmCT24GJ3s7f
	3iUzB/H7+fsoFHc/Php56uNC2ztvmqbPqrFFfhayERoNvRo/6P125jkNdEIJg6E6Cxm+9+qJd/u/9
	uoUC28ItZaHC8YS9c0g7nraL/KAeMkFpo4M5bN2WMJ4/je/JOMd6uVLX/AZIMBQ4uQZ/y9Q7BlZSz
	qk0wNRcKO0WLLuTuyZ1eoXzjWxV8Acu4E6/QxzCg765Gf2pO6Uawvi6AMi5wMpxP6ozK1G/txA+0P
	h9Il/9lVae5Fg/xpnDwF3yGmCvh4iWVtFF8KVU5VoP3ulLNtMgpMtoGZgrr+tqtoutV/XxjDxJu2P
	EgnRdmkX1JkJyZ9lvUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV10v-0002wN-Dx; Wed, 13 Nov 2019 22:21:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV10m-0002vw-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 22:21:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5E9B206E3;
 Wed, 13 Nov 2019 22:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573683677;
 bh=5JhH5wXUGl6ui3+sVP/PrMjxe2XX9RlIT1LO4ZQTbhI=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=e4e/6PYgxzaeEkTSAv029ucwYwUw/0EEl8yZ8uNtOFVbE2t/k1MvtzH9WiH/ztLoW
 RI0ArGrKfXTgi9YEU4FBYzitlv7tk6GNtsCb4xaSOTqKmKg9CgK1QTIdu+2xt90jFD
 OP3uy7xn/r1aBdS0+UcD6mBL/2QhslNKNaYpz8Wo=
MIME-Version: 1.0
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 0/7] Add Bitmain BM1880 clock driver
User-Agent: alot/0.8.1
Date: Wed, 13 Nov 2019 14:21:15 -0800
Message-Id: <20191113222116.E5E9B206E3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_142116_600306_75970DED 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-10-26 04:02:46)
> Hello,
> 
> This patchset adds common clock driver for Bitmain BM1880 SoC clock
> controller. The clock controller consists of gate, divider, mux
> and pll clocks with different compositions. Hence, the driver uses
> composite clock structure in place where multiple clocking units are
> combined together.
> 
> This patchset also removes UART fixed clock and sources clocks from clock
> controller for Sophon Edge board where the driver has been validated.
> 

Are you waiting for review here? I see some kbuild reports so I assumed
you would fix and resend.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
