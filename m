Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55531130C52
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGQ98hSxErbE3Klvd2Tvss3j/rV1Zz8eAyG++9sdgys=; b=KviT9LfQNsbRfX
	QZcqb2tcxfoLFeNoeLv8LN6A4hgzOJKjZcxLVH9Uz0UFQyPYM/S3YK9MhQGF2oW6cPeeU6wSzOUER
	+m8ggtzgjGY5YfXluq6wG93awO1U+Pioojpk2NjUxcDdiHsCyzMiXYgEEC8e2TiiA+Pi5gdh9nROj
	wFc31u//6NFouPxa2UB2k7IjPNfVcF0vnviv5tXx7umgy49OacC0JKraTmTplSTJw52BpOrFN6d8A
	Le8FsWU862GdsSqK7mVWgRGZJdbslvkN7AFbMAg0gz9WhqX0d8zPrUDL2mCbKXB/CKt3mU+Cv4FSk
	3HSsqhxzst5reE44L1MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIfr-0005hq-Py; Mon, 06 Jan 2020 03:03:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIff-0005gk-Q9; Mon, 06 Jan 2020 03:03:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6538820801;
 Mon,  6 Jan 2020 03:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578279791;
 bh=CNeeKXcxdQM66JWLklaMOAzOty0uI/w8076uzZzgDRI=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=B8jLcelHLRRSOCy+vJWPw+k53NEYrT9FYA57S9bX/rSFrb1QnF7jiZzenQE97Bki8
 bmLxQ9wbVrMV+s3MvgbJ7IelLc0T3WRD4sygIpTAo27zyJ0oW184daAwo9vXsqoCR7
 UJnYZl57w2F4em23l0WDNz1ohcgOJFr4qSBL+IXY=
MIME-Version: 1.0
In-Reply-To: <20191226191224.3785282-3-martin.blumenstingl@googlemail.com>
References: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
 <20191226191224.3785282-3-martin.blumenstingl@googlemail.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 jbrunet@baylibre.com, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 2/2] clk: clarify that clk_set_rate() does updates from
 top to bottom
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 19:03:10 -0800
Message-Id: <20200106030311.6538820801@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190311_875312_72880A1E 
X-CRM114-Status: GOOD (  10.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Martin Blumenstingl (2019-12-26 11:12:24)
> clk_set_rate() currently starts updating the rate for a clock at the
> top-most affected clock and then walks down the tree to update the
> bottom-most affected clock last.
> This behavior is important for protected clocks where we can switch
> between multiple parents to achieve the same output.
> 
> An example for this is the mali clock tree on Amlogic SoCs:
>   mali_0_mux (must not change when enabled)
>     mali_0_div (must not change when enabled)
>      mali_0 (gate)
>   mali_1_mux (must not change when enabled)
>     mali_1_div (must not change when enabled)
>       mali_1 (gate)
> The final output can either use mali_0_gate or mali_1. To change the
> final output we must switch to the "inactive" tree. Assuming mali_0 is
> active, then we need to prepare mali_1 with the new desired rate and
> finally switch the output to the mali_1 tree. This process will then
> protect the mali_1 tree and at the same time unprotect the mali_0 tree.
> The next call to clk_set_rate() will then switch from the mali_1 tree
> back to mali_0.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
