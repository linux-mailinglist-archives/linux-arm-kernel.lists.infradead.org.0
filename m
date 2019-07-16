Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7986AD2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 18:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t7XHg4UOsFQqdG4T2Mf/TtwIZtm31WwEqMHJUye7wyM=; b=TO6rzJF7LsZe6Q
	ZpjxXX3xY19QpLInpi2ANwlm+TpRtg0Fs0dws2smKQQ5rTn6TUf7dcfpWbbVifW0GfsD9uyBq4yrT
	oEcNlFjklagIHSxFA5Bbc7JC7hYNIuYWfoo0p8GXJtzTC1/TYQz5iV7WtE417LWzEAN82B5EMKYSG
	9h143OoFF5uKAfqDNq2Rqk6FIwhw/ZJWfeee/5OtEW4i7yQIVvgN2qpD3G54WuQTDLEwhqJSbzh9q
	k+UPN5tAFyZzhBSVB1jw83Vpg11kuBC1rt1wigExvYPOhSv/hw0DI0xVlQVm0LaC0/C23zqIWfr9U
	p5QhsTdJM9A4SgJRVi0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQlK-00056j-88; Tue, 16 Jul 2019 16:57:10 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQku-00052J-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 16:56:46 +0000
Received: by mail-qk1-x742.google.com with SMTP id t8so15163725qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Lzzb/85EG5OgOgZivNuRXqXu1x2wo0l3U6fbMwd+XY=;
 b=lh1neXWXugGNV0dD3EYhMNUpg7DZEDvz1t0tPOAnKx+unFKLPJPHDaTqfhAhJrO1ZH
 mNDj0YIw9TasLeLCzxrWbrrpvlNFANnKcnhW+RYEYFz1veXLvn464WK7Uldc+ROkhHU6
 gdElKf2YCz/I9fx4lW976vyQZemYOJOs0W/FJt9XWP/+Uk3iHkG2NaYBcvmDvF9L/Gcb
 lylbDHe/GsntFtMCjRbO98XFP4ShcUE2rJZKzH53KEv7x85o17zAKq89GXy3kTt5A9Lb
 K4rqNY0m41+yBjl4R+5BymQAPQSDBNeOFvlftEQZd4uTQfNuhWaPVVfcdvQzOPmWX6Lg
 POrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Lzzb/85EG5OgOgZivNuRXqXu1x2wo0l3U6fbMwd+XY=;
 b=KViGnbY1DwLvjQ5IU6cdMfR5h7Mp3g2fdjDYTsgz2q6PIMYgwXY1QnDmT+K8GBS8Vx
 /Bex8pe1OZrzAncPMJUD5Z5F/7/8cKB0OT7S3eheuWPykrrv/+yMbSaWE6+K3RbW5cwf
 PrS9bcqX567UkSBYtS3gLGZgvgqSF3zwxrwVgvOebTRj5MwB69WPBeTis25WQJRjJXcr
 tnE+mnuxEZVmJIRLCPKk4syedHgq62PpYYlXhAYRD1nZq4JuvVcydME795SxBvMYZKUw
 WUvMXzMbCn/AdHqyXcbW/1ZIYnSwZd34pLYq64PNok126VFqEw9FzstNjQtwr2BlYXWp
 z7XQ==
X-Gm-Message-State: APjAAAV/wghwTExeVvHIMUN9nBL+2cM+J3EsAP2VP8ZcSYBNQZsHYNoe
 t+uxIrZ9ipaUfoS0aYjpPR0=
X-Google-Smtp-Source: APXvYqz9+3MPpBLc2mmfXv0e2ASGs2pqg3VhykHLyEYnWb9ZZDcdSJoSxY9+HqM4r5uxzR7M4+5VFA==
X-Received: by 2002:a37:c20a:: with SMTP id i10mr20823361qkm.76.1563296202999; 
 Tue, 16 Jul 2019 09:56:42 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
Date: Tue, 16 Jul 2019 12:56:37 -0400
Message-Id: <20190716165641.6990-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095645_170339_55DEB752 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

Added identity mapped page table, and keep MMU enabled while
kernel is being relocated from sparse pages to the final
destination during kexec.

More description about the problem I am trying to solve here, can be
found here:
https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com/

This patch series works in terms, that I can kexec-reboot both in QEMU
and on a physical machine. However, I do not see performance improvement
during relocation. The performance is just as slow as before with disabled
caches.

Am I missing something? Perhaps, there is some flag that I should also
enable in page table? Please provide me with any suggestions.

Pavel Tatashin (4):
  arm64, mm: identity mapped page table
  arm64, kexec: interface preparation for mmu enabled kexec
  arm64, kexec: add kexec's own identity page table
  arm64: Keep MMU on while kernel is being relocated

 arch/arm64/include/asm/ident_map.h  |  26 ++++++
 arch/arm64/include/asm/kexec.h      |   5 +-
 arch/arm64/kernel/cpu-reset.S       |   8 --
 arch/arm64/kernel/cpu-reset.h       |   7 +-
 arch/arm64/kernel/machine_kexec.c   | 128 +++++++++++++++++++++-------
 arch/arm64/kernel/relocate_kernel.S |  36 +++++---
 arch/arm64/mm/Makefile              |   1 +
 arch/arm64/mm/ident_map.c           |  99 +++++++++++++++++++++
 8 files changed, 255 insertions(+), 55 deletions(-)
 create mode 100644 arch/arm64/include/asm/ident_map.h
 create mode 100644 arch/arm64/mm/ident_map.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
