Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7329634B75
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWh+WaOYo2JoVoCoxBDcJRMUvw3sD4mqy0c2/dxderM=; b=O+7p2PP7u6DMEN
	R05DMCRDVYzPBvBjnwXTawDCBhJyPq6TajyrNlQMsKVeEiHXjb05HdB5jYYRtxQq2EToUuAP4leKk
	3Q81XW5xO6mnHD74X24f4DvsHQIQyYjEGwxu6q1kGFF47BZ7OmmbsZnfBt8bwmcixUajfAek3T2np
	O0zmJ/Oycs3EFhuZhteLpDqFvnPxErcGkumj4NEHYjNcUq/Ys32J2eZ9NzW0x7BlH8dad7Kn57kX3
	+RsT9UTVU1ShOC6Ix4dveWeudk2p956bFMIgp7uImsYSsVzfc42XcZamcItdsaWkq7omxKgW+Tbrp
	Vxa8ORURD8YlmSHBRhPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAzC-0003w8-Rh; Tue, 04 Jun 2019 15:04:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAyo-0003be-DJ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:04:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so427128wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gR43S3Tc0yL04b0cnwqrNUq/7DMln80yTYJs6XCbVPM=;
 b=VQ0vTsaQmBYYRWyS+kDb4NIsLY1Sye8Wrn5ZLvk3CePx/8pB/gD2/Rn15gUfbYuU7S
 yl2eL7rqiOP1Gd+jgLVjqDZhQ0gLiDKpAT1omQ4yPAEOZjsyjfUpH4AGQPl2uc5HJmng
 h+iXAj+nuGwfcOFC7aRAy2ipIvMaHyQyMZBYTgj0iq+EW2yrYMxbv/hQAoNzM+3JtvTB
 4VgyS5CQE2nhbeNQfMwX9AyqCMmUoWuUid1v2HdtNbOxzGC/BREwuRR3RU1oDtg3XKLI
 1jFyGCc6ySbkxHUjhGMTYYvFleX9dPpyXNcQGEwQr4VP4nLasPymk03/GCqLqa+3mndM
 yUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gR43S3Tc0yL04b0cnwqrNUq/7DMln80yTYJs6XCbVPM=;
 b=FQd+ky0/lsqosf0BZwxxo0nzTc/M/Ke3nArKkXF70p4lIheCb35Kxzx4REm7FGiE/T
 DoT8pW1fQjKV7++G3mOi/4fc2ch1tEgDTixhY4h2UG+gYLQTFJ1ZQ89nLhguzkD2aYt1
 38vJya/RlkUpcla7VaTZxDB2qn5r1mZqmSTH0swQ7kyAgJM8BKQHSTdzqYe6p8O7dLu3
 ii7prtjboftA1WCKfYJ2QO+46LCrUK/ylboDu7QOwjsLeLcZ1PTTfOehDloQ366A4ft4
 MKoM9jbmggvl9iHChFURScjcG4TG3omQjLrL4xD/a894ECbZxTia+T95j2D9RbaHF2Zh
 ZJgQ==
X-Gm-Message-State: APjAAAVqT5s4GJMdfdKJjDWL3DX0if5tEPVk29Egcz6ff3wtf/lpNH94
 s0OkEqgNeT205uUsGIe7Rjs=
X-Google-Smtp-Source: APXvYqyYaNUpg4UwKb7n+gECGgoqY1H3Pelsi0JYsuIaQ1SgWvX6Fh61fd3YNYQTZkDkifjwlvourA==
X-Received: by 2002:a1c:eb01:: with SMTP id j1mr13535645wmh.60.1559660638995; 
 Tue, 04 Jun 2019 08:03:58 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net.
 [86.58.52.202])
 by smtp.gmail.com with ESMTPSA id c18sm18063396wrm.7.2019.06.04.08.03.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 08:03:57 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: sun50i-h6-r: Fix incorrect
 W1 clock gate register
Date: Tue, 04 Jun 2019 17:03:55 +0200
Message-ID: <20522585.shqbOC0eQD@jernej-laptop>
In-Reply-To: <20190604150054.17683-1-megous@megous.com>
References: <20190604150054.17683-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_080403_023784_15EB3C2D 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne torek, 04. junij 2019 ob 17:00:54 CEST je megous via linux-sunxi 
napisal(a):
> From: Ondrej Jirman <megous@megous.com>
> 
> The current code defines W1 clock gate to be at 0x1cc, overlaying it
> with the IR gate.
> 
> Clock gate for r-apb1-w1 is at 0x1ec. This fixes issues with IR receiver
> causing interrupt floods on H6 (because interrupt flags can't be cleared,
> due to IR module's bus being disabled).
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>

You should add Fixes tag and CC stable with this.

Best regards,
Jernej



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
