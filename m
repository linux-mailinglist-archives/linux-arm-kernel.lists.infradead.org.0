Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2301F13394B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 03:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RcP4LdJeZrVVKp9eN7uyMH2b9vWniHW79vkXBDHpllQ=; b=jRDGOhQ2OtE+St
	vAumaTc9Vcu8KVRiQDMM0RvApqtrwirFs+Sijzzn9iFpIv+fqHACKYk+pidZnhC/giRoedCC28G0Q
	hWcwuo/61ALZESc5xDDmfw1JiK4oxCz7CXTo9yGRhA80NnCOCC94a8Z1b27k3g7oZiuawK0SqJ/db
	6iFZiNXx5ZX09QzeqHnbwK6j/bqP/X70AeIIzwxna1IvJf4Z521RL/DDOSGVPNFZX0gHJVL4PWNT0
	VaNT0SRnP7Tbar80QV/H90XDVkTIwUksOh1bZHzZ2KfThs2n6Ab6T2ijyNlqLtPsUg5qjr4jvpOZ+
	ysYaRsXe2yHWnjsupicg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1VG-0003h5-T6; Wed, 08 Jan 2020 02:55:26 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1VB-0003gb-GR
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 02:55:22 +0000
Received: by mail-qv1-xf44.google.com with SMTP id y8so814372qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 18:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=D9/u+j2j6zRtqERoabJ1WOdMTYaBzefBw5186J3rAKY=;
 b=GwTExAKssKvTTPZz/9+b+HQfwc03smWzvB50u8vCmP42imVJ0mDE4NV3FA1cv68pVi
 ugIkjOqcDLv5Dyv3H82MIlugGoEn+af8Ok7oW6PyFrYYZqf9ckXp9SOoqpSOw915FPDV
 lu6K1b/OHjTjlcmoHGgJFeqdBUOXXH2kmd9Ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=D9/u+j2j6zRtqERoabJ1WOdMTYaBzefBw5186J3rAKY=;
 b=PrZ/2zDYnCOkvTqyWSumKis9+3iW9J0oxPOFaCAiFXrAkvTtTVqqCXCcQiujtVNrYn
 ZOf/EIfFrAhcmFTd9jT/1bQF50ey8tvagr/6VW746EKfEs687U/pnDDBVpAyrBUnoGCC
 voTZrDleLv7dyEJoVUpv1CWMWWmYINMg2aGCO4Ox9R9B7E8yVR9DKmHYXUe7tgb4WgZc
 XuTAL+dU+wonK7+YiOB7lIdsXoXEszyAMC8gSWbO5vOgKlbC7z0bR57jS3uenlO8xE1y
 QSJzCUlonYCeE0rHsOjNjvmADMGmTxN3QTA9wSoh21Zve4+zSe+E3AAmMSkqDwVFBdN1
 DdUw==
X-Gm-Message-State: APjAAAVp+5ehdMCeoNS2ayHvrEipvDVRnyO5jSa7ioXECXOD+Mb1bqF6
 n/7nnA10VlA34HVWg/YsfbRAj/gv9Rv5SQ6L9RY=
X-Google-Smtp-Source: APXvYqy+yirOcMBT0dMGIZEA7YUC7mfEaQwZSAwSz/C6qZDcJWn2FzcYDFus2eFw4tYbNGF2fkE5wTHjrbyYr+qjJJg=
X-Received: by 2002:a0c:ed32:: with SMTP id u18mr2306048qvq.2.1578452116247;
 Tue, 07 Jan 2020 18:55:16 -0800 (PST)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 8 Jan 2020 02:55:04 +0000
Message-ID: <CACPK8XcjazgORXNZBU1ECMukXG4HA8D9VeDxiSPifDk_iB7_dw@mail.gmail.com>
Subject: [GIT PULL] aspeed: device tree fixes for 5.5
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_185521_792350_39B666EC 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm maintainers,

Here are some fixes for some device tree mistakes that went in during
the 5.5 merge window.

The following changes since commit ffcdc5df08bfc4f418693b22cf2a1182de3375b4:

  ARM: dts: aspeed: rainier: Fix fan fault and presence (2020-01-08
12:51:03 +1030)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
tags/aspeed-5.5-devicetree-fixes

for you to fetch changes up to ffcdc5df08bfc4f418693b22cf2a1182de3375b4:

  ARM: dts: aspeed: rainier: Fix fan fault and presence (2020-01-08
12:51:03 +1030)

----------------------------------------------------------------
ASPEED device tree fixes for 5.5

Fixes for some badly applied patches that went in to 5.5. There is also
a fix for an incorrect i2c address.

----------------------------------------------------------------

Brandon Wyman (1):
      ARM: dts: aspeed: rainier: Fix fan fault and presence

Joel Stanley (5):
      ARM: dts: aspeed-g6: Fix FSI master location
      ARM: dts: aspeed: tacoma: Fix fsi master node
      ARM: dts: aspeed: tacoma: Remove duplicate i2c busses
      ARM: dts: aspeed: tacoma: Remove duplicate flash nodes
      ARM: dts: aspeed: rainier: Remove duplicate i2c busses

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
