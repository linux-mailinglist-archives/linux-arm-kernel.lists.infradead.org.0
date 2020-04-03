Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B8319D5D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9EiN5peKgsQozhlG30pMynejlCIUIaEgXKqR842OEPU=; b=R92Qj2RekoCCZc
	xBPMrPNYK1Qhz6zbfm2Cyd6ZjJ504VVdvhhnXd0RyVLwEfCZKWJfGzROZ7zQ0R+jDa/OSC/W2EVHf
	Y1wkgkz2+S0O5m2qnOG9mnogwdwEluQio/gp3rlYlHljTUkZXoANRaL5DoSBkSrdCZTHeSRWX81yo
	k1rnG4ElbRFgjl/IoY3Q5Q1aZlh8ruzNDWvC1BXi91SnjLVv2L9OJJ410mliYxXeA0gWqGiTKn1aT
	8awv9fgTyQdUyjv/blEEBiMCPeVlAOr4bm02hXvRWp+hQvjJKbJNfON5m0Qdj4U1EYiVWHql/o71F
	zT+lk518I1e1MNnGq9vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKWI-00062Q-14; Fri, 03 Apr 2020 11:29:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKWB-00060G-16; Fri, 03 Apr 2020 11:29:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id t4so2577890plq.12;
 Fri, 03 Apr 2020 04:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8rXpdWw7x9PpBvoBR/qm/XcVJsNWHJ1tSvQ9UIVcPLA=;
 b=iegDoB1IxCA4quOPEOuEst/h/o+3lRJuFDKhH/u9bys+FKqKdgPy8zwo7dxJoU2DwR
 OqDJQKEkNLhlMWWPZ065eDbOe6Eo4ZD2JqnLMoX4sksEkxM3ZDYy5kzvKC2zOoRSXSix
 t4aCJWtpQqSvrC2solgN22MI9dJUgkfeMjY9mCzCjV3+JrCclicKu8HBvSumuae23O0f
 YKuek9MktR7z3Pa6J8hUkwLCmerbyvtBYv3ux2yPUeMxkyXQt8qVyoEDBorLtSBfEd5K
 OyxNXrHVYivJX0Up0fRhONeNVQ+BFkAj2kkYUT2zWAdglRTaY2wwTkrVVQKGMJYZypuJ
 v5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8rXpdWw7x9PpBvoBR/qm/XcVJsNWHJ1tSvQ9UIVcPLA=;
 b=P4O/phCyGE1efGT64CFKHH4YjGsoUGXPS9xcdLIJAetCWzHM7t1TBQtdXs0h4wZwlk
 0ZlDn8xHSJSWUTzgyUn3jxQRzQfTy+bmlIG8bhELPX6pb89KCuPrIuf4GjtMn/yID1AJ
 Sg5KiYNRox9/ND5YnXLJcnk6FvItl0TpSGsmrksoTheIop6Svgh3ovATSOpbrhQ+/yq2
 yMJiK2fDcNZ2bK9kzFu5XuB0Ww80bYqEdJw/c6Vwe8o55n4sIAKyjvXcdBCHY6YWkuV/
 iOUr7D5eko9eDguyKAuMEWPZpDAD4GjepbMJnrl85MSucsVkIlAZ2xcQYgq07pMw8BIu
 jU7g==
X-Gm-Message-State: AGi0PubDM4fJatKyGGS2Q+JANCSHtXvuUv003C0ReFleZ1fvbVU1HeIw
 gVkJHRck8W5IHi4lsMxXgQwLOn/ha9Q=
X-Google-Smtp-Source: APiQypJ73aRw0jbyNSgssLXyjPahMN2KTO/im/OozAk2AXrhtWeGe0HEMNdi7dRewEFL4MTJbkL6Mg==
X-Received: by 2002:a17:90a:37ea:: with SMTP id
 v97mr9591002pjb.26.1585913384901; 
 Fri, 03 Apr 2020 04:29:44 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:95c:7214:abe6:11ff:840d:b9a7])
 by smtp.gmail.com with ESMTPSA id g18sm5034114pgh.42.2020.04.03.04.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 04:29:44 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in port5
 setup
Date: Fri,  3 Apr 2020 19:28:24 +0800
Message-Id: <20200403112830.505720-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_042947_076556_0BDD7D9F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 2nd gmac of mediatek soc ethernet may not be connected to a PHY
and a phy-handle isn't always available.
Unfortunately, mt7530 dsa driver assumes that the 2nd gmac is always
connected to switch port 5 and setup mt7530 according to phy address
of 2nd gmac node, causing null pointer dereferencing when phy-handle
isn't defined in dts.
This commit fix this setup code by checking return value of
of_parse_phandle before using it.

Fixes: 38f790a80560 ("net: dsa: mt7530: Add support for port 5")
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
Cc: stable@vger.kernel.org
---

mt7530 is available as a standalone chip and we should not make it
tightly coupled with a specific type of ethernet dt binding in the
first place.
A proper fix is to replace this port detection logic with a dt
property under mt7530 node, but that's too much for linux-stable.

 drivers/net/dsa/mt7530.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 6e91fe2f4b9a..1d53a4ebcd5a 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -1414,6 +1414,9 @@ mt7530_setup(struct dsa_switch *ds)
 				continue;
 
 			phy_node = of_parse_phandle(mac_np, "phy-handle", 0);
+			if (!phy_node)
+				continue;
+
 			if (phy_node->parent == priv->dev->of_node->parent) {
 				ret = of_get_phy_mode(mac_np, &interface);
 				if (ret && ret != -ENODEV)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
