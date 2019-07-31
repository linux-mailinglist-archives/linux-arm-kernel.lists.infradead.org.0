Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34D77C701
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8LxXPMQ1wSJznE/4k58emuiSdHaruNV/0M1hKxpD1M=; b=U0KX4V4mr6cjWU
	gsX9JasBoFiPGNxBvMXDYkZ4AiziP08e7GF4ezNfhtGt+cjELuRkB0S3v+CgEusBOaH8bNVHUmFOy
	A/9AvSQ4yIj/bxkq+PwIPwyWzuae5p6RK24rZ69EqSRZZdBiraYqVbT8qpydePfHBX0TSHXKrLwWz
	r740kude47NlGfX3CvFXsXjJGH3rr3sxIX6Hc71sob5K2SrpwICgQh70eOVZeJNEYdthtZrE+rZdh
	fTjQ6sjMQlN8mJUgWRoConMIz2y9EFv5huOx/GUoz18LGshzhHklif3TOPQDSoOoSh8MaIroJ0KgP
	hbNHf0SK6Vxi9e5wBkUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqhR-00082l-F9; Wed, 31 Jul 2019 15:39:33 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgw-0007iL-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:39:04 +0000
Received: by mail-qt1-x844.google.com with SMTP id n11so67001780qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=f/mj0qEdjPvowxzxCkz1WBHsoz6X08MjhaCvOP9JKChUzdvXGCDjmIksTr75NmrETe
 GR0NJA4z1vIEH0dzoq8OvrHbM6EdjK+AohOXseaucGCyJn1Xewil/BIr2BORcK8Y8r+W
 B1JzbU1hdtMsW+Qq72doDnCa9Cyf/4J1EsfdmNeeVCidWQbLHt+DkzFZUp2EXOkbnkdG
 EvW/gLPfttAw50rqtj3FU3JdgGfBzBnstUC/k66NtOwuC0Nqlg1fr2V9VIaZji8gnYBA
 Oa1jc7STRN3fH47wz3Yk1rreSvslGvBiO2R7vofvw5mmc48VryeJE4V7i1rRlbMbWKxH
 l5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=n48Tf65t6t8qgIL1AnlQnAJ7FYGz631po3OmBNzFsbuIdItSh+98imb7X+ysexCUwv
 +PNTnm2LCrY3pdiSR0X1338BXeZ+4Uc6d/NN2HDnVSJcbpwyIw43EyQNHC+8gqCfIpCM
 qPn8Kgx6kvfTCE4nh55oh0tuC9PRmlGLSs2nTM9jjVAaRpy2izlKO9QNryeRNL+dA68u
 Wj9f7VXowFGjETN8ybdPhZJRosRHTccrfftRXLuRJTgQS9RJWfnM6fVaRYBbi4EakMdt
 HM+d72EOUrq8S8Dc/4XrlfiUr7U475xPdR/0/VXx1NgjAcFHzsZzvO3Svenkf1iRYgwt
 phWg==
X-Gm-Message-State: APjAAAVOaC2h1+0ist3z1FSeyBFz50ivKpNiLnemjAGBNkG0kY4o7cLm
 q57LuIJsKNpgDuzMtUUChbE=
X-Google-Smtp-Source: APXvYqxvBo52tjJ6/0c0xwHoZtK9MewLNPfKHRcGHVWsI64uRmnRR/4lWkfMBAzaWutbGo9baKuA9g==
X-Received: by 2002:a0c:afd5:: with SMTP id t21mr88223958qvc.105.1564587540796; 
 Wed, 31 Jul 2019 08:39:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.38.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:00 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 1/8] kexec: quiet down kexec reboot
Date: Wed, 31 Jul 2019 11:38:50 -0400
Message-Id: <20190731153857.4045-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083902_754778_D2253887 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
