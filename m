Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D8F108460
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZUAh5ehzkWuIR8d5aCwR/18XhtIX7lNPqZThR7cOlI=; b=AzXdp5vBjikjzq
	V9obBBxm+0JjsyirGnoPfbHY0bVzzdbHqJfxsJiUAelgeUsKeXsVtDUWW+oFvHOPLdyyXZia8U/NR
	/Zv/6UygeCHyqM+QUO0p0/YWOTLJpQ9Jzy3mKElitvZ4E3bEtX+TcgNE6IJnP6rTCKKFJ6B+Bj8Fy
	NYHrDJGTGy7Vbi1LSbiymiI7SgOnPFi2il6tO3kI7xgWJW4N6EDAFNo8CEj12r+W7IL0JiTlV9xnF
	5rixqpXMN9EyJt7YImI+JO3GOli2xhLr3EIo4M1ObT7GSYjKSjo32HyMvyYKbqux4S+KlhZTQAOBJ
	Yn6M+0pdGAaPlzQ2C0CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYvjR-0006zd-Q4; Sun, 24 Nov 2019 17:31:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvi7-0005PX-CY
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id 4so11361519wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cYsxEdpSqsCpJgRGtsBvxG3DA2QGQ1mItmXFyJ8ZZGg=;
 b=kkUrmLRkmIfdWLL6w/h0QyoF7udOjF3phgyUsR+YWArdacOGLGdCniDOksWCVoZFSy
 z6yU7bDpx1uEdjUt8IvXO6g3OUdA2zdV4YEJzkLsuobQljI032YhhdHOl69Txf/OSjLY
 1FwOk7zQt1gV9mYfE5zUmTQfGnUWB0A8VgYrJfj6h7AzyRzbDg5B7Js4Ez8PCWZ1rZUp
 Bn1H8ZCv3x3q9TPisf87WZhjQUxsYJuwya7coKvvE3mMOPM/SptkOQOy9qFHYZEdOXcL
 XPjMc/f2tbWRGDCl9RTWr/7qmDal2bfHqZLCiV11/RzjwFAf9nr6hHuyNPc0FYb5joLa
 Oigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cYsxEdpSqsCpJgRGtsBvxG3DA2QGQ1mItmXFyJ8ZZGg=;
 b=DXa9RF+QBU/MrQfzlevY7PjnRSzfeG2QreaOq4Vnq2k/V3trZZVQxJ+n3IGK1e4xgj
 Bk7UKZu+MqcM2i7UItCWuiwzA3JKbzk2oPOp0/QlVko1I92MiGK6b+tPa2zVVcDBMt9+
 zAW85xbiPc+daSIg1aLU27QI4WlVTi49No4fcVoJrXB9nscUFeqAP4V3NKLQUXCckzk9
 dduSFD7FP9zz5aeqvZhPkDglPWaV0bue6FeIMaJlVSmgfaCRrW/Oi+N+vClQ16r+rfEF
 8PhMa+wcDIw6e0UEmuAFI6/RP2uCFNgV7gcXGUXbW2gzsFAH+eiSploF7VMSL7YuQkLR
 tFaQ==
X-Gm-Message-State: APjAAAU6esM8djbGhumljGJ6r8aGP2Dk/EtOInO+NOQRMqOMPxYpp0qp
 j1yDp/YqdmhDTcg8i86L4h+i3vjfueP7aA==
X-Google-Smtp-Source: APXvYqwCZi9drjwqTATokBd8OlqQMDrv0PDPmqd39pwuNlCSVUPsD7CLPyfOCfi/vBeE0I29ZxUZTg==
X-Received: by 2002:adf:afc2:: with SMTP id y2mr9835759wrd.254.1574616609723; 
 Sun, 24 Nov 2019 09:30:09 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:09 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 5/6] pwm: sun4i: Add support to output source clock directly
Date: Sun, 24 Nov 2019 18:29:07 +0100
Message-Id: <20191124172908.10804-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093011_493562_C2BFE35D 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
ZXJzL3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IGUzNjli
NWEzOThmNC4uMDdiZjdiZTYwNzRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGku
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
