Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08060AECCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AbSorueON4PwVXMKuIM+Xgkhyx/wNmmcFEZblcbkm9c=; b=Nei
	yzar2b7mblxlJUhSX//dY3PkyMGkFcHDJeeG0hsQXwoyt5U4TqT4H2qYsoUsZVVor/AdFUaTbIpFN
	sNfH64p+JU/oztmpnDylp6ndvDeWs0osUbJ2RGMo0TtthnxGW+lDM3HjXsoj9aRiutOzIwEUf3l30
	69oGMtrbNwSBLsKSF61Ml22egMbFbedzFsGKbi2deWtBV2eASt9/3Q5OrgNljYdtq79FalOnDGZnk
	6th2hC2M1FEUGhg5401MPFztN/oJjDR3EQa55rf6QjBhCHwOSHwOC5m8vmAqxtnQ41k/dflRFzT1Q
	zIKfXFEk3m47vxJhBKH6nFj2Yf0+JJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gyf-0001Vr-DJ; Tue, 10 Sep 2019 14:18:41 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gyV-0001VC-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:18:32 +0000
Received: by mail-wr1-x42f.google.com with SMTP id g7so20698101wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=OaJ3NAZkLK635Jp+cFZkaP60l8Icy+5Ux3fiecJGSVo=;
 b=j7/r9izocPofU3qCNyl/KKY4bk5ehcNg0wvYJz4+U4nRf5iPiyEOHfUQiYbEkK3L/w
 mLD0eDprzECZ35Qb9AEgUZ9nYb9DKb+phVejWHdOpwGANgk3vbJrJLxGec9Wm/N18N+M
 2KHLDVJ2123CYHKtEyxvNUQYJjhfDNPtP2cO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=OaJ3NAZkLK635Jp+cFZkaP60l8Icy+5Ux3fiecJGSVo=;
 b=nDIm7dJITPrwJjkAWLAjCI5eiH/ZFEE7WI7KqtFcx/nnzrtj06FVIbRq4awbfK2ar7
 qWrVAmBjdmrPR2ESyaZTKbWxSi/v/F3aTQwGEngEmtuU6jWXYj9Dkud3ZpwX9wM3BNEy
 uV6DgSYOZdcSsffPNQxQ8sOfsoDx0LfxJYk9ijMNEjqxPFxrrP4246RXGUuUvJ0nTa7K
 gyvvjMCJY3PaPaYI3OJiEYP5ZZ7g3V9NIx7ntfiYkfu6tBPrrrVjS9ytj3PPvzr4HYdO
 aN9paQc4q55cjurf6uGveIGmMzVRSse5OBQhOd/eWBUo26WyC9zvnnTs1vEzqtAljkzB
 LicQ==
X-Gm-Message-State: APjAAAXDmcSx5bUDelFezTiXjoKvGrimpm5POBy5kyTYpvqIlGl/sg9d
 l+mr2+4UmK1MAdhG3Qmz70G8Elhlyr1FmCOttrt1bN7nu44=
X-Google-Smtp-Source: APXvYqygLMBMCACGYWsWpOdfdIIS58I87+rFF8G44LXtfGDtFA56Ryh+KMWO0SLACCVOeVSKv09vYyTnFVmBFQ2SB7Y=
X-Received: by 2002:a05:6000:128e:: with SMTP id
 f14mr7652974wrx.28.1568125108723; 
 Tue, 10 Sep 2019 07:18:28 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Palmer <daniel@0x0f.com>
Date: Tue, 10 Sep 2019 23:18:17 +0900
Message-ID: <CAFr9PXkDNy7Xh+0rLqsoSfBF5suddB_tTeFxVZfBeJz2Feq-YQ@mail.gmail.com>
Subject: Mainlining support for MStar ARMv7 SoCs; Where to start?
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_071831_358012_5412D729 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

I've been working independently on support for MStar's ARMv7 SoCs for
a few months now
and I'm at the point where it's probably good enough for general consumption.

Right now I'm sitting on a bunch of commits that adds the new machine,
adds support for the clocks, pinctrl etc all the way up to mmc host,
ethernet and usb. I'm sure I can't drop all of that in one go but I'm
unsure of what the initial set of commits should look like. For
instance does it matter if the new machine is added but it's totally
unusable because there is no support for the clocks or should I put
together a package that is the minimum needed to get to a shell?

Thanks,

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
