Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B2510DDEA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uquwyrW9RIhaO3pxmBvbIyqmxALmjAuosx+bCwvpA8=; b=cV6JKmJinHJBV/
	G0+76b2TkfqgmROlby2fEln9r8O2yLAy6Jm9rpJFOnqdhURPCERlKC7Yh40abALORYHKs/MXU7LO3
	nAaKo1SOOUbFVzWYnGOobPgFxSfS2CM7Xmr+m8BYJpzGMDYe7lbv2F7l5KMnuFgzqSZnibUDEcpNZ
	yb+XlIv0DkGB3Ph4VYIzi5RVPzhSMOrLGrdhsp7DkFbEjZjThnSn/AW20w8Mu+wvkw+XYZI5XU/pu
	sphQzsnqboH8gzP8ZCIiECTgzaPtvseBrWkn7nULboIadr4j6OqGS4srEZs1G2PZ2IKDmLaoCjTke
	y90x7qgK+/toQKI6e9zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4Au-0006nR-58; Sat, 30 Nov 2019 14:56:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Aj-0006mU-BH
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 14:56:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so38424666wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 06:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PwCozoTs8XG2ql1FZKnvEokfnqeNfbyM67ucxeEUbfo=;
 b=c33a1OSsBgCzx7NXCRReDmDQ2HWnQM1tDZadOh/TrDx47fxF5xc7+1WKtEvniCFm1H
 copRaEtRL+RhWoL3tPJvo3E7wkYvqe9R5RnI2y/5cfKEi4iK6fOxHsTSZq+kwfSPY+p2
 KHW/EwcaKDHkEa1hXO+9sNMvzVCIXio4TzVQzIiGIvmAP95H0SsnizRQFRGapb7okML6
 D+0ViMS8yokFh1Q5JOIAEdTiDD6lzXMJs+9pjqGpxCTDMtMTmmUTHjiLs57RDkDfp31J
 +ZB9qjAiSY8E/9WQuq576Xr8ZjTjYPlsZf7+4HYkOi0RbRfjDkIMOo3wKrznC4ljK8yp
 fH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PwCozoTs8XG2ql1FZKnvEokfnqeNfbyM67ucxeEUbfo=;
 b=qssPq9a4TMApve/QWducRXg6IalS/8fkRdIOuZur95KT9QzKnFi+VjijxNL9gczXQr
 sYL0P/paIURzQ+B8519Zgm3yriBxLNqj4ac8lqnT18FR6NxuB2xZYigSPdwIVveQEbjW
 v2vK22fq9+qIdmsfLQA7s8ripdsnFb7jsab3Qvn2d9/E116Avew/pqPnhp3rCNTrWDUl
 qv4SSTlSUAWLG3fYYpYBmcZtms/mrVrtoFR5VTS0HTQikSedaSicrLhJp3Tey+rMGzsz
 aQMHQsjOtUeVyUwi6D1i/5q2ZGF+DDjXQlmaYsv+vLtFCQy0YBrNAzIuEZU4jaJ8jUyQ
 OWOw==
X-Gm-Message-State: APjAAAWsgwdVq1YTP3JW2O3nvivndEU8LupKrkHHKUiSOT7vQ6vCpU0m
 7HLdueJl7W+RqX68D3pSq30=
X-Google-Smtp-Source: APXvYqw5vPFt6szAkomA55xwpp96G7mGWyk6w+xUYxH7mO7VnvBKH6M4Ne9jlegRNkKp21i0+9KIFw==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr11646557wrr.265.1575125790967; 
 Sat, 30 Nov 2019 06:56:30 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b17sm7163391wrx.15.2019.11.30.06.56.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:56:30 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	narmstrong@baylibre.com
Subject: [PATCH 0/2] amlogic: meson-ee-pwrc: two small fixes
Date: Sat, 30 Nov 2019 15:56:15 +0100
Message-Id: <20191130145617.1490233-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065633_410083_256C9EAE 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While working on power domain support for the 32-bit SoCs I had some
crashes when trying to actually use the power domains. Turns out I had
a bug in my patches which add support for the older SoCs to
meson-ee-pwrc. However, I didn't notice these because the driver probed
just fine.

This is my attempt to spot "problems" (bugs in my code) earlier.


Martin Blumenstingl (2):
  soc: amlogic: meson-ee-pwrc: propagate PD provider registration errors
  soc: amlogic: meson-ee-pwrc: propagate errors from pm_genpd_init()

 drivers/soc/amlogic/meson-ee-pwrc.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
