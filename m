Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA519FC4E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lbYgdc9vYR9le3hsdLedtglLoci+2ncQQRPrWZCvAK4=; b=VgnFwdPWgZRQba
	TwpgV5tEa7rKi4R7lHcR+sxi5HST8BstGADc7BjPk9tmEXo/eP1kKkPJ0Qa8kk8ProkDtk8MWo8hV
	zjv7EQ+7uI7b3OI6gYUwXxAAWMDW/b9fJ/ubtvcygBZmq5S31C1vx6bkFvrEOulzTN3YF8UQNsTKs
	3ODfVgiTj5QybLU5FyXxeija07XJG3Y0RN9PvgnM+eJBMm1DMNdiY/m+hcbd1VQMI9nxtwQyc0lCU
	wP+xwuztcZuIu56FKa1yh84dR6NpF12I/27DOMhC5Zh5hvNRJZJqD/i8WW/mT0WIJo72T1mdnErnd
	EucJQZ3pNPrxPE1CrHdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCqC-0001Ky-KD; Thu, 14 Nov 2019 10:59:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCq0-0001KH-Jv
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:58:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id j18so7167819wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 02:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wum+r9IxQN+rS5FkOk3xObRIwf5TgCXVqI8T5QkIBqs=;
 b=FrqsgFOnekzjR9uZnWUA765s2vX5/GglVbd4qZX7FBAB4MP/LUJZGFRBbdisoKt6ul
 hwrC4BjfOqB2gZuYhYAKAuP0M7XpCyc/eoZySf4+rz1tvWBW9IZF9xA7rPY+zB/GGRhb
 Zr35xPfg5lxfAtvrums/zq0TdOOKMQR3kBtlWFD2UTuyhW+zyrns/H5/2FeLOmzEhMyo
 b9U6JRu5Hsp2l+icsg+gC/wYm/Gkktc7fpFmmZZ3aQ7RfTUC18JhEq7ernKfuZbDrm4h
 jb8xaSDjo7WNq/EbxTn1FDuwMTJlFVwvSLm461bQzkSSdnvbYF/9BrzU1dnkydbSC2nA
 tPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wum+r9IxQN+rS5FkOk3xObRIwf5TgCXVqI8T5QkIBqs=;
 b=Uht+aKdBMceRQO4dLqXZsF8zCGYQMxAfvSVJQTmM5/8WxzzvJZZ6ffYkH/YP+YB/+W
 zZMabuvR0Jsx24//bly3b1wKWFxTSJgyWDTriQA9il6I2P9XpaTloV4Fzf0vA+cbHH3E
 w00rcdcsrTwaHl82PBxTjlZGAk/IJ9XSEnJ40BfW3/UIbeyYjFzQ+WnmjpExQ5yrlZoL
 n2qLf8vKTiOGDVimVM4gwESvach8RXDBIR94NUWl8ewoQFBulQFJLBVWI5b9zcaEPN03
 ARpO39HySSrAaK+CiW2tvZGjq8ut6avjOLNQG1VqObqKjYsNT3cYs3H1c/PX3vrnTF2R
 0tMA==
X-Gm-Message-State: APjAAAUdnezfbWg/nbvXLm5zOMaVWQbimXpEwR/JCN+gO6LDkYEzxnKe
 Yy9Ag2ej1iOejHiDTGV+glI=
X-Google-Smtp-Source: APXvYqxnAvodHB73Hk5uW2nPyXQaCzxyAot3j5TwEn2X3eEDfwaH3GPorH+nW5QLGR2PwC+ozN60oQ==
X-Received: by 2002:a1c:a406:: with SMTP id n6mr7713976wme.90.1573729135385;
 Thu, 14 Nov 2019 02:58:55 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm6585278wrs.1.2019.11.14.02.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 02:58:54 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun4i-ss: hide the Invalid keylen message
Date: Thu, 14 Nov 2019 11:58:52 +0100
Message-Id: <20191114105852.21672-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_025856_657393_CFC0ABB8 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the "Invalid keylen" message to debug level, it adds no value, and
when CRYPTO_EXTRA_TEST is enabled, it floods the console.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c
index 5ab919c17e78..cb2b0874f68f 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c
@@ -540,7 +540,7 @@ int sun4i_ss_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
 		op->keymode = SS_AES_256BITS;
 		break;
 	default:
-		dev_err(ss->dev, "ERROR: Invalid keylen %u\n", keylen);
+		dev_dbg(ss->dev, "ERROR: Invalid keylen %u\n", keylen);
 		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
