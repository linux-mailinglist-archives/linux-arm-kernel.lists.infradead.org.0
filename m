Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E2A2B135
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUA1Oe6z82tx/WsA168N8FF1+q7stC/874Nk5OWzXM0=; b=RpTiBVCayTJvUm
	jvL4Fnf17hpDtjSqxmRPRmPM1dJWoQj0kJsQyGwjbMkD57AqjTHFtGqgpIX8+O26AFOd5QOyfH8Ra
	vFmu84SsbOMvdensu9eIYWUs4sRNe4qfOUXwMGjrG08KeNe62X/zc/U8COsjXabAjlmeDOI4/v3xX
	zLMMCbx0WEErszgKyMCCDK/ifTpJ+IJrxUwNf9g4edCH+xmOhw1CJO6yY7YN2xnJmxEZs8TA9j1JQ
	W7+NA1sQ+dFqijpTIDNIta3+d/z8VGfTO4EqA+oaSf1iukDHbxjto5CQ5vmun7n/T6cJZst1NTKJR
	t1/l2Y4MP+Dld5d9upQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBmr-000474-DV; Mon, 27 May 2019 09:19:21 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBmk-00046F-9F
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:19:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id a25so1669679lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 02:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=QhJC9sG+upoYgIhtqyPxF5db4C3XR1ct/W+iO7AE0ts=;
 b=wkYgu7++vQ4DgZFfHCVN6JMTNifCtM7J3ZnlI5pHVXoeT0eJ8yFBbK+50NVj4x7NzT
 qPDOyBTVk157WPywFju164Mh8j10CNDyjMcF9sEim7EzZLr9nJXzr3R9ke4Sn6ttut6u
 DKBJGTr1D0vNQUArGwe5XvuepOt9PZM+31KRXD69U3oV1HHEdtcgtsQ8fK3ctS1NW8yv
 vrO/1WftlGJTAC+1ZSmejXs8jIcqpxu919IIhgqi+3VvcRhaLUhcFN1Tonu8trA1H6rR
 fcr1/eVFrx5fVXUC+FGXcNpvvqFjTtJfzfYBpHAsCdjCqpz84mJvptixAS86MCDI/wuK
 dEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=QhJC9sG+upoYgIhtqyPxF5db4C3XR1ct/W+iO7AE0ts=;
 b=lZmBvN3/dpwwPBFctdE5YWaXVDvB91bPLNc+C6Zv0d6vs4DHcuU3EOpPKwamf3y+lk
 kWLh/hOT3pftSQXXza5aMXcptfADeMIOrb6V+5NCflTsSjlnOiQp4DjZG1veCtq+FPPf
 bFLx1VX84Ro8q2RN9eWhw7BdzERSQQsMsgG8K/QK/S2TqVlJbA05Vypz07pPLoMR/dn7
 DBRkxwZ2sMNAqOSlXxdLrxTEMBhHAKlPvsoCJ/f+aAcacmprk9KUo1dwpo4lfM+PTEDU
 +Y4hUSe07S9EYdYReBl71sWI2WTUGgJ0ndhreDc2uFHjGlh/sUxJvkO7AADLk+n4xdIt
 KqXQ==
X-Gm-Message-State: APjAAAV/EtKjWfY0/D6WA8Fm70m+abW8jJOWqYC1GtxwsZwpWI8ZHvWJ
 e9vXA+Y0+6jvARizReaY0LNnqvdmIAOlmUlc8p6x4xgGGMQ=
X-Google-Smtp-Source: APXvYqxsyHAoZkVNEyeXn6h3GQPNb0g0ifxUo0NZ3F1BXQYPoEKbXsJ+7pUPz+f+BOLc2zezRuSddgjVkiJ/ksdZEvs=
X-Received: by 2002:a19:c312:: with SMTP id t18mr37363139lff.165.1558948751548; 
 Mon, 27 May 2019 02:19:11 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2019 11:19:00 +0200
Message-ID: <CACRpkdYLcCB6zA2dYj9A0bJU-gQF3QuhmFd0oGt++oa+gSE_Cw@mail.gmail.com>
Subject: [GIT PULL] Integrator DTS updates for v5.3
To: arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_021914_330895_8984D28D 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC people,

please pull in these DTS changes to set the flash partition information
right on the Integrator boards for kernel v5.3.

Yours,
Linus Walleij

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/integrator-dts-v5.3-arm-soc

for you to fetch changes up to 62a5017bf825c9e4d3176eb975a01c329a9f364b:

  ARM: dts: vexpress: specify AFS partition (2019-05-20 16:40:38 +0200)

----------------------------------------------------------------
DTS updates for the Integrator, target kernel v5.3.

----------------------------------------------------------------
Linus Walleij (4):
      ARM: dts: integrator: specify AFS partition
      ARM: dts: versatile: specify AFS partition
      ARM: dts: realview: specify AFS partition
      ARM: dts: vexpress: specify AFS partition

 arch/arm/boot/dts/arm-realview-eb.dtsi    | 6 ++++++
 arch/arm/boot/dts/arm-realview-pb1176.dts | 6 ++++++
 arch/arm/boot/dts/arm-realview-pb11mp.dts | 6 ++++++
 arch/arm/boot/dts/arm-realview-pbx.dtsi   | 6 ++++++
 arch/arm/boot/dts/integrator.dtsi         | 3 +++
 arch/arm/boot/dts/versatile-ab.dts        | 3 +++
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi   | 3 +++
 arch/arm/boot/dts/vexpress-v2m.dtsi       | 3 +++
 8 files changed, 36 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
