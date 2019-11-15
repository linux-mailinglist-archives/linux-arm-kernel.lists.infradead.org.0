Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57ABFDBC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzTsTzU3kB17DUYQyT9YlJ40/Zse1BqeFYd+kA9B45E=; b=Vz3shL3A32BM2U
	s1sucRbrDnyq7rphXq3PBCn1hUUs85Mf+gTtcEfE489o5hp9fYsaBOQ6Vf8TpXA93XxKD2CLbkQWv
	ny6gN/gEjdIlP/WhHeWtuRCCXMF18wa2RRT6/aMIDgbIRS3CjBxDn5nt7RsVdhaGW5pZYZj9nKAZ7
	vGhnx3mXV04cMi2WFJe+CZOkCZe9Gz/xxCQ2e3o0RqhcQM7Qq3/arLq3a0LLfOnb2KaBiSHRklGHa
	yPqX8d+X3cWKV8v66jPdGHACrvRR2IHVV4dvMbpCUnrthYdViXBL0afdjVyXUZvhP+rc9G7noj898
	P3asT/8gnSyNV7/HozoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZEt-000736-Oz; Fri, 15 Nov 2019 10:54:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZEl-00072D-Iz
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:54:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id d6so7706295lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 02:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=YrBKYAXW2pBZSbQ2SIp4S+nYebHNxgT7XYL6TriEP8k=;
 b=NQLd1g5fKoaez5J87XjZtjuNW4KXaDwXMaUwYF9ueSa8RJTFOY8QHy5z2i9uxqJ9Nz
 AzD6vtXsjMX2jQHd16HGN+jQQa17OAkoy5cAQYyTY5bwkY/6nGpfluYDjRXPzrZswyo6
 6iwraTyyS13J8R2LiQ2M38BXIsrM4+CEuv6715gfHhH6md62glQy4RYXyUO54TrMAucM
 Aaan0HThwCAP4um+hFu2j6hubBXbyIC4AEQpR+MCHHbb0rbeENqYeJtsu+XkKITlugRJ
 e0yR+FmPn4HnNOLoQ/UP+YpsCny9+oiz+Knpez74A35fsTFRJoezeWNz+jgOBvxQsea3
 K76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=YrBKYAXW2pBZSbQ2SIp4S+nYebHNxgT7XYL6TriEP8k=;
 b=GqW21vs7/DETv/2x11CHFWBBoLni/Dig0RVZ0dkuxpHyKT+oOF//a+kb+tgq6x8cWj
 rebYC6w4yf7JiD3kgJTgRGvWBImDBfSd9JQE0FCpwLWjcXeCaP+AzEKzBPntKf3Nb2KB
 DBgF/FAXlkgJWA1Row014Rr5Tr1OqF53ur12CWqghY/KJe6mkgaCmiElSdKKpYQkhqYK
 aKa+rCErdOSn2Jb2naeVUM3h9Toq8aNin4YDXktHB90c/bWkNScefZY64bImRtPPfJAm
 gYqSuImdUi4y2eN5Q1iiS/05bje0YhLBlu5eBlJaousf95OcsjafEdm2j8/MDL5IaD1Q
 euiQ==
X-Gm-Message-State: APjAAAUopYoRFFtGmPKpHhmXNMkFX7s38/+7cZEcX05+sHBtvIv+6POV
 OdOiVjtYcj5+EqmD6jCoJDOCLJk4qhU=
X-Google-Smtp-Source: APXvYqwJm9kjyX50miWZJi1AorPayww0DL6AYzoF4y4u+n5SXXKGJRe8XKtDsFsG7BO1UZzJN2egdw==
X-Received: by 2002:a05:6512:511:: with SMTP id
 o17mr255769lfb.167.1573815236204; 
 Fri, 15 Nov 2019 02:53:56 -0800 (PST)
Received: from jax (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id r19sm4025146lfm.61.2019.11.15.02.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 15 Nov 2019 02:53:55 -0800 (PST)
Date: Fri, 15 Nov 2019 11:53:53 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsys fixes for v5.4 (take two)
Message-ID: <20191115105353.GA26176@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025359_660958_39B1047E 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull these OP-TEE driver fixes. There's one user-after-free issue if
in the error handling path when the OP-TEE driver is initializing. There's
also one fix to to register dynamically allocated shared memory needed by
kernel clients communicating with secure world via memory references.

"tee: optee: Fix dynamic shm pool allocations" is now from version 2 which
includes a fix up with a small but vital dependency.

If you think it's too late for v5.4 please queue this for v5.5 instead.

Thanks,
Jens


The following changes since commit 4f5cafb5cb8471e54afdc9054d973535614f7675:

  Linux 5.4-rc3 (2019-10-13 16:37:36 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git/ tags/tee-fixes-for-v5.4

for you to fetch changes up to 03212e347f9443e524d6383c6806ac08295c1fb0:

  tee: optee: fix device enumeration error handling (2019-11-15 11:31:24 +0100)

----------------------------------------------------------------
Two OP-TE driver fixes:
- Add proper cleanup on optee_enumerate_devices() failure
- Make sure to register kernel allocations of dynamic shared memory

----------------------------------------------------------------
Jens Wiklander (1):
      tee: optee: fix device enumeration error handling

Sumit Garg (1):
      tee: optee: Fix dynamic shm pool allocations

 drivers/tee/optee/call.c     |  7 +++++++
 drivers/tee/optee/core.c     | 20 ++++++++++++--------
 drivers/tee/optee/shm_pool.c | 12 +++++++++++-
 3 files changed, 30 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
