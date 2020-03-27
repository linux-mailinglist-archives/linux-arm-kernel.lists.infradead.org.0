Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20C7195D4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 19:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xnwUHWJCels+hykPfLb8A9V2DF1+UsXv/hzWUZkH+vc=; b=QI4
	gkeIhuP+5LJmsLSlXbyYJ9L/bE1yr2LiaQIhFtj7RN9ntZE7fMgXY91lbYgOYAjJrzmxMmA2FFu/D
	iPoRob6y8xkb96+j4UnSlhqiCAPjJrN9c8UDshGIOzIsv3bwIr/Z1SV05Z/1PJupDSU8RnG5XIz62
	J27VdWc3VoApx3gNsHRGjgxZthyflkNTlMUGflsB2pUpK5FbNlcMIRFuK/PFRc+EAlvVlY7MVe0eu
	bWhfjsfs7nXztsVusfpr6n4N4g+JryOtmdRKbBIpznaU60O+6nAmlCoeNpyAVBUC0YJtxNrhZzV+s
	Xg1bmRmaj/Eky1rbq90CWAq3ZV73P+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtPK-00080Y-Ic; Fri, 27 Mar 2020 18:08:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtP8-0007zz-EH
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 18:08:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id f6so6791994wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 11:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dLGBA4Mb9FTGMIlIs8CkqjXevwkXDBhsu7I/2DN/lVg=;
 b=XSavPXEt6mUB1SdOj1YBnqkqrJe93YaS1Lj87R+jSLPm/kVKARDUyB6wB2AsEwTBCG
 qM/z86PE664z3DTmfnDVf+nltCnU3Z4XbDn+9FgM3kzV+zc9oUgqzDs8ssodwhFPqZUN
 1GDLHoxfXi1CVPhYMLuuQ7wg1ghTeGKNF3rjU5rN3Un45oaLRB3atl2DXkP3BnhUZ5GP
 aPrwLdkzNF0qQsb7+9VsvLuOPs4fFaD1E6C7olvwr8paQB2o+NbPRnQm4UlpmN3OUcYm
 hODliHhjyyg8ePlqV3nOZ+pAhqQlpzVgMcVUts0qBAowglOFgJjHeIA9RPsxTOds/bBi
 CnFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dLGBA4Mb9FTGMIlIs8CkqjXevwkXDBhsu7I/2DN/lVg=;
 b=judjeWRiEDLBy7c9eKGgSz34Bh6xO6Gmbnnp3Q2qyuKagK8ILbUuGve1e8x3abxQ5o
 qRTwSVxVZH0Qx/LLDVpAoltQgJrIFK58BPXnOqB6g0VlpDJ6iTNMxZE43D/mQY/0cJUp
 tvCo2rnoQcNjSBUkX4hJ/aukbMwUATIioN0DPKFQQPyBhjS3l3Ct/0AmjewkOWfxUIfd
 +v5o8mdYR4SHFKRM7EwfQSAh80L8H1ufD1hcyQSUZkz0BLqfVUz1SN1ZFz/NzAgq2rXM
 z0FCvSGp5rInuvqsIGnY2lIWYRMloUtmXQRBbigVnSGrgL7tGG9J+rTQKPPOTrM8CjoI
 9ZkA==
X-Gm-Message-State: ANhLgQ0a2dSlRab4ZHXF0KwePZuev4siJxLzfLRCNHfaxwkSjKStlmF6
 GDtR0n1cuFQCXe5HAJPJb48=
X-Google-Smtp-Source: ADFU+vuRMr0aC1EEOQ2IUU53LmmatocpY5HzNQyaogQnO2V9F4Wmb186gwCYrLSt0dT6vHzlGLI58A==
X-Received: by 2002:a7b:c450:: with SMTP id l16mr6515752wmi.9.1585332503792;
 Fri, 27 Mar 2020 11:08:23 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2df4:e800:d943:cc2a:2aed:eb16])
 by smtp.gmail.com with ESMTPSA id a186sm8789185wmh.33.2020.03.27.11.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 11:08:23 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Lubomir Rintel <lkundrak@v3.sk>,
	Olof Johansson <olof@lixom.net>
Subject: [PATCH RESEND] MAINTAINERS: rectify MMP SUPPORT after moving cputype.h
Date: Fri, 27 Mar 2020 19:08:14 +0100
Message-Id: <20200327180814.7255-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_110826_500964_1D210855 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
applies cleanly on current master and next-20200327

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5a5332b3591d..d1b21510fe5f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11199,7 +11199,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git
 S:	Odd Fixes
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
