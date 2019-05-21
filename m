Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E818245C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=id7V0uHHnhTe737ZftJknIMTUmDoud9sio+zGHKGrBs=; b=jn3
	gx84opjRlNPbc6/09sTGImBuVwa0uyS8tSoJst6bj3Q+VfnW3AZbddZcleFhvRuXrotohBXvbVi3L
	RCb7LyiuvyuSIuNfYj1a/7z2jbXVMKseP9nkuvngqM7IioW944l0b6k6Og4uxIuF4VtTA3/HT+49a
	5ASc75XOXUoA6BPvkpMPoOvOITVlZ5C+kpJXaLBQaIkbgoFVSSUEXf9vCjGxYQZiQUv/NkPum4WdL
	68WZVqHCBzg1XAutyjrhAUYg33AzyGAbCTisltH9xeaRF0J53RJcnnBJjjJz3C9+wAlaA431OY0L1
	lokQRjaelLyMmText+BriG1rOs7OHzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStxx-0004mF-RA; Tue, 21 May 2019 01:53:21 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStxq-0004ls-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:53:15 +0000
Received: by mail-lf1-x133.google.com with SMTP id n134so11716781lfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=4FwSG9QFtdUqfjmmoUkl4r9G9A1YNNGGtbDP7NoGfwk=;
 b=UHQDxX745MSyrHV9+BEgK9cmvLv9PBaFDyBa3FH+Vjz7h2oJ8jTnjAF3Hm/jG1q2mc
 pjflTNEfUu2w8dwzXSYqZZeknQS2TektZIFuCIIqRMKHCjny5/uquN7P9HSDALlIwfqi
 UIldmnc1bDR/+CetdktxOvJEwB/H3K+Ca66AuhX8KIF1WBlW20wWrS41tPBzvcW/B2gg
 8FDeFYgr+7Q6iHPoL5Z27z2xOQob4Sgstv33Ji0O80GhU1GqO505nL3WBZxhkV99WI/0
 fE/zm1pit0hLlRk0RkKfj+h1ToODvAZI45LEv2F9datffUUL/F/2HsG+7c+axVPhtfLU
 ynjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4FwSG9QFtdUqfjmmoUkl4r9G9A1YNNGGtbDP7NoGfwk=;
 b=H8msGMiY+qc1hfdy5F7m8KJcfxUrGfg7wjhl431mdcLQC9VSktvzn5Q36DRIVlRXUg
 TLNBuaIqQwwxYMa28jIcVkkcdigmRhq3UGD30ArRebUj1Mdp8WToWDq6j2zziITxOydH
 agB4Evj2XB64LImDVVyBrw35u/4uWe6zy5ECnqcNGuJX3aM6FS105qexqt0eJ/sJyAAU
 nxadN3+48LLmn1TcBLmrQwILGOS0bZRohONiffel2AlzzE3TiZJ4nQ30r4YMYS6XrTQH
 pGRzTyGYga7v0vuIjR46g3F4U1jlINrhPwXYDkxg91chHNZjj7BCT5J++WkTkKBZocE8
 aRCg==
X-Gm-Message-State: APjAAAXB0hIDsoPTEZr//VG3NyKXOh3KVGuXXXyYTT5yjXDr97A0DqNG
 X3v8X+bhGg/okmmnszLQpK3D8yyQSlILhwIs9Nui95Xe
X-Google-Smtp-Source: APXvYqxnGZ5T6U9O9ot0vQTe5ryD6XdyudYDdKNjIM4wP9pOe9naNJ9lSFLsPlkLtXPpzTe3/PUAG9Erx97FDOOn7YM=
X-Received: by 2002:ac2:4857:: with SMTP id 23mr25024082lfy.158.1558403590631; 
 Mon, 20 May 2019 18:53:10 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 21 May 2019 03:52:59 +0200
Message-ID: <CACRpkdadF31-jKZPuFJCz0bk7iF=7VzbyPD4EpjiK3DnbpHuOA@mail.gmail.com>
Subject: PL111 DRM for TI Nspire
To: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Tang <dt.tangr@gmail.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_185314_481387_1A9D92E0 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

I have one more user of the old PL111 fbdev driver before I can
switch them all over to the new DRM driver in drivers/gpu/drm/pl111
and finally delete the old driver: TI Nspire.

Before I invest time I want to ascertain that the maintainers are
actively using Nspire and can test patches in reasonable time if
I work on this, since I cannot test it myself.

It seems easy enough to convert that I would dare dry-coding it
if I can get some help testing and fixing up rough edges.

Is Nspire ready to test some patches?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
