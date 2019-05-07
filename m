Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A942F16CAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WVULHo8COzqjeYGO+0KOfRewU05RQqL6goh8qugEAUI=; b=Alx
	b/fzdV6Sy11qilMA9Sv6Yq0mxEjDIojD98Fm9EVEQhS5SuKWBUmWp1IApOD2RwKxZJqGWUUhaKNa9
	zQnLri7cJO5AWSwtqviiccoCN6WbmBSkNMWiZdoHTs2x5wAvJfMCxdGyoKiaVjDWj1B+DXRSefCvq
	wzy+4Tu7jm2lCwg73Fn6jfauAieHKBrgmJYpk6BbU/0aJNKsnL2BjmNcQV25QyLGPHJgQFeS+jxpH
	qfDF4dPI5UfO7+5Kfs6gUo3/k+nW2OCdDKd5+WVcQmpK5l5B6rIGfTkVSDIY1jsvKUvgHNdYuibhy
	MvgH0Xo9huTHjovPhD+SL9Vcs/OFBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO74r-0007vm-UM; Tue, 07 May 2019 20:52:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO74k-0007vB-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 20:52:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id y13so9260787pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 13:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FZCsu76ETp0rZ0rXi+vAgG1DHkuU4ZJZHgq+GTX/TeU=;
 b=YAPiArlNMJBDkaS6R4dyKdz6IW6HPGijvrYEY77nrpT0RtiYVI/ag+5Pu2wgUGwo42
 Dt62ElIE2Cj70zDg5l5U2dA3F8NwPho09EZ5kMdemAVcRAkryb8UIgjiSoQtTrodY6wS
 pB8y1FCEB+FaYbuySFo7uKAwbJlOzBIbrWgtjrvXpsvWxIZ+x/s9o+qedboWmJrnvhE0
 sTh++leHrUsJiCUPsLhrIpADXMoMdIr7AmGKE1hdhAQDfrLfMyx+qwGbfvu8AzTqav4C
 Co2wU+rVb5/IzT2tJ95tS+CzpzS95zpLpFaa2i+ieZj+0XV7oL6YJPPpR9ViZMAhZEBN
 WjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FZCsu76ETp0rZ0rXi+vAgG1DHkuU4ZJZHgq+GTX/TeU=;
 b=JhzBHXDrU8YWoQnpTY5U0359MRa2FYI/vmY0w5RdN4bX/3jRHdNjHjXRkk6akrwPKa
 +y6uLBE4wGkBD0cyKKA11eeKe97qYNC3Os1qqcW1cJW8KeTDCjC7eaRB2ihBeBVqL++/
 nnOUEdQMmyzaIBxZGhE6qyKREmunzT0cJj+ccqWwzs4LQWr6f6T0slbyBR2XIeVmyC0I
 XQN92FTnlOZ1vQEC9nJMwVa0FXwN22bH6BUvP7HGOECVOPyntZyZM1NiL5OscUQXyWFM
 qxWiXwiY/wPaBu9kQA66jjSLZWNOgPH1nZx78PDo5HP5/Z++/HZYX6jFnUAvTXLSELl2
 BFSw==
X-Gm-Message-State: APjAAAVauCumNwgR0i54twR1Tsdzo33hKVk5r8XDWuw6/2tAKgWdWFt/
 N1/ZpyOqTPN9jxsGiVWQ3NM=
X-Google-Smtp-Source: APXvYqwWbLNioOJ3VoiOYrPTtL15jPigps8VxBp1q1jIpMmqAM8LVIWhwtY4EDHxbahQvfobdasYwQ==
X-Received: by 2002:a65:5181:: with SMTP id h1mr42672849pgq.167.1557262353965; 
 Tue, 07 May 2019 13:52:33 -0700 (PDT)
Received: from localhost ([2601:640:2:82fb:19d3:11c4:475e:3daa])
 by smtp.gmail.com with ESMTPSA id n184sm13459640pfn.21.2019.05.07.13.52.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 13:52:32 -0700 (PDT)
From: Yury Norov <yury.norov@gmail.com>
X-Google-Original-From: Yury Norov <ynorov@marvell.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: don't trash config with compat symbol if COMPAT is
 disabled
Date: Tue,  7 May 2019 13:52:28 -0700
Message-Id: <20190507205228.8186-1-ynorov@marvell.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_135234_973989_4EFE95C5 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yury.norov[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yury Norov <ynorov@marvell.com>, Yury Norov <yury.norov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yury Norov <ynorov@marvell.com>

ARCH_WANT_COMPAT_IPC_PARSE_VERSION is selected unconditionally. It
makes little sense if kernel is compiled without COMPAT support.
Fix it.

This patch makes no functional changes since all existing code which
is guarded with ARCH_WANT_COMPAT_IPC_PARSE_VERSION is also guarded
with COMPAT.

Signed-off-by: Yury Norov <ynorov@marvell.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 305b50f8f791..38e6dc6a50c8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -65,7 +65,7 @@ config ARM64
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
 	select ARCH_SUPPORTS_NUMA_BALANCING
-	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION
+	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARM_AMBA
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
