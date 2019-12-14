Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC8411F36E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 19:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gG33UnJ4dMXYDJD5Z6ipu+a1pBLaUPx2X91PGs2RMpw=; b=LZO
	63+U5KHI+/F4zOVs+BQ9r9CzRg+XXzsC960RuON+isc13U7fDg1XpX0DXEcLDmTbw/SFBN9ZBAN/t
	+W4rUcWXq+UhCpLnz9H0iNaC+tvOouxz4sbJywtHaAsWFi8Xn1EHsmGARY1conyLmVwAzsAt5sts+
	VW4VwYi/Wq8GHziJhrXetuU1jG1wvicB9t6Uz9Gy5pWSPSL4OMhcu0EdUnfE6C6Jd8Caz4xlbdXsl
	3gqQsjdmDMVMfaE35Jzd678jlt9iGyWwbi3kXBjGv2dRSclfW9OWHXfTAx2Jpzac1ppsYNo21yibo
	Bttv+J1lZwkTvq/MBEOK4ItkxXN/uPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBtK-0004TA-1b; Sat, 14 Dec 2019 18:11:46 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBt8-0004SX-Nj; Sat, 14 Dec 2019 18:11:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so11451plt.2;
 Sat, 14 Dec 2019 10:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=v1jzw3cTgARl5UtByan28qHh9GkTIdbeMdcGnEnNuqQ=;
 b=nJtCJighcBW7qQ0mUEAJ+mt8TIpyIXMY4sumdT4LQ3mKPCkagjoGjn2/CdUIK4ZVI5
 VIx1bvfJi1AA6AFFxhP1zt43mog6ji/gwenI530G5DagqKmcWQBd7GCKxbuZJxbzRPxQ
 BcPgsvhKQlRubwxNqhuN3/hSMl5kYOng9thJetOaergkSAyaofdC0jRZPQNfKZes/7XT
 oQKYpwlPN+wPBYkwtoUyTvRGvwQZglorntRKlPsm/TY6eJ7isjWA74TFxG5Nx590LCdS
 I1/lSTh8C6nkBBKa3UJ2gZZgiLf7I4NVAyudgR5hWzVrx+aaEhYt6J4HcMChKWYbdmn4
 E3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=v1jzw3cTgARl5UtByan28qHh9GkTIdbeMdcGnEnNuqQ=;
 b=g7fhcCWJE8CSTwVOAmK/veuxyQ8YG0/JRjLw+GLtrSGbnFgNet5NnG1QrSC4rqzoMd
 FhwuJvLgCPDzCneQapgbfpiHhHPz6u+nMRh8ykphiLz3xQnyMQv0GmOAGO+2SoKroE7W
 P3otlEbnxP8yFt3Y1MeivZ/kFjwbUKoG++CfD28RHtbWN+QlDTaQpNdRKAggf8nZSLZ/
 CGiFGxbV16NWsRu8ALPP9yzsfJFMSkxZSu8pzICB3BZGsDgLxpPRfP+/m7Cp+QYCNaCd
 UsQloCyzZPmMZpmYtZM9SR+WEMtS5VVEcnr2pCzbEPICh/r1PFajwNr2UBdUJYrAghEa
 VWAA==
X-Gm-Message-State: APjAAAUYFyAxMLnDaWk+t2j+HEbuaIHVgYOf4l+RvzkBlsivdEkHe1ux
 Df/6hFsdArX9d4xvvQoZ3cGNtWEs2DE=
X-Google-Smtp-Source: APXvYqzws7Irzz8SVSeA5eeveXWvkJ2t4wz1lTz0HCd8Gn3Nu+eQpYu7QiRwV5E7bR75avFW+NGUeQ==
X-Received: by 2002:a17:902:8693:: with SMTP id
 g19mr6130524plo.116.1576347094175; 
 Sat, 14 Dec 2019 10:11:34 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id b73sm16427814pfb.72.2019.12.14.10.11.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Dec 2019 10:11:33 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 heiko@sntech.de
Subject: [PATCH 1/2] PM / devfreq: rockchip-dfi: add missing of_node_put()
Date: Sat, 14 Dec 2019 18:11:29 +0000
Message-Id: <20191214181130.25808-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_101134_775013_940739D9 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

of_node_put needs to be called when the device node which is got
from of_parse_phandle has finished using.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 5d1042188727..45b190e443d8 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -200,6 +200,7 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (node) {
 		data->regmap_pmu = syscon_node_to_regmap(node);
+		of_node_put(node);
 		if (IS_ERR(data->regmap_pmu))
 			return PTR_ERR(data->regmap_pmu);
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
