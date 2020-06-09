Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09821F39C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImoHv9Tqs+LpZfiE9m6zdOZZeOi64WWf999xLfdoHKg=; b=oRSto8oGpmrT8J
	DW7UI6GfVYD0X6ovZbpKEy6jogtYNFQ/p4z+pVDBPNfIAYxrcamiK6WapHGgAdDASSMFsZFFeDXF1
	0s2gNc6iIGiMnb0xYG4H/8Kn3WP5ERBwEIo/tW6nGiMxABa+EIngwK9fDM0kdAldo3zKvjXah6rdr
	HhG992Z6HvcD4eFhaMVZccFD3buwLD1QJjzOlFc3LqE9A+kRowAPHiWh+yPLI5xROKo0hjwPocXSq
	7RRzTAz3vQ3fhSkJ6LAXOPLuFdqPY6ByVsNIXXLHdQfFHe3lPzODZPiMjpkusSTWBCqXcFV7UJ6Gu
	vign5wfxXZ9zp9bmXZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicTi-0002wy-Il; Tue, 09 Jun 2020 11:31:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicT1-0002Va-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:30:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so2755306wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bH/+slbZjQBA3mYlSc2q+05536qmkTvC1HCFI8ZmnIE=;
 b=FTaZexr38TGn3YldlZdOFciSIxmG1MkcO6rPSsRRK4OfWjR7a9gl0znAiEgoyR3yqb
 oTZdf4NyeLjorwZbZS+BzsoRhdFSkVyOE1jmVDzeRY0z+NiigUPSAB+vJonQsdyZhbJW
 m5pkDmKAQQTdWGczJtXE97kyNt8D2kTqi6e5kHFoxu7jciVPisI/tGL3iBgJLTlKD3/O
 nqrY1zAnQYjnvsPZkU2pP3U24LuTyyUpnX8fVPmclfVgMGNY0QN5LjKnsVK+3qY7UGRc
 cXGMUDfjqXuvWfc0gsiLHkriW9FNNFLjR4vkpcXbfLNi9JPj0GkkAMiY+JG596M8lnv/
 T6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bH/+slbZjQBA3mYlSc2q+05536qmkTvC1HCFI8ZmnIE=;
 b=pR1akvFfZXoLImH8kMis3n6nfJhDj13/2RVVxnt7W9N5CYRol0rx/vhlsM/eTrs3sD
 loYESi00gur2oxCXfkFNp0Wgz8ndal3RbYjK4tWm2YAFlwukEHHCP6SQJFup6lmYxCXL
 A0ACrNSH+Np2geNG5VbtkKh84TcNMD6Kh6+GPhVL//BasokgTqhddKgggCICmjmN/jIk
 fmJXf6D/seay8Oa5FGF9+7bBn6fSNNAMhR8+43rETs8ctLYwl9IzMf5PZPJWKifPpA+j
 YJFLWxbUn147IUOG8dbXExMyudTCZZCJx0SGyny0LEhZ4FeJpWsJAyvao3CNUqfh3r13
 lEuQ==
X-Gm-Message-State: AOAM530pzf1HH4aTaUs7aTeZq5vY9DbNS7kuF5Qu72S/8SJ6FFrDOLyX
 yY31FMFvxnzFGzP/7+9CzHE=
X-Google-Smtp-Source: ABdhPJyb/putWPrIRSQ+MFJ+GR8f+CvA9NmKmGqs0c02IlxuemZcWgOwbIIuRScgxih6gY0m3eHiJw==
X-Received: by 2002:a7b:c204:: with SMTP id x4mr3508031wmi.22.1591702254431;
 Tue, 09 Jun 2020 04:30:54 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id l17sm2609877wmi.16.2020.06.09.04.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 04:30:53 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
Date: Tue,  9 Jun 2020 13:30:49 +0200
Message-Id: <20200609113049.4035426-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609113049.4035426-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043055_755553_88E91792 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN1cHBvcnQgZm9yIHRoZSBnYXRlZCBjbG9jayBjb250cm9sbGVycyBmb3VuZCBvbiB0aGUg
QkNNNjMxOC4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFy
aUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYyB8IDQ0
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9iY20vY2xrLWJjbTYzeHgtZ2F0ZS5j
IGIvZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYwppbmRleCA5OGU4ODQ5NTdkYjgu
LjEyMzk0YzA5MWQxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdh
dGUuYworKysgYi9kcml2ZXJzL2Nsay9iY20vY2xrLWJjbTYzeHgtZ2F0ZS5jCkBAIC00MCw2ICs0
MCw0OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19iY202M3h4X3RhYmxlX2VudHJ5IGJjbTMz
NjhfY2xvY2tzW10gPSB7CiAJeyB9LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfYmNt
NjN4eF90YWJsZV9lbnRyeSBiY202MzE4X2Nsb2Nrc1tdID0geworCXsgLm5hbWUgPSAiYWRzbF9h
c2IiLCAuYml0ID0gMCwgfSwKKwl7IC5uYW1lID0gInVzYl9hc2IiLCAuYml0ID0gMSwgfSwKKwl7
IC5uYW1lID0gIm1pcHNfYXNiIiwgLmJpdCA9IDIsIH0sCisJeyAubmFtZSA9ICJwY2llX2FzYiIs
IC5iaXQgPSAzLCB9LAorCXsgLm5hbWUgPSAicGh5bWlwc19hc2IiLCAuYml0ID0gNCwgfSwKKwl7
IC5uYW1lID0gInJvYm9zd19hc2IiLCAuYml0ID0gNSwgfSwKKwl7IC5uYW1lID0gInNhcl9hc2Ii
LCAuYml0ID0gNiwgfSwKKwl7IC5uYW1lID0gInNkcl9hc2IiLCAuYml0ID0gNywgfSwKKwl7IC5u
YW1lID0gInN3cmVnX2FzYiIsIC5iaXQgPSA4LCB9LAorCXsgLm5hbWUgPSAicGVyaXBoX2FzYiIs
IC5iaXQgPSA5LCB9LAorCXsgLm5hbWUgPSAiY3B1YnVzMTYwIiwgLmJpdCA9IDEwLCB9LAorCXsg
Lm5hbWUgPSAiYWRzbCIsIC5iaXQgPSAxMSwgfSwKKwl7IC5uYW1lID0gInNhcjEyNCIsIC5iaXQg
PSAxMiwgfSwKKwl7IC5uYW1lID0gIm1pcHMiLCAuYml0ID0gMTMsIC5mbGFncyA9IENMS19JU19D
UklUSUNBTCwgfSwKKwl7IC5uYW1lID0gInBjaWUiLCAuYml0ID0gMTQsIH0sCisJeyAubmFtZSA9
ICJyb2Jvc3cyNTAiLCAuYml0ID0gMTYsIH0sCisJeyAubmFtZSA9ICJyb2Jvc3cwMjUiLCAuYml0
ID0gMTcsIH0sCisJeyAubmFtZSA9ICJzZHIiLCAuYml0ID0gMTksIC5mbGFncyA9IENMS19JU19D
UklUSUNBTCwgfSwKKwl7IC5uYW1lID0gInVzYiIsIC5iaXQgPSAyMCwgfSwKKwl7IC5uYW1lID0g
Imhzc3BpIiwgLmJpdCA9IDI1LCB9LAorCXsgLm5hbWUgPSAicGNpZTI1IiwgLmJpdCA9IDI3LCB9
LAorCXsgLm5hbWUgPSAicGh5bWlwcyIsIC5iaXQgPSAyOCwgfSwKKwl7IC5uYW1lID0gImFmZSIs
IC5iaXQgPSAyOSwgfSwKKwl7IC5uYW1lID0gInFwcm9jIiwgLmJpdCA9IDMwLCB9LAorCXsgfSwK
K307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX2JjbTYzeHhfdGFibGVfZW50cnkgYmNtNjMx
OF91YnVzX2Nsb2Nrc1tdID0geworCXsgLm5hbWUgPSAiYWRzbC11YnVzIiwgLmJpdCA9IDAsIH0s
CisJeyAubmFtZSA9ICJhcmItdWJ1cyIsIC5iaXQgPSAxLCAuZmxhZ3MgPSBDTEtfSVNfQ1JJVElD
QUwsIH0sCisJeyAubmFtZSA9ICJtaXBzLXVidXMiLCAuYml0ID0gMiwgLmZsYWdzID0gQ0xLX0lT
X0NSSVRJQ0FMLCB9LAorCXsgLm5hbWUgPSAicGNpZS11YnVzIiwgLmJpdCA9IDMsIH0sCisJeyAu
bmFtZSA9ICJwZXJpcGgtdWJ1cyIsIC5iaXQgPSA0LCAuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUws
IH0sCisJeyAubmFtZSA9ICJwaHltaXBzLXVidXMiLCAuYml0ID0gNSwgfSwKKwl7IC5uYW1lID0g
InJvYm9zdy11YnVzIiwgLmJpdCA9IDYsIH0sCisJeyAubmFtZSA9ICJzYXItdWJ1cyIsIC5iaXQg
PSA3LCB9LAorCXsgLm5hbWUgPSAic2RyLXVidXMiLCAuYml0ID0gOCwgfSwKKwl7IC5uYW1lID0g
InVzYi11YnVzIiwgLmJpdCA9IDksIH0sCisJeyB9LAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVj
dCBjbGtfYmNtNjN4eF90YWJsZV9lbnRyeSBiY202MzI4X2Nsb2Nrc1tdID0gewogCXsgLm5hbWUg
PSAicGh5X21pcHMiLCAuYml0ID0gMCwgfSwKIAl7IC5uYW1lID0gImFkc2xfcXByb2MiLCAuYml0
ID0gMSwgfSwKQEAgLTIxNyw2ICsyNTksOCBAQCBzdGF0aWMgaW50IGNsa19iY202M3h4X3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBjbGtfYmNtNjN4eF9kdF9pZHNbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImJy
Y20sYmNtMzM2OC1jbG9ja3MiLCAuZGF0YSA9ICZiY20zMzY4X2Nsb2NrcywgfSwKKwl7IC5jb21w
YXRpYmxlID0gImJyY20sYmNtNjMxOC1jbG9ja3MiLCAuZGF0YSA9ICZiY202MzE4X2Nsb2Nrcywg
fSwKKwl7IC5jb21wYXRpYmxlID0gImJyY20sYmNtNjMxOC11YnVzLWNsb2NrcyIsIC5kYXRhID0g
JmJjbTYzMThfdWJ1c19jbG9ja3MsIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjgt
Y2xvY2tzIiwgLmRhdGEgPSAmYmNtNjMyOF9jbG9ja3MsIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJi
cmNtLGJjbTYzNTgtY2xvY2tzIiwgLmRhdGEgPSAmYmNtNjM1OF9jbG9ja3MsIH0sCiAJeyAuY29t
cGF0aWJsZSA9ICJicmNtLGJjbTYzNjItY2xvY2tzIiwgLmRhdGEgPSAmYmNtNjM2Ml9jbG9ja3Ms
IH0sCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
