Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373E477ED7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 11:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BNbvFQ8e3aJNshN1/UT+Vs/iUnIZve1Nc9ft5l51kgU=; b=Elq6tvXyjf+xnt
	uHKDqvbHXkunQIgOfaUO49g5ksJxerVEnh0jm35bqpjpra6pmVV/uLevXFbEbKoGeEqqCQFPclx60
	DJksetEN5fZGuqiesI/qwU/VWSxwcTWLDUJi7au+LEVDcfCik43aVnRekF3QHQKZwE8CL9qkGDkpe
	j2cnSqGloVZV92qV0tNBOfM4GecJbEZ793rcCQsB7ZI3EKJzRWaY7sYfxGll4QVkzOvAfJZRb8Y+c
	P7AUAEQkZ3JtwXSY1O5Rz27IdTMWgh58epCvDO+lJ9aysoEc9WXppmvjg2sy0BI2H2QOXLf1PjVlH
	CjvLf0KZXHLRXWx0sSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrfaX-0008Iw-Ek; Sun, 28 Jul 2019 09:35:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrfaD-0008Ic-Rk
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 09:35:15 +0000
Received: by mail-lj1-x242.google.com with SMTP id p17so55573761ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 02:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=rH9xSDD3b6NmawTFg6yZA6qDog2WGHHWancViRtogPg=;
 b=HVF7YtnjixMiU1N4e4LKh9ISSHbtKY0IbWpwfXWanrdnmrfGstekBc9SrjN4XaDMUp
 ztiOOzljK6pCB1A5T+CM7fvW851pldIWHu3fN7q/ad1pMwOYKigrD08Z3b/PxFhRdUvx
 bSMG/zgwLJd5s5WAArb9Sk1mOoNwscPryfWazruNZOPJEhpnh+pNc3jpfKzXIJGQz0hJ
 bUgq4mBO22srsQbsNZIK1ktxqvPj42ZN75PwvBU4VgYrq04tHW4Dm5PYCrrYSaU3cg9U
 8WXvdSYw+LDhThdLN6MRQhIp2iMoyJVrqlKzk4PKCA/lPJHlodCq46u/FMhhgybT2uca
 IJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=rH9xSDD3b6NmawTFg6yZA6qDog2WGHHWancViRtogPg=;
 b=TDgS1qEVEvSKW0Bcqvmt7DUnYGXjSqxrJhsdIO+naDuA3d2BHVWZRhg06XJbyT4c23
 d0NA+UuQDsrnXrwkQ9NG3gLYDQPG6xl7HW9t4WiNQ8KEYwIHhFcEmcTuKaz2+rwsQIW8
 GsIKMOSo6fMiHeIS9AIGkDJusJcmBFMW7Mu1frtuB2F1lSeZGB6THRo3+h9ACZf5MWSP
 bq19o2S6APtRbq6Q3nI0o13AEM73RLRON7NzKrfHIvWZf6owx/TIQADoMk7w7UyLrW/2
 M9va4h1Vm7IoDjq7ry3V0tQ8smTOIBSSJ6qXOhuBGMoSyNnIKkEOBUZNZREAtyWEZtGy
 Civw==
X-Gm-Message-State: APjAAAWDkLrsV68LWQFG/D8l2LAGPtm6z0pQjSoYRwOiwkGKCk1wWEhq
 b4BibKkN9ormrMaEO5sbLHtK+TAx/P2ZeixZMb7/5A==
X-Google-Smtp-Source: APXvYqzMm5HDp4n0poR1Zh6L6Xgq8irpRxLaDW5mSlb0EvpkayeIRvHfBROISDxJQoFSZrEX1jrPgECNfBae9GidFuM=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr7277182ljh.69.1564306511448; 
 Sun, 28 Jul 2019 02:35:11 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jul 2019 11:35:00 +0200
Message-ID: <CACRpkdbKX7a15SC-zwxmH_ygGzOKrn0h-pzzm22UpRcLRfRVNA@mail.gmail.com>
Subject: [GIT PULL] Ux500 DTS updates for v5.4 take one
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_023513_931184_071B7273 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mathieu poirier <mathieu.poirier@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

this is the first slew of DTS updates for Ux500 for v5.4, maybe
there will be more, but this needs to get out there. Especially
the long overdue CoreSight conversion that got stuck in my
tree for no good reason.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-dts-v5.4-1

for you to fetch changes up to 07523a6cb6f868dfb3202a7fd5c7db2a43194f24:

  ARM: dts: ux500: set pull-up on STUIB STMPE IRQ line (2019-07-23
09:24:10 +0200)

----------------------------------------------------------------
This are some DTS changes for the Ux500 for the v5.4 kernel cycle:

- Update the CoreSight blocks to use the latest and greatest
  bindings

- Push the thermal driver config down to the main SoC DTSI
  as it applies to all ASICs.

- Set a pull-up on the ST UIB right.

----------------------------------------------------------------
Leo Yan (1):
      ARM: dts: ste: Update coresight DT bindings

Linus Walleij (2):
      ARM: dts: ux500: Fix up the thermal nodes
      ARM: dts: ux500: set pull-up on STUIB STMPE IRQ line

 arch/arm/boot/dts/ste-dbx5x0.dtsi     | 26 +++++++++++++++++++++++---
 arch/arm/boot/dts/ste-href-stuib.dtsi | 11 +++++++++++
 arch/arm/boot/dts/ste-snowball.dts    | 29 -----------------------------
 3 files changed, 34 insertions(+), 32 deletions(-)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
