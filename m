Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546671C4E3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsGD7juBFXsqRAz2WjFH3pS2qiV1qBHgDsLsSa4mYf8=; b=DWPWtHpf5Av8t0
	KKRB0VrmA7sNCFmTIeK07sC6KnWWiQdBnaYxXfu1xkrNB5UDZcQTsZRmJ0TRzy0SutZ+9DoA6kdxs
	59PfAP2g1Qdcr759/2AfLxw8Z44ui3bIdwbf2rkXiYqtMC9dh1liHwtwuCeC67RKjZHiB9RbHrDw5
	YtJ8h9bb5AItgRuwi6wdfqv/ienaCrtJx9v6t+1eSFxJnrh+LrvZzJytSYAfcYu6pPkrDPCtbBset
	LTn5bN/8Bn5b77Oco6YaBAh7iCLls2a+fgQbJtig69tyBZzoAvaa9hxzPsV/T/25OmElMqSOhU7OR
	nE9pyKnmKqEVGsEr3KAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqyT-0004XH-Ik; Tue, 05 May 2020 06:22:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqyM-0004Wk-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:22:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 977A1205C9;
 Tue,  5 May 2020 06:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588659749;
 bh=kq4gePw6kSwYhivenmsq3xORLvVD293WAbXpRGyOKiU=;
 h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
 b=kG0yYlxqHsbCPDBQbSb7hi703+8CqI81Zo74tDlAR9kcDx2J+vnaKrk11CyHezdnv
 ctlDGLwSFJJauaDkx7Ut/9LMsmKfPQlB98ll6razKcAHScpOzJ0Pty7EeeRmaPk456
 TPClhBOyykG7pmOsdVvVVN6lDcCWLuj4XXcNA3c8=
MIME-Version: 1.0
In-Reply-To: <20200428204945.21067-1-robh@kernel.org>
References: <20200428204945.21067-1-robh@kernel.org>
Subject: Re: [PATCH] clk: versatile: Drop the legacy IM-PD1 clock code
From: Stephen Boyd <sboyd@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
Date: Mon, 04 May 2020 23:22:28 -0700
Message-ID: <158865974885.24786.4104463029992554440@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_232230_071590_952D231C 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: soc@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-04-28 13:49:45)
> Now that the non-DT IM-PD1 support code has been removed, drop the clock
> related code from clk-impd1.c.
> 
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
