Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5211EF427E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XQz1t7FkBNq99EM7Xuub0BMjuAjKwgiOuXwb0YuioE=; b=l1KUybmeslMwX5
	pqHLGNUdhnh1utYPEAu7hPDNNq6MbEoVeiz0ZtH3E3Qo41PYwCMGcFSBJlwVfVslhGAcqcJoPQewh
	UP0XEFPwGxXvbQF7t4ffTgA7Sih2X+09Old+7kL+Np7W7LQtgimd7ot/HmsNWcLb7yTJvyjBVj087
	xq0WvaiHp8kg7K8Y9lcy64GpiP4qwLl7Md/tVPXl/AA7UTmPSrJxcrRTM1QESQy069rLTh3j9/5dd
	sASN0KY8PFVyL4izMz7NH1R3v8/sUb+lyA1tmh4aj++Y10dQwtDm1lMXE6PCZHY05dmlwP/N3N1ZH
	H28rK8xI4ycRNJhui0EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzv1-0006aO-6o; Fri, 08 Nov 2019 08:46:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztb-0005Jx-RW
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id z26so5261443wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o1BbTTGdSFKY2gKlnZB56hqOxy66kjY0LgiclhRJDv0=;
 b=C1dyS/W0NAlPRWhXtx8M04st3Ji81RU6NVq5t+9WHq97OdhgLePwxDGl3Cruq/vZPd
 DhMB3BDpQ9jyil8oXeLUcnBbpOhWwv0qM4eJ9r1DWxSVAXweAgSmuhTKrKoIW/UjqRB8
 3iIe5/qXLUa7pNPl83YENVRzssGRhi4YaVcGmiVRgz7IBMqSAZAhijS+2p7GRQfbwuFk
 cl38aPIvbDXot2aNqlghO7DJoyJx3cor3VtsLCISWwWyl1arlRUPR4VUcxBxW+kfmzmf
 EV+V1LpkKB8obh/ddgEvSJ9UeBITSOTJAlg23+Lw9qzcOjOi6UY2ZlMHWRXoO0xS1W5/
 t7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o1BbTTGdSFKY2gKlnZB56hqOxy66kjY0LgiclhRJDv0=;
 b=RYDISj0aWb8Yr4ZJwnB+oITSiagrg0eoj2QmcnIpqxYDYG714mg646hH9pzyJ2me2H
 rwzOLkUfrk5hkTkE/XvmG1idbN58um32lfxGxgFKi4gtpXxgFoNSclkdxf0RAAE56rVU
 plzLyN2zJsybQDUoynfpKg/qVD8+IANx0dpz+yCWGA3WX/7DbB4xv99eCMBT8HyRy5LV
 9RPv/oWAhH6ytRLTFqr5DgPtDSyOGaw+sUKs9TfCMFCBJYJxgxUMVMoj8XiJR7mTG+UH
 ymBK9BV9RfmCsw57cHjpY2O9Ilu/HCnGQ2k6Dejs3MExZOhB+vRnbLI0wHJNNmd5NRJD
 3ZEA==
X-Gm-Message-State: APjAAAV83LySCOqGelNOsC/0JoqxFKVc2qYiLttjLmUPY/Z9CZQ672P8
 PAVzchWkJopsgyrg37Yx3yE=
X-Google-Smtp-Source: APXvYqxwBaxdGVAxdGG5OfhwPgDnJ/JZT/ybNdD4d2t31vpqkvY3E2BRG4vS88zywqSF6FNS60xWrQ==
X-Received: by 2002:a1c:740a:: with SMTP id p10mr7053319wmc.121.1573202729584; 
 Fri, 08 Nov 2019 00:45:29 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:29 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 4/7] pwm: sun4i: Add support to output source clock directly
Date: Fri,  8 Nov 2019 09:45:14 +0100
Message-Id: <20191108084517.21617-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004531_899016_51DCFDB9 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKUFdNIGNvcmUg
aGFzIGFuIG9wdGlvbiB0byBieXBhc3Mgd2hvbGUgbG9naWMgYW5kIG91dHB1dCB1bmNoYW5nZWQg
c291cmNlCmNsb2NrIGFzIFBXTSBvdXRwdXQuIFRoaXMgaXMgYWNoaWV2ZWQgYnkgZW5hYmxpbmcg
YnlwYXNzIGJpdC4KCk5vdGUgdGhhdCB3aGVuIGJ5cGFzcyBpcyBlbmFibGVkLCBubyBvdGhlciBz
ZXR0aW5nIGhhcyBhbnkgbWVhbmluZywgbm90CmV2ZW4gZW5hYmxlIGJpdC4KClRoaXMgbW9kZSBv
ZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRv
CnNlcnZlIGFzIGNsb2NrIHNvdXJjZSBmb3IgQUMyMDAgY2hpcCB3aGljaCBpcyBpbnRlZ3JhdGVk
IGludG8gc2FtZQpwYWNrYWdlIGFzIEg2IFNvQy4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3Jh
YmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggYTEwMDIyZDZjMGZkLi45Y2M5Mjhh
YjQ3YmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0zLDYgKzMsMTAgQEAKICAqIERyaXZlciBmb3IgQWxsd2lubmVy
IHN1bjRpIFB1bHNlIFdpZHRoIE1vZHVsYXRpb24gQ29udHJvbGxlcgogICoKICAqIENvcHlyaWdo
dCAoQykgMjAxNCBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAZnJlZS1lbGVj
dHJvbnMuY29tPgorICoKKyAqIExpbWl0YXRpb25zOgorICogLSBXaGVuIG91dHB1dGluZyB0aGUg
c291cmNlIGNsb2NrIGRpcmVjdGx5LCB0aGUgUFdNIGxvZ2ljIHdpbGwgYmUgYnlwYXNzZWQKKyAq
ICAgYW5kIHRoZSBjdXJyZW50bHkgcnVubmluZyBwZXJpb2QgaXMgbm90IGd1YXJhbnRlZWQgdG8g
YmUgY29tcGxldGVkCiAgKi8KIAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgpAQCAtNzMsNiAr
NzcsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHByZXNjYWxlcl90YWJsZVtdID0gewogCiBzdHJ1Y3Qg
c3VuNGlfcHdtX2RhdGEgewogCWJvb2wgaGFzX3ByZXNjYWxlcl9ieXBhc3M7CisJYm9vbCBoYXNf
ZGlyZWN0X21vZF9jbGtfb3V0cHV0OwogCXVuc2lnbmVkIGludCBucHdtOwogfTsKIApAQCAtMTE4
LDYgKzEyMywyMCBAQCBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21f
Y2hpcCAqY2hpcCwKIAogCXZhbCA9IHN1bjRpX3B3bV9yZWFkbChzdW40aV9wd20sIFBXTV9DVFJM
X1JFRyk7CiAKKwkvKgorCSAqIFBXTSBjaGFwdGVyIGluIEg2IG1hbnVhbCBoYXMgYSBkaWFncmFt
IHdoaWNoIGV4cGxhaW5zIHRoYXQgaWYgYnlwYXNzCisJICogYml0IGlzIHNldCwgbm8gb3RoZXIg
c2V0dGluZyBoYXMgYW55IG1lYW5pbmcuIEV2ZW4gbW9yZSwgZXhwZXJpbWVudAorCSAqIHByb3Zl
ZCB0aGF0IGFsc28gZW5hYmxlIGJpdCBpcyBpZ25vcmVkIGluIHRoaXMgY2FzZS4KKwkgKi8KKwlp
ZiAoKHZhbCAmIEJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKSkgJiYKKwkgICAgc3VuNGlf
cHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7CisJCXN0YXRlLT5wZXJpb2Qg
PSBESVZfUk9VTkRfVVBfVUxMKE5TRUNfUEVSX1NFQywgY2xrX3JhdGUpOworCQlzdGF0ZS0+ZHV0
eV9jeWNsZSA9IERJVl9ST1VORF9VUF9VTEwoc3RhdGUtPnBlcmlvZCwgMik7CisJCXN0YXRlLT5w
b2xhcml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7CisJCXN0YXRlLT5lbmFibGVkID0gdHJ1ZTsK
KwkJcmV0dXJuOworCX0KKwogCWlmICgoUFdNX1JFR19QUkVTQ0FMKHZhbCwgcHdtLT5od3B3bSkg
PT0gUFdNX1BSRVNDQUxfTUFTSykgJiYKIAkgICAgc3VuNGlfcHdtLT5kYXRhLT5oYXNfcHJlc2Nh
bGVyX2J5cGFzcykKIAkJcHJlc2NhbGVyID0gMTsKQEAgLTIwNCw2ICsyMjMsNyBAQCBzdGF0aWMg
aW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2
aWNlICpwd20sCiAJc3RydWN0IHN1bjRpX3B3bV9jaGlwICpzdW40aV9wd20gPSB0b19zdW40aV9w
d21fY2hpcChjaGlwKTsKIAlzdHJ1Y3QgcHdtX3N0YXRlIGNzdGF0ZTsKIAl1MzIgY3RybDsKKwli
b29sIGJ5cGFzcyA9IGZhbHNlOwogCWludCByZXQ7CiAJdW5zaWduZWQgaW50IGRlbGF5X3VzOwog
CXVuc2lnbmVkIGxvbmcgbm93OwpAQCAtMjE4LDkgKzIzOCwyNCBAQCBzdGF0aWMgaW50IHN1bjRp
X3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20s
CiAJCX0KIAl9CiAKKwkvKgorCSAqIEFsdGhvdWdoIGl0IHdvdWxkIG1ha2UgbXVjaCBtb3JlIHNl
bnNlIHRvIGNoZWNrIGZvciBieXBhc3MgaW4KKwkgKiBzdW40aV9wd21fY2FsY3VsYXRlKCksIHZh
bHVlIG9mIGJ5cGFzcyBiaXQgYWxzbyBkZXBlbmRzIG9uICJlbmFibGVkIi4KKwkgKi8KKwlpZiAo
c3RhdGUtPmVuYWJsZWQpIHsKKwkJdTMyIGNsa19yYXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3
bS0+Y2xrKTsKKwkJYnlwYXNzID0gKHN0YXRlLT5wZXJpb2QgKiBjbGtfcmF0ZSA+PSBOU0VDX1BF
Ul9TRUMpICYmCisJCQkgKHN0YXRlLT5wZXJpb2QgKiBjbGtfcmF0ZSA8IDIgKiBOU0VDX1BFUl9T
RUMpICYmCisJCQkgKHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgKiAyID49IE5TRUNfUEVS
X1NFQyk7CisJfQorCiAJc3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7CiAJY3RybCA9
IHN1bjRpX3B3bV9yZWFkbChzdW40aV9wd20sIFBXTV9DVFJMX1JFRyk7CiAKKwkvKiBXZSBjYW4g
c2tpcCBjYWxjdWxhdGlvbiBhbmQgYXBwbHkgcGFyYW1ldGVycyAqLworCWlmIChieXBhc3MgJiYg
c3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KQorCQlnb3RvIGJ5cGFz
c19tb2RlOworCiAJaWYgKChjc3RhdGUucGVyaW9kICE9IHN0YXRlLT5wZXJpb2QpIHx8CiAJICAg
IChjc3RhdGUuZHV0eV9jeWNsZSAhPSBzdGF0ZS0+ZHV0eV9jeWNsZSkpIHsKIAkJdTMyIHBlcmlv
ZCwgZHV0eSwgdmFsOwpAQCAtMjU4LDYgKzI5Myw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2Fw
cGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAkJY3Ry
bCB8PSBCSVRfQ0goUFdNX0FDVF9TVEFURSwgcHdtLT5od3B3bSk7CiAKIAljdHJsIHw9IEJJVF9D
SChQV01fQ0xLX0dBVElORywgcHdtLT5od3B3bSk7CisKIAlpZiAoc3RhdGUtPmVuYWJsZWQpIHsK
IAkJY3RybCB8PSBCSVRfQ0goUFdNX0VOLCBwd20tPmh3cHdtKTsKIAl9IGVsc2UgaWYgKCFzdW40
aV9wd20tPm5lZWRzX2RlbGF5W3B3bS0+aHdwd21dKSB7CkBAIC0yNjUsNiArMzAxLDE0IEBAIHN0
YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3
bV9kZXZpY2UgKnB3bSwKIAkJY3RybCAmPSB+QklUX0NIKFBXTV9DTEtfR0FUSU5HLCBwd20tPmh3
cHdtKTsKIAl9CiAKK2J5cGFzc19tb2RlOgorCWlmIChzdW40aV9wd20tPmRhdGEtPmhhc19kaXJl
Y3RfbW9kX2Nsa19vdXRwdXQpIHsKKwkJaWYgKGJ5cGFzcykKKwkJCWN0cmwgfD0gQklUX0NIKFBX
TV9CWVBBU1MsIHB3bS0+aHdwd20pOworCQllbHNlCisJCQljdHJsICY9IH5CSVRfQ0goUFdNX0JZ
UEFTUywgcHdtLT5od3B3bSk7CisJfQorCiAJc3VuNGlfcHdtX3dyaXRlbChzdW40aV9wd20sIGN0
cmwsIFBXTV9DVFJMX1JFRyk7CiAKIAlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2sp
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
