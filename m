Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96361BE730
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 21:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fb9m3LVPiJFHAmU+nOWcaxp9UURYFM0/tKy/OgggcE4=; b=dx4faJGxUagqvD
	/OuFymWyPm3wEatnMfTTwqvPbICyKpPuROcRfTDXthTMd/+Vf08Fq6le7BHMbkepCf17lSOTCaoPr
	HURzj+JTw3+epfil8XCfvcHYTA04fOE/oQc55oL4lMs93ZSYYJNDeoeJ2GPm7tku4hmMy+L7IsntF
	Kr8xP3la4RZGZDEoBvWex+wnUP8Rhy8kuKV9j7+gO3rIMUYgbaUP7tLIzH0E3PyfHEjy9Seul7bD3
	7kCakUhRx7kXMDdASLQnrr/DlUCrKuHvwRkzknfzOx9sbpG7bJTMc3w4Myllw4oHV7zsRLWAI2YxW
	U3OFWwGc7qfdPcY1gxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsF3-0002FE-IW; Wed, 29 Apr 2020 19:19:33 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsEt-0002EL-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 19:19:24 +0000
Received: by mail-ot1-f68.google.com with SMTP id m13so2722594otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 12:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Oia0s4NV9DB+iCr1ZEMds2cu5/Yvq5t6UNJtwHocXX8=;
 b=R7Hgli/oCVINwQlAyLD9xKMxn3jO1Uzre71VHNaase9iWJdX/KvgPo9i5D0xJ9hV3z
 L1+LwNwEY7/eZRKnDlr02ObP0jp6d38UdYgdvvpKD1cIrMUfLEL412SKm6GKXG/pitxR
 r9ggSZA0umLu3P1oT1JoR6eLkSHRuJ92AUOalWWnKSR621rkQlDn1ExL17GvfOlbe07/
 UXMqgVZfcSg690Xic8BeliSZ7xArT+GTGoNg+GuFb5zDNIy2efvhfxbwbh1TYquGlvdP
 oZC6c/X6jheIF/NNZdIRw+SIDsEcKXoOgBznx7uceaSSVpCMq8livJRfAp88+fpd1JBN
 6QUA==
X-Gm-Message-State: AGi0PuauZ1xC13cjVfI1Fn/jVg6n/I9lIE98JaEVmB4ed+40y/9whDYj
 GJ6wrMN5ut6wZoCbi0PYzA==
X-Google-Smtp-Source: APiQypIYsFHqsImFWUG6M7IapnTOnVsT5eW1i/FPjE2Tfp+Fzl7zDQ7L4rm3spD3PQPpBY6QN1oE2w==
X-Received: by 2002:a9d:aa7:: with SMTP id 36mr26543736otq.142.1588187962250; 
 Wed, 29 Apr 2020 12:19:22 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a22sm564309otf.42.2020.04.29.12.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 12:19:21 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: silicon-errata.rst: Sort the Cortex-A55 entries
Date: Wed, 29 Apr 2020 14:19:21 -0500
Message-Id: <20200429191921.32484-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_121923_611633_455282E5 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Arm silicon errata list is mostly sorted by CPU name with the
exception of Cortex-A55, so let's sort it before adding more entries.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/arm64/silicon-errata.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 2c08c628febd..936cf2a59ca4 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -64,6 +64,10 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A53      | #843419         | ARM64_ERRATUM_843419        |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A55      | #1024718        | ARM64_ERRATUM_1024718       |
++----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A55      | #1530923        | ARM64_ERRATUM_1530923       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A57      | #832075         | ARM64_ERRATUM_832075        |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A57      | #852523         | N/A                         |
@@ -78,8 +82,6 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A73      | #858921         | ARM64_ERRATUM_858921        |
 +----------------+-----------------+-----------------+-----------------------------+
-| ARM            | Cortex-A55      | #1024718        | ARM64_ERRATUM_1024718       |
-+----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A76      | #1188873,1418040| ARM64_ERRATUM_1418040       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A76      | #1165522        | ARM64_ERRATUM_1165522       |
@@ -88,8 +90,6 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
 +----------------+-----------------+-----------------+-----------------------------+
-| ARM            | Cortex-A55      | #1530923        | ARM64_ERRATUM_1530923       |
-+----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1349291        | N/A                         |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
