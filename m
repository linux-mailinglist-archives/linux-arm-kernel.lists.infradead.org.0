Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823111C6780
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sv+/xHdgSLRR9mSgbuGHuUetDms2WyG1h1sdWU7ZOYM=; b=oiU
	klgKgcJELhY05ZsNapxRmG3wdC8yKfZXR5Os0Fq5xTN5ylerOsbnVpNTu/2UJO/LnQOUzg9ksVI0R
	BujvJ2bPgQvgrKOV9MpmaSjc+w/viSjQXrBCtUnaoHA+GozeIu1msj+qlTtLz+OBlHD3Cblrt1EGN
	DkFpahlf15Sr8yMDEGDNc7ukKJ4FaLq19kAXsYkz1Ss+7nh51H7q7DtJsa52SjOv/ateMNfZGsodA
	5TROz/1UIn8k5uMaQr3vnVKZLvJP8fihpTGYIv5hfAveYK94l2T1e8gPFQw3EXwXh1FEzBKhW+BUb
	azhTD7+NL007GHeHCHM7kSdwrEkmMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWChr-0001ZD-NI; Wed, 06 May 2020 05:34:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWChk-0001Xh-UV
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:34:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so596446wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NgWAlvnGXDmO0eEhhszebxW0OV0q/gUyVYXiRgeW/8M=;
 b=iy2yoU3JHvdpSiZul4x3UQhvD/HWf+IqXjC96oAsSCQK/g0zML6kZM48ft+ddc14j5
 Gi1KMLAUBhfFlMd66VwVOx7sdtNSxQIdJIRCaIqKvL3C3JAZ4bIYx8Pdaz5oPo9iz6Ef
 qWa6qHoPN5W4y2L/uzZClZ5c8Pb1i1T0Q++dKtV7V1B6TqN0xrgdQQhXWgW3wKt2mlHa
 KSQCX0S/O9Nz/UHYZTUnmD6YKGOuJLU+TA+hukdEj5uLci0JDkUXozlqUOKEAKd/sO5a
 boiypu5WWDHgNiv1yt1K1UNqYxDVkzTByuRkMROkI65AZsDOEw21qiFavUgTw8IzAjUn
 9PYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NgWAlvnGXDmO0eEhhszebxW0OV0q/gUyVYXiRgeW/8M=;
 b=k6YEGCXTziQHAB9fGI/ffZYMLqD4gEUiHw+Uuwfz5hF4dzf+JNpG6r7AZtmrrJ382x
 7iOWx/qHnVP4ENLjFImXWzhmIVnnv3F4IQlhkIBL96/whndnKJEK0vGp1ghsGye55iRt
 uLhDTxCK6WE/FMPRIAVU0asJiac2OealCiz9tClwtUTRt3is+wP/Ggkmtn8zV8AhYUWi
 V8sNYOT2eKWdc7zQ8bMewGZr2yzInLP1dnq5pjBjViPkx+0F0DPhbR7m1vY2ttGcNRL2
 RrGfE2nL+ugvXHAPmLM+RQaXWE+PuHr1hdGXAtv+4uBmRSOjCG4jL6SGf1vbGttjNeRz
 WdeA==
X-Gm-Message-State: AGi0PubvbiKcjLX2alEkZOazYSH6msKO1UBLoQ7iJA3F/++JDUOzZTaT
 sIK//OrOhfRvD9lYBBv8ZxkrWXTe4yM=
X-Google-Smtp-Source: APiQypJYiKXI14TW+7ZrO/B+v52diF4s9uz6KDF1/WeL4zHPV8YiWC26PvqtosoUqsfUz23jLhlCWA==
X-Received: by 2002:adf:dc89:: with SMTP id r9mr4384816wrj.300.1588743285536; 
 Tue, 05 May 2020 22:34:45 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2df1:2500:bc2e:80a7:2be5:2fcf])
 by smtp.gmail.com with ESMTPSA id y3sm897691wrm.64.2020.05.05.22.34.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 22:34:44 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Jiri Kosina <trivial@kernel.org>
Subject: [PATCH v2 RESEND] MAINTAINERS: rectify MMP SUPPORT after moving
 cputype.h
Date: Wed,  6 May 2020 07:34:31 +0200
Message-Id: <20200506053431.7464-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_223448_983186_983F0D4D 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Olof Johansson <olof@lixom.net>, Joe Perches <joe@perches.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
added a file entry that does not point to the intended file location.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: linux/soc/mmp/

Rectify the MAINTAINERS entry now.

Fixes: 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Jiri, please pick this patch.

v1 & v1-RESEND: was ignored.

v1 -> v2:
  - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
  ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
  ("MAINTAINERS: sort field names for all entries").
  - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.

v2-resend:
  - still applies on v5.7-rc4 and next-20200505
  - asking for inclusion through trivial tree, as maintainers are not
    responding.

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..a0fef0c33ba5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11327,7 +11327,7 @@ S:	Odd Fixes
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git
 F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
-F:	linux/soc/mmp/
+F:	include/linux/soc/mmp/
 
 MMP USB PHY DRIVERS
 R:	Lubomir Rintel <lkundrak@v3.sk>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
