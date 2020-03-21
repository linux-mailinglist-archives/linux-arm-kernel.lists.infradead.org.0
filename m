Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159E18DD1E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cmm7Y1EIZ6fXcjtAVKMiBW/YskgVkhUPGTM0r6dE/Q=; b=pTo9eBSs5quBYk
	Wd0nSOIbuBOoW8ucRmfC+4ymZQhv7T9G8IosGcEjc8sS2doPRDn3VhAsQhQxQHJCo4ybzO8vO/5k5
	34OiiR4XwUSoaYowahPVUhMYN/cdbllRUgYz4xUzh09dqObxZi42xqLCqU+HFKY8JsHFvOfbRLATM
	jExU0HS4SIRjCzhkUqccTStVOHFyDRn8ouYR2zSwWX3SJr1sVXV0mUHJtc17i0Ub9UbLdP4wfHwdF
	V2RzV8g76dqiJ4wOa09t9IVFkKH197UrTZDep9a331CpdMeBJgqBV1Bh52LsHPKKqIOwyD2sVR95R
	2n10qsHMkmUWNC3Dt0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSoU-0005Nq-7C; Sat, 21 Mar 2020 01:20:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSoM-0005Mz-Fo
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:20:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAE2720732;
 Sat, 21 Mar 2020 01:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753625;
 bh=PKwRe7u86A+QwaW2mIzR2r5lUuReYhr5HBypXEYk/+Y=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=vvKUbJTXpLMRO+4QAVCgX6Bpl7T1beAdx2weTIZJdSie4VPuGBsj3hzcfVq6SCqS5
 tQI8icPrdzB76QfnpHb2Yf/REase2uvUsKrK0A2+SMc9/+vE/qJfcQ9bWzDbj8f35u
 GIj951rrvLqgc2hH98vsVDcjOhKJPLawsgBVct64=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-11-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-11-lkundrak@v3.sk>
Subject: Re: [PATCH v2 10/17] ARM: dts: mmp3: Use the MMP3 compatible string
 for /clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:20:24 -0700
Message-ID: <158475362408.125146.4406419142833020130@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182026_555226_3843D5FF 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-03-09 12:42:47)
> Clocks are in fact slightly different on MMP3. In particular, PLL2 is
> fixed to a different frequency, there's an extra PLL3, and the GPU
> clocks are configured differently.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

This should go through arm-soc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
