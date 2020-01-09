Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E967135DBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TKsZQ162PzjQCBkRgV9ROgh8fZS+2lfcOtjxGKpzlU=; b=LQq2E6WkZAIuLE
	2WxXc+eScB/woppINfhZf5B8ga7VIgt0fi2C5HMcldtknSAR5TCZiz2TsDGsyd0XM4e15fukLZGwk
	/YkNBJ3nGenCuFbjTmnx5FyuHMszB1uXf6hcqLgjDDqHjRuWGjPQ/2t8hPRK264aqyj5VqxFpcQxB
	KVTE0YAB/jsJpaPTdLHsRb8c5pgje3zdziI7pVDFdlcarQZDGDLdoKGbFk1BBuBaZuWk96dWSRaHu
	be7jyeFdUxzxdYvWTSEnPJMv25KlRA6/CrjtfKHSu6NCIzcdLZhs7sLIeEJfph5+t/LhcW6caRBfT
	ENYve2BNCjME/iD9mdag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaMX-0001OR-Dv; Thu, 09 Jan 2020 16:08:45 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJ7-0006O5-A3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585910;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0eGQcEDML0Y79i4e+/1ghIKGwGfPNRaPsrp8gxp/WLc=;
 b=Jk7T4DT4uHJjdAcwijFb8CyIrQI1Q6kdnKGGB7KlKfqTwlw7NOyzOlWEIkzZny1IjcCrZG
 aQiXnZNWpYuAd6+1KiDPkVDrEQvnTCx2CI6oJTDdi50nVoyjplRB2ret6f8V6ky30TFfXm
 Fj8SbbDBiodH1/RdLzfwTNXAIstSkC4=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-On0pbphPMAG_qo7dhASz9g-1; Thu, 09 Jan 2020 11:05:09 -0500
Received: by mail-wr1-f71.google.com with SMTP id z14so3074172wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GLC9hNezWUeQVArYqnoEaqxCV4y5v31FOWiE9b3pIzA=;
 b=By3456pmNxGeTw11wR2ky6sppMU9R/J8E4xHTwY9YQEmTWPHgsNz81cou3GnUFXe3i
 An75ZnAmBnACgPaWIPBWV7vleeDzNShaFepG+4Gd4rvLJeswPGjkoFATismgdjZ9vSTe
 D0tCxdmCUIaIWXbz5nH1gA7VN7422NSW3ahc7G/vvduRg5cklrDiyPUzXK991ZRDJEoY
 +blz+hhZwMfDv0o6ia3j8Nh4gBGxnpGT3yixSaC2lZfhmxXYtHuuzOG3W2YWidGe9/a/
 t11g317nU8dnjThIHlkf/SrFAM0ZpiwofpS1L9zEP4/L412gxw8N+L0AXcJwuSwv8Ecd
 56Sw==
X-Gm-Message-State: APjAAAWAk/pE8tlpVQ/9dP4S3MZ9Memm4QIOtXBDDRk9Goo/pcxnYLNH
 rCXhJtOL6AkzsorO2bf3VCN05i8XyAhHE8vlJ2HGH+oB13OG4Pm/pC0Z1TOK0LSHLW2DDKxyove
 GdJHh4MiwM+Hd8cVadCnmzpcaV+73rejRSNQ=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr12130809wrw.246.1578585907737; 
 Thu, 09 Jan 2020 08:05:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqxcuGHLY97/ieBCy+A431B2pbzBsFD5NdBbjJV9wyCtGKMcOfTDY33FxJb8HaIZjLm8Wp/zNA==
X-Received: by 2002:a5d:6652:: with SMTP id f18mr12130779wrw.246.1578585907516; 
 Thu, 09 Jan 2020 08:05:07 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id d16sm9285303wrg.27.2020.01.09.08.05.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:06 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 17/57] objtool: Make stack validation more generic
Date: Thu,  9 Jan 2020 16:02:20 +0000
Message-Id: <20200109160300.26150-18-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: On0pbphPMAG_qo7dhASz9g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080513_605907_9B4EF32D 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On x86, when calling a function, the new call frame is alway placed at
the start of the stack space this function can freely use. So the frame
pointer is always saved at <function stack start> - 16.

This is not true for the calling convention of all architecture.

When validating the call frame before a call instruction, all that can
be done is check that a frame was created by the current function and
that the frame pointer is correctly pointing to it.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 0a5c51e4e24c..04434cdbdab6 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1176,7 +1176,7 @@ static bool has_modified_stack_frame(struct insn_state *state)
 static bool has_valid_stack_frame(struct insn_state *state)
 {
 	if (state->cfa.base == CFI_BP && state->regs[CFI_BP].base == CFI_CFA &&
-	    state->regs[CFI_BP].offset == -16)
+	    state->regs[CFI_BP].offset == -state->cfa.offset)
 		return true;
 
 	if (state->drap && state->regs[CFI_BP].base == CFI_BP)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
