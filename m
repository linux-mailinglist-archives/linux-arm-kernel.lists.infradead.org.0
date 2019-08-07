Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D585507
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 23:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxTY7fxlcPOKkrg+LeGam4GBpFCvUov+HY//kJBm6fU=; b=uva+RvG/9YavO2
	dNbFjQ1OlsZQo8FqiyD6EFFi8a3Bl0zcOEfyexmEliJeHXac1xIMdkuYIiT3kYgWforIVmSDcBfcc
	4QEHc7xDu9e9hIraKSlYA++K1CLKQCS2onPeDwxtID3rRXr6xx8jHOPOy2A1CSahNOlA51azqNfsP
	GnTLo95AlUMRIQUKGH8FsotqSUVWK+yG8VpbS6J16PQZ1p9yjaHzHXcXeeTLy8c7XcelOw0IQjVUQ
	lgs4TTTp5xeYxx0hDNJKPmIbiEbDQD9pfT0T9u1MrWQ+0DlWBc2/mGsjzAZrnkiybBSlBak4sdcFV
	idAyiQjofOIp3WMBfJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTHn-0007Dg-VK; Wed, 07 Aug 2019 21:15:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTHc-0007D1-Fa
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 21:15:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D6B0217D9;
 Wed,  7 Aug 2019 21:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565212541;
 bh=mPs5ZRxH/plyzQCc3mZVnB4VCrN6NeDkFyiCjTFTVtE=;
 h=In-Reply-To:References:Cc:From:Subject:To:Date:From;
 b=evVShKsELYA/qJL/FotSY8uoAWZf/EbpbypuGS9QvppQIIUWYxHHjl70dzSqeF2/s
 BHZw3OUEZ0Nq7db9hOloZhWWBoVvcnV8fWciveKFPCSnX38Rq6WajRrhfbyJ1Zx9Gc
 1jmyIRmeSDb4mjzAWhRtKj/hmThM7QY0q3pyKpO8=
MIME-Version: 1.0
In-Reply-To: <20190710141009.20651-1-andrew@aj.id.au>
References: <20190710141009.20651-1-andrew@aj.id.au>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: aspeed: Add SDIO gate
To: Andrew Jeffery <andrew@aj.id.au>, linux-clk@vger.kernel.org
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 14:15:40 -0700
Message-Id: <20190807211541.5D6B0217D9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_141544_544187_7301443B 
X-CRM114-Status: UNSURE (   7.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 mturquette@baylibre.com, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Andrew Jeffery (2019-07-10 07:10:09)
> From: Joel Stanley <joel@jms.id.au>
> 
> The clock divisor comes with an enable bit (gate). This was not
> implemented as we didn't have access to SD hardware when writing the
> driver. Now that we can test it, add the gate as a parent to the
> divisor.
> 
> There is no reason to expose the gate separately, so users will enable
> it by turning on the ASPEED_CLK_SDIO divisor.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> [aj: Minor style cleanup]
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
