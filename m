Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FD5100353
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSlMm1VYrIdu5BhYwLsKQGhLA/Ih39oRouUk3VE3AvU=; b=YAENHRfl6PUebu
	I1tR9e/Qfi0wahi5QoWpCB36Ka+h+Yza4bRYSKnMguKY2gCKH0Xllg4cwy9R8uI5a5Hsc761TqPJl
	1bx2Afv6m7g016ZcugGqIzJyvk2Ai6gkht2V4p9bq+IQlbIYE1/RMHviL/jsvUqr0EgO/XWn1J04x
	g9nzpi/+5ts56sTW5Z122j/xt1s71Yjo82Wij51r8uMRECvts2Sl0lG0YbNivDKNX/MjSue/6aJt0
	HBLTXdAIYtYBdEXKwFykgtvAWh//+++18AjUUFDhudhVw9WUej/fyTZPFMFMJHqSdqo21+B2ZNkt/
	HKapkaPZ1AhkkUM4uMXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWemw-0007Wa-Rs; Mon, 18 Nov 2019 11:01:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWelv-0006dx-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:00:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id w9so18924892wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/r/rbSHnQ681j6w5Fd1xT+tCG0CKj+LRyHPCBVvmrlM=;
 b=axyw3CadnYKZZ/gPWsjDxs4XIRVAbwQA2BIPtCkbInP+P5tLbFpCU451G7RuR37Z9l
 ngNfWM+B2QlQT6ZFR4BjTiP5kgxgdwN3Fy2FBXubHDp3BVEgFsTV9E2yFVLgS3Dy5tY2
 mtozqqdqgWFfS7FhuwMK5zdEC7a13CXKFPr7KmRQ861zPsj4CmXlqCyT3+6sEkGiDGuM
 ZLS9Qcw35kxi4bErUZqf9Rl8lHF9jcdCQcO/mPP/rMfVUq3cQ/OhJ6GrlWCsqC0TQx5e
 +4THiAdRNt35MiDPE2SrPRjTHjJgbwI5HHkIEb9vrQ94w/xIk7hpEwWe5eObrAXytAD/
 PNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/r/rbSHnQ681j6w5Fd1xT+tCG0CKj+LRyHPCBVvmrlM=;
 b=GKKolLLIMbMMt9Pg9/5gYE/d/Xct2zcInTLIcMXoDVpqzGyeb7zyjL+c2noUkin70b
 EtxuI3rD9oxHNVFJGIGYF1pRPKN418hpSgjP0mMH+iq4IKirXbkxtnX/UPomPqeg8GAb
 cb9uaLcx/rx0n//ydwxYGW96MMnBSKkXDiMlf61i9f5A5m0UhQ6O0ItmbH3rOm5PXkwb
 dHzjMbWVU+IKHcunNJ0jGQWXfxTN71hKtveTLg0/cd1zGcFEd4EtddCv8OOhANY6OH9M
 9YhUmyFmRMZWL9SzogwEFniNijbADAq1E6lJqH1X9sf9sh3KDn5S1huAmSHs0KCbmI/m
 IWpA==
X-Gm-Message-State: APjAAAW48OMeC7F9gtdJDaDB9LHLW6c5Zg/dtUPJKthPy9jdRYo9frO0
 tavebm40WA90xxwWmx9g3EQ=
X-Google-Smtp-Source: APXvYqxEFAX5cEn1tc0TWYXeLTvWC45ER2bxKy0vHBbmoO46RYGcBJIFgShG/Z/M5rcmO7fKz2Repg==
X-Received: by 2002:adf:f005:: with SMTP id j5mr28478666wro.295.1574074840489; 
 Mon, 18 Nov 2019 03:00:40 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f67sm19873313wme.16.2019.11.18.03.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:00:40 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v6 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Mon, 18 Nov 2019 12:00:27 +0100
Message-Id: <20191118110034.19444-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118110034.19444-1-peron.clem@gmail.com>
References: <20191118110034.19444-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030043_426060_0259C21E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwpidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KCkV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00gc3Bl
Y2lmaWNzLgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVk
LW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiAuLi4v
YmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwgfCA0OCArKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWEx
MC1wd20ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lu
bmVyLHN1bjRpLWExMC1wd20ueWFtbAppbmRleCAwYWM1MmY4M2E1OGMuLjFiYWU0NDZmZWJiYiAx
MDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5u
ZXIsc3VuNGktYTEwLXB3bS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbApAQCAtMzAsMTMgKzMwLDUxIEBA
IHByb3BlcnRpZXM6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5l
cixzdW41MGktaDUtcHdtCiAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjVpLWExMy1w
d20KKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCiAKICAgcmVnOgogICAg
IG1heEl0ZW1zOiAxCiAKICAgY2xvY2tzOgorICAgIG1pbkl0ZW1zOiAxCisgICAgbWF4SXRlbXM6
IDIKKyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IE1vZHVsZSBDbG9jaworICAgICAg
LSBkZXNjcmlwdGlvbjogQnVzIENsb2NrCisKKyAgIyBFdmVuIHRob3VnaCBpdCBvbmx5IGFwcGxp
ZXMgdG8gc3Vic2NoZW1hcyB1bmRlciB0aGUgY29uZGl0aW9uYWxzLAorICAjIG5vdCBsaXN0aW5n
IHRoZW0gaGVyZSB3aWxsIHRyaWdnZXIgYSB3YXJuaW5nIGJlY2F1c2Ugb2YgdGhlCisgICMgYWRk
aXRpb25hbHNQcm9wZXJ0aWVzIHNldCB0byBmYWxzZS4KKyAgY2xvY2stbmFtZXM6IHRydWUKKwor
ICByZXNldHM6CiAgICAgbWF4SXRlbXM6IDEKIAorICBpZjoKKyAgICBwcm9wZXJ0aWVzOgorICAg
ICAgY29tcGF0aWJsZToKKyAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgY29uc3Q6IGFsbHdp
bm5lcixzdW41MGktaDYtcHdtCisKKyAgdGhlbjoKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xv
Y2tzOgorICAgICAgICBtYXhJdGVtczogMgorCisgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAg
aXRlbXM6CisgICAgICAgICAgLSBjb25zdDogbW9kCisgICAgICAgICAgLSBjb25zdDogYnVzCisK
KyAgICByZXF1aXJlZDoKKyAgICAgIC0gY2xvY2stbmFtZXMKKyAgICAgIC0gcmVzZXRzCisKKyAg
ZWxzZToKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xvY2tzOgorICAgICAgICBtYXhJdGVtczog
MQorCiByZXF1aXJlZDoKICAgLSAiI3B3bS1jZWxscyIKICAgLSBjb21wYXRpYmxlCkBAIC01NCw0
ICs5MiwxNCBAQCBleGFtcGxlczoKICAgICAgICAgI3B3bS1jZWxscyA9IDwzPjsKICAgICB9Owog
CisgIC0gfAorICAgIHB3bUAzMDBhMDAwIHsKKyAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjUwaS1oNi1wd20iOworICAgICAgcmVnID0gPDB4MDMwMGEwMDAgMHg0MDA+OworICAgICAg
Y2xvY2tzID0gPCZvc2MyNE0+LCA8JmNjdSBDTEtfQlVTX1BXTT47CisgICAgICBjbG9jay1uYW1l
cyA9ICJtb2QiLCAiYnVzIjsKKyAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfUFdNPjsKKyAg
ICAgICNwd20tY2VsbHMgPSA8Mz47CisgICAgfTsKKwogLi4uCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
