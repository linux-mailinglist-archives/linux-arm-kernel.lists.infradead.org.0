Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28D210A3C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iy+k9O4UgFNakyCA+PS4TZmKxLgl0d1WzqUOpraUy0U=; b=OeUIfOk9ZV3v32
	qNtZv04yIHCcQ5DwH6S/9Gs05OMR8za6EWYIyNQEN0WGeOiz1FsrB7zvWxwh9HcEBkdp2KboRtPE8
	7e8n/AqPXrzTyOwiwytk+o0nkG1lW5RPICJR5rlDYJ3R6XIVSXeQkUSNRCUj12wZ04IDKlHUTAzGa
	+geRrMHIqpRKo4AHSQbF4RjMKnJGi8Gv4d+Vb4lu8BjyEDcpzFVQVhS3aiLnRQCNPj1sbX/P2ZnXZ
	1Ii52QmlKIPMoSVALolMA8Oop5MxJUp6jv6FpID9TqdUK2snJQnpEVizMdJq+sQ//u3y+ynGFixEv
	NmTzwxHeFbyOBf2W9uLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfBR-0008Gc-5w; Tue, 26 Nov 2019 18:03:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfBI-0008GF-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:03:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A2132071A;
 Tue, 26 Nov 2019 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574791400;
 bh=lfNjQBTmt+kHikceMt6iNpKMRgU8TUOlnbDKg4LsAOk=;
 h=In-Reply-To:References:Subject:Cc:From:To:Date:From;
 b=oqbVI4lZRGKqQyDqD2DfujjISi/M7UWx06DI4SoYVIIM1M/Snw+z1wsOpoCGect4u
 ipfYf/iAK2GBXloYMf1hO3aM300HT6UuDk9pLETdCBRvNnqcOGiN08S5ntNdqybsj7
 EAWs8ZzzkBxwle9eb8Ksr2M0mCys8m3ztfnFMz4o=
MIME-Version: 1.0
In-Reply-To: <20191010020655.3776-3-andrew@aj.id.au>
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-3-andrew@aj.id.au>
Subject: Re: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500
 MACs
From: Stephen Boyd <sboyd@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>, linux-clk@vger.kernel.org
User-Agent: alot/0.8.1
Date: Tue, 26 Nov 2019 10:03:19 -0800
Message-Id: <20191126180320.1A2132071A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_100320_614691_71E52A70 
X-CRM114-Status: UNSURE (   5.60  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Andrew Jeffery (2019-10-09 19:06:55)
> RCLK is a fixed 50MHz clock derived from HPLL that is described by a
> single gate for each MAC.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
