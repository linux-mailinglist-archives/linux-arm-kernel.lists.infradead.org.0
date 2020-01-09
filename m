Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1631A135DA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+uOSgDDroPtEJxcOJ40IWdwj05hXFzaEy8MfyZI6ww=; b=t+AFPPkwGQNw+G
	MjyTxi9QVpSGrK0jx6WNjKxMwZtm2kYeIIOBHMrt54UHlC+cAv7Tst6QFvGjTi7+XmbgNzeoq/ffF
	n5Ac7d21nx3pinPZJLV4ZXNmri2tiStBX8X2NEdKDdQAsRYUBhDGMTehb2DC/+nryasYtkbOT4mpS
	WpjeRBw77NV+6Dt8nVrJvbU4R5cAUnANVw4LjZBGwVpaQjaQ/Yrl4mLC08gV2gc2/QSDgZbPbnNEX
	C1K/q6qt1jE4n9/1vA4sxDsdo3oJNkRdjtwK7Utc+EFVFzVxn3G4KlHMI2yEXltBQL1QQ/6m1kWI0
	AteYyTZ0/8EkUT3RAgrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaLV-0000VU-Jq; Thu, 09 Jan 2020 16:07:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJ6-00065h-3W
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nrmsztAj2poxJxg6fxmu2Z7SI2LPSgd3Nzrj9Xbra3A=;
 b=Ax3v47puuIJgFDm0PqPs4xp6S2l/nZWqyjrz6MOezjoWMbGoUL6qQHMJYSu+jZIpGEssHH
 dH/H/yBHM8wMA25JWjZkjBTC2NeU8tX2yqhW9a1H+DRabxClXrbpJW+GqZ7P73kYxMNPjD
 vivjhIQPBvKK9jqXYK/D5TXUmAj3naQ=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-mnJq83umP9WKXcwPF7dSvw-1; Thu, 09 Jan 2020 11:03:18 -0500
Received: by mail-wm1-f71.google.com with SMTP id p2so1097984wma.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IEmOZ+3NX8EHnBrXs7JpcZGqiWky8RDzrGpjGW3JhOk=;
 b=SPc4QwZaXZlwMzVzKOu8bzJGBXDJRiT5hC0zY6RLs/NoHGI44XwK/qjw5O/xtp/UIk
 zOntZNKrgyGrKhA8n7USdOZpjbrBJ1UKUUcy63C5CObzRVyAFmmSvQUS1nMu6m0x+v+X
 nCluN9pcTVrWIU+tEM1oHovQoE3MT9wHIcOMF+SNz0kUEVYqmGyYqQ07EAU5wfNOOJ/j
 KCtyozEXsD9M6C8ub6+cB2jGLdEgEGzW1cO+0DpRv4n0TZHG5QQttaW8fG9G6wIihM99
 DmY3iiJFABYi3UpmcngfUlMHd0CpNGcujbZNV1HCD0OL11Cmq7GlD/U4qB/HilIwy7wO
 JsUQ==
X-Gm-Message-State: APjAAAX7VJbrPcvSZ/TZZH0/sHkfXaWFD3l0uyxYV/H0jXyInINfTnYg
 JkMuQqzmpbnIubRiQLxBp5HBM5NfaNGOoUkjOF5p2rrIo8uFrivvvbbu8CjSvKqGtgyyMKpqjGy
 pKUqNjlVbqIGbCa2uOHkxjdbqg1TcoSXDh/Q=
X-Received: by 2002:adf:806e:: with SMTP id 101mr12284644wrk.300.1578585795605; 
 Thu, 09 Jan 2020 08:03:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhJw7oN3KdrwJWeebHQd7OtKE/MeC5SWWnNta8sWE9upFVwuTQwP5gOrTZf1dc7nb4l3igCQ==
X-Received: by 2002:adf:806e:: with SMTP id 101mr12284536wrk.300.1578585794619; 
 Thu, 09 Jan 2020 08:03:14 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id z21sm3258969wml.5.2020.01.09.08.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:14 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 03/57] objtool: check: Use arch specific values in
 restore_reg()
Date: Thu,  9 Jan 2020 16:02:06 +0000
Message-Id: <20200109160300.26150-4-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: mnJq83umP9WKXcwPF7dSvw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080512_357652_086179F7 
X-CRM114-Status: GOOD (  11.77  )
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

Initial register state is set up by arch specific code. Use the value
the arch code has set when restoring registers from the stack.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 4784f0f6a3ae..5968e6f08891 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1437,8 +1437,8 @@ static void save_reg(struct insn_state *state, unsigned char reg, int base,
 
 static void restore_reg(struct insn_state *state, unsigned char reg)
 {
-	state->regs[reg].base = CFI_UNDEFINED;
-	state->regs[reg].offset = 0;
+	state->regs[reg].base = initial_func_cfi.regs[reg].base;
+	state->regs[reg].offset = initial_func_cfi.regs[reg].offset;
 }
 
 /*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
