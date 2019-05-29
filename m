Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FE12E124
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwzVvr3JgUoWCWqyZ7JwDq6No9NEqDIBdfS13stj7Pk=; b=cS2p4iCs81nRhf
	u5iGyPt2aA1uYm7r+DMayYbYW5jc6cZ3HtxPVodK54D+lOjhBc+N8wcRo1Xb7wQBkJOYaxs7mFqYa
	3WfRNH6u0Ych81et8vurMWHSfCGwWJ24WDd1fsBMbwGkn+0yowr7NtvLOmPOh6mWazdg1Iw6H9Y2O
	OmRk0N3HTWf/fvN0S14CPdoNeRcXQHLY9Lsipgu7S8eaS/mSYKIHoiS7Ezb0oPPs4WkFzTk5tsJyx
	lKvdCgTOQRo8HUCME7dzbSSxMuYKr/chxkK5mLTZt5b/tlwb1v5y0XS6YuBXNwJmLSnNrZBh6AKTu
	sQN1LMyN3kMupLukMfTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0Zr-0001bl-SV; Wed, 29 May 2019 15:33:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0Zl-0001bP-9g
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:33:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id 15so1914609wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5W+VfwPfqMxuifytQsznT6sIYsecd+CfEiYRucHLtVw=;
 b=Fpnbn0HNja35ikeRV50pnLDukXTvZ8yfSsbNwOK438ie6IyOvAPt5PvjCLxjq8MQPH
 4ZYtaLQWPnexoXzWYmYAf+LDrMCMeB5hFGjSuNA1v4sKE9YbyBTGBXGGefd3ZITHm5F8
 WrUISOoGcPku4R+wXfliDsxAVY3ZoCWnIuothVksR0yPYWp2Kw0hPCjGMEMjG8Y90UWz
 fKWp4ZcWytL9/hIN5j+k0m7IgW+kIk+5VtEpQF92UFU2NJ1/lYs2Iwp6hRADpITIGMsB
 9tjZ4JVWthW+Z2sjBQlKmp1JruLrcs0ok5Tb9xk/ZKaAiBAGyWlPgfaqmKXlDIzyDKAP
 ZsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=5W+VfwPfqMxuifytQsznT6sIYsecd+CfEiYRucHLtVw=;
 b=Ow6OK4ArCcQSaWTHRkuDGMHHJJjhXozIJgu+88Qfrqx42bLL2U+w4nJzFAIb9HZzrJ
 Jh29XHgSWy6afMn0JkToG1WgjeLy+Ze335+IRcJNji8Ukp4uRmigQJqZiJ0ph6kL7PJ/
 u4y+JrG6BGJS7tfo7eMj6FjUfJ7fRdrXbqKag5Ub+W6Ew5NNzx3krOhMFGqkPxCypKdj
 WrX1hDtXFzcm0KDrawuoakgP3/BT+pMx3nUweLslMbO/XODwib/HIKpwZ3E5GACcmGoJ
 o5McAybiFfMc1F9WAxzLRjvldAUAiZjlR/aNCeKcNnSwkZGRzaNvtEKL4fHXwh8kdSUF
 3StA==
X-Gm-Message-State: APjAAAU+P5L5FHA26DEY4oWUlUPUWExqLZJZ1tFP62hkGKEC9M/NQdQi
 JEXlRuxyY1PzJCenl5m1/qE=
X-Google-Smtp-Source: APXvYqwDY7MrR1G0Ebmbd/oGtnz/upe08lmQ74Ra2glmRchate4lPg8V3/LoNaUcg9HKRwxBBfDugQ==
X-Received: by 2002:a7b:c8cb:: with SMTP id f11mr2194459wml.54.1559143991698; 
 Wed, 29 May 2019 08:33:11 -0700 (PDT)
Received: from cizrna.lan ([109.72.12.156])
 by smtp.gmail.com with ESMTPSA id c14sm19105489wrt.45.2019.05.29.08.33.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 08:33:10 -0700 (PDT)
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: Add GPU operating points for H6
Date: Wed, 29 May 2019 17:32:55 +0200
Message-Id: <20190529153255.40038-1-tomeu.vizoso@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_083313_343825_2CD3EB25 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEdQVSBkcml2ZXIgbmVlZHMgdGhlbSB0byBjaGFuZ2UgdGhlIGNsb2NrIGZyZXF1ZW5jeSBh
bmQgcmVndWxhdG9yCnZvbHRhZ2UgZGVwZW5kaW5nIG9uIHRoZSBsb2FkLgoKU2lnbmVkLW9mZi1i
eTogVG9tZXUgVml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KQ2M6IENsw6ltZW50
IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CgotLS0KCkZlZWwgZnJlZSB0byBwaWNrIHVw
IHRoaXMgcGF0Y2ggaWYgeW91IGFyZSBnb2luZyB0byBrZWVwIHB1c2hpbmcgdGhpcwpzZXJpZXMg
Zm9yd2FyZC4KClRoYW5rcywKClRvbWV1Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kgfCA2NiArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDY2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi5kdHNpCmluZGV4IDZhYWQwNjA5NWM0MC4uZGVjZjdiNTZlMmRmIDEwMDY0NAotLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtMTU3LDYgKzE1Nyw3
MSBAQAogCQkJYWxsd2lubmVyLHNyYW0gPSA8JnZlX3NyYW0gMT47CiAJCX07CiAKKwkJZ3B1X29w
cF90YWJsZTogb3BwLXRhYmxlMiB7CisJCQljb21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMt
djIiOworCisJCQlvcHAwMCB7CisJCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw3NTYwMDAwMDA+Owor
CQkJCW9wcC1taWNyb3ZvbHQgPSA8MTA0MDAwMD47CisJCQl9OworCQkJb3BwMDEgeworCQkJCW9w
cC1oeiA9IC9iaXRzLyA2NCA8NjI0MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDk1MDAw
MD47CisJCQl9OworCQkJb3BwMDIgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NTc2MDAwMDAw
PjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDkzMDAwMD47CisJCQl9OworCQkJb3BwMDMgeworCQkJ
CW9wcC1oeiA9IC9iaXRzLyA2NCA8NTQwMDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDkx
MDAwMD47CisJCQl9OworCQkJb3BwMDQgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NTA0MDAw
MDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDg5MDAwMD47CisJCQl9OworCQkJb3BwMDUgewor
CQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDU2MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0g
PDg3MDAwMD47CisJCQl9OworCQkJb3BwMDYgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDMy
MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDg2MDAwMD47CisJCQl9OworCQkJb3BwMDcg
eworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDIwMDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0
ID0gPDg1MDAwMD47CisJCQl9OworCQkJb3BwMDggeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
NDA4MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDg0MDAwMD47CisJCQl9OworCQkJb3Bw
MDkgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8Mzg0MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92
b2x0ID0gPDgzMDAwMD47CisJCQl9OworCQkJb3BwMTAgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8MzYwMDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDgyMDAwMD47CisJCQl9OworCQkJ
b3BwMTEgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MzM2MDAwMDAwPjsKKwkJCQlvcHAtbWlj
cm92b2x0ID0gPDgxMDAwMD47CisJCQl9OworCQkJb3BwMTIgeworCQkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8MzEyMDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDgxMDAwMD47CisJCQl9Owor
CQkJb3BwMTMgeworCQkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MjY0MDAwMDAwPjsKKwkJCQlvcHAt
bWljcm92b2x0ID0gPDgxMDAwMD47CisJCQl9OworCQkJb3BwMTQgeworCQkJCW9wcC1oeiA9IC9i
aXRzLyA2NCA8MjE2MDAwMDAwPjsKKwkJCQlvcHAtbWljcm92b2x0ID0gPDgxMDAwMD47CisJCQl9
OworCQl9OworCiAJCWdwdTogZ3B1QDE4MDAwMDAgewogCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5u
ZXIsc3VuNTBpLWg2LW1hbGkiLAogCQkJCSAgICAgImFybSxtYWxpLXQ3MjAiOwpAQCAtMTY4LDYg
KzIzMyw3IEBACiAJCQljbG9ja3MgPSA8JmNjdSBDTEtfR1BVPiwgPCZjY3UgQ0xLX0JVU19HUFU+
OwogCQkJY2xvY2stbmFtZXMgPSAiY29yZSIsICJidXMiOwogCQkJcmVzZXRzID0gPCZjY3UgUlNU
X0JVU19HUFU+OworCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmZ3B1X29wcF90YWJsZT47CiAJ
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
