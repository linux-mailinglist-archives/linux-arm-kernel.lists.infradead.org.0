Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04865C969
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 08:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=STpzgsca49mbmj5sfbRd9aAdSW+twMwW2NBwB/7lQV0=; b=U4me5oqhwtfQMU
	yn3pB7GfhOEjuJ5F8R5QoulPmF/3TyMVlA63zH858t+cgaA63JhSTmhVdoPPoQsC4qawsbKP+4soF
	/D780c97eofS9n86d2ghU/+nZ+cJM8OTSR+ArIAggsvIa1gI1qYZzAWMsilC6z69D19uecNXjSZBd
	j2vssqOuyBiQVsKczffJrnzocLe0rZqWt0r6Vq4HPmv95emZJYiWB3Se1WYN+SN7DCRD6FWbUYXOQ
	BJp5lFKdWKu5UzFCRQmCdJKrJ8k5JaOMu0ip7e/UMJ0GwGlBE+kt0RvUmQfSRmLFCfPhzLJfPRpVw
	I0sR61xDmo3bLBqO9kcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiCQP-0001Jz-If; Tue, 02 Jul 2019 06:37:57 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiCQ4-0001Ie-St; Tue, 02 Jul 2019 06:37:42 +0000
Received: by mail-pf1-x431.google.com with SMTP id y15so7757548pfn.5;
 Mon, 01 Jul 2019 23:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ZhvKZPBHtqlWYn5aQ+LHumK996S+XHbvPSVeWsaVn+Q=;
 b=d+uuMuAVs0xdXgQBW0Ib5RbKb2idX1BA+YdEAA6m21/+x6g59r0ikdCAKdl66g46i9
 4YxijYOFF+jdPv2VzrHyxnWrSlmOybtYgEncUTDIuTkQ7WPFjdOI9v6L5mPsUcqYSg9F
 VzGl2t07CQSj1caH4WFL7KsFjFmr72eLdWQQF1HcuzPiQ+5fmTfJmdBOq4khC0vq9IKE
 rygM+XCNw/pC4pmNrP6r/QX6BvuC0HAIFMySrLAS43FFe8Z2Dj6gsHOPMpeNj9t6nF+8
 iiZSQd4ehI3+aqU5GH7AxzzEIJV3QL0dxu3TKOaF2Druv9dSUmkcLO8NeG4/1kdcPm3i
 ThVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ZhvKZPBHtqlWYn5aQ+LHumK996S+XHbvPSVeWsaVn+Q=;
 b=J4Zc+f55o0zQ+7YR7Ul11PvotUph2vezjk+i0W255V/BVzdxHTpOiyTiyJ8y0uIAZj
 n6HE7qyKTqA6WveIMRRXgopNXJucm3dNSOcbclVUO9OATtguU91mglrJB4XJFIPd/osx
 rWKJ9Tf0xxJfYjE9sjX5IcPLAjOccoriiooqGdrQpAQaOC6vgQgprrOGe0viDMhZGQBS
 EKW23dSoLJZpt6ZQ1i6qAHdm9hF3O+b1uOAxQYqU0eha7eC2HPsZPKzBkGXoUG1ioIjh
 Jm4kDOni5MUuvZlhA1XnBuF+xlgfJcGlEtU1X9Tspt5UmhHRCHyta8ALYvSGHgf8InDT
 pfZA==
X-Gm-Message-State: APjAAAUsRalL3aZKpCpdX+wmys6Z8sqoFvyu3+dUcaJf8pvKNPXtDyR9
 0J5thpyZr/qaHSwFvN7WvCE=
X-Google-Smtp-Source: APXvYqyBNH7kgsggP7hgvoNIjLAazXPBrAU3O7/+xZOUiiwKVm7RrMKFq8ppt8SOdiDLBRImLjWPoA==
X-Received: by 2002:a63:c14c:: with SMTP id p12mr29124787pgi.138.1562049455708; 
 Mon, 01 Jul 2019 23:37:35 -0700 (PDT)
Received: from ?IPv6:2601:641:c100:83a0:50b6:82f3:beba:8d5e?
 ([2601:641:c100:83a0:50b6:82f3:beba:8d5e])
 by smtp.gmail.com with ESMTPSA id i36sm12697781pgl.70.2019.07.01.23.37.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 23:37:35 -0700 (PDT)
X-Mozilla-News-Host: news://gmane.comp.lib.uclibc.buildroot:119
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
From: Tinchu <tinchu.nitrpr@gmail.com>
Subject: ARM setting up secure mode vector table
Message-ID: <4fb7db36-bce6-ea42-7dd8-91d71857697c@gmail.com>
Date: Mon, 1 Jul 2019 23:37:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_233736_932017_3BDB52CE 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tinchu.nitrpr[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-rpi-kernel@lists.infradead.org, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Apologies in advance for extra CC list.

I'm trying to hack linux kernel (v4.14 LTS) for Raspberry PI 3 (ARM32 build), to
enable early boot code switch to secure mode using SMC #0 instruction and return
(and later tinker with some secure mode registers).

While this may generally not be possible, it seems it just might for this platform
(i can do this on a baremetal library, but not kernel proper. Apparently the
current BCM firmware sets up secure, non secure  and monitor vector base addresses
to 0x00000000 before calling into zImage and all mem is writable for non secure
mode. See the gory details in ultibo pascal library code comments [1]. The trick
is to copy a vector table with SMC vector to address 0. I'm suspecting this not
working for linux as having to write the code in true position independent way.

Here's a rough hack to arch/arm/kernel/hyp-stub.S
I'm simply hacking in a vector entry into existing hyp vector table and then
copying it over to 0 (I've tried using a completely different table, which fails
in same way).

+	.macro sec_vec_install_run
+
+		mrc p15, #0, r4, c12, c0, #0
+		ldr r5, .LSecureVectorTable
+
+		/* 8 bytes of vector */
+		ldmia r5!, {r6-r7}
+		stmia r4!, {r6-r7}
+
+		ldmia r5!, {r6-r7}
+		stmia r4!, {r6-r7}
+
+		ldmia r5!, {r6-r7}
+		stmia r4!, {r6-r7}
+
+		ldmia r5!, {r6-r7}
+		stmia r4!, {r6-r7}
+
+		/* 1 word for secondary table */
+		ldmia r5!, {r6-r7}
+		stmia r4!, {r6-r7}
+
+		/*Clean Data Cache MVA */
+		mov r5, #0
+		mcr p15, #0, r5, cr7, cr10, #1
+
+		dsb
+
+		//Invalidate Instruction Cache
+		mov r5, #0
+		mcr p15, #0, r5, cr7, cr5, #0
+
+		//Flush Branch Target Cache
+		mov r5, #0
+		mcr p15, #0, r5, cr7, cr5, #6
+
+		dsb
+		isb
+
+		.arch_extension sec
+		smc #0
+
+	.endm


ENTRY(__hyp_stub_install_secondary)

+	sec_vec_install_run
...

+smc_hdlr:
+	/* do stuff later */
+	ret	lr
+ENDPROC(smc_hdlr)

.align 5
ENTRY(__hyp_stub_vectors)
__hyp_stub_reset:	W(b)	.
__hyp_stub_und:		W(b)	.
+ __hyp_stub_svc:	ldr pc, .Lhdlr2
- __hyp_stub_svc:	W(b)	.

...

+.Lhdlr2:
+	.word smc_hdlr
+.LSecureVectorTable:
+	.long  __hyp_stub_vectors


Can someone please tell me what part of code is wrong. Pretty much similar code
works in baremetal setup.

TIA

[1] https://github.com/ultibohub/Core/blob/master/source/rtl/ultibo/core/bootrpi2.pas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
