Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A0E105ACC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiPmhncopsa6cCenHPIjT3nbGA83ad0/5PDGlG7tfmg=; b=bsxW4sWhmHrPDO
	U7nAlOZvWi16mwnXf6nj/B9G+8/ZeppJWUWyNRQPJLv2huiT9ih4iQ+ZLLGcygyBk+XfpvfRr/QOM
	rICo8SXKU5eXzf4wgZm/HZ49SmIC2H9NC5iBqVAtgiL+TJD0K85z7oDrft5GhbE53L8VnVfmuwMeG
	ZDKvav2+Odeivuck3pCJDGjn2wmtx/gI/HmC9s4A+QK2LIH6skR/f9+dgycPDb+1nVIjr9/lceo8e
	GiRkO4AFyd2vokA4tfjC7tQnEJamlajo3MrXwj1oH4kIFZreIy6zypIzOB9G35xfSm8tYPQ+6Ew+U
	eWflBYBBLmOHIjTgDo4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsdO-0003dN-Fw; Thu, 21 Nov 2019 20:00:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbl-0001EW-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id g206so4846478wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dU0M2wH1Fq0Elrc60MLP4chXO/aXp+1AHKdZUUUJPtM=;
 b=IdESNjVeRmiunPsFcAugnrxh20+dxe5lv7kRSV64Wr2vGmZ0je2ZM/TJrM+tFfGKMF
 mDCvmkj42vs0Xiyq/1y2cPiuR4a1Ziz38eQlYiI/20+W6OmeOw6NhlulJef6CdauIdeh
 aG73Q+3g1xxbuY/91JcQYVIBdA9jPaz5p9IjcQjxsBqfzxFxJNAXbgcI0fUdOLkVjNE+
 TGQnhYdmtcNkluGaVawvSgO0UYUndTBhz0jBJqsuox5KWL0lyh58hxaHfsJK318BYNb4
 UAPqDfFB3sxKgOPo/BLrh0hAmIbaALLEyV3g8mmSP90cy9PEF/YPDgQ3ExopBThSDT16
 WouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dU0M2wH1Fq0Elrc60MLP4chXO/aXp+1AHKdZUUUJPtM=;
 b=WZ0d63ElUh1ItCvb79mEhdp/z3VFjvnQn4aDjqDQoyGdVxxEm9zc/Tf0KBR5U17OWt
 0FmmIv5/GCCEii8JaE6Y6FZf0fK3l3Dk2L+f9PIt/S0bb8m3dBGdOQhvrvZSdiXChu4M
 nVP/WN1+9NKB9g7DfMbbiCEQgJ1FwIKEAyuGvVRBHYl/W5H8EuNHedeJe8myyV5pIXAb
 H5OTRvYqFhE6ZhLXjuC9aElLHAB3azEQp/Pv7qotk46Cbp2yIZkVbdTMhmqqxKgtii6K
 I4BPou/oqFlf/SCtBptAC5MCLJds+g3T7kzy7spFVX7crsi3bkVbQDMzC3L3VbMQUOvk
 AJVA==
X-Gm-Message-State: APjAAAVY8x/T2aTzyUcXIyXV4C8oVXQMbwscFX5LDPasURVg4ufgPASC
 vjJ4EHzsfFcMLucNCOcs65U=
X-Google-Smtp-Source: APXvYqwSaWX6MHEm+ebVVhdIFdmPfawuvHcc0h5bDCG8msobgwlDpoOWMdWS0YAVdAGdSBe6r5t9lA==
X-Received: by 2002:a1c:410a:: with SMTP id o10mr12354084wma.117.1574366355519; 
 Thu, 21 Nov 2019 11:59:15 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:15 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 5/6] pwm: sun4i: Add support to output source clock directly
Date: Thu, 21 Nov 2019 20:59:01 +0100
Message-Id: <20191121195902.6906-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115917_550280_31D13985 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
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
IDQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDFmYTIw
NTc0MTlmYi4uMGZlOWM2ODBkNmQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGku
YworKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwpAQCAtMyw2ICszLDEwIEBACiAgKiBEcml2
ZXIgZm9yIEFsbHdpbm5lciBzdW40aSBQdWxzZSBXaWR0aCBNb2R1bGF0aW9uIENvbnRyb2xsZXIK
ICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTQgQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5i
ZWxsb25pQGZyZWUtZWxlY3Ryb25zLmNvbT4KKyAqCisgKiBMaW1pdGF0aW9uczoKKyAqIC0gV2hl
biBvdXRwdXRpbmcgdGhlIHNvdXJjZSBjbG9jayBkaXJlY3RseSwgdGhlIFBXTSBsb2dpYyB3aWxs
IGJlIGJ5cGFzc2VkCisgKiAgIGFuZCB0aGUgY3VycmVudGx5IHJ1bm5pbmcgcGVyaW9kIGlzIG5v
dCBndWFyYW50ZWVkIHRvIGJlIGNvbXBsZXRlZAogICovCiAKICNpbmNsdWRlIDxsaW51eC9iaXRv
cHMuaD4KQEAgLTczLDYgKzc3LDcgQEAgc3RhdGljIGNvbnN0IHUzMiBwcmVzY2FsZXJfdGFibGVb
XSA9IHsKIAogc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKIAlib29sIGhhc19wcmVzY2FsZXJfYnlw
YXNzOworCWJvb2wgaGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dDsKIAl1bnNpZ25lZCBpbnQgbnB3
bTsKIH07CiAKQEAgLTExOCw2ICsxMjMsMjAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dldF9z
dGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCiAKIAl2YWwgPSBzdW40aV9wd21fcmVhZGwoc3Vu
NGlfcHdtLCBQV01fQ1RSTF9SRUcpOwogCisJLyoKKwkgKiBQV00gY2hhcHRlciBpbiBINiBtYW51
YWwgaGFzIGEgZGlhZ3JhbSB3aGljaCBleHBsYWlucyB0aGF0IGlmIGJ5cGFzcworCSAqIGJpdCBp
cyBzZXQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVy
aW1lbnQKKwkgKiBwcm92ZWQgdGhhdCBhbHNvIGVuYWJsZSBiaXQgaXMgaWdub3JlZCBpbiB0aGlz
IGNhc2UuCisJICovCisJaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSkp
ICYmCisJICAgIHN1bjRpX3B3bS0+ZGF0YS0+aGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dCkgewor
CQlzdGF0ZS0+cGVyaW9kID0gRElWX1JPVU5EX1VQX1VMTChOU0VDX1BFUl9TRUMsIGNsa19yYXRl
KTsKKwkJc3RhdGUtPmR1dHlfY3ljbGUgPSBESVZfUk9VTkRfVVBfVUxMKHN0YXRlLT5wZXJpb2Qs
IDIpOworCQlzdGF0ZS0+cG9sYXJpdHkgPSBQV01fUE9MQVJJVFlfTk9STUFMOworCQlzdGF0ZS0+
ZW5hYmxlZCA9IHRydWU7CisJCXJldHVybjsKKwl9CisKIAlpZiAoKFBXTV9SRUdfUFJFU0NBTCh2
YWwsIHB3bS0+aHdwd20pID09IFBXTV9QUkVTQ0FMX01BU0spICYmCiAJICAgIHN1bjRpX3B3bS0+
ZGF0YS0+aGFzX3ByZXNjYWxlcl9ieXBhc3MpCiAJCXByZXNjYWxlciA9IDE7CkBAIC0xNDksMTMg
KzE2OCwyNCBAQCBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hp
cCAqY2hpcCwKIAogc3RhdGljIGludCBzdW40aV9wd21fY2FsY3VsYXRlKHN0cnVjdCBzdW40aV9w
d21fY2hpcCAqc3VuNGlfcHdtLAogCQkJICAgICAgIGNvbnN0IHN0cnVjdCBwd21fc3RhdGUgKnN0
YXRlLAotCQkJICAgICAgIHUzMiAqZHR5LCB1MzIgKnByZCwgdW5zaWduZWQgaW50ICpwcnNjbHIp
CisJCQkgICAgICAgdTMyICpkdHksIHUzMiAqcHJkLCB1bnNpZ25lZCBpbnQgKnByc2NsciwKKwkJ
CSAgICAgICBib29sICpieXBhc3MpCiB7CiAJdTY0IGNsa19yYXRlLCBkaXYgPSAwOwogCXVuc2ln
bmVkIGludCBwdmFsLCBwcmVzY2FsZXIgPSAwOwogCiAJY2xrX3JhdGUgPSBjbGtfZ2V0X3JhdGUo
c3VuNGlfcHdtLT5jbGspOwogCisJKmJ5cGFzcyA9IHN1bjRpX3B3bS0+ZGF0YS0+aGFzX2RpcmVj
dF9tb2RfY2xrX291dHB1dCAmJgorCQkgIHN0YXRlLT5lbmFibGVkICYmCisJCSAgKHN0YXRlLT5w
ZXJpb2QgKiBjbGtfcmF0ZSA+PSBOU0VDX1BFUl9TRUMpICYmCisJCSAgKHN0YXRlLT5wZXJpb2Qg
KiBjbGtfcmF0ZSA8IDIgKiBOU0VDX1BFUl9TRUMpICYmCisJCSAgKHN0YXRlLT5kdXR5X2N5Y2xl
ICogY2xrX3JhdGUgKiAyID49IE5TRUNfUEVSX1NFQyk7CisKKwkvKiBTa2lwIGNhbGN1bGF0aW9u
IG9mIG90aGVyIHBhcmFtZXRlcnMgaWYgd2UgYnlwYXNzIHRoZW0gKi8KKwlpZiAoKmJ5cGFzcykK
KwkJcmV0dXJuIDA7CisKIAlpZiAoc3VuNGlfcHdtLT5kYXRhLT5oYXNfcHJlc2NhbGVyX2J5cGFz
cykgewogCQkvKiBGaXJzdCwgdGVzdCB3aXRob3V0IGFueSBwcmVzY2FsZXIgd2hlbiBhdmFpbGFi
bGUgKi8KIAkJcHJlc2NhbGVyID0gUFdNX1BSRVNDQUxfTUFTSzsKQEAgLTIwNiw2ICsyMzYsNyBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVj
dCBwd21fZGV2aWNlICpwd20sCiAJaW50IHJldDsKIAl1bnNpZ25lZCBpbnQgZGVsYXlfdXMsIHBy
ZXNjYWxlcjsKIAl1bnNpZ25lZCBsb25nIG5vdzsKKwlib29sIGJ5cGFzczsKIAogCXB3bV9nZXRf
c3RhdGUocHdtLCAmY3N0YXRlKTsKIApAQCAtMjIwLDcgKzI1MSw4IEBAIHN0YXRpYyBpbnQgc3Vu
NGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3
bSwKIAlzcGluX2xvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKIAljdHJsID0gc3VuNGlfcHdt
X3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKIAotCXJldCA9IHN1bjRpX3B3bV9jYWxj
dWxhdGUoc3VuNGlfcHdtLCBzdGF0ZSwgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIpOworCXJl
dCA9IHN1bjRpX3B3bV9jYWxjdWxhdGUoc3VuNGlfcHdtLCBzdGF0ZSwgJmR1dHksICZwZXJpb2Qs
ICZwcmVzY2FsZXIsCisJCQkJICAmYnlwYXNzKTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIoY2hp
cC0+ZGV2LCAicGVyaW9kIGV4Y2VlZHMgdGhlIG1heGltdW0gdmFsdWVcbiIpOwogCQlzcGluX3Vu
bG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwpAQCAtMjI5LDYgKzI2MSwxOCBAQCBzdGF0aWMg
aW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2
aWNlICpwd20sCiAJCXJldHVybiByZXQ7CiAJfQogCisJaWYgKHN1bjRpX3B3bS0+ZGF0YS0+aGFz
X2RpcmVjdF9tb2RfY2xrX291dHB1dCkgeworCQlpZiAoYnlwYXNzKSB7CisJCQljdHJsIHw9IEJJ
VF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKTsKKwkJCS8qIFdlIGNhbiBza2lwIG90aGVyIHBh
cmFtZXRlciAqLworCQkJc3VuNGlfcHdtX3dyaXRlbChzdW40aV9wd20sIGN0cmwsIFBXTV9DVFJM
X1JFRyk7CisJCQlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOworCQkJcmV0dXJu
IDA7CisJCX0gZWxzZSB7CisJCQljdHJsICY9IH5CSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3
bSk7CisJCX0KKwl9CisKIAlpZiAoUFdNX1JFR19QUkVTQ0FMKGN0cmwsIHB3bS0+aHdwd20pICE9
IHByZXNjYWxlcikgewogCQkvKiBQcmVzY2FsZXIgY2hhbmdlZCwgdGhlIGNsb2NrIGhhcyB0byBi
ZSBnYXRlZCAqLwogCQljdHJsICY9IH5CSVRfQ0goUFdNX0NMS19HQVRJTkcsIHB3bS0+aHdwd20p
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
