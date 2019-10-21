Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A812EDE62A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0DaQIqCOUPbUK5kqHfYdd88/17dIFMd2tJsLVJ28GDU=; b=TJx
	rccoimFtt9kVqbHwSMv65snBDNGdHDFMAjUafMHTBpUky9ZMxnwJ3dZgoDp7Mn9pQpGCeTFVO2ZN1
	ngqIuNxlbt3Hossls+BnX6PIGNhuscywjhBMIZqy4EmdUqFrahtevMMQgMuO8YaK5A59GQjikDbMk
	LOTSr06I8xvqdqa+pj61noAZE3j+qKMrZRNz8D2rdCHhvSMtInQjZ8eLxQlk0fNKW25LAEBxQNtu5
	0Y+Z0LIbJoGO2kXcXMjaf/xLxJTOeoRvZzIKV2rpKUKSWgY4A8wfB3iTPxscCOc0SQJAemKYmZyAk
	dQy0HIt+g20fY3liGaTuiE1MpCHYQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSw6-0000kg-CO; Mon, 21 Oct 2019 08:21:06 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSvx-0000k2-Qg; Mon, 21 Oct 2019 08:20:59 +0000
Received: by mail-lf1-x144.google.com with SMTP id x4so3009154lfn.8;
 Mon, 21 Oct 2019 01:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5JzKSpnIK5rSjQFv+xBtJ5cRm0LAw3wIvKLByt2f/kI=;
 b=QQro1XbO4awUyGIP6YDCeU8B9aDmE+UCgs8wgUZGMLtLgWPlpnGinM3IZSDAJXr3dU
 zxe+ra5fgBuMtDANQxH1Lmseq/7SOfznON+l98+vY0c38crblBvxev6mhiuafZh/xl7T
 PCJ4wUfTmUxlsOK93GxcjnHmYb8F7UBvIaV96VbxCF+geUBb7WWLZaJpuSQlKROXixcv
 vxijcFL9A+Igg91lW1acupgTRVcQOjURXc8FAr2cxyRkRbWvD4pHcDBW84OXBvOCmcyK
 ABgILBH9qlbGAwZr9tYAJqV+oRsystOutOKABizo5+MQ1J9k8y8Nuf9Hh+iDsWyaWcLb
 VzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5JzKSpnIK5rSjQFv+xBtJ5cRm0LAw3wIvKLByt2f/kI=;
 b=LlW2AqyXeUaWOH7jp/u9QQvRqWYHXXESSSeAv8uK2/g2TRjnivaQhLYSLu0zvqwVLs
 AtQJAXSlGQJU/LVfaOgW2CnwpyO6BkthUvqoLgRY3xbAECCkCxOhfus/BJ5fJKsgSN++
 8fXmkLtBc16UawllgJDXR3P3UJ0E92KHLX7G4BAl4yI9v8JMhjw1Y/LTKu4SOiaejGD4
 b+8iCCO+AS0CyGsgr2S5WSuyS910m20nTsPD/NSVjWt0V3kOR2Gz2CvW0lmJPmIrQ0W7
 Q9A8ZblZJDW6NUyatP4vxNMiVRYG1h31BOl07hHpjafG4aeA4llSc7b4+h2U+1NZ9ZJK
 Q3kg==
X-Gm-Message-State: APjAAAURyQYFa7i1SDF8X9PmB5ee1q2djJPqNgcTRDw7zZrzyu5Gehtp
 fY9rSzikWLIg1C9HvLSi8Us=
X-Google-Smtp-Source: APXvYqy4KwjOgJwK4T+IIgoUkEcxcswQs8VRoMux4nTdEMlg8h921V+P9V5ED2tELeaDOb47y/wq/g==
X-Received: by 2002:ac2:4566:: with SMTP id k6mr13856386lfm.132.1571646055615; 
 Mon, 21 Oct 2019 01:20:55 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id m17sm16494781lje.0.2019.10.21.01.20.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 21 Oct 2019 01:20:54 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] soc: amlogic: meson-gx-socinfo: Fix S905D3 ID for VIM3L
Date: Mon, 21 Oct 2019 12:20:04 +0400
Message-Id: <1571646004-21269-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_012057_900623_AC22C1B2 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Chip on the board is S905D3 not S905X3:

[    0.098998] soc soc0: Amlogic Meson SM1 (S905D3) Revision 2b:c (b0:2) Detected

Change from v1: use 0xf0 mask instead of 0xf2 as advised by Neil Armstrong.

Fixes: 1d7c541b8a5b ("soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L")

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 87ed558..01fc0d2 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -69,7 +69,7 @@ static const struct meson_gx_package_id {
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
 	{ "S905X3", 0x2b, 0x5, 0xf },
-	{ "S905X3", 0x2b, 0xb0, 0xf2 },
+	{ "S905D3", 0x2b, 0xb0, 0xf0 },
 	{ "A113L", 0x2c, 0x0, 0xf8 },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
