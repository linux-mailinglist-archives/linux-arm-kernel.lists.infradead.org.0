Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5000A1E529E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPYoV9NqvNUQ1TWAWDT2YHgqS41EHF5xI5keTSqeoNo=; b=cErYXeVVus9IDz
	ubyQWKcVJ/6J3vF6Ihd6sIR9jbqeXUTfaCdxVrVftadu9k8a0BLVg4LsQVDJMIH8Qb7hLgMouI/Ex
	cqbiNdeoQ1Dc6ER8ZKNUNNmPzSSrEgiq09msZhf6uL0w9YS9JLEz2ZV7qG4To6V43JwxBeUFDAgAs
	Q0wi/NpGbZ1PzjbpkaUIiuYFm/4c+AR6idoSFS4BpgMTz5seiCQXdwtSt9wXZ7wHBrklf2lv8Rsob
	pFf1geMf8GEgQXjWurXPqgyUiAyC3dtA8d2tVpNxt8nSJPR3YeQUwpC8TB1XV7nGDXpUjPZeH0xqH
	xEtBYs8VCoFKiL/4JZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6xr-0008Cd-0g; Thu, 28 May 2020 01:04:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6vP-0006Qz-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:01:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6961920888;
 Thu, 28 May 2020 01:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590627694;
 bh=/cfme9qFtEfSiPTmZ3d4UlDj8Liid7lrNnPgryXW+cw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=aZYltYdohI82m0SvYjSAQurwTlCYIEbdyJqgyAl6vATOo9SWKfUIVZ6yMxkZrEHs0
 EX+7faGDdWkH8X5pOOmH6aLDaDpg8OwdEOlI4GHQM9K0xmFA9Pe09/CeGdNOrshiEM
 iA6cMYvrB997kRcOH8nsQiskoqtNCElr8GvicO4s=
MIME-Version: 1.0
In-Reply-To: <20200519224151.2074597-11-lkundrak@v3.sk>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-11-lkundrak@v3.sk>
Subject: Re: [PATCH v3 10/13] dt-bindings: marvell,
 mmp2: Add ids for the power domains
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Wed, 27 May 2020 18:01:33 -0700
Message-ID: <159062769380.69627.618330738209211571@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_180135_422033_66F675AD 
X-CRM114-Status: UNSURE (   7.98  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-05-19 15:41:48)
> On MMP2 the audio and GPU blocks are on separate power islands. On MMP3
> the camera block's power is also controlled separately.
> 
> Add the numbers that we could use to refer to the power domains for
> respective power islands from the device tree.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
