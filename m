Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AD11E5277
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjWYJcRi3MGtdWLqBx33yL+/+mocw5wAJXQpYwfl05Y=; b=NBjMfCnDk9UZP5
	TqPx+H4PPNQbBMD4HHUEnKDB6QguDqsG/H0jpZ358IsO6Wb45TtMLZS/Tij7f0WJY3rqWJAj0chMB
	SqHLcfHmjlA4u7ty7gCJrXN8NtgssanKNpx2TknIYCgCrgneGPbYGGb4TXz0mE6OvP1BDpY6EkY7+
	Am5N8uxcp6CMPrmbMZO1K0svncMcT1ZIJf52XMmny4zyxindkmRA9e67UdTrKFxjlMvMmGx00w0Su
	eQaXFEocqw9f7Yl8sXABA30aHnMZrIpCV3tgW5mCpXBOJaJ42MUOlwmqPy7Ifbqy95QtVP7pwsjfS
	5clc+OwlEkNw8qfQldxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6v5-00060C-BF; Thu, 28 May 2020 01:01:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6us-0005zr-BE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:01:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF3A8207CB;
 Thu, 28 May 2020 01:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590627662;
 bh=QZVovAg3P0CDDBYuXa84Mk4f+pzCTaS1urGpsaPq4pM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=UtXLQgkfltJgjpCiLclQ2qwHaOA9rs+AOTPwCpDhc6lt8/t8zfrZxKVodhkG4jCvy
 D8b5Ba+nVhfBGuwaLdOCdz46hn/yIoJq4dNCXiKwilCxkpx+izlzfRqYbQ9NDCnlfK
 JUvH/nHkCj8NvhGhzBNWPJDsZ8n2/Sg0mnHGozRI=
MIME-Version: 1.0
In-Reply-To: <20200519224151.2074597-2-lkundrak@v3.sk>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-2-lkundrak@v3.sk>
Subject: Re: [PATCH v3 01/13] clk: mmp: frac: Do not lose last 4 digits of
 precision
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Wed, 27 May 2020 18:01:01 -0700
Message-ID: <159062766126.69627.12547507696491958467@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_180102_403822_E9B3250C 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-05-19 15:41:39)
> While calculating the output rate of a fractional divider clock, the
> value is divided and multipled by 10000, discarding the least
> significant digits -- presumably to fit the intermediate value within 32
> bits.
> 
> The precision we're losing is, however, not insignificant for things like
> I2S clock. Maybe also elsewhere, now that since commit ea56ad60260e ("clk:
> mmp2: Stop pretending PLL outputs are constant") the parent rates are more
> precise and no longer rounded to 10000s.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
