Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB12A63A56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+FmWuacmJXBmXjM4/wI3J94/y9BLRnRilaS2GFMqUec=; b=J32Kj0gfQGW/L3
	5+Gr6slfEat6Jlazl+xL/ngSDeSJMg1sLKtEgxOkV06/j2x77JD7JRC5gimLm5XfDWVHGyA6dN12e
	dQLYcentuAELPQyMx/7WHRDWFcqCJgn2lcFSyIGcz4o30s2HDqq9P4/IZAwXtmWZS9Dsb9lT8RDj6
	CWiQo5ECMXcqlQUIorVm8Z/1iCMAAX6WTVUhXSdd6YMCKD19Bl3/9PdscyU7I5HcgFEw78VdIQ7Bn
	LfKIwaFOkzcsQLTunsgccOK8GWbXE2LP0+oIH9mVPRLuAvCIQgordGnsRvuKPyHdnT4QF1tW3Y5P9
	aVZi4a0m3tBXt20ODFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuMu-0005nT-A0; Tue, 09 Jul 2019 17:57:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuMm-0005n4-Ki
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 17:57:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so9638939pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 10:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qkTnc9KFxu+eKkMI+ViyuqAH2l9mhes3oVPetOo6UQY=;
 b=kH2Xr5PKkvPiBIbtnj6MZx5BcJmwSCNPYlmSZPff6YRpV0M6JyGSKFG8UWWWGWc68e
 n6Re9PfR00VnhBuO4KV2ZMBLOnvhp/y4eFcficbncQiSTjlvCqFxFxdS7yQRdqoM9um1
 zefV9DGAXCSHUQsC8X7HKP2XKi8Ba+N+qHGt9g+erWPn7qLebacUdK42msZuFco6ScDg
 herty0K+BB91hoFzHBDw0P1SYh7wdS+1Mjhg+H0TkpPGDMPmIx49xaQMYzcfV52B+/G0
 uFOwQDbqMH8XDDffSwYoK//U10bYjw1Q6h8nqOXqSLfijDVD3dGqItfIf5X/OVt5VHWf
 HoGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qkTnc9KFxu+eKkMI+ViyuqAH2l9mhes3oVPetOo6UQY=;
 b=bJPYfQidiAwuZVIgh8gSScIpJHRmXqDvdP4xJA+VATKKNmgajAxBZmfVhnifVqlgOz
 ISGpFP4+i6B9C5h1d48/jy65mnK405SMo2jT0WhpFc6vRIKFJPUY13AQG75fwm2jjsoF
 iuZv4RVzsRmx86Pn0dXYaDhNbf53xIKB5lPBzCEML4quc0HIOjziUXHelcuCilwyxrMF
 D34pp4dvUrfxL9y5ydjvafCwQRIxaMR0WKPHMcartqPpkBc3AlvittRbM5hadnq76aec
 xkqAsCOym9OCigJYhn0vRK5dz6KQV0Vd9XI6Slj54e092a2SOguCKTKuzySfjG0RYORz
 ZEJw==
X-Gm-Message-State: APjAAAXHnl2I+Sfw8BB99QwBy3RkeDlHHFPAKCsCBkNTFB5OESU1Uq4O
 fK6Hxtzc4SKKbSsV2ghPxYGUGD+C
X-Google-Smtp-Source: APXvYqyHEj1ycd0OwQ4OuYIRtHZp+tj2PbBPUkVMBjOFdxSPMPV6yLypN53LzZ+IKw5gtq9D2WzA0A==
X-Received: by 2002:a65:47c1:: with SMTP id f1mr31464882pgs.169.1562695043418; 
 Tue, 09 Jul 2019 10:57:23 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id o24sm20051491pfp.135.2019.07.09.10.57.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:57:22 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: hdegoede@redhat.com, dmitry.torokhov@gmail.com, maxime.ripard@bootlin.com,
 wens@csie.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] input: keyboard: sun4i-lradc-keys: Add of_node_put() before
 return
Date: Tue,  9 Jul 2019 23:27:07 +0530
Message-Id: <20190709175707.14278-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_105724_682053_E6224AA7 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous
node, but in the case of a return from the middle of the loop, there is
no put, thus causing a memory leak. Hence add an of_node_put before the
return in three places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/input/keyboard/sun4i-lradc-keys.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/input/keyboard/sun4i-lradc-keys.c b/drivers/input/keyboard/sun4i-lradc-keys.c
index 6ffdc26b9c89..4a796bed48ac 100644
--- a/drivers/input/keyboard/sun4i-lradc-keys.c
+++ b/drivers/input/keyboard/sun4i-lradc-keys.c
@@ -198,18 +198,21 @@ static int sun4i_lradc_load_dt_keymap(struct device *dev,
 		error = of_property_read_u32(pp, "channel", &channel);
 		if (error || channel != 0) {
 			dev_err(dev, "%pOFn: Inval channel prop\n", pp);
+			of_node_put(pp);
 			return -EINVAL;
 		}
 
 		error = of_property_read_u32(pp, "voltage", &map->voltage);
 		if (error) {
 			dev_err(dev, "%pOFn: Inval voltage prop\n", pp);
+			of_node_put(pp);
 			return -EINVAL;
 		}
 
 		error = of_property_read_u32(pp, "linux,code", &map->keycode);
 		if (error) {
 			dev_err(dev, "%pOFn: Inval linux,code prop\n", pp);
+			of_node_put(pp);
 			return -EINVAL;
 		}
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
