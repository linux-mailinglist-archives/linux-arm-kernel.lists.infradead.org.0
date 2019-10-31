Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB20EAFC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJXzo6OkNlGASqg7wVlYW5VhwUcQCKe65pthsjroj3w=; b=ixkuY4fwEE88EY
	1tKoBcTFfvs/Q1F+0TBdCGonH78O5luDkcKacrryv1ob0lzApVpESnRLhzFmYS45D9lXbMBX+2sH2
	5BZ5D2oDSQ30rqJEdMUcTQncl7XlNYLg0/gx2pKIHwFRejlEhs+/pQynftsNQ5rixMB/b90Y9o6Cf
	d8XRl8YxaOM700UGc1d2fWwYmbnETFMqid/VTZDaCi//NRpBPO0+L4oc4wkWsdrXbbIvXXBaT9wSu
	cM3Vdyxiq1wjZ7vl0tsTavTPgvUrrk75dx2eLF5S75j5I3X+JM3pzSAOJdQcRKZMNF0jqpeSRuFv9
	TsQvQyhEt2edPOtupNZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9Eb-0006G3-1A; Thu, 31 Oct 2019 12:07:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9ER-0006FG-Pq
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:07:17 +0000
Received: by mail-lf1-x143.google.com with SMTP id y6so4458539lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 05:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yLdb6BKKsBwdTyCqC3oQr2+bLOSWyaoFNjx8aaET/HU=;
 b=sWvZD90G57wEHYe8Pgdv+Opt8LMv8QJ47fYyZyYAqKyVohLypEc/k5xmxMYQrtVhtg
 c4+Gv2vRm4USOBpQChSEyz9IopS/XX8Nl1yar4DVdPV/s63tDtR0oHYJXqRA6DA/S5Ti
 5QJLHveP0STTYEV8W4SiS2rMZRRbomLtlf3r3x7hKsrL8J5fXJ5yPcKx4qSkYCnygOao
 PYBgSFir3lDNXeZ4NFHEwNj6yQMg1E4ihqoD2GKV5gFuNBcwxomAEOl1gqaw8ejkLIAu
 VgzS0eFF6O9yCe6NhWxr1UoK1QHd182uEFLpuvx7FW1l55L/61MnXJIF7FzMvumAECoz
 7D4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yLdb6BKKsBwdTyCqC3oQr2+bLOSWyaoFNjx8aaET/HU=;
 b=r+3zlw9t5FZnZ1TOyq4CG2spM4gVhvgFpXPVLvXLrcYHgsueOyyMaA6C0ji98/Yygz
 Aki1SRbuqbSm7zxmt84VAoXamSt4ljI70viiZPb6aeoFdnAZJYhYxKe5uHwqgpjLKmkY
 DpTz+rTFwQD8Yx/q05ltiItzMQZounv/e7On6lzOgIJ9u1K9wByrBYSaGqoSZKG090xI
 SzNKqFiZ4iPhsEcTLEjKBFBhyiZyZi75kw0NI1QiehMcYud7tRN2dFvXKj1seTVZd9yf
 tJCAmEzvR1YFt+YFvB7MJn7ic+GMlUNcEx1nalryqgmeEMWrQPU4T6LLHU5phG/r2f7o
 CTQQ==
X-Gm-Message-State: APjAAAWWyR+TSu4wX1SOiKRKLXwqlGtV816GhKwkTHQLTflJUw0+RN7+
 o/prrf1GSb2gHo7uLQMd9ueFQtnWZIEtPqTRhGo=
X-Google-Smtp-Source: APXvYqzouS1Q1he9V4ma5fFVHYkpzWmxxcN5v9/+VSFY+GMtwPnz/Rhj664y3z7SNUmnvg/zabQ+BfeH/1fUBA55JkM=
X-Received: by 2002:ac2:4564:: with SMTP id k4mr3360446lfm.20.1572523633629;
 Thu, 31 Oct 2019 05:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <1572515888-3385-1-git-send-email-peng.fan@nxp.com>
 <1572515888-3385-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572515888-3385-3-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 31 Oct 2019 09:07:22 -0300
Message-ID: <CAOMZO5DWphRs_ZdDiNPLo0MPo45vBTEojWhYnZyWYF6+t12jxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: imx: imx7d: remove clk_set_parent
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_050715_862801_D63FEDFD 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Thu, Oct 31, 2019 at 7:02 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Since the set parent could be done by assigned-clock-parents in
> dts, so no need clk_set_parent in driver.

It looks like this will cause breakage if someone is using an old dtb, right?

We try not to break existing dtbs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
