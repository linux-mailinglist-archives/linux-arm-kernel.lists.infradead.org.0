Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4568B2A67B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbivB+gJtK/NKkSaOHtdNUuGhuweyFO0M8xmSNET+M0=; b=u67pbl91es7K24
	Fpi3dH3WPu9GY7PyJWeDLYJ5KCY0ASgiaMBYvi5EF++9iVKAED27yoS8aMmxuWTcJtWI0etFgXbOj
	zJdSO1gFfErpXhpCZmCjFy2VigfKkwzICU8K9CnZw5UbRfXeo8S8p7PXvMDJYNMTigWLxKN9Szgi3
	r8kzGhyfmrx1PDop/0VxdMbMRlLV6qAtfZVy6dWqhaFu+xvr0NR7u7lmfbAY5c/T0IG2OJL+I79rv
	E34U7OHEgDZHeH2/nsBCbAbj+YBw+s4i9va/Iv5qkueADsfQNu5jRUpzVlQ4gBhx5acNlWiYB94o6
	R6e+6UM0ivv73UzSufJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBd-00056I-0S; Sat, 25 May 2019 18:14:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb9B-0002Pv-GI; Sat, 25 May 2019 18:12:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id d9so12968690wrx.0;
 Sat, 25 May 2019 11:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zy3igJq07cYQSMxFomj95OIsp+cg4RA7m3SIK+lG8bU=;
 b=RWIwPiKWpW+8hhJ064VFfHfgeJUrYzzyTSpEwMVt2y7w5U1LDQPlCjNTLk0z5GqVmX
 /SvB9jaw4CudwdT9ej5tHOVNWB+LrVGJmUHbuucV4a3Tzn5m5vh2p8+CsaSL65BEcMbp
 2zOonGmORz1V77vECNFInY1MgMO1n8324iCp8p3wCZJHICJnxGj9d8sdZUOcM08VRniZ
 5LTEf8MAGuJMQzDDMK9ajNTMPKeLiao+h94sBiV1W7mdtS9QoFylcrxArsri3ZIWScZd
 1SFi/Puqi0dTTk4wu0k/ujt+tbt3MPP90RZsZo2lYCdLFT04piE4G7jJW+ZJ49ofrv4A
 NIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zy3igJq07cYQSMxFomj95OIsp+cg4RA7m3SIK+lG8bU=;
 b=KoVl/DFSCDX7n/0ZnU2SBjjviBJAIobHVb0KTNXpVZ9zlIP6Aweqk+LNQEFXx6mEmx
 6gAcySlip2NoOCOvT2RiCv0nWoWhReG7GQLDdQC/JIxq9Jcj+at4QnBdKyxTG9k1I8ol
 Eu6nQtj81XFaQSfosIHDv/QS9P9PkEdjC5Wn4DbtGzboMV12wOcqqhVHi4Dfua+SaSF5
 Tpvgmfk3v12ANG30WT1UcKtiO9hKpAIP0JKDELdtBza9ad9qIZRFyVwqNpJOvZQlCXva
 od4NGlvUUQ0zpebe7aY7ySeespKm9bVpCDq7HqHbz6buU5cD9aNUHsHz4Q6SmGIIVjhY
 faUA==
X-Gm-Message-State: APjAAAWCVmaaFJ9UipOHi0JviMiXADIjZ7rV0FhpPPyWChM0os2XGiw5
 KZTII3RiL0NqouIKNpzOCc2LMjbU
X-Google-Smtp-Source: APXvYqyGLjQ0zfRugxJ+mFnXR75GhggtBiLimgCtvpXe9134qnfxnS/Gk3IRfijOU6tSHqUDc6AjyQ==
X-Received: by 2002:adf:e909:: with SMTP id f9mr3364863wrm.231.1558807915828; 
 Sat, 25 May 2019 11:11:55 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:55 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 10/14] pwm: meson: simplify the calculation of the pre-divider
 and count
Date: Sat, 25 May 2019 20:11:29 +0200
Message-Id: <20190525181133.4875-11-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111157_756729_33423B01 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSB0aGUgbG9vcCB0byBjYWxjdWxhdGUgdGhlIHByZS1kaXZpZGVyIGFuZCBjb3VudCB3
aXRoIHR3bwpzZXBhcmF0ZSBkaXY2NF91NjQoKSBjYWxjdWxhdGlvbnMuIFRoaXMgbWFrZXMgdGhl
IGNvZGUgZWFzaWVyIHRvIHJlYWQKYW5kIGltcHJvdmVzIHRoZSBwcmVjaXNpb24uCgpUd28gZXhh
bXBsZSBjYXNlczoKMSkgMzIuNzY4a0h6IExQTyBjbG9jayBmb3IgdGhlIFNESU8gd2lmaSBjaGlw
IG9uIEtoYWRhcyBWSU0KICAgY2xvY2sgaW5wdXQ6IDUwME1IeiAoRkNMS19ESVY0KQogICBwZXJp
b2Q6IDMwNTE4bnMKICAgZHV0eSBjeWNsZTogMTUyNTlucwpvbGQgYWxnb3JpdGhtOiBwcmVfZGl2
PTAsIGNudD0xNTI1OQpuZXcgYWxnb3JpdGhtOiBwcmVfZGl2PTAsIGNudD0xNTI1OQoobm8gZGlm
ZmVyZW5jZSBpbiBjYWxjdWxhdGVkIHZhbHVlcykKCjIpIFBXTSBMRUQgb24gS2hhZGFzIFZJTQog
ICBjbG9jayBpbnB1dDogMjRNSHogKFhUQUwpCiAgIHBlcmlvZDogNzgxMjUwMG5zCiAgIGR1dHkg
Y3ljbGU6IDc4MTI1MDBucwpvbGQgYWxnb3JpdGhtOiBwcmVfZGl2PTIsIGNudD02MjAwNApuZXcg
YWxnb3JpdGhtOiBwcmVfZGl2PTIsIGNudD02MjUwMApVc2luZyBhIHNjb3BlICgyNE1IeiBzYW1w
bGluZyByYXRlKSBzaG93cyB0aGUgYWN0dWFsIGRpZmZlcmVuY2U6Ci0gb2xkOiA3NzUzMDAwbnMs
IG9mZiBieSAtNTk1MDBucyAoMC43NjE2JSkKLSBuZXc6IDc4MTUwMDBucywgb2ZmIGJ5ICsyNTAw
bnMgKDAuMDMyJSkKClN1Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtv
ZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogTWFydGluIEJsdW1lbnN0aW5nbCA8
bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20t
bWVzb24uYyB8IDI1ICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3
bS9wd20tbWVzb24uYyBiL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCmluZGV4IDI3OTE1ZDY0NzVl
My4uOWFmYTFlNWFhZWJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYworKysg
Yi9kcml2ZXJzL3B3bS9wd20tbWVzb24uYwpAQCAtMTIsNiArMTIsNyBAQAogI2luY2x1ZGUgPGxp
bnV4L2Vyci5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgva2VybmVs
Lmg+CisjaW5jbHVkZSA8bGludXgvbWF0aDY0Lmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
CiAjaW5jbHVkZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KQEAg
LTE0NSw3ICsxNDYsNiBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0cnVjdCBtZXNvbl9w
d20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCXN0cnVjdCBtZXNvbl9wd21fY2hh
bm5lbCAqY2hhbm5lbCA9IHB3bV9nZXRfY2hpcF9kYXRhKHB3bSk7CiAJdW5zaWduZWQgaW50IGR1
dHksIHBlcmlvZCwgcHJlX2RpdiwgY250LCBkdXR5X2NudDsKIAl1bnNpZ25lZCBsb25nIGZpbl9m
cmVxID0gLTE7Ci0JdTY0IGZpbl9wczsKIAogCWR1dHkgPSBzdGF0ZS0+ZHV0eV9jeWNsZTsKIAlw
ZXJpb2QgPSBzdGF0ZS0+cGVyaW9kOwpAQCAtMTY0LDI0ICsxNjQsMTkgQEAgc3RhdGljIGludCBt
ZXNvbl9wd21fY2FsYyhzdHJ1Y3QgbWVzb25fcHdtICptZXNvbiwgc3RydWN0IHB3bV9kZXZpY2Ug
KnB3bSwKIAl9CiAKIAlkZXZfZGJnKG1lc29uLT5jaGlwLmRldiwgImZpbl9mcmVxOiAlbHUgSHpc
biIsIGZpbl9mcmVxKTsKLQlmaW5fcHMgPSAodTY0KU5TRUNfUEVSX1NFQyAqIDEwMDA7Ci0JZG9f
ZGl2KGZpbl9wcywgZmluX2ZyZXEpOwotCi0JLyogQ2FsYyBwcmVfZGl2IHdpdGggdGhlIHBlcmlv
ZCAqLwotCWZvciAocHJlX2RpdiA9IDA7IHByZV9kaXYgPD0gTUlTQ19DTEtfRElWX01BU0s7IHBy
ZV9kaXYrKykgewotCQljbnQgPSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoKHU2NClwZXJpb2QgKiAx
MDAwLAotCQkJCQkgICAgZmluX3BzICogKHByZV9kaXYgKyAxKSk7Ci0JCWRldl9kYmcobWVzb24t
PmNoaXAuZGV2LCAiZmluX3BzPSVsbHUgcHJlX2Rpdj0ldSBjbnQ9JXVcbiIsCi0JCQlmaW5fcHMs
IHByZV9kaXYsIGNudCk7Ci0JCWlmIChjbnQgPD0gMHhmZmZmKQotCQkJYnJlYWs7Ci0JfQogCisJ
cHJlX2RpdiA9IGRpdjY0X3U2NChmaW5fZnJlcSAqICh1NjQpcGVyaW9kLCBOU0VDX1BFUl9TRUMg
KiAweGZmZmZMTCk7CiAJaWYgKHByZV9kaXYgPiBNSVNDX0NMS19ESVZfTUFTSykgewogCQlkZXZf
ZXJyKG1lc29uLT5jaGlwLmRldiwgInVuYWJsZSB0byBnZXQgcGVyaW9kIHByZV9kaXZcbiIpOwog
CQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKKwljbnQgPSBkaXY2NF91NjQoZmluX2ZyZXEgKiAodTY0
KXBlcmlvZCwgTlNFQ19QRVJfU0VDICogKHByZV9kaXYgKyAxKSk7CisJaWYgKGNudCA+IDB4ZmZm
ZikgeworCQlkZXZfZXJyKG1lc29uLT5jaGlwLmRldiwgInVuYWJsZSB0byBnZXQgcGVyaW9kIGNu
dFxuIik7CisJCXJldHVybiAtRUlOVkFMOworCX0KKwogCWRldl9kYmcobWVzb24tPmNoaXAuZGV2
LCAicGVyaW9kPSV1IHByZV9kaXY9JXUgY250PSV1XG4iLCBwZXJpb2QsCiAJCXByZV9kaXYsIGNu
dCk7CiAKQEAgLTE5NSw4ICsxOTAsOCBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0cnVj
dCBtZXNvbl9wd20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCQljaGFubmVsLT5s
byA9IGNudDsKIAl9IGVsc2UgewogCQkvKiBUaGVuIGNoZWNrIGlzIHdlIGNhbiBoYXZlIHRoZSBk
dXR5IHdpdGggdGhlIHNhbWUgcHJlX2RpdiAqLwotCQlkdXR5X2NudCA9IERJVl9ST1VORF9DTE9T
RVNUX1VMTCgodTY0KWR1dHkgKiAxMDAwLAotCQkJCQkJIGZpbl9wcyAqIChwcmVfZGl2ICsgMSkp
OworCQlkdXR5X2NudCA9IGRpdjY0X3U2NChmaW5fZnJlcSAqICh1NjQpZHV0eSwKKwkJCQkgICAg
IE5TRUNfUEVSX1NFQyAqIChwcmVfZGl2ICsgMSkpOwogCQlpZiAoZHV0eV9jbnQgPiAweGZmZmYp
IHsKIAkJCWRldl9lcnIobWVzb24tPmNoaXAuZGV2LCAidW5hYmxlIHRvIGdldCBkdXR5IGN5Y2xl
XG4iKTsKIAkJCXJldHVybiAtRUlOVkFMOwotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
