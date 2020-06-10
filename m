Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B15C1F5692
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pYJomw7qXF760rQPLGtFhMhBRMRz2wkumvt+dR+nv0=; b=tE+BFTo26QqB7F
	WYsFVsmh3yWtxblLa7adx4acU5HhpURlzc7BcjUP2QtpDqrWN4OqO8DgRDCuREB3AXtHZgLfWQIfh
	ZXoWfqwUlDogk5D2/bP7HKPxLLckKqVpRHuXbY866vhbyQbSCdaZ9BNhZyvdl6hQnD+ABRFBwpcmx
	eRuVzzXfY3BzcIETq6porPhroYreh4ZLlBvM5EmaWGcIj9pFFK5zCWR2azlfonwjVM41atCs1OxcC
	trTbzsoXmi/AMMk19boZfbmwgzwiKxTz6SQ37vjkhLKN0PWzDdBG8/LYwPyHYftka7fO5vQ5VhGpx
	SOborDbz5uX7UuHYQgvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1QG-0002Vd-At; Wed, 10 Jun 2020 14:09:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Pe-0001yN-16
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:09:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id q25so1982005wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 07:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KzxDdWHYnpz+UV20TRPo/jYL7PQqEKAVp/cR0HQ2iGA=;
 b=aCneJ/RgvE7ihulcdPqsMvrXm4lRmQ0b6MBM2yEfoGrn0Wr4oP3iSo0ieYIbqWFogO
 YTEDUe6Jzmc3+qkKGsxIxUI2ftwbf1vTEWc495pmxYeMkvaXma4wS/pjSYuzdwv+kjrG
 1W/HsX3m7irH1GtjpZnCWN2vh1MoEoTiq/00FXoA1hK3bSTTONrvJm6IjApu03Mvpn/O
 2fdl1gCLBDvbg8Yc+ddQpKALchwBMeZ93OA5svylHZBnJUdsAlmxCvy9dRj9Twc/xz19
 V/4MhD2EnazLxlwq/N0sItFpo5uPZIszIDpMFG8aiVEY4zeNVgaloI92+gUhhsdyc5VY
 Fbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KzxDdWHYnpz+UV20TRPo/jYL7PQqEKAVp/cR0HQ2iGA=;
 b=G4OiDpkoRMnUAB4MkWpqBh1kbEbowQa8W6b6vD2t7azqDgPOhqJIrxRAvUbSDOKjV/
 T5Ivdesw0B+cwuhu8v0A5/3LhAySg1FrWzso32s2Tz4Qo11sH38oEr4GUg658wvcbJdr
 mmQh84tNzKQOlEkWhb6z/Lhx49s8dMiFDI5dDTTWgUBuOtHLWkItR/6fWv+QwiEhPvAP
 aRE7eesFZvZLVNjwPxQvaW089Y6mqfGEUOeqOMlEeVkiDPP6h2o6WtgX+DhIlA4toIOM
 JgJMtkupUL5A3gBCIXfuGO18WSWpuagjdU4VoED6rbbqRrpPPJ7TfTn+7Q8oOHhFnU7o
 +AXw==
X-Gm-Message-State: AOAM5310ym9BYYMka7pqcVZaZ8EoW1LTC/R1arjLMmjjRlyitnreapAQ
 jidSXMKplar6L+R0tZFIqXk=
X-Google-Smtp-Source: ABdhPJwjA1lzuZpA0iQqJVOU45YWAyA1FnmOrVMGhFR8zeqt5kx6TcJYW/D0bGDI7jZypR2TyuydqA==
X-Received: by 2002:a1c:cc0d:: with SMTP id h13mr3674074wmb.168.1591798144457; 
 Wed, 10 Jun 2020 07:09:04 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id r5sm8565883wrq.0.2020.06.10.07.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 07:09:04 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] clk: bcm63xx-gate: add BCM6318 support
Date: Wed, 10 Jun 2020 16:08:58 +0200
Message-Id: <20200610140858.207329-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610140858.207329-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200610140858.207329-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_070906_069433_0F02DF49 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
aUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdt
YWlsLmNvbT4KLS0tCiB2MjogY29ycmVjdCBuYW1lcyBmb3Igc2FyMTI1IGFuZCB1c2JkCgogZHJp
dmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYyB8IDQ0ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2Nsay9iY20vY2xrLWJjbTYzeHgtZ2F0ZS5jIGIvZHJpdmVycy9jbGsvYmNtL2Ns
ay1iY202M3h4LWdhdGUuYwppbmRleCA5OGU4ODQ5NTdkYjguLmZjZTY3NDZjYzYwNyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYworKysgYi9kcml2ZXJzL2Ns
ay9iY20vY2xrLWJjbTYzeHgtZ2F0ZS5jCkBAIC00MCw2ICs0MCw0OCBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGNsa19iY202M3h4X3RhYmxlX2VudHJ5IGJjbTMzNjhfY2xvY2tzW10gPSB7CiAJeyB9
LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfYmNtNjN4eF90YWJsZV9lbnRyeSBiY202
MzE4X2Nsb2Nrc1tdID0geworCXsgLm5hbWUgPSAiYWRzbF9hc2IiLCAuYml0ID0gMCwgfSwKKwl7
IC5uYW1lID0gInVzYl9hc2IiLCAuYml0ID0gMSwgfSwKKwl7IC5uYW1lID0gIm1pcHNfYXNiIiwg
LmJpdCA9IDIsIH0sCisJeyAubmFtZSA9ICJwY2llX2FzYiIsIC5iaXQgPSAzLCB9LAorCXsgLm5h
bWUgPSAicGh5bWlwc19hc2IiLCAuYml0ID0gNCwgfSwKKwl7IC5uYW1lID0gInJvYm9zd19hc2Ii
LCAuYml0ID0gNSwgfSwKKwl7IC5uYW1lID0gInNhcl9hc2IiLCAuYml0ID0gNiwgfSwKKwl7IC5u
YW1lID0gInNkcl9hc2IiLCAuYml0ID0gNywgfSwKKwl7IC5uYW1lID0gInN3cmVnX2FzYiIsIC5i
aXQgPSA4LCB9LAorCXsgLm5hbWUgPSAicGVyaXBoX2FzYiIsIC5iaXQgPSA5LCB9LAorCXsgLm5h
bWUgPSAiY3B1YnVzMTYwIiwgLmJpdCA9IDEwLCB9LAorCXsgLm5hbWUgPSAiYWRzbCIsIC5iaXQg
PSAxMSwgfSwKKwl7IC5uYW1lID0gInNhcjEyNSIsIC5iaXQgPSAxMiwgfSwKKwl7IC5uYW1lID0g
Im1pcHMiLCAuYml0ID0gMTMsIC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKKwl7IC5uYW1l
ID0gInBjaWUiLCAuYml0ID0gMTQsIH0sCisJeyAubmFtZSA9ICJyb2Jvc3cyNTAiLCAuYml0ID0g
MTYsIH0sCisJeyAubmFtZSA9ICJyb2Jvc3cwMjUiLCAuYml0ID0gMTcsIH0sCisJeyAubmFtZSA9
ICJzZHIiLCAuYml0ID0gMTksIC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKKwl7IC5uYW1l
ID0gInVzYmQiLCAuYml0ID0gMjAsIH0sCisJeyAubmFtZSA9ICJoc3NwaSIsIC5iaXQgPSAyNSwg
fSwKKwl7IC5uYW1lID0gInBjaWUyNSIsIC5iaXQgPSAyNywgfSwKKwl7IC5uYW1lID0gInBoeW1p
cHMiLCAuYml0ID0gMjgsIH0sCisJeyAubmFtZSA9ICJhZmUiLCAuYml0ID0gMjksIH0sCisJeyAu
bmFtZSA9ICJxcHJvYyIsIC5iaXQgPSAzMCwgfSwKKwl7IH0sCit9OworCitzdGF0aWMgY29uc3Qg
c3RydWN0IGNsa19iY202M3h4X3RhYmxlX2VudHJ5IGJjbTYzMThfdWJ1c19jbG9ja3NbXSA9IHsK
Kwl7IC5uYW1lID0gImFkc2wtdWJ1cyIsIC5iaXQgPSAwLCB9LAorCXsgLm5hbWUgPSAiYXJiLXVi
dXMiLCAuYml0ID0gMSwgLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLCB9LAorCXsgLm5hbWUgPSAi
bWlwcy11YnVzIiwgLmJpdCA9IDIsIC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKKwl7IC5u
YW1lID0gInBjaWUtdWJ1cyIsIC5iaXQgPSAzLCB9LAorCXsgLm5hbWUgPSAicGVyaXBoLXVidXMi
LCAuYml0ID0gNCwgLmZsYWdzID0gQ0xLX0lTX0NSSVRJQ0FMLCB9LAorCXsgLm5hbWUgPSAicGh5
bWlwcy11YnVzIiwgLmJpdCA9IDUsIH0sCisJeyAubmFtZSA9ICJyb2Jvc3ctdWJ1cyIsIC5iaXQg
PSA2LCB9LAorCXsgLm5hbWUgPSAic2FyLXVidXMiLCAuYml0ID0gNywgfSwKKwl7IC5uYW1lID0g
InNkci11YnVzIiwgLmJpdCA9IDgsIH0sCisJeyAubmFtZSA9ICJ1c2ItdWJ1cyIsIC5iaXQgPSA5
LCB9LAorCXsgfSwKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX2JjbTYzeHhfdGFibGVf
ZW50cnkgYmNtNjMyOF9jbG9ja3NbXSA9IHsKIAl7IC5uYW1lID0gInBoeV9taXBzIiwgLmJpdCA9
IDAsIH0sCiAJeyAubmFtZSA9ICJhZHNsX3Fwcm9jIiwgLmJpdCA9IDEsIH0sCkBAIC0yMTcsNiAr
MjU5LDggQEAgc3RhdGljIGludCBjbGtfYmNtNjN4eF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgY2xrX2JjbTYz
eHhfZHRfaWRzW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTMzNjgtY2xvY2tzIiwg
LmRhdGEgPSAmYmNtMzM2OF9jbG9ja3MsIH0sCisJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTYz
MTgtY2xvY2tzIiwgLmRhdGEgPSAmYmNtNjMxOF9jbG9ja3MsIH0sCisJeyAuY29tcGF0aWJsZSA9
ICJicmNtLGJjbTYzMTgtdWJ1cy1jbG9ja3MiLCAuZGF0YSA9ICZiY202MzE4X3VidXNfY2xvY2tz
LCB9LAogCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY202MzI4LWNsb2NrcyIsIC5kYXRhID0gJmJj
bTYzMjhfY2xvY2tzLCB9LAogCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY202MzU4LWNsb2NrcyIs
IC5kYXRhID0gJmJjbTYzNThfY2xvY2tzLCB9LAogCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY202
MzYyLWNsb2NrcyIsIC5kYXRhID0gJmJjbTYzNjJfY2xvY2tzLCB9LAotLSAKMi4yNi4yCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
