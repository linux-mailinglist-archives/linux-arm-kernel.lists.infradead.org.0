Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10EF1AEEDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMvs5GBWainXWGI/G1bnXKJwbgSIHTvjFWsxcLXBuG8=; b=h6voA8U/k4m3MM
	uQ/EKxObBaimHZzAaRD/VeyYF60Bt5ekHHRQ8UXHyUMhOSTyX+EG6jFT8UujsD7eI1oGvsy1JEsgE
	LCDCUzTRvKwqUlAztXVcotK4wX+w62MfNV/PsN44xD7sntpJ8Q3AXX3AGQtjdtBCMwrj3uECIDbwq
	Sy9wph8HA5wQ/Li2dA1geCZA4rYgf6SguW3oNQrkHdCH7gPTCRV8y4vo1aB47OkT6rdLVZr7pLH0F
	HOIsFW55nEK0mccpQi5FA4NJJvmG/CTdf1HbZyamuFQb4C3mpaC7d/a5ZUQYJS00GI1yxhhH3kGC7
	Se0+TKfmMiLaqKrEv+yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPodZ-0003iO-9v; Sat, 18 Apr 2020 14:40:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod0-0003Tk-E4
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so6361303wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=VFNSOPepRO8LhHnCsEQL9MS6dTL5kqLw8PsSoFR/IqpGp4vIfHp7KkZ1uMf4VH1+L+
 q4tVepabnjhTmwyy8YKwI+NH5WJ/fSdupt4yspBkUczo1nVyHM0KyeJILornWmV/r08Q
 ku6GjZ1rIZCZIv2j045VNzd4Yj4Ly9xUvNQNB1c+vowUVT85JsQkv6dII88jTS5Dt0ob
 4e6q88RkoiFpChLzn47Q53BS7ycM235VpgDCcDwyk28GCfraICXPGXiATmwNV8AjQA/a
 ajuI93Rr95PSIWe0pCDg/R45RTTkAeDFhbtezQGd8Yyeve4x9pGR8BagKsRYB7j/APch
 Exbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=X+u4eRYpFKI4LE8cuSEmwTYKTvUWE5/9as3n7Q9qbhzRcCZTQCobtmo3qXRs/evc2B
 9vlkGDRrAwytrnXyRSLnLm3LOCp7D5uQ3wqkWSVeBe1dCYNMGebud9pTpmiwbV+S4mSx
 uJf+rsSUOVTyiouKv/+RJ4ZsMDGXww1xF+lkmwOmgddpXLLmit66xH3ycIF78L72APJk
 7caZKBVZ9yR7IZuAI9jSU0B+WEF690Vy/HFtXi5V1PXbKsfmVJwCjKkGU8+WewRi4+NS
 AULVAq445jZSdr6hzcXh/7FmKR3Rid2ogFcqqU+bFRTvQBv6nv/cO9N1IdlvvniskF8q
 CaTA==
X-Gm-Message-State: AGi0PuaIuwwzHGgccyUDp49vj/cjHgBrZQB/Q+WR4W6EjjvA/FzCJ6wF
 HO2hYgYu5tbsJQ5gUSOVZFo=
X-Google-Smtp-Source: APiQypJuUCkFiPwqfns+vAkEj6LuyE3CN+CHAPCJKI9sRF2HzFfQQW4yZlrPaWVbC5uK0hNjDwIsnA==
X-Received: by 2002:a5d:500b:: with SMTP id e11mr9191160wrt.272.1587220768520; 
 Sat, 18 Apr 2020 07:39:28 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:27 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 1/7] ASoC: sun4i-i2s: Adjust LRCLK width
Date: Sat, 18 Apr 2020 16:39:17 +0200
Message-Id: <20200418143923.19608-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073930_470719_9D59149E 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpTb21lIGNvZGVjcyBz
dWNoIGFzIGkycyBiYXNlZCBIRE1JIGF1ZGlvIGFuZCB0aGUgUGluZTY0IERBQyByZXF1aXJlCmEg
ZGlmZmVyZW50IGFtb3VudCBvZiBiaXQgY2xvY2tzIHBlciBmcmFtZSB0aGFuIHdoYXQgaXMgY2Fs
Y3VsYXRlZApieSB0aGUgc2FtcGxlIHdpZHRoLiBVc2UgdGhlIHZhbHVlcyBvYnRhaW5lZCBieSB0
aGUgdGRtIHNsb3QgYmluZGluZ3MKdG8gYWRqdXN0IHRoZSBMUkNMSyB3aWR0aCBhY2NvcmRpbmds
eS4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0K
IHNvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIGIv
c291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCmluZGV4IGQwYThkNTgxMGMwYS4uNDE5OGE1NDEw
YmY5IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKKysrIGIvc291bmQv
c29jL3N1bnhpL3N1bjRpLWkycy5jCkBAIC00NTUsNiArNDU1LDkgQEAgc3RhdGljIGludCBzdW44
aV9pMnNfc2V0X2NoYW5fY2ZnKGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmkycywKIAkJcmV0dXJu
IC1FSU5WQUw7CiAJfQogCisJaWYgKGkycy0+c2xvdF93aWR0aCkKKwkJbHJja19wZXJpb2QgPSBp
MnMtPnNsb3Rfd2lkdGg7CisKIAlyZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJ
X0kyU19GTVQwX1JFRywKIAkJCSAgIFNVTjhJX0kyU19GTVQwX0xSQ0tfUEVSSU9EX01BU0ssCiAJ
CQkgICBTVU44SV9JMlNfRk1UMF9MUkNLX1BFUklPRChscmNrX3BlcmlvZCkpOwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
