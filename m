Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7CA1A638A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 09:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2pVd1AxUsfscJy2OoUMSRgmd1i7ZKo4Se4odvt+HcEo=; b=ZiC
	qynM/aYabCJKDmnQmkpXQFeUvwCAfntgXtjd9H8BTMaYb+tIA9dusbAgQQLypVERtpfIu0LFwxf1q
	UDpIpKGA4kOMP0czONGB0ZE/eiOQrOROYQGLnxjFNXwZ2IEJJ7N9ZCELsJYzcwdOW9XX9i3bNXsd6
	hHhMHTiXlfhHkwYGYEW9eRoq/wIqkdvIXCYDEt1san2KNEwFlC/v6oFi5lHTp28LZamTIre/Xw5H8
	6BW+/5zE+WvPxk/f93pP0eNBvILcsAmLl7C2Zoh+oEu7MsBJvfcfDcG3+uYZmAkcV6ZsNkxfpIZYp
	v64sO+bFjsnXNdpsOKg++PPqMtWHKyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtQX-0005Tu-Ub; Mon, 13 Apr 2020 07:22:41 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtQR-0005T8-4Q
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 07:22:36 +0000
Received: by mail-ed1-x544.google.com with SMTP id p6so10887297edu.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 00:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=12YaGZ0Q7/4MTqyWRVrwSum2gRGtuip2cL2gQR6LOpQ=;
 b=taWpI8IPNfim4/HRodFQtrondjFAQ2VuoNQg7pOnuAXZDi3xD7K+EQ3uMD/Kn6f6Rq
 SdKPjxEt1/b/BvIfNTbbCmiPyXh/TWAXfOzVyjPfNGJbmxomObCZ/o7On9dSLREuAJI9
 /Ynkd+r58eHZjv86GNoSMsJXr8D1zPLskgGDFnbFc4zoOBnXD0Jb5eD37dd5831KKYTA
 0v8gCcElj7p7HYBeWkarS+z2o+dVej6NXQtHdnKFRO34+H3gnayY/sDt4AHrLQjiwyrE
 RdGPwxzlNcGCT+NzoQWuk6TwZnEn29F06QkX/q3DyEXGXG69qA1BI8Lpf1PYe1S+HshR
 JsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=12YaGZ0Q7/4MTqyWRVrwSum2gRGtuip2cL2gQR6LOpQ=;
 b=U0SNNSV/HzjHFGKj3Ls82yera9MeyNxSJ1oWJSQyy5u4NKQGaDzOhYNCpPbWqQcrOo
 AW5ktg9nM1S7NnTyZCN6+Wgcctro3VeQWbXNL9LYov9FnYyiNDaNUuz6WFNW0pdEdYrb
 xLz5GpItRub04UB7GVcS/Y+FbCqytwl2s1K/xDlfEnb9P01rFqvzZ6R3dzHGktf6l4Vq
 jW7EYS9jDEBgCYyJYL2THX1ycqGtTZXwmFENbhebkv5ejmsGtwRnAYlyPhE3uw/Iytqx
 nyh/xwPlHvgqOTpVuflD8Ji827sDwXAxkOLlQAsQVg68MUeQMD50yBnDHODyIZabFj6L
 fowg==
X-Gm-Message-State: AGi0PuZzdr+x1df29wJGymlz/q/2YD2WAa+IlT2o8mOK/zuMleCl5DG2
 oA0iS1RXgHkiXQvkJu4Dfns=
X-Google-Smtp-Source: APiQypLJzjmcJ07zIDZytFRftCleLq1hSx24Fc0wPZXV4mCSsFEwVqkdPm4G1r5miQPgefltc3Nv7Q==
X-Received: by 2002:a17:906:2ccc:: with SMTP id
 r12mr14761123ejr.47.1586762553339; 
 Mon, 13 Apr 2020 00:22:33 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2da9:2f00:c0be:812e:7fb0:ebe0])
 by smtp.gmail.com with ESMTPSA id 30sm1080047edw.70.2020.04.13.00.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 00:22:32 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Lubomir Rintel <lkundrak@v3.sk>,
	Olof Johansson <olof@lixom.net>
Subject: [PATCH v2] MAINTAINERS: rectify MMP SUPPORT after moving cputype.h
Date: Mon, 13 Apr 2020 09:22:21 +0200
Message-Id: <20200413072221.8061-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_002235_174231_B32FB770 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
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
Lubomir, please pick this patch.

v1 & v1-RESEND: was ignored.

v1 -> v2:
  - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
  ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
  ("MAINTAINERS: sort field names for all entries").
  - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.


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
