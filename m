Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E741A012C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 00:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NfgfJeJ7dStFcxwv8ofLXBbY1yIFOXn7qZxImNBHqik=; b=gOA
	abstlcmf5ff+B9CyKKEeygvgSyhdq9/gNU3hUgE/fGSGMWx8TXL2AqmRaccoknAAOZ6+Ry2a1EzRo
	qF2DICnmd53Du3Fp2MS5U77IpN3Q3/+nJ3w/r2mh8Le77VvOuRhPaLma433eafkl8MQ9TRrPazKpx
	lE2C74Cd9VHFz4mvXg9rSdS1eCos6eLOApy2ox2sU2hZJx815P/8/w7knMR8/2cM1dInFQg1Jlmc6
	NrMj8qxaKt838XxUa/acoT5tjYT4X6zFXR2N8l19wYFcEozXvBr9Awdad7kN3gvurCQ+huS0mh2La
	ZXR+U7HbupupkBFkJUMAszW7GE636mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLaHs-00031z-G4; Mon, 06 Apr 2020 22:32:12 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLaHl-00031E-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 22:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586212322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LnXawnHl3x+8nzXE6aPqR1EZWlC7TbGYKhmtxBQaYQg=;
 b=II78g9ymlodzVPjbddKBKiHxG4sHT/OcZhuefjhtsYfoQUf5dg4sw/qSV1RmKl49g5tQWK
 Ud3hBVdydV0mF2oIua3wRfe1qY6delMXmotnMQTm7TdEmdxRYssn77Dvb1PwljvUkh3Ec5
 CvhmTAH1LSsMvo9/96BGOYTmmKTjJJE=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-9MmrCHDNNpWGXRa9a2j-8g-1; Mon, 06 Apr 2020 18:32:01 -0400
X-MC-Unique: 9MmrCHDNNpWGXRa9a2j-8g-1
Received: by mail-pg1-f198.google.com with SMTP id p13so790695pgk.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 15:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iUOiyug6a5WDWQL8+e8y1fw+vPajXweHaHtFWZ115vI=;
 b=CaDUBQJy/hVTU1UY1t3cvmBRR24vfzrBNsAOQQUnxiCv8N+vI8nqVP7rzaQL3T8b1g
 UFNsCqXwy2MW3LktKRS625LtbDR/mUG6UDshF5WaLUJeKvzo6/y7g2h3mL4gzPVTBoqN
 JR3wKLJjpdcDIPQ7VI0jtGIRRvNG5bDfInLbBC8Uq8ciIFT5yfi1A743w9FtGyo95HTm
 MR8IgioyViFhelSaV/fOydL3/85HrJCUN2Wn2HM6FXTuyadM/94RZvqAcx9xSR4Igw25
 E8LEQb23pyoHWaCx4AWyMGh9FroommEdE7DLZ02pyWBGaycqKsduJGEfPi0Z/jYAVCiG
 VndA==
X-Gm-Message-State: AGi0PuaFOej0FoAMdTsh0Avz2hLUL5XNjB8QvQDlhtELbNeVdES3uPq7
 GmlLCTxomusBj+i+D8dZBVB//RXsZEj0BfxXAd180MjL81ZK4O3K1WNrWFvfYmiGGTIAc5ViVxU
 yZLpefyRp16ppURMi8dOlLIEgUmpFRnsj3XA=
X-Received: by 2002:a17:90a:254f:: with SMTP id
 j73mr1668201pje.11.1586212319048; 
 Mon, 06 Apr 2020 15:31:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypL9P8FhAmlffwlXt0IjAgBtmJsCmO7NbdYFMZOcnukZIpnSmdTuAHXA6WHf1XjCGTOtyxLKEw==
X-Received: by 2002:a17:90a:254f:: with SMTP id
 j73mr1668157pje.11.1586212318632; 
 Mon, 06 Apr 2020 15:31:58 -0700 (PDT)
Received: from localhost ([106.215.98.135])
 by smtp.gmail.com with ESMTPSA id 63sm12375538pfe.96.2020.04.06.15.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Apr 2020 15:31:56 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
Date: Tue,  7 Apr 2020 04:01:40 +0530
Message-Id: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_153205_997048_9B0E818A 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 kexec@lists.infradead.org, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kexec_file_load() syscall interface is now supported for
arm64 architecture as well via commits:
3751e728cef2 ("arm64: kexec_file: add crash dump support") and
3ddd9992a590 ("arm64: enable KEXEC_FILE config")].

This patch enables config KEXEC_FILE by default in the
arm64 defconfig, so that user-space tools like kexec-tools
can use the same as the default interface for kexec/kdump
on arm64.

Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: kexec@lists.infradead.org

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d85045..fa122f4341a2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
 CONFIG_NUMA=y
 CONFIG_SECCOMP=y
 CONFIG_KEXEC=y
+CONFIG_KEXEC_FILE=y
 CONFIG_CRASH_DUMP=y
 CONFIG_XEN=y
 CONFIG_COMPAT=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
