Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A8B1E74D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 06:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S4Waml3rZgE88aDl3IDnYnv6LRNTpf9K7NXU5PdSkU=; b=mrKMCVgncwI2WD
	Tz50OPF1W7UzYoHLtPbHpPkfUvgCRjtECzkjq8EL1CGI0Xlp6LTQdyrwDv78lSl/Nw0gPDtPrs4T+
	8Fx1EOKZGtU9SD7y8a5MN1mC6SNv04ysyhdJhCPw500M7Jk+MYTK1UlVEEFl5yVJDrNTGW0j1qiP0
	AtM1/pG5QcPBRQ8606hJbNF4RgccwgivGUPwlGqrVOZE1JVzH9vPuVCnU0ieSvnLjVFeblln0hzOl
	bisbP/VEESJcJQ6+CMqXWqzoKcgyaO+PCFzIol69yBMnRCYlE91cvsKRCCLIZQVYyMoblORzTTMoS
	OQh97CKjRIADYlWLxxAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWbf-0005T9-73; Fri, 29 May 2020 04:26:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWbN-0005Sp-CX; Fri, 29 May 2020 04:26:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0B7E2074D;
 Fri, 29 May 2020 04:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590726397;
 bh=biY26RlQtZl+eOvAa3r0qNI+95AZPiHE6MWy69incsQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=uR/4VKmjPeu7nUm0lkHtc5fQuVyg9Cv8k9mjBTofLk9uGIZ+gv7NcC1inBtBriBu5
 ydFYWUvxalNlqlw/nKCPjTvH8jWZ1TRiCEu7pDvB5+NSVdzR97iRZSQekgx7ct8aTp
 2NgFtT9YMZWTQ17NB/enzc0fLu2TBOXJ+pMrMYyw=
MIME-Version: 1.0
In-Reply-To: <1590560749-29136-1-git-send-email-weiyi.lu@mediatek.com>
References: <1590560749-29136-1-git-send-email-weiyi.lu@mediatek.com>
Subject: Re: [PATCH v2] clk: mediatek: assign the initial value to
 clk_init_data of mtk_mux
From: Stephen Boyd <sboyd@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Weiyi Lu <weiyi.lu@mediatek.com>
Date: Thu, 28 May 2020 21:26:36 -0700
Message-ID: <159072639634.69627.7492835408539422310@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_212637_453838_76DB30EA 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Owen Chen <owen.chen@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2020-05-26 23:25:49)
> When some new clock supports are introduced, e.g. [1]
> it might lead to an error although it should be NULL because
> clk_init_data is on the stack and it might have random values
> if using without initialization.
> Add the missing initial value to clk_init_data.
> 
> [1] https://android-review.googlesource.com/c/kernel/common/+/1278046
> 
> Fixes: a3ae549917f1 ("clk: mediatek: Add new clkmux register API")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
