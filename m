Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A34135DE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oFYADSbb8kC+0j3algdgjAq9/vbur+wqd4gRDYxirc=; b=hLHD18u/bO4Rg3
	tK5f0y52A6JfqwNCcdf15wumvRHHXBrBbVJTyZu1TkrTgipQPLWt8FHfZzIY6AqsLKUy391NNyYLn
	wAyu7tDoQ5JWls4WUqqYIDbuPqBDW9mrPy/B2DbxeEc/akx4HmswgPUI0xK8Ct1XDWsHaF/FtaSja
	k+32twIkZQmv/MaS3wfzE7bPdGPQ9Bwt7uWKkCprElv8fX/P1w1NUGKIe6tJSxiObgtv/cSk7w7oT
	bhS4USXtfyk0ux9TXY/YbY8iC7Lhci/r4/uzhgZmxmFXb9oQ3QcdduE4xAEx0AnbKSzNZImPw3W5I
	8nriFZq6RXxjzEjItXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaRK-0007DZ-8p; Thu, 09 Jan 2020 16:13:42 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaKP-00083F-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lff3/TR6Gb5NqDs05d1xwkpfdI5PSaFFzDQEvi96bk0=;
 b=f86zNbuftjnQ5oPhOj5L4DMnvRdzfrfJ0WqP4XAr2qzXADxmt47oafjW0njFnbDPNlCrfA
 zg4XbNKMuEdYjprqD9X/l1CzliE6OZqOTMg3tlUEgHeCel1AIwfXwh0pd/V/HVuVgiEXMJ
 1C7u0pWQFNTn9zeymP6UAvc+7deYXxM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-6IxzOp-7MhqiRXpXkx24ZQ-1; Thu, 09 Jan 2020 11:06:27 -0500
Received: by mail-wr1-f69.google.com with SMTP id f15so3077491wrr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:06:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tp6JL9rGP8VcGeIdUkesp1xLP6ts4YGw1IAU9COITC4=;
 b=kEucIgWkzTd8sO5wmHSXR9uEWAmwTP2VGwIh+ssK2cmSj0uVrKpKkoUVEcsuW4yxp1
 ilV3aNpEDp5LZw0KOUa0u/uNDDKPeyL90pSBsItWLV9eRWO2jARJA6E6IMqbpOMxmGLS
 0kiXki7EPonGf33kmyzux65iWLDpvVNOjcqfbaYTI2dQzIpK8oDSbM+tRU1c0kFYQwBh
 CHfoqNlhNbXvAvjqwMcBKwzycLsLa8V3WPq7xk+7KgQpPGUjOASWLOyUIAmt5Jb0JPOK
 hGDUEEhbmWxpsTHX2G9AULaccCf5xPf1FX+d2Rd+3rCOxBxyiJ0gh1I3obWpbPdKjU5Q
 51SA==
X-Gm-Message-State: APjAAAW0vclqf32ne22wG9vKNB9Kz4pntTzcBI5laSlsstfsoaS5Jv10
 UBWi/twNjzh1eLhJHy58xTMdSQhE9rQi7q/7XCdQwkIsU93INiEeaPX8ruiH7QtQPeEx6zzMkHD
 s0szlYSQD8rpfreE9wmxGH3G9pRX9n5Cuius=
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr5990741wml.55.1578585986754; 
 Thu, 09 Jan 2020 08:06:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqxEYx+b+ZCp2ZXGZSAYjmTHkSxr4PiMHPsV7FrExWj8/adU6yZ5L8AF6L4WgU01bYY7ltzeEg==
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr5990707wml.55.1578585986501; 
 Thu, 09 Jan 2020 08:06:26 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e18sm8643101wrr.95.2020.01.09.08.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:06:25 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 29/57] objtool: arm64: Decode branch to register instruction
Date: Thu,  9 Jan 2020 16:02:32 +0000
Message-Id: <20200109160300.26150-30-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 6IxzOp-7MhqiRXpXkx24ZQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080633_509339_337D2EB7 
X-CRM114-Status: GOOD (  11.36  )
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

Decode instructions producing jumps in the execution flow, taking the
value of their operand register as the target address.

Return instructions are just branch to register instruction with
the link register (x31) as implicit operand.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/arch/arm64/decode.c             | 150 ++++++++++++++++++
 .../objtool/arch/arm64/include/insn_decode.h  |   3 +
 2 files changed, 153 insertions(+)

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 7986ded8b622..bf9334451b40 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -444,6 +444,11 @@ static struct aarch64_insn_decoder br_sys_decoder[] = {
 		.value = 0b0011000000000000000000,
 		.decode_func = arm_decode_br_tst_imm,
 	},
+	{
+		.mask = 0b1111000000000000000000,
+		.value = 0b1101000000000000000000,
+		.decode_func = arm_decode_br_uncond_reg,
+	},
 };
 
 int arm_decode_br_sys(u32 instr, enum insn_type *type,
@@ -654,3 +659,148 @@ int arm_decode_br_tst_imm(u32 instr, enum insn_type *type,
 	*type = INSN_JUMP_CONDITIONAL;
 	return 0;
 }
+
+static struct aarch64_insn_decoder ret_decoder[] = {
+	/*
+	 * RET, RETAA, RETAB
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0010111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111111111111111,
+		.value = 0b0010111110000101111111111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111111111111111,
+		.value = 0b0010111110000111111111111,
+		.decode_func = NULL,
+	},
+};
+
+static struct aarch64_insn_decoder br_decoder[] = {
+	/*
+	 * BR, BRAA, BRAAZ, BRAB, BRABZ
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000100000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0000111110000110000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1000111110000100000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1000111110000110000000000,
+		.decode_func = NULL,
+	},
+};
+
+#define INSN_DRPS_FIELD		0b0101111110000001111100000
+#define INSN_DRPS_MASK		0b1111111111111111111111111
+
+static struct aarch64_insn_decoder ct_sw_decoder[] = {
+	/*
+	 * ERET, ERETAA, ERETAB
+	 */
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000001111100000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000101111111111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = INSN_DRPS_MASK,
+		.value = 0b0100111110000111111111111,
+		.decode_func = NULL,
+	},
+};
+
+static struct aarch64_insn_decoder call_decoder[] = {
+	/*
+	 * BLR, BLRAA, BLRAAZ, BLRAB, BLRABZ
+	 */
+	{
+		.mask = 0b1111111111111110000011111,
+		.value =  0b0001111110000000000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000011111,
+		.value = 0b0001111110000100000011111,
+		.decode_func = NULL,
+	},
+	{
+		0b1111111111111110000011111,
+		0b0001111110000110000011111,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1001111110000100000000000,
+		.decode_func = NULL,
+	},
+	{
+		.mask = 0b1111111111111110000000000,
+		.value = 0b1001111110000110000000000,
+		.decode_func = NULL,
+	},
+};
+
+int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list)
+{
+	u32 decode_field = 0;
+	int i = 0;
+
+	decode_field = instr & ONES(25);
+	*type = 0;
+	for (i = 0; i < ARRAY_SIZE(br_decoder); i++) {
+		if ((decode_field & br_decoder[i].mask) == br_decoder[i].value)
+			*type = INSN_JUMP_DYNAMIC;
+	}
+	for (i = 0; i < ARRAY_SIZE(call_decoder); i++) {
+		if ((decode_field & call_decoder[i].value) ==
+		    call_decoder[i].value)
+			*type = INSN_CALL_DYNAMIC;
+	}
+	for (i = 0; i < ARRAY_SIZE(ret_decoder); i++) {
+		if ((decode_field & ret_decoder[i].mask) ==
+		    ret_decoder[i].value)
+			*type = INSN_RETURN;
+	}
+	for (i = 0; i < ARRAY_SIZE(ct_sw_decoder); i++) {
+		if ((decode_field & ct_sw_decoder[i].mask) ==
+		    ct_sw_decoder[i].value)
+			*type = INSN_CONTEXT_SWITCH;
+	}
+	if ((decode_field & INSN_DRPS_MASK) == INSN_DRPS_FIELD)
+		*type = INSN_OTHER;
+	if (*type == 0)
+		return arm_decode_unknown(instr, type, immediate, ops_list);
+	return 0;
+}
+
+#undef INSN_DRPS_FIELD
+#undef INSN_DRPS_MASK
diff --git a/tools/objtool/arch/arm64/include/insn_decode.h b/tools/objtool/arch/arm64/include/insn_decode.h
index ceb80a58c548..6e600f408bea 100644
--- a/tools/objtool/arch/arm64/include/insn_decode.h
+++ b/tools/objtool/arch/arm64/include/insn_decode.h
@@ -83,4 +83,7 @@ int arm_decode_br_tst_imm(u32 instr, enum insn_type *type,
 int arm_decode_br_cond_imm(u32 instr, enum insn_type *type,
 			   unsigned long *immediate,
 			   struct list_head *ops_list);
+int arm_decode_br_uncond_reg(u32 instr, enum insn_type *type,
+			     unsigned long *immediate,
+			     struct list_head *ops_list);
 #endif /* _ARM_INSN_DECODE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
