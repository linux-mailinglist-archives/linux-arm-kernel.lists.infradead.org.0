Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FA317A329
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Hhs3h+mCWrYA6gqviQzQF3v1PBQY+MCuk1ZkWdob/A=; b=m65EaVwG3YIkDT
	Ww36i6idUsWlOxBzX993I1NnL1C9gsxik805Wes+06GnsT4A8SvGncUdopWfbhZ1jnqVO5cx49Wg6
	IfP3ym6TmvtHAiFzgfGt58bglNhrNBzx8ZDrhsgB8v4CWggqANy/31d/F/9InjD5W4iUE1w7rtWfo
	7WYxbCp8sB6K54hSPtwYtGJQxjZe/UxHtqOYMfP5o61AqRbxgVp/gR7J984k5F/B4x/jRp/bDRVbk
	yez8jY1wlSUWfyeqp00+y8vs/PbwuR7xvZIq3VkFQjg3r5CYOasmliGaoh8cit0ZqPAOGfn5QNxlO
	3xf2qyVGecGisuMNS/9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nod-00082J-OY; Thu, 05 Mar 2020 10:33:19 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9noI-0007vV-Pa
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:33:00 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l41so402379pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 02:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vsmWfQHYKO+IuisE4zoMrrWqQil3RoLQ09NM/R4vXz8=;
 b=PnfP0bOcQb6PjDSK6KH7VyFI6lPRcbRKxQXVVwlFjpqKwUREnrvNYwuGVOOeteK46l
 +ziFUEWNEhZ4HH1r5D4yvLldZTqLP1B2uxtlFvEFbevqxE6Q4PWw4Z0APOak1KTgfX6U
 hxzlSAPkg/84vnQwYAIdOSZr9isyzANmrggt0Yn8ZrmbqAilHz1ctIexj6h3qljDRYgn
 SrJhXCHML0kTVTJQCkBTiF3orv1usOgLZbXjj82UJBqjpho02d0GIUNX6w7cLLFdtpIV
 ln3u6zd2iGo7YHWIlXYb4wBvy/339xHyTqYqRlQEi/0djWXaw8YHz1QSS5ERq1mG5x4z
 5MwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vsmWfQHYKO+IuisE4zoMrrWqQil3RoLQ09NM/R4vXz8=;
 b=QfNNxRAzWvt4EHKAyqdXV+bHcLyE3B6pRdJ3Tddywcc0NHRMhv36q1HrQeBxCkl1wk
 maVdcXzUkNOigAEAnnGshgABn0nJ8QRqTjitl+oLULuQJrY1O9lsYDTcfPfTnH0r7Ddo
 Dr+tYr2+vCaWrqgf8Jwkiag1LEbJr1RBTjlgPxnqoCmuIFaxJWcX9LXFA1QEeoLi5YIW
 vyT8ZOmlpOa1HIRNEDOUW2IymLuXgALecePMANqLjSHcIhlDZGodqIFmGcE1zR9uQlNG
 xCNF+5/DDrVoFuvfDcG9sZ4CVM6qrUCJ37qCOAvRzI4YW/YZVaOHaBlPlOZHcUuN3ELh
 u5GA==
X-Gm-Message-State: ANhLgQ0a9/6C8WgESBwDud7yHaf3aTax5Dt3pI3sS+Bi8lk22+zxTsnH
 IwFDnMhl9+gBB0IwquAr3pU=
X-Google-Smtp-Source: ADFU+vuvup2OQ+LkXonFteqL3x/Q3zHIPTB1pvus9Rdsa06vHb/D3yAFoir8AtziitgcAYM/Iw/3Pg==
X-Received: by 2002:a17:90a:e654:: with SMTP id
 ep20mr8005006pjb.60.1583404378204; 
 Thu, 05 Mar 2020 02:32:58 -0800 (PST)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id t17sm31540145pgn.94.2020.03.05.02.32.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 02:32:57 -0800 (PST)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
Date: Thu,  5 Mar 2020 18:32:28 +0800
Message-Id: <20200305103228.9686-2-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305103228.9686-1-zhang.lyra@gmail.com>
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_023258_869277_300E4CF0 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, linux-serial@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chunyan Zhang <chunyan.zhang@unisoc.com>

Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
since we want them can be built-in when ARCH_SPRD is set as 'm'.

Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
---
 drivers/tty/serial/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 52eaac21ff9f..2b9addc0afb5 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
 
 config SERIAL_SPRD
 	tristate "Support for Spreadtrum serial"
-	depends on ARCH_SPRD
 	select SERIAL_CORE
 	help
 	  This enables the driver for the Spreadtrum's serial.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
