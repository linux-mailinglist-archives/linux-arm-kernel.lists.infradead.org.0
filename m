Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F3D18DD62
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3qiyzyU00kEAZXJ4a5ZEL/lC9/LmR57Y1RkTKQyTKU=; b=PtN2rXo0Vy0KY9
	d94+AJtsCEQsv2D7SAcqPJYLtuKX4BgCePML1AMw9s3xpM1MkikORe7+quQMYHR/n2JZ/aoFOCYY2
	L0UL1pecqKkbUeSp8do4ZyF+g/HTPj0dpywRUjvbxy8RqNLj5LX5G7XclUvN2Nupd44UohGsXaDTd
	rEGwtdTfsHNgRsMtmtwutjCd77nnBc1qTuwNjWSE3Hc1i6UKDL6KDBk0L2bWcd3jtv661tR3pxCuk
	XUwYZxjhtzoX/XoKbW4yDkkMnTEd0s5z7aoiJZ+1MqJWia8Z/9e0U4llmqQv7L3mgQZRDx4MnWQIk
	A8kkMMwPFCxyKct++cfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSvf-0001Jv-6h; Sat, 21 Mar 2020 01:27:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSt6-0007dO-W1
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:25:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 219E020752;
 Sat, 21 Mar 2020 01:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753920;
 bh=QQ9AVvL8o+qqaQzJ8Y9r+Mzb6Lz6VNVLDgzszHgyylE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=QY2oyumEvb7cMK6PKHp5wT59UK2xjS0Ad9FnY3pcEdunpEaj0lhSwPuB77lR9W4in
 iJMBcGlxeMBmM2jL7SjICRpP7v9JBTVMkWgLbfyf0QCGpvfegjCy/bvXttVHxnmOaA
 rkpiecfWgc6FB1gZbUrac2sTUCNpeF64LLCtaU94=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-14-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-14-lkundrak@v3.sk>
Subject: Re: [PATCH v2 13/17] dt-bindings: marvell,
 mmp2: Add clock ids for the thermal sensors
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:25:19 -0700
Message-ID: <158475391941.125146.8930241062444906716@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182521_298454_F9951E4F 
X-CRM114-Status: UNSURE (   7.11  )
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

Quoting Lubomir Rintel (2020-03-09 12:42:50)
> There seems to be a single thermal sensor block on MMP2 and a couple
> more on MMP3. Add definitions for their respective clocks.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
