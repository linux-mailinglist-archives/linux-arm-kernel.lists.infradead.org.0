Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630186FA0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cjFHT0sxCpyZwvYJpFHW/kRLsWYEaagRo+PPvtM/2DU=; b=ceG4HjnT7Gp970
	C3VPDzNjZSE6AKNPn8aeKz37AaWt2JlbHN7YN5kB3Tc4FFXLmV4e/qxd3Q3J0jo5OWaJX4dzBt4hj
	B+CWDXoUUvuR3fh5Nlul67aTqZvhhLNdrrI9H4Hi9AhR5zELkKJWf9pVJU6arEeYuHGwy50WNc6x8
	mBTRwMYjvLDDUCNITVl7gNeLNQwDmhtVGpek3cQAyPCAjwia/V6IdXw5H9wHeMUaLOpramnscLEio
	bJiy9wBG6CzUu/sAaG1kI9a097P40yaNT65IzcQmtn/A4krAorop3S3OovYyWxOPWUizKB/fWuVAL
	DHxUCYl6/OcYVckGEFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSUJ-00037R-Ry; Mon, 22 Jul 2019 07:12:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSU3-00036l-Sd
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:11:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so16919979pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 00:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e1pJmXf06oFMwCzMyXmo4V3Hcs9L90I0Lgp7Zs+lizs=;
 b=iAh0Z3QDrCqnhE6s5INTogxHKD1RMM0Afq5gQ9G5TTIv+84InCYsEJwIsWDmMzciYL
 kF+ABGPCiz7nv6hIoX8J8Nmk2Ia2Pmn47cXlHbRFq4lon6dXVUeqycjg29Y1cV2zs7Ot
 RjhwlEu0RliMS34cgKQSSQJTCZNet7811kRlvigJITVWiaii2cRdvxMqF3cx2axLKWx8
 XF/EDjGBzXO0TaAucl3/mhya7x+4yNTW0HgmTGRfH9cHY3VPPTI49syz9CI1bbZ509m0
 Zx4Hmg5zt4+boXTsyw14Nlq2iT+xb1E52Cju9XpqVQRUnK9aBiesTv8j6Ga+lU+6qYdY
 uS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e1pJmXf06oFMwCzMyXmo4V3Hcs9L90I0Lgp7Zs+lizs=;
 b=B+vW1rsH46Sifx/SXC7hV4Fb8CewcovBj573PBjkfWxiSJ/D6mWTMh7fagBZqWtEqO
 ScYGRRoIVcdTEw7YQcsV+fYZe8+rLB2vpgB17nJr35SvJS5tUvlrNcf7uRg+k3HNTIRQ
 PdoFq0EDCKwy+eFALqSixKWrVoD/SqQ6wtcxnryNMjrlAxLmhKksRU2PHvJGgp1/EH5Z
 cD5y0H8xfUfnzZhDL4sYW11bkIKwnwHTIT8X4Ci85XlHiBXHQkdgEFVGp6mC2hMILfCL
 FvAEcCeGKbsYm5jyvA0yGpQp18v/7BEBwEj2Ii5EQTtqePcaEe0mzc8ETPPeMXMWShCK
 XrNg==
X-Gm-Message-State: APjAAAVJrVyr1/XuXiJ5niVx5yUqqB061vKYeP4/F01FI5C/+gVy6Qn2
 5XmVNzNdxZ93Dxy0BH0lV7x5hb/z
X-Google-Smtp-Source: APXvYqw90pms2WbCzTCZEmaN/6pRv51JhveW4MUeNKwghaamFFptL7ODl0b6Urb5d753rcgiiBSEZQ==
X-Received: by 2002:a65:6546:: with SMTP id a6mr15364250pgw.220.1563779502459; 
 Mon, 22 Jul 2019 00:11:42 -0700 (PDT)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id q69sm53738861pjb.0.2019.07.22.00.11.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 00:11:41 -0700 (PDT)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: check stmfd instruction using right shift
Date: Mon, 22 Jul 2019 15:11:22 +0800
Message-Id: <20190722071122.22434-1-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_001143_949584_3DA1954F 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>,
 Lvqiang Huang <lvqiang.huang@unisoc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lvqiang Huang <Lvqiang.Huang@unisoc.com>

In the commit ef41b5c92498 ("ARM: make kernel oops easier to read"),
-               .word   0xe92d0000 >> 10        @ stmfd sp!, {}
+               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
then the shift need to change to 11.

Signed-off-by: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
Signed-off-by: Chunyan Zhang <zhang.lyra@gmail.com>
---
 arch/arm/lib/backtrace.S |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 7d7952e..926851b 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -70,7 +70,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 
 1003:		ldr	r2, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
 		ldr	r3, .Ldsi+4		@ adjust saved 'pc' back one
-		teq	r3, r2, lsr #10		@ instruction
+		teq	r3, r2, lsr #11		@ instruction
 		subne	r0, sv_pc, #4		@ allow for mov
 		subeq	r0, sv_pc, #8		@ allow for mov + stmia
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
