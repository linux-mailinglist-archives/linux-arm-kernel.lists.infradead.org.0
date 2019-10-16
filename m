Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967BBD9AAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToEKAvq6TdWvfBmGZoiNKuzlpBWwBvvOTYDaYAD24aI=; b=lqVWWfd9Y/Kt3I
	MUakQ7WCYpakuWL9T0JLR4YBm9alsqyEhR2PO4NyZcSSTE77mT1MZ8FJ5XzM9mOfp3CwgB/i27sT8
	4uGV2VLuOAQ2XAaOvT1tyEf6+78uJ6eThSrYh2M2teLNnlSjy25CXJr9qcxRZ9SfPODSAk0QcDFlY
	B+rvtKcBwTeFfa9WJsIrxJ4QvMapPmt+EboZGRRRy3H93X2nQEAYmUNKrEuabmQ1LHXjNOPjgxq2N
	iMd5MhqDK+fKAnBCI1aLmKkD2/1Xdd1e5TUQ8O0lJwdoOI+JGPL9J7GmRPT30Fyw+pmAphjISNAVq
	mF3pMLvMIE7MjgS5d7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpUb-0004oZ-Il; Wed, 16 Oct 2019 20:01:57 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTL-00041p-Vm
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:00:43 +0000
Received: by mail-qk1-x743.google.com with SMTP id q203so23998755qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=D6xYwFacfqrSDzdKiZLP/TzT9Pqm/HyN3qCUyAhl++JnfcJj1zNrvqFXj80G7H0YAD
 0oC7ITgJ1jpBh7bsno8amd9UDUDHZErELokqD3GaD1kg4LXtwLv8dPsn78AHP6ZqKH39
 E8M8n9Kv/DO9i8z90OKfTCngljmk0SNTy9xLhlawUp/NcuhYiPwsq6O7qxMXWh3quoUI
 Wd3TUbPEqiUxf2/4gs4CixenvdexjxXEEDtAz27okuFTHV9DnryTqfEq528hdjMcsw+b
 Omy3Z+4qDZeopuxmjCIHzRvgaTIHLFvL3pr1YdfXc+Z0AclbWLrPwyI7DwzdMFju98+p
 vf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=ewymovI3yWVMrtWRADMYbOywQuJdlxs3QCKktd0TAJfoALi4YG7wS1hBhJNqyDVyvR
 TfEe8WEKlPqYkwPN7ys8caViAWkTGlkFQdgG9OVq9Xh2dpqBcJ8X9GNiSiIa/0/YGvO1
 rYpUikQDYnpcQoAUlJG6x9mllL/psLZTuCEs99j2JWx9fzENHvLcNoqGwcXOSdWAc/TS
 pOWePotGKv4XDVPDDanFOU79N8dOxmMA3qkmFKexSesxHqSu08SxCpHjxOLWPGYrsQEY
 rrAaHoRlI4DTBG2XxkBcNALuJsmh44lTZx44tcjYvt8x3x99bfCEnjKHGJ7k8GvGlj89
 LgHQ==
X-Gm-Message-State: APjAAAXplPCpO8nSqbGpgP8KPEs7gD4tUMhMfzNNCdcVpl9UIEq5i3hq
 TOk7G9fzZlNOjY4QNBvgHslo/2UICRg=
X-Google-Smtp-Source: APXvYqw/em1XYN8TtYqp0Zy3p+LEV2iCbYfwJbzFt0I3YCF5Whypfh4NQtzdx8ssjs/HvNqnpuzRmg==
X-Received: by 2002:a37:9b81:: with SMTP id d123mr5380291qke.410.1571256038811; 
 Wed, 16 Oct 2019 13:00:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:38 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 01/25] kexec: quiet down kexec reboot
Date: Wed, 16 Oct 2019 16:00:10 -0400
Message-Id: <20191016200034.1342308-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130040_023456_B27690DB 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 15d70a90b50d..f7ae04b8de6f 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1171,7 +1171,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
