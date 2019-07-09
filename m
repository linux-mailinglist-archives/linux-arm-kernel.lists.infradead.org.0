Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C808A63AB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8LxXPMQ1wSJznE/4k58emuiSdHaruNV/0M1hKxpD1M=; b=t4eZyqqtSsD6EW
	XTSqD41/CZbvxn59rLtAqhmf2fR9gaaMpu3IkzpiiFaGMa1ueaKOPJ5G8hzTwHFfCs1bNldOJPUtq
	23Wo+d6vmTPPmNBNKV+LtTrcp30Iy3CPYVRwXkdumRU9/huGEEsYlTNeFEJbYJnP5+ij1YI+8uXlT
	v5zggWfvV2FhZf4XoKpqodmxZr4GgKe+i1QIKRFe5p8ahGzUgAHoB+WGXwLFQIYluyVQtlm5yB+V6
	seQjKQ5eD/n8bHlGp2ZByVMPeR/UYmJ3TUYgzGtYheTK5FiD/ANcBIcAZGl8incxSwcWXMmGB2DfR
	B0yNOMePYD9Fl1z8GDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkujV-0008Uw-9r; Tue, 09 Jul 2019 18:20:53 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuiw-0008Aa-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:20:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id h18so15190828qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=XSW61kWTCXRdscVw0OH+r9e4vwdXvYbKjBz6k2VZ4GjxPw4990pNb4BAwrNmmRtsKa
 WtJJtAVYm0yQyc0gT9qSB2/HJ82+H/MyS3XC9ctMBPbmW7oIgk6eANZnGVKs2HBNiQ31
 /bHZn6IWmWrVDAl4L6vMC+WdnQz/McJp0xLy9cq1x0N7urntIF/8qUhPuZMeitTr6tYj
 seq7y1K4rV+ZnPT/cE9I0rwd7rtanJ3jIDMOql2+Ikg4jcapC2ZEhDEL5dbgh2nC9Yd7
 7VxNW+sDRKWTWxuTciOBY6N/SjEJM6T2DfzfKRi5ZSX4eCt/ImtICLCJ7wV7q6H4hJ/t
 hxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=noZqYwe/c4So6o4qnTGDgxrCii+rWEyG7Wqp5N5KlD5mKsaPFMOEIxZTnxH+n1oz+2
 tsv9tRg92XpC9OcSduusyGyMM5n3wdaJdoL+sEA21UBPxtW/Qgb/xmA1T3PXSzZCrHqm
 /Y4P8liWkhrADdWpz2hZgt69eKcRw/TPKVfAEP4m1Ye2VHs2gi3K//fCddn1YHbMC/YF
 W3rmVipYffUN5tl/cPXJZ7AzUladBUrqj1tokhcfgzKun4jVEpxRp4ZPWwJPw1/pGla4
 xWK+ohrVftOrGU6meb9FyxTktFfaGUwh/u0/QCFr00d+Rm0C/1vhJeJuNoscKQH1ynZD
 JSXQ==
X-Gm-Message-State: APjAAAWPjtg0vy19qxFSFcuVyMIyFhxzN9ZK1Xk4lKhiJlif3xWnxeAn
 Eqo51FNB7UJxMMuoVHxRoSnIkA==
X-Google-Smtp-Source: APXvYqwK3sHb+R0eRvj6/WADS1T4iF+JrbGV2Q7udh84kzeXGKKiVV5f5NzGnIT7DBMyye2cxX8F5w==
X-Received: by 2002:ac8:4758:: with SMTP id k24mr19729228qtp.20.1562696417894; 
 Tue, 09 Jul 2019 11:20:17 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id k123sm9113056qkf.13.2019.07.09.11.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:20:17 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v2 1/5] kexec: quiet down kexec reboot
Date: Tue,  9 Jul 2019 14:20:10 -0400
Message-Id: <20190709182014.16052-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112018_956074_3000A91D 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
