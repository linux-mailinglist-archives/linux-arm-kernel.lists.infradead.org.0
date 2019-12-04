Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDFC112F35
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KKeOcQw00nL2C8d8pq7Vt2JbdhQzLpoizFNZT958q0=; b=kuJERDDpMsYTLX
	34ndNbrVKgjlkZLzyUs3VO4A/nWmtyvzhCrDFKs3XdFPbDIVPLHZo26/GFbF4PdHISs6JP/VcHP8g
	PKLRJTN+tEWXFR1Fd70HpYSaO/yCMwII6wZC3fI3sMZFYKl6YwGWZGOcM5h6C2ouunCIXWkCeswTe
	y/trSu2Yc4U7PnZYKkjYBgzbCvBT5aQBTJGRrlTOUpbBNVTxhX75SvuQ4Hiu6SpJU1QN7zySgLS9K
	fAlNfAoH5aOpbzZOnlRtrQK7JzVm+bjlDfB5tFL6MOCTq3ZK1M6ONLrZLfPSbQgfmXFsc9VINEIGp
	VPo36pCwq1bDj6abyjpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX4i-0007KY-MY; Wed, 04 Dec 2019 16:00:24 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX44-0007G1-T4
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:59:46 +0000
Received: by mail-qk1-x742.google.com with SMTP id g15so340547qka.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=qBcLX2nsb5/KJrXmAdZJZWt+pM1z+3tYC2JPC3UMBs8=;
 b=o8I+WyKVJqvU6pwBBmPvlwEgfrNAEk4GlYMzitCRr179qPaMpPv/Dsf4RkzNVOlWbj
 SJtTzHuGepA5AFsEpqT2l8HQvW8RyrkGvHmGT4cczfTeeoOGcOTCg3hmg4mGwvsyk2fO
 hVVTKnnabhrr6kUqDnPj9LO3g64XfrwcmnpbRIYHSWIPsQZ+VTvCmCGhjS4uWz8KW+jE
 r2tBKt+5dh4dAw1tfkanz5dGvcgPMAwaczJWITsGCOabbajiT+q35hete04JyPLxcINt
 Rknlv8ifyhk2/6/N5SvtCMHoFTVUc/64uBMV9TEhm+L9zO4lcNPZgOHo6T81EbgmcPaT
 oV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBcLX2nsb5/KJrXmAdZJZWt+pM1z+3tYC2JPC3UMBs8=;
 b=loH9AFo33ZwR+VxrN3zAZ1u+q9WgEyQw70nlOqyM+LP+wH4iQgj5P0i5WBgRXiD5ug
 FRWu90suhXPAAlnoXg1dvnalMQ8J8MSYWbplvkqckfb1GgGH+olmwVhJBpCj6htUTJEf
 NJclIZS/qCqEatFfkmiSZS0y1MtF1osU4JqyMPPiYXw/iT5f2ic2HcJJ4iOWGef5rIj4
 Who3JLyG5WSr9OhvprgXUPkH+aeSvjlunxOCJAJJFMHFmr9juuRQa37ktAXar90/Frq6
 NSJ0G3TgND5eH6Jw4SCfFDhjPXwoAC8sYMDqkea8Z+ZmfpsIT4XEWeh7QdE3maMIo/qv
 8B3g==
X-Gm-Message-State: APjAAAWBIVeNgXHR9bHw7HsorBcYgbmQDmvMq+rDGNu06l8qn7eF1vfG
 euUJe/IeYv6QdZrL/FgcXmDNcg==
X-Google-Smtp-Source: APXvYqx+YMl+m84asmEHoO0Kw7pl99uqkPfePC/y7TScpNcsYrQoGCWoBXTxiv8VGxyurKQil3dt6Q==
X-Received: by 2002:a37:a40d:: with SMTP id n13mr3808120qke.167.1575475182344; 
 Wed, 04 Dec 2019 07:59:42 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:41 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 01/25] kexec: quiet down kexec reboot
Date: Wed,  4 Dec 2019 10:59:14 -0500
Message-Id: <20191204155938.2279686-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075944_962964_38969A99 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
