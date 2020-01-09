Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1745135DB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRMKW1BUsLKZhhODLoyzDaFxZ3lvZwTzvEKx50GP55E=; b=fu7zjsHP9iT+cW
	aYGAnKTkkyzWQPsXOHwXxaLklhiA+qF2L1itMJt5RFr2ZckHmoF8xmHkgeQaY+egxbiiVGBPtCITQ
	MDBAU5fVYJuY778HlNScoq4g3ja3rZZTxUBTo5JItRF9fN7Lyn+sFXTvv4XUXubt2QFGDmXyszSGi
	YRR/n5Mk3OLaE7CU0pyxfH0XvGAA2VLGrLToTIl6jIA+/K0OF6SUgUU0prXYizTgojxuai41Ghh7b
	lCvnhn9cVUH8dE6xSuATcFZGO47DyR6dPMi0kI+Zegmk70Vet//ilWZaskH9jUsR0FmMLKeEA29kO
	tIRaQyoDka/yv3jjTzXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaMB-00015k-6g; Thu, 09 Jan 2020 16:08:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJ6-0006D3-GB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fu7bYN5srVl+qXZI7cFZSY77PyhyER4eVK7tyh3waH4=;
 b=WtzoRuNdc8FieuAKjMd0MnSUS/rKsm/tW4si0+T2kDLPYykTFxmEMNr4azbyv200jkMoBz
 VywGy+J62CMZOjX84+ZZGKULQGDyWlMq54esZ4FKiDVpV7kw6CmnTlxlSUB7hGEjE8McsY
 6GPwwuVVjc+ZuYB26lffKICKk4nJkt8=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-EJ2EYDwGOu-LsDudC3h-zg-1; Thu, 09 Jan 2020 11:05:07 -0500
Received: by mail-wr1-f72.google.com with SMTP id 90so3037480wrq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RN81Hr2F3scNb0RyFSSlR24ibWGqr/jAb3l0nXd6mwk=;
 b=d0nk5XAJG1MDjRTv5xWI3KoBzGCdSxKPtEdVKEo7obv2/lWlaIqJvKVdbr4Mwqumqp
 NgRpJFdW6yhE+1lrcjq1A/fwT0PASts2O5oodaLN2t2qZFdifHxMVABXGYIIdDPG4ChC
 QR8iPTEUnrrSFlr/+ui1U++jYgr8AM+vsukH1mrXnUKoDB6gNPQePfAre84Ae8mo3vrA
 i9KYPnG7RLZD9tfiYNlpvZVUxvpJ4t7wgj1x6BPKybUq427ahyhkp7KCAYQJdi1SeLmy
 6LVKqCoeTuBOxbMOsdGkZWXcuxnqvBcAwrp2klpzdNkP802Y8ENEfVpHdGIK3i5HsijQ
 kZbg==
X-Gm-Message-State: APjAAAUBmcniwVPwI/nTeae3QtGAk/CdJiyYpgz4HtJkJguRdn2c/H7i
 6GsU+r8k46ln94lrVk7tTYBdRDGMfT0n9Ygytnzn1+L5e27pL6sftYhCfeIlZHFb4M4jD6ttXZq
 5rWU3mjaT2VP/+qq0C1OLAIPSIyKlUPNKIzY=
X-Received: by 2002:a5d:608e:: with SMTP id w14mr12212472wrt.256.1578585906279; 
 Thu, 09 Jan 2020 08:05:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqzelCxqz+HY+vptIAIaeoW/L/+6jX9Gnq+tDYYFZlPnGBvNBZJ14bHw1aP3g+H7x8mUB7kekA==
X-Received: by 2002:a5d:608e:: with SMTP id w14mr12212440wrt.256.1578585905967; 
 Thu, 09 Jan 2020 08:05:05 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id d16sm9285303wrg.27.2020.01.09.08.05.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:05 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 16/57] objtool: Support restoring BP from the stack without
 POP
Date: Thu,  9 Jan 2020 16:02:19 +0000
Message-Id: <20200109160300.26150-17-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: EJ2EYDwGOu-LsDudC3h-zg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080512_723059_486A6D9F 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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

Support instruction that set BP to its previous value (base on the
current CFA state) from the stack without modifying the stack pointer.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5b2539eaccba..0a5c51e4e24c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1507,6 +1507,12 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 				cfa->base = state->drap_reg;
 				cfa->offset = 0;
 				state->drap_offset = -1;
+			} else if (!state->drap && op->src.reg == CFI_SP &&
+				op->dest.reg == cfa->base) {
+
+				/* mov disp(%rsp), %rbp */
+				cfa->base = CFI_SP;
+				cfa->offset += op->src.offset;
 			}
 
 			if (state->drap && op->src.reg == CFI_BP &&
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
