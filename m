Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E60135E0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elT5NlxVaWf+Qu2hzuM3AenZRmORjuCrjFk9B1N7zLI=; b=BVeL2gWdesQ0N5
	zXSQTiWMVeckgEVFvlEIJoWCz1wFW0LuisnY1pTHsfqi79bQ2B1/7L7dNU7UZs5bLg4+UbECaOPPh
	qP0jltzpHLlw3Svq0s+Ls8pzsYkRiBIrpX8OOG93ZLYsq1uR5Dc7l9yESFLyTM98r6xe30Wkw3Jjv
	GPMjlE1PL4/cplosaEDgtn7mfn8ERn5M0DvMcI0i3Diy8trA+iJiGvVjpe+0/G54zueWhvx9Nl8UN
	SkzYILYy8n8o+Von1wP5uB3g44Nl8ussKIyFLs5VfX8OKtny/5kcgf2eM0Vl66EHPBraU8cnaEz8r
	lcuaD5IH9FxqV6DuEeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaWY-0004kr-Fk; Thu, 09 Jan 2020 16:19:06 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMk-0001tE-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586137;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EBN8C/og0fnM2zB/rUvXQIia4F/DYkjcaOKwhnm3gro=;
 b=Fmy7i1dFbIVvQdA2jMXu1xB4c5ij4m78XOrrRl64fpt9yjxY8EnHuiD4b3BaW7DBIwd8j5
 2r6autBNa7wgpp50kKpVAgeHilI65OmSm4Ku3zoHHxFa/5Qm8PtopHpwhfUWss3BK0tXWj
 72tF4MoecZPrhLciJF8E3hWrcS+Gje8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-uDW9lFsXMoCpCdTqDI-u9Q-1; Thu, 09 Jan 2020 11:08:55 -0500
Received: by mail-wr1-f70.google.com with SMTP id c6so3030343wrm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nKlTXFTfOxenRUeVQ8l+ODGGfg+92uyxs/gH2lHca/E=;
 b=cu+olnEG4kgKg0GjSPFGYQlGusX4D81JauKv06eI5pcJry4FxeIffUepsNlbGMcUNv
 cj234GdsmEfaQAXWKiYbtXQ+C0Kf+4bDFZMDf/56vT9NLuDmdNU1UH6t1WZ7J6CapW9c
 JZzfVgA3B3vgcazmR8xoO1Nio05OSwMESpfWCm0Z/wZ6spit+xlSPmhv28B4VhJpd+ck
 Im3jNr04pjStMsJUuV9jgvDT1xuoHKRIyG+P+CoyEdUt9O+HsPn0dvDKPGCEnX04j+ZD
 V6GuRYR9RJFrEnkkGI5YZsbTIWez3sOboHVd4IJGL/2IZEtO/47lwjXqr6CFHg/o1epf
 K3gw==
X-Gm-Message-State: APjAAAU6bszg/YSnceTAG2kOq0JsnHu77itV5096YfEmd6Vbg1F8J0+M
 cwnU7x6Kif2UqOCLQg/XN33G9DTexZ118zVbApi9CFxKxy/HDRFS+/Ep2QN6/xgHLDoDhZjdwNp
 MTIOiIQtOKvV1SIqm48QY37pCAyx5S2WG370=
X-Received: by 2002:a05:600c:1050:: with SMTP id
 16mr6102360wmx.20.1578586134582; 
 Thu, 09 Jan 2020 08:08:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqw0602eGGyf/C/0ZAZHC7ZuC4fFVco9svxXb/Fu4KTSXEyS2X/xvzMklpTy/CP9FpmVgXMdeQ==
X-Received: by 2002:a05:600c:1050:: with SMTP id
 16mr6102340wmx.20.1578586134441; 
 Thu, 09 Jan 2020 08:08:54 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id v8sm8403505wrw.2.2020.01.09.08.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:53 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 45/57] objtool: arm64: Enable stack validation for arm64
Date: Thu,  9 Jan 2020 16:02:48 +0000
Message-Id: <20200109160300.26150-46-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: uDW9lFsXMoCpCdTqDI-u9Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080858_370414_AFA1793C 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

Add build option to run stack validation at compile time.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a7b2116d5d13..60a17af19aba 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,6 +165,7 @@ config ARM64
 	select HAVE_RCU_TABLE_FREE
 	select HAVE_RSEQ
 	select HAVE_STACKPROTECTOR
+	select HAVE_STACK_VALIDATION
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
 	select HAVE_KRETPROBES
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
