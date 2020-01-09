Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED0135D92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f3m5C0vcOkkKHNafu8ERsungF4YtgvpRi6kYQBHoTA=; b=MbOt5IiSfcbBLb
	xDOXSlTJVJUVDMD8UP7wnsdSqJaySUcHM2llhJ8x3/N4u1ByLUyvDPmZDmKbiHv5W2ReoDmrS3qoF
	xExJwMDkN43F6Rr/FjvsNV9kbyqJnorWY0pAyiUVYYhzAMt+/GZBkKve62Vxe+E6fstMHoWxHzRH4
	zti3VPMosg5M1XxFBL5XqOBABwtPMTqNJIBmb+4+257fBqEEvpvfc3ySocfJe+vlZ1hIKEuQfHD7Z
	I7mTHuPwmDTJ45wnHwMl2oCTkO12zs21rH21YD9TQ+KmNRBx3AmtUEQUsrkQN1rMx2at635aK3HI3
	qBEy8p/2pC9VI2kogXbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaKP-0007oZ-M6; Thu, 09 Jan 2020 16:06:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIT-00058B-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FXQxfKCa95iVhzNUh/d4s107aoEQ/uGIdoZfuhqnFqc=;
 b=IcXVAPng4dB+tFbFODawYi3UH+k4AP0HQ2x5QT94/7ZzUk0GfjK1ahZscXu7sIbc9l9cxp
 ZM8JxkCCfYHKBhFxeLIi/dmso3Qd8vYnw8NRPoM8c65HyIZlUNEpdxWNscFkHjqy7vmurK
 7jlSPHmHK+0gjR34aIzLjz8tBnh+FwA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-ZpcPUJn-NpObNV3EmD4eFg-1; Thu, 09 Jan 2020 11:04:30 -0500
Received: by mail-wr1-f71.google.com with SMTP id j13so3033875wrr.20
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:04:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xt5DbHzH/EVOyMc37NjjTNOfxPGZdHy+R4yzKk2QEI0=;
 b=pgky8o7P/lyk/Q/+1SdnB9VpLJ0ArlMWwKuuyWdoeI8AcebU7mAJE0mWHHxz2ZeQc1
 /Wllltnr1dUmivqxFezfNaWzkdJid05MgkgPd64JTUVez1hrij/wAdagVc/x7b42MJ9W
 nGSyxur7N2u4hciNxrFvBIQOA2Eao/pUhOQpcrvLkuOH5hVSqwirEBNxV+dcLLcTWKU/
 o4uu9OS8ZewlrIBWF0iGDDwaLbwAdVoQZl2RV0lcZrfVCjO5PkgL7lVwtbRm1pcWQSQ0
 nVDnVMD0O6Q8/iM8uFylxPbeqWaNvox7tOCglBCMvsMRZ7SZGybpR/QLdSMH1DEKYvrG
 DEHA==
X-Gm-Message-State: APjAAAV5xk0T/euS3zlYHnf9mzagLnm3lUliwxWU4AOqH2+L+AMq34UC
 oe+1T3ya4xP7fyIgh3d8MXX5tcDupC2PTIPxCsJUHxRP5u1Lnr5xq32JRx1TkkzXQq9Yo65BvfF
 vgj15bpC563hCpLZiVVlcj8nRzDqqkBDJ9Xw=
X-Received: by 2002:a05:600c:294:: with SMTP id
 20mr5609171wmk.97.1578585868940; 
 Thu, 09 Jan 2020 08:04:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqzq/Alj0h2G/J2VQULJA01MqEGedUbxb2oF0V48iKffuNbHJbUHRhKAG5KbZl3knGLHvbjRuw==
X-Received: by 2002:a05:600c:294:: with SMTP id
 20mr5609151wmk.97.1578585868751; 
 Thu, 09 Jan 2020 08:04:28 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id b17sm8615898wrp.49.2020.01.09.08.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:04:28 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 12/57] objtool: check: Allow jumps from an alternative group
 to itself
Date: Thu,  9 Jan 2020 16:02:15 +0000
Message-Id: <20200109160300.26150-13-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: ZpcPUJn-NpObNV3EmD4eFg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080433_270180_B938613D 
X-CRM114-Status: GOOD (  13.19  )
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

Alternatives can contain instructions that jump to another instruction
in the same alternative group. This is actually a common pattern on
arm64.

Keep track of instructions jumping within their own alternative group
and carry on validating such branches.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 48 ++++++++++++++++++++++++++++++++++---------
 tools/objtool/check.h |  1 +
 2 files changed, 39 insertions(+), 10 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 8f2ff030936d..c7b3f1e2a628 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -722,6 +722,14 @@ static int handle_group_alt(struct objtool_file *file,
 	sec_for_each_insn_from(file, insn) {
 		if (insn->offset >= special_alt->orig_off + special_alt->orig_len)
 			break;
+		/* Is insn a jump to an instruction within the alt_group */
+		if (insn->jump_dest && insn->sec == insn->jump_dest->sec &&
+		    (insn->type == INSN_JUMP_CONDITIONAL ||
+		     insn->type == INSN_JUMP_UNCONDITIONAL)) {
+			dest_off = insn->jump_dest->offset;
+			insn->intra_group_jump = special_alt->orig_off <= dest_off &&
+				dest_off < special_alt->orig_off + special_alt->orig_len;
+		}
 
 		insn->alt_group = true;
 		last_orig_insn = insn;
@@ -1853,14 +1861,33 @@ static int validate_sibling_call(struct instruction *insn, struct insn_state *st
 	return validate_call(insn, state);
 }
 
+static int validate_branch_alt_safe(struct objtool_file *file,
+				    struct symbol *func,
+				    struct instruction *first,
+				    struct insn_state state);
+
+static int validate_branch(struct objtool_file *file, struct symbol *func,
+			   struct instruction *first, struct insn_state state)
+{
+	if (first->alt_group && list_empty(&first->alts)) {
+		WARN_FUNC("don't know how to handle branch to middle of alternative instruction group",
+			  first->sec, first->offset);
+		return 1;
+	}
+
+	return validate_branch_alt_safe(file, func, first, state);
+}
+
 /*
  * Follow the branch starting at the given instruction, and recursively follow
  * any other branches (jumps).  Meanwhile, track the frame pointer state at
  * each instruction and validate all the rules described in
  * tools/objtool/Documentation/stack-validation.txt.
  */
-static int validate_branch(struct objtool_file *file, struct symbol *func,
-			   struct instruction *first, struct insn_state state)
+static int validate_branch_alt_safe(struct objtool_file *file,
+				    struct symbol *func,
+				    struct instruction *first,
+				    struct insn_state state)
 {
 	struct alternative *alt;
 	struct instruction *insn, *next_insn;
@@ -1871,12 +1898,6 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 	insn = first;
 	sec = insn->sec;
 
-	if (insn->alt_group && list_empty(&insn->alts)) {
-		WARN_FUNC("don't know how to handle branch to middle of alternative instruction group",
-			  sec, insn->offset);
-		return 1;
-	}
-
 	while (1) {
 		next_insn = next_insn_same_sec(file, insn);
 
@@ -2023,8 +2044,15 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 					return ret;
 
 			} else if (insn->jump_dest) {
-				ret = validate_branch(file, func,
-						      insn->jump_dest, state);
+				if (insn->intra_group_jump)
+					ret = validate_branch_alt_safe(file,
+								       func,
+								       insn->jump_dest,
+								       state);
+				else
+					ret = validate_branch(file, func,
+							      insn->jump_dest,
+							      state);
 				if (ret) {
 					if (backtrace)
 						BT_FUNC("(branch)", insn);
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index af87b55db454..d13ee02f28a4 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -46,6 +46,7 @@ struct instruction {
 	struct stack_op stack_op;
 	struct insn_state state;
 	struct orc_entry orc;
+	bool intra_group_jump;
 };
 
 struct objtool_file {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
