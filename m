Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDB3135DDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjanM//+zgpRXeGnXUpMmap32m1qdMiQS0b7zLQorVI=; b=HmMs+RIaFi/MMW
	4WOZcqJNcfuH/fwQPs8yMNRyPuHO9bmGLotIJBfdDUSsKqdb26f8KABEtXtIzpWgbn11uexs214TU
	7lBiBDgwJ1rNPwqXkowMrGiF6jxXY4JFYwd8VSQAgOfBGr8Gom/RYnE0ee3GMIzEc6oWnfmyZZ4/C
	amHMmscapPGnZFh4hc4foyrD/ETcNtAS/TFqkabH7opjZ1NbO10/q0D+UJWGviQ2RDywuELWZNbCC
	Y59rC1HkDwV2Da/UPgd9xm981aMO6WCbHM6fZJ8f6cn0Mrz1aleVK+NFXNPMNc96vGIVLq55p12Na
	+vG39TuSxOPkg2vv7Agg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaQS-0006P5-FB; Thu, 09 Jan 2020 16:12:48 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKJ-0007xw-1Y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585985;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2idOYVbFUu8UYWjig8IIHjgpdBbgTVkfK7tIeXEZk8w=;
 b=espufZzuc/NsM4Efm6qptHC8sj8P/YQRxLsbWAuHagCsviRaVglFV6Dt0unsAY3X9Ffqni
 Wd4iKgDykN7fPSQHmZm3Drwgso0hl2uMd3tyDvotEys81TQuSGMheYNcodamlp64M/FYFs
 eJD8yenfUHCHCygC952eIHcCScJdd6c=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-KuzAGEg_N_KCJu7e_3AtrQ-1; Thu, 09 Jan 2020 11:06:24 -0500
Received: by mail-wm1-f69.google.com with SMTP id h130so1094331wme.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:06:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HNhyss2u9SsGVYYccTk/iU0pIIQIcXT3bxVXb0UyHWg=;
 b=RXJd+KAqdhAOEA4QHYMu8R5xZtv1tIf7NFNrcGEplRIDZsOSd+bYKNa4cmS1ODE0xc
 goq+X8s5yOSWu8CO8Ay1LnpYx3UZBi3FV4LdF0+/hm5DBQMhXzPxYB4TFVA3Ylu2V4Le
 V98ow8KurFGWqXu0dW3WyX9cL5TlaJVtDcxRyBek5dKeZFj24NcgIJw52W/0OMzDVuE6
 vSegijSjvAIyJWCAfMoQoHyB0V8DdpdFVYocqWPBpkaZE16quFrjOKewCYUm7K4M1hWB
 5X0P14PdP8Oa9GvdSA+aJvk+eVaCuaGyHCguEAKeuW+9dV9bpoq3QZJbUPOaw3nQYui5
 0kyA==
X-Gm-Message-State: APjAAAUO2I6xhSWK2qiGU/S6NqFWJkwSlHt0JUwP/If1jADF565+6DWk
 L7pEAfTWz+IQ0q6b2iWzc8+YW+UQqnUDFLWa0UH9YtsVrAcCNB7GdYk+iDEIncvYdgxZyV/SjKf
 Sv+dGCo+UvfmpxCYFKavaIDFDnEH8it/5pp8=
X-Received: by 2002:adf:f10a:: with SMTP id r10mr11698854wro.202.1578585983152; 
 Thu, 09 Jan 2020 08:06:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqwfuKPzYnuaQfyIgBEkCdvvo1v0X3eOw5Mldms4E6Ry3uTgyBQ8xNyJC89tB0eee772rraRfA==
X-Received: by 2002:adf:f10a:: with SMTP id r10mr11698826wro.202.1578585982936; 
 Thu, 09 Jan 2020 08:06:22 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm8643101wrr.95.2020.01.09.08.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:22 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 27/57] objtool: arm64: Decode instruction triggering context
 switch
Date: Thu,  9 Jan 2020 16:02:30 +0000
Message-Id: <20200109160300.26150-28-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: KuzAGEg_N_KCJu7e_3AtrQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080627_170118_229314CE 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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

Decode instructions that volutarily trigger an exception to change
the context of execution.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 1609750cc4b9..5eba83c5d5bc 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -508,6 +508,10 @@ int arm_decode_except_gen(u32 instr, enum insn_type *type,
 #define INSN_HVC	0b00000010
 #define INSN_SMC	0b00000011
 #define INSN_BRK	0b00100000
+#define INSN_HLT	0b01000000
+#define INSN_DCPS1	0b10100001
+#define INSN_DCPS2	0b10100010
+#define INSN_DCPS3	0b10100011
 
 	switch (decode_field) {
 	case INSN_SVC:
@@ -551,6 +555,13 @@ int arm_decode_except_gen(u32 instr, enum insn_type *type,
 			break;
 		}
 		return 0;
+	case INSN_HLT:
+	case INSN_DCPS1:
+	case INSN_DCPS2:
+	case INSN_DCPS3:
+		*immediate = imm16;
+		*type = INSN_CONTEXT_SWITCH;
+		return 0;
 	default:
 		return arm_decode_unknown(instr, type, immediate, ops_list);
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
