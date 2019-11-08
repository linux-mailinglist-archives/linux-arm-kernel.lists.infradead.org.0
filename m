Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2042EF5186
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPvgaQRbvzKlHBm9cR26lxi5WVnXrK2gXwBRphCbvMU=; b=iNFDZVxLqkZLCX
	XFA36HemxWHmeyTamoT8rZ7TwlPz8uC+kHiZkG2RHdbFaVtitT4WbvxPszoyJqOiTuhH5mABiirA8
	6oP0uHcsPMTnf07XbLTWIVV8Wjw4R9j5EPNIC9Yf3oDIc5ru0TghQPIz/IUDB4QfEdNs0EeM7WS9N
	6VEQAd29ajFq7jNOhS3IvLXk3beuRPlae7rMqir+cY3v7IPjkt16MVqDhoeR/syzHzOpSdd0l8MnR
	k7g3a2jFaA9t5dtN7TKakXNBRoMwAaFWWs4hY66T9J34QRaRfD6+2BEf1Q6gCQBaL8/I+IRxVcd88
	UgGh2qdbxPW3mcpe1LOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7RV-0007tn-Nd; Fri, 08 Nov 2019 16:49:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7RO-0007tM-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:48:55 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA1C22178F;
 Fri,  8 Nov 2019 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573231734;
 bh=9w0yj2YakXAi8n7djqtc+u+Gst/eMLDRpOqSpIO+PbM=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=cwFruo+s6FIdcnltcZTO1uzlzvCFUQn4AfTGqqEaPcp7m10fznEESpWHOpJG4FNuj
 YupXHvI//X/Wcca950+q3tzgDQ3h4he8U8iDZ7wSin1Lwra4ICJZEvsklftPKvbvQ5
 ZXur/0ZzPEyniH+s0ji4nzcKxnWcBguh34pw7h64=
MIME-Version: 1.0
In-Reply-To: <20191010020725.3990-3-andrew@aj.id.au>
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-3-andrew@aj.id.au>
From: Stephen Boyd <sboyd@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/2] clk: ast2600: Add RMII RCLK gates for all four MACs
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 08:48:53 -0800
Message-Id: <20191108164853.EA1C22178F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084854_487047_2801A5E4 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Andrew Jeffery (2019-10-09 19:07:25)
> RCLK is a fixed 50MHz clock derived from HPLL/HCLK that is described by a
> single gate for each MAC.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
