Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10CB135DD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Trxk/GJ1GOzQ7Bxk51xYuMdUpKBGI9YefkUNeV/hEE=; b=OykNLmMIki9ive
	PcnEPxNSjIB1NiqdlH+6JW2mKM3SY8D/X1ty+6vlEw89VIeOGAKNU6IgMqEF6+Z6K5uqvltiHGX+k
	iQWdX84pFcgfxzJ8yfceBShcrNL0+6Tnjyu/bvDHqw6VCg677waee5K+KMYHhgIl/ayHLR76Xslai
	QJCSOQ+jpnIAFuiD7+eYyTFc84SIsHrz3lowb4Mtr6XkLTg9ZG/EZLGraWDfnascoSQV37pbTnPKR
	qVr6NxupdCR348CPbhkHfxJhyv+OD2faoQf3Na5z0CGe3S7072z61FU8iDzDyyqYH9O89QQloCPRV
	UEMCLWUkcau4Fug7rb+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaPa-0005cX-Ei; Thu, 09 Jan 2020 16:11:54 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJv-0007eB-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0uuxcpkn5JFDgE+lOpghWftUHEKd37cfHOyYmtcckKY=;
 b=R1LLK4JBWtp8bXARd6Bo/AaGg5Pr6XPvDy/7c+v3F3gRjRuwsqpP+X13yFPm7HQgci/+yG
 SYX5yvJSrWdZrq48AgXw8gaK9xBAxOCoIE46thIH8aoxnzBdm4uzQ2Z9UnbJF5DQqALEXX
 8PElYy+1eCMRKF3tP9q8MrMKdwukAnw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-W9StxrtnMWCYEZ9R-uBqXQ-1; Thu, 09 Jan 2020 11:03:14 -0500
Received: by mail-wm1-f71.google.com with SMTP id y125so882917wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2TbvKMt2I2jso1SowXcHnsxCi6YkVVHUp/mczZ9qxkU=;
 b=txD/3p8LulNWoQBYGgRfPFZ23ekglyYa9Ahncsd95+hqBRlOSAIgqHJX3mCrvbglLD
 lh+v8l8uhDB8qrmRTkwvEleWsHRlinWvf7TVgXIhDCXKSCZuxdGaRz1PwaahFH0oV+kk
 kBlNwSKddFBeh6OjWs5KlDEMvA/mXJ7VWQz6cyzU56dFctib72J77paHkG/MjKCHivDz
 TRTsLQgM7Fbjb/PsrVhAM9Np/4W39gejRl12BgiUbaFzwKbc+1NhvedwhZ0DP3lH5u9G
 oW1Ps45Ykj9vwDfQGhoM8PHB9gNG+yIPNUY48vtnEDs6mrGJaLxVs+NXvMGCnBrE17RM
 cmjA==
X-Gm-Message-State: APjAAAXvxpMJoifGDVoT9mOynCRdLR4tmc9iTCqgxf45kcvJtk/IqvLG
 v5KXh2GJgFkESXTFONMaGCXyXWYx4Ki6aJjgGB8Lz+BERl0Jk26LcOb4L367qLXnY5+NSeNcXX4
 2WFl1rZznkx6VZnZ2y3LXQ4HZzVFCqoz9JpY=
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr5903399wmj.90.1578585793360; 
 Thu, 09 Jan 2020 08:03:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqx1i6RTYzKo5WMbgBgJvZ21maBSBOwlzW/NH2DdpXZf53ZMSa43jR/D3EBbhqlU18Cm4YAYbg==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr5903384wmj.90.1578585793218; 
 Thu, 09 Jan 2020 08:03:13 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z21sm3258969wml.5.2020.01.09.08.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:12 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 02/57] objtool: check: Clean instruction state before each
 function validation
Date: Thu,  9 Jan 2020 16:02:05 +0000
Message-Id: <20200109160300.26150-3-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: W9StxrtnMWCYEZ9R-uBqXQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080603_783456_DD063E2E 
X-CRM114-Status: GOOD (  10.82  )
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

When a function fails its validation, it might leave a stale state
that will be used for the validation of other functions. That would
cause false warnings on potentially valid functions.

Reset the instruction state before the validation of each individual
function.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index a04778421144..4784f0f6a3ae 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2348,13 +2348,6 @@ static int validate_functions(struct objtool_file *file)
 	struct insn_state state;
 	int ret, warnings = 0;

-	clear_insn_state(&state);
-
-	state.cfa = initial_func_cfi.cfa;
-	memcpy(&state.regs, &initial_func_cfi.regs,
-	       CFI_NUM_REGS * sizeof(struct cfi_reg));
-	state.stack_size = initial_func_cfi.cfa.offset;
-
 	for_each_sec(file, sec) {
 		list_for_each_entry(func, &sec->symbol_list, list) {
 			if (func->type != STT_FUNC)
@@ -2373,6 +2366,12 @@ static int validate_functions(struct objtool_file *file)
 			if (!insn || insn->ignore || insn->visited)
 				continue;

+			clear_insn_state(&state);
+			state.cfa = initial_func_cfi.cfa;
+			memcpy(&state.regs, &initial_func_cfi.regs,
+			       CFI_NUM_REGS * sizeof(struct cfi_reg));
+			state.stack_size = initial_func_cfi.cfa.offset;
+
 			state.uaccess = func->uaccess_safe;

 			ret = validate_branch(file, func, insn, state);
--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
