Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA6B1784E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 22:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4pQQHPJjoPxZ8hiTpvrXPtWtRStlhYsuZSfyAuYJaw=; b=UiFHHHIKJv0Mk1
	WF1MOCOU6upqw2aamR0WY14FHPlYrwyOdT2FhWyIuZjdQDl9sYwvFG2TCWEtywfqvPCQtommNfWBy
	MyGIcnQ3jrdO7Ay3RAIyt21lR02q7GkQoBaJGSr1XkAvWsYaVEl0zgGaq4mbHO1/v0evg6j/iqIKP
	91+/cpaBy6zrXg1MDAZQKCEt6Cs/tKihMqC+BJfW01eZIxBzwYHg3nReencOZ0dOp/aTHSNAWDHgL
	Gys1pV2QFyE1HCnl8hQzDcYOEQLJLJ/0+zvLtyLdnRiy827wyNO2ergRwURNL0MvjUvyhcg5vIKQO
	Kud6gFewY/gCfdTEy1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9F8h-0007DI-KO; Tue, 03 Mar 2020 21:31:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9F8Q-0006zU-4b
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 21:31:28 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCE2020842
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Mar 2020 21:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583271085;
 bh=xucpvskHTybyFIbP+cni+sP6UxAdg6aq0Bnt9n4YCHs=;
 h=References:In-Reply-To:From:Date:Subject:List-Id:To:Cc:From;
 b=mynxp3RpC+mvLxOKvSrEwgrwxnONN6Q9GQBQSDyhXlucopyAuFrlD+7t6fTfOqMM8
 qKyaYvlsFGST9VN1rjwXP3hIItCUaJdlj3ZUS+i91lFpWfEfTq2d2G4PB4bEekyoZX
 LAvBcpq/rIi8WDHwnF59+amg6GSr7aZv7vLf5bSw=
Received: by mail-qt1-f179.google.com with SMTP id a4so4038810qto.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 13:31:24 -0800 (PST)
X-Gm-Message-State: ANhLgQ3nb8G3e4qK/zsWcZfINEJcLbzjaq1sktxmmCnoZ0a++mD8tbrc
 2pO5rajgCovfP+toUP4NcOpwAzIlKiw04hkaXg==
X-Google-Smtp-Source: ADFU+vu8FwqxwbYrxZgw/tTgcPwYuJUNMb2ca0inToNguaJp47fbbaF3Y9ELodCcLUwB0G4RGuhy9JEispno6NKbANk=
X-Received: by 2002:ac8:59:: with SMTP id i25mr6390149qtg.110.1583271084044;
 Tue, 03 Mar 2020 13:31:24 -0800 (PST)
MIME-Version: 1.0
References: <e6eaa409883cbae8d1e818b732b98c3362635712.camel@pengutronix.de>
In-Reply-To: <e6eaa409883cbae8d1e818b732b98c3362635712.camel@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Tue, 3 Mar 2020 15:31:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK7TiMp4KRjTweVzsHS1+iogSKEMM3jAwJmnkbEuJE0yA@mail.gmail.com>
Message-ID: <CAL_JsqK7TiMp4KRjTweVzsHS1+iogSKEMM3jAwJmnkbEuJE0yA@mail.gmail.com>
Subject: Re: [GIT PULL] Reset controller fixes for v5.6
To: Philipp Zabel <p.zabel@pengutronix.de>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_133126_243240_6EB359EB 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 3:10 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> Dear SoC maintainers,
>
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
>
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
>
> are available in the Git repository at:
>
>   git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.6

Is this landing in Linus' tree any time soon? It's only been 6 weeks
since sending the fix.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
