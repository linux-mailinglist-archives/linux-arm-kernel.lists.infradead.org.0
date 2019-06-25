Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1511C55A59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 23:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UA6YxRLpG/ckP1upwUe/gomMxz8/ppNXp/R+EjSsmqw=; b=oyq9u4wQozXkdg
	9uGvoZMX/NHypwNUTdssqIOPcx54w0pLklHl31MeTose19k5AAlGPWyKSW9LOvj1zm9gaOtB9sMVS
	Bmf2oKkREf9yYpyaqMdM43Wp22A47RuIcEPOBUNPJ5zflh+TRBQllnfWmFo/x3fzsNlf5l/Fh4/Ib
	Bvvm6F5Bywc1XCn1XuzDYp+BxWBKBYyBZl/cv2rERJBYqA7/bAVqp2cMA1TP2qIipXGDlE7FSLYHC
	ctqUGV6R0CzJi1FAKfMhTdsc215AoRDoC9iBB55YqGIRKm4CjjOlK+mGMoqDACCl8ILhq2cgSGpb0
	bIqS/CCUbergZ+VUXXbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftOq-00012N-Vs; Tue, 25 Jun 2019 21:54:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftOa-000120-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 21:54:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ED6A2080C;
 Tue, 25 Jun 2019 21:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561499671;
 bh=dztdrZPzf7vyV4Xy6KCFp9Vc0IyqRQ3F7G6u1wNJE9M=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=nlEQHXhMxxE+g/R3LryK8Clyd4JwHRYeLZECcK+r9B3MfJt+2ERzecWVoYkHNNzSZ
 I2xkm+UbtRRpi1zczZJGggytqfCpRjhMLbBM5CNG/GyHZw2W6QWBsVD8ZTKa2Yz/R2
 gK6yD9I7OhthE+2G2TinIGN7yq95tUb2vVP919f4=
MIME-Version: 1.0
In-Reply-To: <82d6e1d63959ecb23bdcd363e93a27d08eee6859.1560164542.git.leonard.crestez@nxp.com>
References: <82d6e1d63959ecb23bdcd363e93a27d08eee6859.1560164542.git.leonard.crestez@nxp.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Leonard Crestez <leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2] clk: Add clk_parent entry in debugfs
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 14:54:30 -0700
Message-Id: <20190625215431.9ED6A2080C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_145432_235384_91FEDFEA 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-06-10 04:06:38)
> This allows to easily determine the parent in shell scripts without
> parsing more complex files.
> 
> Add the clk_parent file for all clks which can have a parent, not just
> muxes. This way it can be used to determine the clk tree structure
> without parsing more complex files.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
