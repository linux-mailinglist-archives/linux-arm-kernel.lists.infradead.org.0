Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B231CF96D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 17:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02NHzezvMSmCkPGR4xvbvSgHSTKS9LoH3FD7hQ8NkOs=; b=pWk8G2F2GZOtWx
	TvpgkJ37XgvxCYcF4M1G4pFi18jxsKQSb9lXFn0rjMQcE/+sR8uLFGkIxpJagknKIp24w4xmXPmoY
	aGoESvoKSY1o/Pixd2OnNLF3n1h410phu6eIdlwBB6mxZJYxcSSqtGIChcoAxB3KBzgsIhR0f9CfJ
	X+cAHO+rP4mqMvmIvxVtgaKXdXLsH9McsweuZG67c996w79/llLs20LOrjx5I4SQXo5HmB+taTQ3u
	EvASjtG1yRLuLDT+dkKZkwxsOeKRjl08zD2b+RSlIpDhd2SuvQSbO97C8MuGVqdLTw7fjLJZvpMY/
	j9Rl5AczJdy3axNPPYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYX0Y-0006m6-K9; Tue, 12 May 2020 15:39:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYX0R-0006lf-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 15:39:44 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 754548047;
 Tue, 12 May 2020 15:40:32 +0000 (UTC)
Date: Tue, 12 May 2020 08:39:40 -0700
From: Tony Lindgren <tony@atomide.com>
To: Ma Feng <mafeng.ma@huawei.com>
Subject: Re: [PATCH] ARM: omap2: make omap5_erratum_workaround_801819 static
Message-ID: <20200512153940.GJ37466@atomide.com>
References: <1589199704-11980-1-git-send-email-mafeng.ma@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589199704-11980-1-git-send-email-mafeng.ma@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_083943_544731_6D956AC3 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ma Feng <mafeng.ma@huawei.com> [200511 05:16]:
> Fix sparse warning:
> 
> arch/arm/mach-omap2/omap-smp.c:75:6: warning: symbol
> 'omap5_erratum_workaround_801819' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Ma Feng <mafeng.ma@huawei.com>

Applying into omap-for-v5.8/soc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
