Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B2B1F4C03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 06:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tPhsy3cs+iGVEQxQ8jKI6DiOy27wXAMeOeslZSSq1gE=; b=pah
	iKxHsUoe3kNVLBXDlq/RgI6eHjIR+bldVFV5rX6iw25+PbcstSSYM2S+9FNc3/P8NkoZvnQBncG9e
	hYLgB4csQDoKtczO1+/ukeZUn6XEqLOZ4QQLfhyHGRZy9elU0lEg0FTRjIcU8T9lhDRnS8H6b5+55
	Mmnewp+Lr6GRLWcQQrUEGcuNJUX1Ejxgf07KITzvIB5556SFWVvhyVsz1roPubiw8Wt5P5huD1cY7
	p0JdHrluQJ1SgX/TRYwyBFRogWD+0NI++BGOL9l0Q7fX+nubBPxSTG8ulHzHXhEqr2z+URjX8FWaw
	Jfvipi75y388RnhswxKtwt6ps/MWUwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jis7W-00065L-TS; Wed, 10 Jun 2020 04:13:46 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jis7P-00064y-I5; Wed, 10 Jun 2020 04:13:40 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q24so341995pjd.1;
 Tue, 09 Jun 2020 21:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Aos11RqaPZ+e2YnSb8NYoxbzf85DJlijsegumQu5D/4=;
 b=FRJmMAcSqqHwvC+rKTP0lt2u8OtvhL7uroLmmCqAc/7ctmav8v1cWVkjWskgNFmz/X
 JA8lGiG6OGwHNc79nqRPaN2ciqerP3jopIdAbeXAdjm6b1BmYs/S8hLZNUeSDv+69R4t
 s2fQcVbU8jRh5ItTQMFOp0qVsvoJ8qbYrTYnWsNbIlSTqQCgaATVYDKRxguUOFnWdhLS
 H44w8FVqyMdKBAK5C2kv0vb7wsmyBbOxy/B8j+5jZiQSEOk4A1agFUM7bZa1u0CczU7M
 eaqLiXzrydUY6us2zy81s25jumAdN7pC5eb7yDs20zPGJHgRlN8EICX1QghnqL+7/lZ/
 AWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Aos11RqaPZ+e2YnSb8NYoxbzf85DJlijsegumQu5D/4=;
 b=ETvD/szoxX89Uqo1yR+pQhV6yf7cSSt+mIl0hm6ZfVveOWSA7p+SvivxUf1QO9tx3H
 zTYLTGNGIBtviXNOkDEIuY8AvZXo4Qw+kJtNCUnsHyMOzREdtKGqiRyI0COKjhP6rR3A
 y+TYnlkyXbpRDYJ7ny+2Rx6vje+MPVuh4eY7mcGjdrjsyXQXB1yErdRCStRDouDFw3FQ
 vz0u9m+EYNlUFwbsITmCau+x4xi8EwEhckZONHcBgQ4nIRfFnKa0+6+acWxZrhjrod0J
 xNnI7kMD2iuvw8yvJ5XEqRsm+NBOnP27IP8gypSVVZcaIUaGm2veKaKsC1fDWuDw1k4r
 5kbQ==
X-Gm-Message-State: AOAM531dl+9EAiQUXnWI04VSnj26EojkSi7DkpwqWYz8v3lF1LRFWfdI
 eafLRUjCjA9bbm2brK87JgEgOfh5CHK6CQ==
X-Google-Smtp-Source: ABdhPJx6zMAjL6TpjNgXSxp7AZ0zuAmfpF4vKmHcy5qsE/ExouW65YcElpKUv6vOARbGNm3FLTgNIQ==
X-Received: by 2002:a17:902:848d:: with SMTP id
 c13mr1361408plo.289.1591762418532; 
 Tue, 09 Jun 2020 21:13:38 -0700 (PDT)
Received: from localhost.localdomain ([114.204.138.55])
 by smtp.gmail.com with ESMTPSA id o1sm11887461pfu.70.2020.06.09.21.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 21:13:37 -0700 (PDT)
From: hhk7734@gmail.com
To: linus.walleij@linaro.org,
	khilman@baylibre.com
Subject: [PATCH] pinctrl: meson: fix drive strength register and bit
 calculation
Date: Wed, 10 Jun 2020 13:13:29 +0900
Message-Id: <20200610041329.12948-1-hhk7734@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_211339_617557_F75AA25E 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hhk7734[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hhk7734[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, Hyeonki Hong <hhk7734@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyeonki Hong <hhk7734@gmail.com>

If a GPIO bank has greater than 16 pins, PAD_DS_REG is split into two
registers. However, when register and bit were calculated, the first
register defined in the bank was used, and the bit was calculated based
on the first pin. This causes problems in setting the driving strength.

Solved the problem by changing the bit using a mask and selecting the
next register when the bit exceeds 15.

Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index bbc919bef2bf..ef66239b7df5 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -98,6 +98,13 @@ static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,

 	*reg = desc->reg * 4;
 	*bit = desc->bit + pin - bank->first;
+
+	if (reg_type == REG_DS) {
+		if (*bit > 15) {
+			*bit &= 0xf;
+			*reg += 4;
+		}
+	}
 }

 static int meson_get_groups_count(struct pinctrl_dev *pcdev)
--
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
