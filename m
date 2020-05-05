Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91A61C4E1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUZwpSjdhH+1fTNSTNQyLYuOgWuYe4z7JKkvWfkqMqs=; b=s4A7Fx0+QKpZQD
	QX9MGSdK4ic/y6wGF3D6I0CBAAlz0eLzgd1G5naO+uR2oZ7E0Q5UDboKKOcqZJj/OW2ZboWGKfb3i
	jsxSpTXWVxwx4frGKs3523Xu76HeMoQh+QrIrMXMMCt/H28cNq5VENZCe/Y1vfK8N9LXwzHOLAd81
	dDqZVPVqPYXwsCOiGBCzHUrsuaybtCe6eIl8IziLsGD/QqqJOWCCXCZD632q40fus9hRueFloMXjS
	f6k8tn9DTTUhXxxrJAZ8AQozsMKmgibwTGazEOcNbOnXxMsT/VIoxen6hIICHovdUU5hN3+euRYhu
	l6mjYZY8s90zm5HJ8cyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqnh-00055X-OX; Tue, 05 May 2020 06:11:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqnX-00053J-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:11:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1722B206A5;
 Tue,  5 May 2020 06:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588659079;
 bh=HaEcQkyLeK+d1XU6QOn1lwuuBRNuVVKmxwhyolHI43s=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=aJ49l5hSTg84/ioZxXIX7Rptkf2Lp4cth2XlZchiP9tE0ZlmQFZ4hHLCbQzG4h17c
 hD172j5i1g6tDaBBDTKanbLxbycbQuSaRdzZ7K3wxvmqb/T3ZF/4DV3f2LzUZNln2S
 I+bazqyL2YHkfDQ6GvLd4vQu8WhYYNMArq8KWgFM=
MIME-Version: 1.0
In-Reply-To: <20200421083000.16740-2-ykaukab@suse.de>
References: <20200421083000.16740-1-ykaukab@suse.de>
 <20200421083000.16740-2-ykaukab@suse.de>
Subject: Re: [PATCH v2 2/2] clk: qoriq: add cpufreq platform device
From: Stephen Boyd <sboyd@kernel.org>
To: Mian Yousaf Kaukab <ykaukab@suse.de>, andy.tang@nxp.com, leoyang.li@nxp.com,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 shawnguo@kernel.org
Date: Mon, 04 May 2020 23:11:18 -0700
Message-ID: <158865907823.24786.455613165650100774@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_231119_789002_C85DF330 
X-CRM114-Status: UNSURE (   6.02  )
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
Cc: Mian Yousaf Kaukab <ykaukab@suse.de>, viresh.kumar@linaro.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Mian Yousaf Kaukab (2020-04-21 01:30:00)
> Add a platform device for qoirq-cpufreq driver for the compatible
> clockgen blocks.
> 
> Reviewed-by: Yuantian Tang <andy.tang@nxp.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
