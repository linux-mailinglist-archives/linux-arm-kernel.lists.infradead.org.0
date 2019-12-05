Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80531114885
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 22:15:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uVRY17M2q00kfeWELL9JNuVqXBKlHtiz4zu/n/5/m0c=; b=eJchgEJoaypp6+
	0vUJ0OdrDQUktLHkYFxPDKBCHYBiXZkhydqEN3eI4x6RAvMF5J2HwORPVvzG+UTg3FSTkDgmf6hIq
	Echmo9rw1C6decifC31+zi6RKM8X1D0nF/N4NqcJBGpy5C/WXQSvrrBYxe7jwPT3ioBZKGchEV6WV
	3NMdWNddOC0LWhlQCeyAF3+AX/LwwEyBdnF1kLvSfNYtE4vfeTJuocIgZDKAPUqdEKiBgYajMlx/K
	2gHo5qPgsS3+Rwm/muv9PmzgRm02f+jU64L79v8N6yrKJiu9/PyHR3MaoAq2cWfdTeTCfPp5S8zpG
	KcrKkhhhHgAFMv+29f9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icySg-000481-Vx; Thu, 05 Dec 2019 21:14:58 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icySW-000471-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 21:14:50 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l4so1789863pjt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 13:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=24az4NcTvAbE1gwkD1vSeGki1hg/o2RlyN8rH96Cyag=;
 b=Wv17lkDImJB8kIW8wLd5ue/b6QJGF9Np+VmjPlG5A41rt7Z2Ab51+djS6zqQqbXrjt
 oEJire7/4GP4EmzymiTWVwBTLmayjq65v5s2BGK+/OOy/x7xT4ikgHANQmHqOfDxcvyd
 DIkSTpow40cBzD8Bu6HM5dJUuXj3ECTo0s7BMyF3EhcFkKnlTC68q+NGLYc8R/rJluQF
 1lr78rs3ZaYeLis1b2JcDJrBFAxwLQIRJfzA3PDkvAyIQbVdN5iSCVOFMmrkH5Ss0F8Y
 RSeJDdYgQWgfkOzk7iKifWpBkthpZ5eirz2ZqqDR8p9Ipu+i8Ub82vbjH7JlA+g0PVDE
 oVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=24az4NcTvAbE1gwkD1vSeGki1hg/o2RlyN8rH96Cyag=;
 b=VF2snTA7F/3Emu5EFmV+gwlKyukgso8yWaQndK07tnE96iPE0DWq9u8UsjXyBCbMao
 7pPMtHrjpcMU8zpottoXOzprR2GOG3gc1tV/c2oXLb5IcoydIaAPuTLEkAssPP/lx4xd
 uBqxTtOFeIg7Bxh71PgmtVb+q79gFEz1h/1JGBZmgNfUGMKFUM3QLr72E9oihpMV/5rw
 Xxz5djxX921WsCynDEobOzpDlDGJRac9fOb2ocCAr7kzYjL9uxGlRV7bne5CrZ+tCnzG
 ps4y5zTJwum4exlPgoCT1eN3kIoh+1/fZmWIFBeDIrcXmI+I9cz/mb5nrbpJfFncQU8u
 H1/w==
X-Gm-Message-State: APjAAAWEPbEIEVPRbGrDt360uC8hEsBz/QvC88iaHJCx0xg7A9O83ocQ
 Ahr55RuDlQeqvL5FVZiu8Zt0241VVe5luA==
X-Google-Smtp-Source: APXvYqw2JjxVLJFFDW3V2Sv003MnST73kqi8fvw2Um6qWwOkHXNV7QaDuIbERZjFHu4KXuZoNtpc8A==
X-Received: by 2002:a17:90a:bd8f:: with SMTP id
 z15mr11467194pjr.54.1575580487361; 
 Thu, 05 Dec 2019 13:14:47 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id x33sm358483pga.86.2019.12.05.13.14.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 13:14:46 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Re-normalize shared defconfigs for ARM{,64}
Date: Thu,  5 Dec 2019 13:14:36 -0800
Message-Id: <20191205211438.27552-1-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_131448_983418_1CA732C7 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, arm@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This comes up every now and then, since configs drift over time. It's
mostly a pain for the shared configs where multiple maintainers might
be changing values. Having someone else run this just makes it worse,
so it's easiest to just do it in our tree.

This re-runs savedefconfig without changing any defaults, and I'll
include this in the first batch of fixes for 5.5-rc.


-Olof




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
