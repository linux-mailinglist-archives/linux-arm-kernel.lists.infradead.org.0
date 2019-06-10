Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2EE3B882
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUTC6LTCRTiWoVFFmL25Sa8HiF8B400Wk0S6TmYT7GQ=; b=icoKFyGLcUPExs
	he+umTjb9BB+6aXrapRwoKIhf+h9rq0Y/zyZ0wOvjJSbGnMy0nPkWFdQyoNTqR1OzDOYvaOr1EbEI
	yNeykOVlP3q4PipgEpl8dCSYbt+FECDuD2O97KJztyFvkMJVIgCDWurooMD71mrUb5ajS10WeRgnt
	6K0zWAsAEN8uEn63+9VPG/H/cqdQ0+PGe/A3CUqotdWrjbW0aFH7BJeUDYHhYzEb0766AGGrDawMo
	Zj4GD671EeJkROQ47OjnpC91gDBGq7LKBOrRKdLRYRT1v/TMFU//gGjdLTB74j0oyiB2jOKBVwHfk
	IOhYqXp7+a2gi8GObORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMZK-0002PP-9r; Mon, 10 Jun 2019 15:50:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMZ8-0002Os-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:50:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so8665425wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 08:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j0cvrW0LiR2yAWHacC+paieH/BsPhO653fx0ilOqwbQ=;
 b=XrYcjT7N66H7PZl89qVvjkYy2lcUUR+p2y5QlMqTrKSYLfpAHr+5bhPvrKUDoDW2Gn
 gc8KQUOivmTgSCQR5PIvdxh3Np5UEb4HOX5Y/TgrcVFjLu1N/l6ZRZHcLQwZoZkFB2PK
 dnHDV+JZ8jRZwikhp0mK3D3c9YrIoYwTbrv+XI3t6hXqkMvOg/CU3HdRVKBqqbiWsoYb
 ZmrGKLaXtkNsJEc6GlFos05req6azeUDaSh/0lsYh1U2oaNxBegmv6xh+NlQSfkKDqss
 qqcF/nZdT+NcxD5fD2IRb0hwvT8zPzyEN97nHCywHGtE8NnApD9T/+hYylByZ803tbq9
 bqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j0cvrW0LiR2yAWHacC+paieH/BsPhO653fx0ilOqwbQ=;
 b=jvYpfpnZJphr13ALmxNM9qzx2vg065W0p5/nKXhgUNF5qqTI164eSLsOzoj6MUrbA4
 lrlnTdWI07HgJoN0EOD1GbTwOkA0XHetGCB6CjR5hgusJOdDcFqmdgsyaoibJssgYL1Q
 DTbxc48lhaUTbQ246FGQ749D/a4xbXD5K3pkh8J9BbwqKrrEPVN5RvXcreaKq6TjrKPl
 Egi/s/Qh0PkaxXFX0M63HUn51VXC+yZnS2D2Z1cNPq10ckf3LurZHZaIQ7Ui36QgAHmq
 9TUi0RP3nA5r2qnNRwNTjdYJy91Q3ADoLIxwp8IdaAF6jMOmMzta3HwR1UTSpnDTl6In
 4LEA==
X-Gm-Message-State: APjAAAXgTF+B50xm+r1vupLpQ70jHI5U2fCp9ZpHc1erjPjEKleZOxIS
 qWIT3kPc2cSRzZJs6nf1G3o=
X-Google-Smtp-Source: APXvYqzLna+aVnK3OUUKYltUUrEa4DJqameWzsVBUOMurnw3ZFvBDcb4Rdm+t6M1JqO46Sv5jxt2fg==
X-Received: by 2002:a7b:c751:: with SMTP id w17mr14836813wmk.127.1560181833344; 
 Mon, 10 Jun 2019 08:50:33 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id z17sm9711917wru.21.2019.06.10.08.50.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 08:50:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
	netdev@vger.kernel.org
Subject: RE: [PATCH v2 10/11] dt-bindings: net: dwmac: Deprecate the PHY reset
 properties
Date: Mon, 10 Jun 2019 17:50:11 +0200
Message-Id: <20190610155011.4305-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <ff6306c71a6b6ad174007f9f2823499d3093e21c.1560158667.git-series.maxime.ripard@bootlin.com>
References: <ff6306c71a6b6ad174007f9f2823499d3093e21c.1560158667.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085035_039812_C3C81519 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Even though the DWMAC driver uses some driver specific properties, the PHY
> core has a bunch of generic properties and can deal with them nicely.
> 
> Let's deprecate our specific properties.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
I am not sure about the yaml syntax for deprecated properties but
the description inside the .yaml file looks good to me so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
