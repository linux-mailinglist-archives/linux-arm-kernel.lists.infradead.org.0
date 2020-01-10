Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F649137240
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3pEc6H+kOYgYXkVpjG/nhGKU7VlCVUoGeypjmnj0BNw=; b=XaOfw+vfJyVObG
	ROmXoKX33GlmkSec0av2DxsJhq5JjV3yXRU8puxS4HNM5poabNcwh9C6iQARKGT8WHc/RuE1965aA
	VR1labQWAwNIhCg32r8xPWSTpy3cxi6bun1n+3EPczeG/HrLRE6Bif3ybo+bmgAtfFazfSAH//YUn
	pzgNNMTv9aRwEz2xRF2tKiKdcJd+RGh0TTYMiWBU2ksJSHyglNGeECaeS3OqL4AY4xOQrz4IiT2eQ
	FS1qVvBtbzJhnapgbMkHs9giTRyLFwap6BHXPe/GgcvI2JZqwQsdWz0RAotG8qISq1nklbIl4mPHt
	6B2NiRlacKxxk6FHpzhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwn2-0006Nz-KD; Fri, 10 Jan 2020 16:05:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwmu-0006MA-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:05:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so2302495wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 08:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/DmvPJlY9Tmv4EyIG/NDnFk433eow2vkRfUSRyghGd0=;
 b=ZGts9mEsV07oqMlH5CGwSt00UWM0Vhti8vRXxb5TEq9QRrXQJuYE7jQMZqw8HkyyAS
 sV/PLumRLEtdMsCQeerA3sVA2vS7CrLAEQ7hwe0cIMc+mToYOAxqRm/Pe52vxzA02HfA
 PFPISdEWNRntwUhvfwVSkiVgxtgs3PmKbjkYAEy0e3PN828LfaH9kiQq3ZgPHuJ4rybp
 FNfwTYKFCs3OdjzPHPk1WZ+Oajm3TxK8owHm/HfsLF0DOyMl0QNKjyiyApvsOQ4YH2MP
 UvZ+5hfmtLRzrHEwCA3Sv1mdagoBY/97MR1UDieUNaC6N4CX2GpiamxSKcaDcaYG7V8i
 5vKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/DmvPJlY9Tmv4EyIG/NDnFk433eow2vkRfUSRyghGd0=;
 b=nPaduFY8Yi7fThClTXBNO7FCQighDFqHhmphb4JrJzRo4RcG2Sr0+PkQdYag/Idq9g
 U2j5V9rwQGlVfMhAedZO1fKTEm9MOAxtwXkmn7QjShiI0OCPoyldhEiGCYfnMnRA2lAe
 MIu4V+YrNMD94bUGYyNVO+9VCIyCWYzgQK3i9zToeVd6ipqS3mzmSfaX7qtPOg/Z7k2O
 T+YhvTTcY5bi3KjIDrq+ah3OKF3rM+rTXvsLt4kChxz6sL6GzxiUDzTuy1ztTcKtN+y0
 Wxe+g5mtdmoZxrs7JbFYLVWK4eXj5UrkyGulNnF08r9OT8hMw4qC8SAW6dZL6QJefgwH
 Sayw==
X-Gm-Message-State: APjAAAXhwQD5IeuKT3nUsGmDCvgO2YykNfdRG0CEY2BigxywQQAQZYME
 6pQvQgOsjbj9wpfsRCLdC7zUJQ==
X-Google-Smtp-Source: APXvYqwIgQwXtS11bXhGVH9Pe2V3XwcTTGW7CWEBZv0DL+719DfIpRZwWKHhcoYjgXjNyQ3lv3A/JQ==
X-Received: by 2002:adf:f5cb:: with SMTP id k11mr4164701wrp.71.1578672325294; 
 Fri, 10 Jan 2020 08:05:25 -0800 (PST)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id p17sm2684593wmk.30.2020.01.10.08.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 08:05:23 -0800 (PST)
Received: from zen.lan (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 2601D1FF87;
 Fri, 10 Jan 2020 16:05:23 +0000 (GMT)
From: =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
To: pbonzini@redhat.com
Subject: [kvm-unit-tests PATCH] arm: expand the timer tests
Date: Fri, 10 Jan 2020 16:05:11 +0000
Message-Id: <20200110160511.17821-1-alex.bennee@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080528_960663_3B0BF9AB 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvm@vger.kernel.org, maz@kernel.org, christoffer.dall@arm.com,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyB3YXMgYW4gYXR0ZW1wdCB0byByZXBsaWNhdGUgYSBRRU1VIGJ1Zy4gSG93ZXZlciB0byB0
cmlnZ2VyIHRoZQpidWcgeW91IG5lZWQgdG8gaGF2ZSBhbiBvZmZzZXQgc2V0IGluIEVMMiB3aGlj
aCBrdm0tdW5pdC10ZXN0cyBpcwp1bmFibGUgdG8gZG8uIEhvd2V2ZXIgaXQgZG9lcyBleGVyY2lz
ZSBzb21lIG1vcmUgY29ybmVyIGNhc2VzLgoKQnVnOiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5l
dC9idWdzLzE4NTkwMjEKU2lnbmVkLW9mZi1ieTogQWxleCBCZW5uw6llIDxhbGV4LmJlbm5lZUBs
aW5hcm8ub3JnPgotLS0KIGFybS90aW1lci5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
KystCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2FybS90aW1lci5jIGIvYXJtL3RpbWVyLmMKaW5kZXggZjM5MGU4ZS4uYWUxZDI5
OSAxMDA2NDQKLS0tIGEvYXJtL3RpbWVyLmMKKysrIGIvYXJtL3RpbWVyLmMKQEAgLTIxNCwyMSAr
MjE0LDQ2IEBAIHN0YXRpYyB2b2lkIHRlc3RfdGltZXIoc3RydWN0IHRpbWVyX2luZm8gKmluZm8p
CiAJICogc3RpbGwgcmVhZCB0aGUgcGVuZGluZyBzdGF0ZSBldmVuIGlmIGl0J3MgZGlzYWJsZWQu
ICovCiAJc2V0X3RpbWVyX2lycV9lbmFibGVkKGluZm8sIGZhbHNlKTsKIAorCS8qIFZlcmlmeSBj
b3VudCBnb2VzIHVwICovCisJcmVwb3J0KGluZm8tPnJlYWRfY291bnRlcigpID49IG5vdywgImNv
dW50ZXIgaW5jcmVtZW50cyIpOworCiAJLyogRW5hYmxlIHRoZSB0aW1lciwgYnV0IHNjaGVkdWxl
IGl0IGZvciBtdWNoIGxhdGVyICovCiAJaW5mby0+d3JpdGVfY3ZhbChsYXRlcik7CiAJaW5mby0+
d3JpdGVfY3RsKEFSQ0hfVElNRVJfQ1RMX0VOQUJMRSk7CiAJaXNiKCk7Ci0JcmVwb3J0KCFnaWNf
dGltZXJfcGVuZGluZyhpbmZvKSwgIm5vdCBwZW5kaW5nIGJlZm9yZSIpOworCXJlcG9ydCghZ2lj
X3RpbWVyX3BlbmRpbmcoaW5mbyksICJub3QgcGVuZGluZyBiZWZvcmUgMTBzIik7CisKKwkvKiBD
aGVjayB3aXRoIGEgbWF4aW11bSBwb3NzaWJsZSBjdmFsICovCisJaW5mby0+d3JpdGVfY3ZhbChV
SU5UNjRfTUFYKTsKKwlpc2IoKTsKKwlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGluZm8pLCAi
bm90IHBlbmRpbmcgYmVmb3JlIFVJTlQ2NF9NQVgiKTsKKworCS8qIGFsc28gYnkgc2V0dGluZyB0
dmFsICovCisJaW5mby0+d3JpdGVfdHZhbCh0aW1lXzEwcyk7CisJaXNiKCk7CisJcmVwb3J0KCFn
aWNfdGltZXJfcGVuZGluZyhpbmZvKSwgIm5vdCBwZW5kaW5nIGJlZm9yZSAxMHMgKHZpYSB0dmFs
KSIpOworCXJlcG9ydF9pbmZvKCJUVkFMIGlzICVkIChkZWx0YSBDVkFMICVsZCkgdGlja3MiLAor
CQkgICAgaW5mby0+cmVhZF90dmFsKCksIGluZm8tPnJlYWRfY3ZhbCgpIC0gaW5mby0+cmVhZF9j
b3VudGVyKCkpOwogCisgICAgICAgIC8qIGNoZWNrIHBlbmRpbmcgb25jZSBjdmFsIGlzIGJlZm9y
ZSBub3cgKi8KIAlpbmZvLT53cml0ZV9jdmFsKG5vdyAtIDEpOwogCWlzYigpOwogCXJlcG9ydChn
aWNfdGltZXJfcGVuZGluZyhpbmZvKSwgImludGVycnVwdCBzaWduYWwgcGVuZGluZyIpOworCXJl
cG9ydF9pbmZvKCJUVkFMIGlzICVkIHRpY2tzIiwgaW5mby0+cmVhZF90dmFsKCkpOwogCiAJLyog
RGlzYWJsZSB0aGUgdGltZXIgYWdhaW4gYW5kIHByZXBhcmUgdG8gdGFrZSBpbnRlcnJ1cHRzICov
CiAJaW5mby0+d3JpdGVfY3RsKDApOwogCXNldF90aW1lcl9pcnFfZW5hYmxlZChpbmZvLCB0cnVl
KTsKIAlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGluZm8pLCAiaW50ZXJydXB0IHNpZ25hbCBu
byBsb25nZXIgcGVuZGluZyIpOwogCisJLyogUUVNVSBidWcgd2hlbiBjbnR2b2ZmX2VsMiA+IDAK
KwkgKiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC9idWdzLzE4NTkwMjEgKi8KKwlpbmZvLT53
cml0ZV9jdGwoQVJDSF9USU1FUl9DVExfRU5BQkxFKTsKKwlpbmZvLT53cml0ZV9jdmFsKFVJTlQ2
NF9NQVgpOworCWlzYigpOworCXJlcG9ydCghZ2ljX3RpbWVyX3BlbmRpbmcoaW5mbyksICJub3Qg
cGVuZGluZyBiZWZvcmUgVUlOVDY0X01BWCAoaXJxcyBvbikiKTsKKwlpbmZvLT53cml0ZV9jdGwo
MCk7CisKIAlyZXBvcnQodGVzdF9jdmFsXzEwbXNlYyhpbmZvKSwgImxhdGVuY3kgd2l0aGluIDEw
IG1zIik7CiAJcmVwb3J0KGluZm8tPmlycV9yZWNlaXZlZCwgImludGVycnVwdCByZWNlaXZlZCIp
OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
