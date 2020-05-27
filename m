Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3AE1E3FEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=scpmV3bkMW07nxu9qBN0vPHRiSMECN5PW53IgWwBbuc=; b=ZlGGYdl7LJBzQC
	rkOM6dj/nwGvYjF1oxTLdMc+CiUtBOyupkVWtokx02xnpzGW8l8yun4LHgUL47xmWBmTBHFVZHNrA
	+jycHhtFHKIX2GyhfTFGIzV5DcVsEDQjcGa0Evz1+Wtufz3sO9XqP3nGc5NMS1APWm7ZXvh7iJkpG
	340y43kzTSpmRcB4s8kJD/fXp3My48loTLvaM0Z4K5SRsG2+2oB4Mf74d5WwYbKj4+2lhm28a09ON
	t6eNlMOVwzhACE1V91KazH7I/TRiUTkQDYXYmeRHUJeqS9bv5RWuw4VaVa9D+wgLwtTgjJXew65H2
	/GOvQhMR3jJIPS3hUFLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduCa-0003Y3-8q; Wed, 27 May 2020 11:26:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCP-0003XM-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:19 +0000
Received: by mail-lj1-x243.google.com with SMTP id e4so5972299ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lWRYWz8j8QnnnM8ufaAXpNzsDpZkkNcBRIK2qhhydRM=;
 b=Xu6sjpfTRcKeL67QCgUgs7cBy6Ma6/R/KaBHq9H5Ngab54V9as90JwaXrpLCNyFuQ2
 LfzdvPQVwIp4icx/gd/fEBON/h49xest5MkZQU3piml2IcOpVpDg6TjIp89fJbJygEWk
 mqh2juZbpw7Y83y3tQL8imqesNsItGL406+aEYDPJyZj9XDfah91mKSl7xWFdR7HBD4+
 /cDoWFNXac2nzEnDVaX9ZEXCBzpjvaZWNx3l7b7YSG1Nyt4uUXmOIiyDdPk+FcnIqPOy
 /0nPh/++3YholLJfcqXm4X9PSQzRWSVCQXSaMeC7AtdUEA17awgYdSw1oGPou6M8s4sJ
 QupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lWRYWz8j8QnnnM8ufaAXpNzsDpZkkNcBRIK2qhhydRM=;
 b=te3ohYqxozLuZlHUPfWJoCHGOmNbmUp89/AYfyPY2f5mwpHn4fj382rV8vyBBw8iUa
 Cx6H4beKtf6TSYIvdbgoa5uHc07PQUghq3ROSHUAkcu98M0WMN4/wMXPYXgryh4rx9tB
 ExYBJCiHoqzA5AatviBS67CFYqlr+yDiMzEB/CKftG59El1XT/9Vtwn+cZ5Tbi+jkqYB
 HbINbp3GQerGTKCzzon55tZ30HPsKPMIBs3LklxAw6s5GOYK2eNytGqXkNmirUePSC/g
 bEVzE/HiJPO0g73L27Ara+9UGTOTANE2U2CWDmI33vavg/h1dIIjleyigrRJrQZDA2Q3
 THRQ==
X-Gm-Message-State: AOAM530/PMUjqq0Iid7Y9O2VSkuzgRhHx5d71ioguyyks4m2Kk9gLkxC
 Deh+wcEJQeC6HUUIKvokWH4rIg==
X-Google-Smtp-Source: ABdhPJwUCC5ItOzijFp1n+ALKMHGKknZgz0Oa6TXm5dDosIRP2//Fby7ngZQ+3NlCiiSDFr+PqMaag==
X-Received: by 2002:a2e:9586:: with SMTP id w6mr2708235ljh.274.1590578774453; 
 Wed, 27 May 2020 04:26:14 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id s8sm750146lfd.61.2020.05.27.04.26.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:13 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 0/5] vexpress: modularize power reset driver
Date: Wed, 27 May 2020 13:26:03 +0200
Message-Id: <20200527112608.3886105-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042617_495405_ACB239C3 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, linus.walleij@linaro.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset contains a bugfixe, a cleanup and fixes allmodconfig build breakages
on arm and arm64. Also making the vexpress power reset driver a module.

Cheers,
Anders

Anders Roxell (5):
  power: vexpress: add suppress_bind_attrs to true
  power: vexpress: cleanup: use builtin_platform_driver
  Revert "ARM: vexpress: Don't select VEXPRESS_CONFIG"
  power: reset: vexpress: fix build issue
  power: vexpress: make the reset driver a module

 arch/arm/mach-vexpress/Kconfig          | 2 +-
 drivers/power/reset/Kconfig             | 3 ++-
 drivers/power/reset/vexpress-poweroff.c | 8 +++++++-
 3 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
