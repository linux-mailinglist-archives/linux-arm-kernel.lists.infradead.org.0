Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601B8135DC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHyoMhsSXiX7Z7HMt8iqBWUXbdY9IZ6LxGd7K4Ym4AY=; b=Pz+nL7pXDyYsad
	U2Hv7SRK6xzsLYmuolVuWsaTZakk5w6yoPwzKl9kY2pNulvmKK1WqnUy+kTF6+u6RIl49owL/KMkp
	Eza3IbVfo/8lf1Uc24G012aIy7eGe88CeMoNwpvYAJQaXtKBVLy5qVYI79WOiMfMSAITYExC5orl1
	zfT/c50EjtUZm5TxA574vZ0P6q7JOaGhLin13lpkj/ZPeF0NrAfT5hCS4K212BSbDqY/z/DFpJWfW
	m1GwYWxVnKl7F17dmuau+qcB3kvpzPXU0rCHGG8qUSf+l1XUBCm5BkekjSKUZG0YVlryJZ99rTLgp
	vZfSKY7Hj65yLe/Pee4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaN2-0001xC-OZ; Thu, 09 Jan 2020 16:09:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJH-0006z8-Jn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VoZqCBetiwAvEoR5ECNM7m4hScz5XF9PJmd6ARWzq0s=;
 b=Cn5rSfgUnnWLfOsVOxMsu39BmrzDySdlVO1poiY1xjplUVUwrkgcTjc2/KfGmE7/YOT5jB
 SxKFlBbfWjMZuZQMUCCZ3wExEg5S1Rc4KqEa1tKlhITXKRcWwyf/th7ivyMf49QTdLP0Fr
 rnloymuUNix1qYW573KuAElulSeXlRM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-IXc5Bs9cPf2Y7zy5SX28Ug-1; Thu, 09 Jan 2020 11:03:13 -0500
Received: by mail-wr1-f71.google.com with SMTP id c6so3023590wrm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cv9OEnoxm5jqEof6Q4MR3S73IbKofEk1lKfADeLvzKM=;
 b=Z+rYcbNI3uRgcezKwIohRTbVNQcU2VxUHTiMURpe8j1c+UTxOnxbmLvVmVh+tU7gum
 Uu5irsW3Mob5Swl9GLOVrgWpyHHLXf5CC2Dy3F2pqnR+vEB+fa7oK6akdgpW72IJ1iqa
 Ili8tXX21d5upfDVxm19XMVyUs+r8qru4rX+1ky3bcb3F6+VBypY7ua9dh5zhQ7JslsM
 HMHjhkzc+rN1CtkZIpRMEv9474zlM4Rk2RgBHFQ9AfTNexVVHTWHgAIEVQZYroicx5iz
 ukWzrqzI9FqRNW7ZMwITdJQX38wHsrMJTq6q9xgF99v19X3Ws05XK0Cl6vprgg5nnIiQ
 6IkA==
X-Gm-Message-State: APjAAAXEkCDDhfz0n8S3VtJy6LnPgbFgtKj+CkxTjDGZ+bDz+NfrJdH5
 D9CFrlZOookIwrN5GtB8Te6+lQlhv0y89P6mf+j97Nh0KDy5n6uFMUN36On/FyrYlrVpa/kWA8A
 e+PPd5CUS8rFS48xUgbe3j4XiQxnEoD4Fafw=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr11942318wrv.358.1578585792181; 
 Thu, 09 Jan 2020 08:03:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqywPwV2UvQwN4s2qv+/dJ9GOKMz9Upk2KnoXLCCN9ETrzeZJVoqAGjRgbLtFMAu3XU2NN4UVw==
X-Received: by 2002:a5d:538e:: with SMTP id d14mr11942292wrv.358.1578585791962; 
 Thu, 09 Jan 2020 08:03:11 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z21sm3258969wml.5.2020.01.09.08.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:11 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 01/57] objtool: check: Remove redundant checks on operand type
Date: Thu,  9 Jan 2020 16:02:04 +0000
Message-Id: <20200109160300.26150-2-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: IXc5Bs9cPf2Y7zy5SX28Ug-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080523_866437_F39BC7F6 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

POP operations are already in code path where destination operand
is OP_DEST_REG. There is no need to check the operand type again.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 4768d91c6d68..a04778421144 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1672,15 +1672,13 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)

 		case OP_SRC_POP:
 		case OP_SRC_POPF:
-			if (!state->drap && op->dest.type == OP_DEST_REG &&
-			    op->dest.reg == cfa->base) {
+			if (!state->drap && op->dest.reg == cfa->base) {

 				/* pop %rbp */
 				cfa->base = CFI_SP;
 			}

 			if (state->drap && cfa->base == CFI_BP_INDIRECT &&
-			    op->dest.type == OP_DEST_REG &&
 			    op->dest.reg == state->drap_reg &&
 			    state->drap_offset == -state->stack_size) {

--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
