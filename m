Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9480B9E4B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IXZMXN1qMSxX4KkniZqe5NCVkGftvi5QlcXcS0EzDxI=; b=BhGbSgqhLUM37K
	W0XcX2GHou01/DU9kx6BAux1kVP+2GJ6A+qyyFQ/XLooNPJt3eMZeh67/+avHnKSKUqInRT7x0SQD
	J9Oc+ndZiqVEFl6ADBbnCbzrwIeGZYV7W+3RF2Fqrl2HW49iI47XAEKE2+ZnrceTr1f7luFdmPCZe
	b55fVlYtm1UWiYuEGAPGSXv/KuSrcYmVuKe0XTmku9TS4dmlxtMKYzshxbRSKSFjXZu32KgeUHhrT
	MW/2YybqTwcmRvNTHj0B1GtHEoL01KMrkeajZbnsY4V5xlG+KnwHGKpWvf7Li4IQOR1OOmHZ/Siz0
	5VjggDlMMb4QTuMPHldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBgwR-0003wn-U6; Sat, 21 Sep 2019 15:04:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBgw8-0003vp-OU; Sat, 21 Sep 2019 15:04:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so4902279wmi.3;
 Sat, 21 Sep 2019 08:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LGv9DZLsLql8R0RI6uFoY3WPJO94bAE/bq+K0Di3JjU=;
 b=U4wBRIWkDsI4icvUsrtiriqteXBT0yMa+Xqw/3INETjgirlcoMtLUbdTCSP/DZ1ZQ5
 21NjqIWk1uACxeE90JxDe/JQtX/5AJS2ZBTdwW3Hh2d1YyXU37iLuTPWkHV/wW2yxqN8
 SuKZ2PkqY6F97Z0iSvzZRzGLw4aBw+f6y1ndSn6NHGGEmy59WJqlmOE84SXbrgFZKjOL
 WKi5zMpjOjVQJA6pwb6INga0YJ1/wIhO8Vu88eNkS4mB6LZZd1CiqWWxOav2KD2rHvx3
 V+GroTZC78nbo6KpCUinANLvJ0Gih6krhAtwkot15FwCBluKGKarVySBPS762dMsV6KA
 Uh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LGv9DZLsLql8R0RI6uFoY3WPJO94bAE/bq+K0Di3JjU=;
 b=T2sx9Inq6PSsmYJ1ANanCN33XeayjSradYwQQHqH7IG9VKkxVKDvb5dlcN3tbb+KWT
 jMNV3XsSSSdXw7NnBoNa1dZ1vj7f4T3RqcoDbdh+P3ezaOzGxFJSJEpamplLbMyTZPQR
 BB7oZEr8DS8LHg+Vs4RUCsnUZchJTlex5UBNgTjfCW0Hk72XXakO+pPDNP7stAE/QCHC
 yoTlGmfpnQ/+y9l03GxEXeZr5T3gAsH7N/6sTDirvbtbDV3ID2IWzC2KHVhoLp2tEVfp
 w9fdiArcimVwFIDvcNqFYALdS5NkN7I7MrbtSC7jOhfgT7rGfECMv4lcjYwyVDYbOZeQ
 eIbg==
X-Gm-Message-State: APjAAAUms9PC8/zNyr3i3eouc4C+GQoaUZvFL6y460aRVaX7SuEUdMHA
 wXxpRwXPgRPvBLYOjWnkESgXy+S5
X-Google-Smtp-Source: APXvYqynjJRqs2bHOp/DdMfbh05bDAD/XBKHx85KCLbrsN0bIXyPSuRIggxSw4x+yHMqdHzbOENSfw==
X-Received: by 2002:a1c:c789:: with SMTP id x131mr7235719wmf.20.1569078272512; 
 Sat, 21 Sep 2019 08:04:32 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id r20sm10987422wrg.61.2019.09.21.08.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:04:31 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 1/1] clk: meson: gxbb: let sar_adc_clk_div set the parent
 clock rate
Date: Sat, 21 Sep 2019 17:04:11 +0200
Message-Id: <20190921150411.767290-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_080436_823624_540A8504 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The meson-saradc driver manually sets the input clock for
sar_adc_clk_sel. Update the GXBB clock driver (which is used on GXBB,
GXL and GXM) so the rate settings on sar_adc_clk_div are propagated up
to sar_adc_clk_sel which will let the common clock framework select the
best matching parent clock if we want that.

This makes sar_adc_clk_div consistent with the axg-aoclk and g12a-aoclk
drivers, which both also specify CLK_SET_RATE_PARENT.

Fixes: 33d0fcdfe0e870 ("clk: gxbb: add the SAR ADC clocks and expose them")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
This is a small consistency fix which I found while debugging an
unrelated problem.

 drivers/clk/meson/gxbb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/meson/gxbb.c b/drivers/clk/meson/gxbb.c
index 7cfb998eeb3e..1f9c056e684c 100644
--- a/drivers/clk/meson/gxbb.c
+++ b/drivers/clk/meson/gxbb.c
@@ -935,6 +935,7 @@ static struct clk_regmap gxbb_sar_adc_clk_div = {
 			&gxbb_sar_adc_clk_sel.hw
 		},
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
