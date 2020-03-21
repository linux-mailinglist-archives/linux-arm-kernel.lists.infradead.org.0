Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C9718DD57
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnsMVAf2PqsBNl9qAOmuQ6CFO79u6N7y6BXxL+ZY4h4=; b=iFtjoAf89KOmNQ
	T27nXqEvZjTBLTjC5Jf8m7ceUwRQMxeqrIxZU8f2PhkgzXH0LNL+ooOMdity6TNaPY/zMbAb7rq3Y
	H+toSWtwpbMhE30bBiRjXJi+hSQn24oJUs+k4IiQzPJHTR+rfytRfFytkqDv9OfHv/3sO9DDyhGEx
	AdVZ+LY+JXATc0qzU9H6XCOH6Rh3LpY/Nb5j/vV+PQM5F9sZdWyxfx/dePHrlRTHmmInd7P7c48xk
	e7WSX+/9zQRb8TWla8u77CuE2tTOhbMJtqQ56zIBzEigF7obJHqMUFMhQMEUfuQfsjt8DKnBrhL9P
	HrNQjjfhjLjaS0+oz4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFStO-0007bd-VG; Sat, 21 Mar 2020 01:25:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSsS-0005sf-0d
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:24:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57FDC20732;
 Sat, 21 Mar 2020 01:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753879;
 bh=z0jLXD1iBTi81A3uUJ2QBtjEgegduO/JoJbFVFkXCEw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=K22lfkY02/TyeYZt0xwEfhf2zlGj2a9F5/C+UhQAjpt2SfxyxuoL2fSrVCp6VK87H
 fx8P8ImgO+FHrG8f5EmHPBSwoSqXtYo9km0AzMlCGSN8u2geuM2v0qKBEgWFceq6v/
 c3PoqI1PoajhOVKJvLHxvmRchFTyN0DOGlbKKUZU=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-4-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-4-lkundrak@v3.sk>
Subject: Re: [PATCH v2 03/17] dt-bindings: clock: Convert marvell,
 mmp2-clock to json-schema
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:24:38 -0700
Message-ID: <158475387862.125146.16639727598493957737@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182440_095087_39ADE5B0 
X-CRM114-Status: UNSURE (   6.72  )
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
 Rob Herring <robh@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-03-09 12:42:40)
> Convert the fixed-factor-clock binding to DT schema format using
> json-schema.
> 
> While at that, fix a couple of small errors: make the file base name
> match the compatible string, add an example and document the reg-names
> property.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
