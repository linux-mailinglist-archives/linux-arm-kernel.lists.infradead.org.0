Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D446311D9DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 00:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YTURkKj6UuGr/ZEm+VQXTzq8xJ6d6DQ1L/hlZJEppbQ=; b=rFvkiZwz7cuZtU2DR4cBk7gug9
	0/KE36vHGStZgRLw+sC5cUlieoeQWAyJ3rhVuLa8ltmXc87043ZFPcMiCQgaC5SOliGzIFPg5tM5t
	pxK0ghnuiPUggAzb0UJ1ZPKulFL4UBgmNvPJYid+nIru5WFkczW0hGtIT6h0WQGUOvnwIYuX2AP5J
	0wvfEMqpaWoMXLlKm3nFjH4gaZFgOF8TM5tSQ2JF4ZPvt30q6BtJg+I9T4AAvbxTYttYPHfg0ysEG
	zBRlbT7ntQvsM4TU11DQ4KTUYoQlUTzFCApmb9eP/ttPupMewO69plrFfgR5K5nsjtlbUNDKahYwu
	25Av2mtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXi6-00088p-4d; Thu, 12 Dec 2019 23:17:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXhT-0007ja-S5
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 23:16:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id x17so297724pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 15:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6RmPSySB6yaq33KtHs8XUNhrbCfHLQh1/I6bnoO7bOU=;
 b=bKH9jNlxo+A2rwduZywwg1nKEr08Ppi/z84u9kTTiy/LU/3n7XeUEmRWWF3XFOuExZ
 D1Y99V2zbwDgmJN06eBZcmpdm+ytzlZlbhWa2Z77UW8yChFuuc3dhaS0oK8KNUrIrXAO
 S/O4LVHu/glTYi3b+HhiU089OEeV7M+WZU2N2Xo/9x/llfsErnkx49I5oCwuS71MWLL2
 WGP5adS0EUc5+N5RcpLO9tr7vnhs5DKa5EG1fM34Vdc80t8Gu+vtmWn0/C+8S8U1OjSv
 FN/J8dGBvcE+VhSYnQholdvV6D/MkzdWflJ/wjbgGE5sV9CEN/v5mqS/x3SIWeSb+I63
 GP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6RmPSySB6yaq33KtHs8XUNhrbCfHLQh1/I6bnoO7bOU=;
 b=GqlX4V7B++t27y3bauQIKFP+aECh48pQ+BjLQYg3s3e4PGrPmUZ+aW/OpLLE97rv4v
 49FQn9W3YHsBNo2m/zDtddoS44Pa3WZpVzRiBu4/NWtFIojIWfmW9G5Z/rBATqnBqgku
 55sjJJxTRWwBQskPTI85sX9wCHEhDghvyM1GbU1A3YZIVAEO1ZDVQj6Gz9ktjWMq6AB+
 TwETwPvhN6lwco5Fl9zLT1+EwPPbPbvso+vl5o7WzOganrSLAPp6aCU4r0/dzzEQy7q2
 4S8GwpWV5eq6ovSNHahxfbST7loupF0GLxYQJBa6A+ttztqIXyXvcvWmKPb4FyYMmVwp
 imdQ==
X-Gm-Message-State: APjAAAVvdcjN+qdpnmGzHxZ6+6u6VMb0ENvwdM7ZqHONQm8Us6QHkuha
 Oo4D+qYH+yGNDNgTMzfgoNc=
X-Google-Smtp-Source: APXvYqzMJkjYW1LUjKBbYMB1MnB4ShrNNsXMvWSY/vdGaL1YzXcdKJXiZJDWzU6pYvq9i5fxGyp73g==
X-Received: by 2002:a17:90a:d807:: with SMTP id
 a7mr13304783pjv.15.1576192611097; 
 Thu, 12 Dec 2019 15:16:51 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1072])
 by smtp.gmail.com with ESMTPSA id ev11sm9423307pjb.1.2019.12.12.15.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 15:16:50 -0800 (PST)
From: rentao.bupt@gmail.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: [PATCH 2/2] ARM: dts: aspeed: delete no-hw-checksum from yamp dts
Date: Thu, 12 Dec 2019 15:16:22 -0800
Message-Id: <20191212231622.302-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212231622.302-1-rentao.bupt@gmail.com>
References: <20191212231622.302-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_151651_904253_2D6167A9 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Delete "no-hw-checksum" property from yamp dts file because ftgmac100's
checksum issue has been fixed by commit 88824e3bf29a ("net: ethernet:
ftgmac100: Fix DMA coherency issue with SW checksum").

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
index 52933598aac6..fe2e11c2da15 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
@@ -35,7 +35,6 @@
 &mac0 {
 	status = "okay";
 	use-ncsi;
-	no-hw-checksum;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii1_default>;
 	clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
