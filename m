Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E3218DD5C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVq6L9JyBewXO/WVjncFLCni51A35ne0aMyW/ZG8s5U=; b=lSYt/a/QtW58PE
	KoqjY6XKkgpY/wUnNUMjvMQqotiiVMr9sjj2SD55AAsG8NY5RC4IkgmhGE0Kwcb7iLRx9i1CgQxCO
	ynXRZdUaqi2ZyzxYshhSv3xp2aZBpJWkz8w3Xgos83/L4mBmb4iNNWOgIpJw1yWU9OUPsWljoxI+k
	sJg5dg6o4zavTJSIn4SZbHLKMgnNo+8Bw8jitQ9Q+X4uDFVojOluf+/+Fb55xySAH13SAt+TTr63i
	3OIN38Fu7SsSW7BeOpBFgpIySIl8bd3uX8HE4fBVEYAdQUEoB7d+uR3TfQaWDWXgz7UEfB4a0SAyR
	pHnYkpcMnxdzDh30RYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSuP-00005i-0G; Sat, 21 Mar 2020 01:26:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSsi-000678-I7
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:24:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E35B420752;
 Sat, 21 Mar 2020 01:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753896;
 bh=num4XEzGirTSkx4N684gppE8VZeumz6uRRs3h4mg/gY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=E0DzMpkW0l7jwYBTdIq81IYZlvMjU1hOg5YDWx79Cn2knepkxmLEQAQFpAOx0y6Tc
 oErbOKKxd29Be8RCQ7YFoOPGcSSh3MSwi8oZMiCq2/U8V8V6DvMMpp8tq41j1FnOv3
 ZFe0VFx5vcS0oFDNdNqActACjG/6/9v92uioL7Wk=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-8-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-8-lkundrak@v3.sk>
Subject: Re: [PATCH v2 07/17] clk: mmp2: Check for MMP3
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:24:55 -0700
Message-ID: <158475389516.125146.6283805958516666940@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182456_642354_1A3FD681 
X-CRM114-Status: UNSURE (   6.83  )
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

Quoting Lubomir Rintel (2020-03-09 12:42:44)
> The MMP3's are similar enough to MMP2, but there are differencies, such
> are more clocks available on the newer model. We want to tell which
> platform are we on.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
