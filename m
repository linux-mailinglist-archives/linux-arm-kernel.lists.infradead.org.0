Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1977B76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 21:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C/l7KRc1Ccw/2NrjBYINL9d4QNxnNrHRrrOnPgyeYKo=; b=MCSpBwBLtPPR3H
	8cibbVDrQSxVsjhGTduwJPOron/1Z5RtdA1co40cCLyTGHUg/lPT+/2Mw81IAYw0btUumAxRHryRI
	cyZvK8hUse6r3bEIFtMMfpR9PB2n7D/ZdCcdE/ooiwNHh6UB0YrdLlWdew0AqMHkTUnxyhDuyHdeM
	0hqS0Amhmcm0IBqLvyzYaDMQc7K71oPgbGxn8nx96xtpeOFRi5bLtvAJ+m7ftdhRB3+PJyA+djvjJ
	nVZ5GLQJxza5IiRR4rS4e5CcCeAKpVfyFJ4jjsh5JHEGLL7ogz75VZIhasm4Zy2VpKvY1wPbuL/5B
	gIw8bPwTOMVH5yRL0KmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSF1-0000PZ-Is; Sat, 27 Jul 2019 19:20:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSEm-0000Nf-CX; Sat, 27 Jul 2019 19:20:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so50558616wma.1;
 Sat, 27 Jul 2019 12:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h4n2rUT6ZGdvoy/BsktvZgyBHxTE8rabTOOnA69x0k8=;
 b=oQsq/To7J5ogzOa0TSjkybKTMPS3rtaiNVWREDB3u4pj4MaZ7uneyrh5zmved/Gntk
 gLlWhpYQ8qveg6e+khO+Q8L0L8buTannUuOs0zyD/dNw8891kufDYrJMD1SH4Ca/6EkO
 9bkTW8xa2yrodLmVWGiJMQH6V7EBjWTzPu0SoeSnFXzH9+C2VbfXumyVgSgEzXBTU+ME
 FfqTxYedHGWQRdA+aPa8Xfh6cdzseXvGgksOCz9d2mBKvb6d43wjCW5MfqQT4LjfsblU
 RhY8+CLcDC6+/mhIU0KI+m0SXawZdENqWoy/ofH/7/4QdWLmUOhI1/9gdoIg06vsJw6Y
 Jxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h4n2rUT6ZGdvoy/BsktvZgyBHxTE8rabTOOnA69x0k8=;
 b=rKfkY+QEIrQdMMLyRYhR5bSpl0cDqBcKz6KWexYQ8Pkm8JlA7YneeVFInudruzhZL9
 zwMhI02QasHU+ngGEi8ii7IhKBNJN7GeTVwrf9e+M+uQuLvpdxsmJCLXXaFBp27/ftSb
 /IZv5Z7/fLdDRbTuK5jfGFdA4osZ48gqFEl4UHXe05zWSQenv6n2Ps3jf0lL338Kc0l5
 yzbMLU3dSV4fANeu+aDgPSFXGBpZKsEOqzleGhgUC9vJLoAmvb0JbuM9WkBWt4YNPE8n
 mMg+LhS+lXVKLB0hGW82TOS9/c8AdQDjD5m+OW7a9ldiGepdUTfRA88xfHpVdBxbfe9C
 peJw==
X-Gm-Message-State: APjAAAWqWwEDQFH/NWMUcBxgPc+YpI37b94ZHXdVnIO/xo06g2VzmpeG
 jXV/1GbkLVEifYba5835R+0ntlY3
X-Google-Smtp-Source: APXvYqzg0efJoczgVWfrxUdgaiXSFNAa16hmUCsmIbTjaatCammoQ2y4fvocHoaMMKYHdCOH+tfyjA==
X-Received: by 2002:a7b:cf0b:: with SMTP id l11mr95920292wmg.143.1564255209778; 
 Sat, 27 Jul 2019 12:20:09 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id e7sm51506988wmd.0.2019.07.27.12.20.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:20:09 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	srinivas.kandagatla@linaro.org
Subject: [PATCH] nvmem: meson-mx-efuse: allow reading data smaller than
 word_size
Date: Sat, 27 Jul 2019 21:19:58 +0200
Message-Id: <20190727191958.27240-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_122012_452457_BF9BCA7C 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Amlogic boards store the Ethernet MAC address inside the eFuse. The
Ethernet MAC address uses 6 bytes. The existing logic in
meson_mx_efuse_read() would write beyond the end of the data buffer when
trying to read data with a size that is not aligned to word_size (4
bytes on Meson8, Meson8b and Meson8m2).

Calculate the remaining data to copy inside meson_mx_efuse_read() so
reading 6 bytes doesn't write beyond the end of the data buffer.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/nvmem/meson-mx-efuse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/meson-mx-efuse.c b/drivers/nvmem/meson-mx-efuse.c
index 2976aef87c82..d5ccde1abd8e 100644
--- a/drivers/nvmem/meson-mx-efuse.c
+++ b/drivers/nvmem/meson-mx-efuse.c
@@ -155,7 +155,7 @@ static int meson_mx_efuse_read(void *context, unsigned int offset,
 		if (err)
 			break;
 
-		memcpy(buf + i, &tmp, efuse->config.word_size);
+		memcpy(buf + i, &tmp, min(bytes - i, efuse->config.word_size));
 	}
 
 	meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
