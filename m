Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A44135DB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B1YYGUHm13PiPA3scJeNwOymwYpmMJXqtQ55NrT540=; b=GGQ1KToMUjN7C0
	2jzB7eqmic3Jsq9XIpBJuux9CxqXEbjS+rJLg2Fs0b/K5ZK7mXGy6NEA0Bid+AD4Lv/4zvu/5EjYj
	EQRJsBvKYf2fhhkzG5k1+PHLRJW4j43+i3+XvcSgRR44wZEk0v/J6gpBJWYhHVx4MlQVpTNpw1qBv
	PAcqZzoQxi97G2ruThsbT7EsvI2T8BN/EWwiS4sRfkXzhJnShTmtsu4EqI61pNzfFoBFNNTqWsrqq
	IRF8v5La3eo/vBOqWPIEG4PxrSlGBCbg8X/F0Ec/Y/ovhZhj8kVcBpfi8eEPpz/rJxaJrZHsONY8/
	VWMQ0x3xv689ZRreoOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaLs-0000sZ-Si; Thu, 09 Jan 2020 16:08:04 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaJ6-00068I-25
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:05:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=maOW8A5/u0J925rSRYzcXOzsHtn4QK4E4IRMZP251q4=;
 b=epAv4O5iq+Nfod40PmBGnaR3l6U6X6wvI3KWm9DHUDdNvquQRSSy2I9nNtvm2AN+bxamm6
 A70Dgxg1LceOxRdRWbiE3R96X2aWfNAp/CUEmosacKD+IBqMyOcVeATC17CqCNMQq7Ex1j
 WZwP4ypn6MEQuZmiWTRndFSkk7a0X2w=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-Vj63JLtPPeKn8v6ygpc7Wg-1; Thu, 09 Jan 2020 11:05:06 -0500
Received: by mail-wr1-f70.google.com with SMTP id f10so3058316wro.14
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:05:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KfRYv85TKcvAOdoeytsotoDBeN5NjVxxna+B8zLHPVA=;
 b=W2eTo3yunOT1JMgehvrvnzgUHRzS6HRrevw8vpZXXEE9feg2xSUb0BsbA9T4TYOUgu
 BXe5J3ttZlHG8KsUhT3gzUP9Sea1kRPPvUAWH93sOXX2zzlHqGFyHu2t5Apv3fVep8xa
 PgOiEhZJg+v8r2yriGZd7z+YMeAAteJPjBqvnL6QEAkoaqToVzIwsubZ4OHsZn8UFmGi
 an2e68IAj5FmEI9N2MVyuNJ5v6WqqmlttZrY6gPsnWOjK1ZSl4f7QWsu2y7yIXe8ahZ+
 g9ZCxNptx53lG1AkTtE/zEyEpqmisf0YT6b2UudQSLj7Kjnmp8FzF+KT0DriWW9UYlSk
 ivuA==
X-Gm-Message-State: APjAAAXQPDxU+ogkfxJ0I0UujAeFZStYVsQziaBzT/DKQqtYhTN2B3wE
 FVifBKu/w9GiXs4JHGjPobIEuNSSxi5p3qK3tx8D20NkuiGoT3YRMUnBR24Ouu48Er3hFbsONXl
 f7t5c66C97/4tMGyXyYYNOXniEiO7pDLm5Tc=
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr11478789wrp.111.1578585904835; 
 Thu, 09 Jan 2020 08:05:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqyPEXxUZBqvxm0pvveTyPQvZPZhyqo90SAmgLADCLxa+3+kAarj0a6aRfYAABQykiNl2ucrZw==
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr11478765wrp.111.1578585904635; 
 Thu, 09 Jan 2020 08:05:04 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id d16sm9285303wrg.27.2020.01.09.08.05.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:05:03 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 15/57] objtool: Support addition to set frame pointer
Date: Thu,  9 Jan 2020 16:02:18 +0000
Message-Id: <20200109160300.26150-16-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: Vj63JLtPPeKn8v6ygpc7Wg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080512_282655_8C4584B8 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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

Support updating the frame pointer by adding an immediate value to the
stack pointer in the CFA tracking code.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/check.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 19e96c4ad0a3..5b2539eaccba 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1394,6 +1394,18 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 				break;
 			}
 
+			if (op->src.reg == CFI_SP && cfa->base == CFI_SP &&
+			    op->dest.reg == CFI_BP &&
+			    regs[CFI_BP].base == CFI_CFA &&
+			    regs[CFI_BP].offset == -cfa->offset + op->src.offset) {
+
+				/* lea disp(%rsp), %rbp */
+				cfa->base = CFI_BP;
+				cfa->offset -= op->src.offset;
+				state->bp_scratch = false;
+				break;
+			}
+
 			if (op->src.reg == CFI_SP && cfa->base == CFI_SP) {
 
 				/* drap: lea disp(%rsp), %drap */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
