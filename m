Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E5430C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPWVVnmrtF+IB63dtCTivWDDG0HNK8C5w8S/RnmANj0=; b=UXJS/x9Ql4zSBi
	f7i76XzVy7fSFbbbYM2RTPJc2Uu7uKKAzZLNy0TqnOBD+MjnuOzhLcRM7fzKSpOll9/VLMXGwXF/Q
	fb5reKqRjG4Mj7TVcPujqzHo/3WJ074OdhB7DB6+Dav7KxNJ0WvIKQO9f51P3vd6K3YNLXXUT2peu
	LpIxFu0WgSWQLne0aiZiCpROjQ6wYts5UGFHsQJ/ZMseA4kz8yLk5gd5HdNH0axiAe5t1ycSS8Ey6
	QwHghO2ITOs/ZVfI+eH210PoyoxJiCbK7l+b04c6LrF6fmvlMrRR8maGd34dlSwJfR9tc49tNmPFw
	irldQTAMwQA02xJXEJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9TX-0001ap-QC; Wed, 12 Jun 2019 20:04:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PL-0005MF-FY; Wed, 12 Jun 2019 19:59:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so7771090wmm.1;
 Wed, 12 Jun 2019 12:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bdTVLAwNdb8owtGfmpMjHz1Rqh0e7CEJ+yms9qNEUEE=;
 b=ImFSiHawukgvGDKEkdVhtWjkNYpr3APrYMZTo5l+SYrYXqtCHHgdbiiMYiKzE+q+mZ
 H/+t6xmhBabAbGg1fgqQA5sB7gnazN4hiaMQGW92ZZ4EHnr2sORtUe+HaEJuBswrCeuQ
 AIJtevwzdrNPq1qjD3N76VM9UNBQmFUq32dbu5uucvo9xMC9NrhuiuRRB+dvUQxxME9O
 vxiSROhC3xxZuc1g98xZ3UqRPKi63v9g+P10L+HsKt1iau+QCP8SkL1BtnXoUb4QwJSL
 kbSgb795GiB7r7KV7eOQl87P1z9c0ZNTFHXPKNORoM43MvBy9adh2iEcFtUBs/12k90/
 QUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bdTVLAwNdb8owtGfmpMjHz1Rqh0e7CEJ+yms9qNEUEE=;
 b=QrgRvLNZNFjAcp76XzbA074YZwz/g9jLA+AWAjtmwUWdIjizyRA9x4sTArUFTBSbx8
 29YTsBnTIbsmr/qgW3n82pERyIQIeTJi571CyAvg8bggEI5qO/YVLY4rrRFHVp5Jf87G
 NsBcv2LOywtQbqmwStJWFuyoxNsTKeiSJKvp88ZjDdWDC+a8Jr0409MNOM+aRasA9iFs
 smryRHhy1tjk+b2eNTPf0yvHxG3txCDYXKZz/ZvZGjoqeKtxCboC0ixhY8nhBm8NqmH0
 LayMhnWNMbvrG82lznCDdPbwRPFLvd+018KWxhTx3+bdXqkMr3eRmVCVUcJCfKIfrp3Q
 UzFw==
X-Gm-Message-State: APjAAAXZywjsbJDpP/JFG5ZoM9KN3C2EiGO8In6q+9mYfNuqYo9IrVUH
 yAGG5AVHHfHUknD3ZWi/jkDhK1M8
X-Google-Smtp-Source: APXvYqx1euxXqWvm17uaq4OeXTaDLpI3mLzeZHlbR31M6tMSTIu+iCO+7X2+HMUU/IRX78KClQd3Kg==
X-Received: by 2002:a1c:7614:: with SMTP id r20mr661319wmc.142.1560369581619; 
 Wed, 12 Jun 2019 12:59:41 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:41 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 10/14] pwm: meson: simplify the calculation of the
 pre-divider and count
Date: Wed, 12 Jun 2019 21:59:07 +0200
Message-Id: <20190612195911.4442-11-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125943_549458_D26F7596 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSB0aGUgbG9vcCB0byBjYWxjdWxhdGUgdGhlIHByZS1kaXZpZGVyIGFuZCBjb3VudCB3
aXRoIHR3bwpzZXBhcmF0ZSBkaXY2NF91NjQoKSBjYWxjdWxhdGlvbnMuIFRoaXMgbWFrZXMgdGhl
IGNvZGUgZWFzaWVyIHRvIHJlYWQKYW5kIGltcHJvdmVzIHRoZSBwcmVjaXNpb24uCgpUaHJlZSBl
eGFtcGxlIGNhc2VzOgoxKSAzMi43NjhrSHogTFBPIGNsb2NrIGZvciB0aGUgU0RJTyB3aWZpIGNo
aXAgb24gS2hhZGFzIFZJTQogICBjbG9jayBpbnB1dDogNTAwTUh6IChGQ0xLX0RJVjQpCiAgIHBl
cmlvZDogMzA1MThucwogICBkdXR5IGN5Y2xlOiAxNTI1OW5zCm9sZCBhbGdvcml0aG06IHByZV9k
aXY9MCwgY250PTE1MjU5Cm5ldyBhbGdvcml0aG06IHByZV9kaXY9MCwgY250PTE1MjU5CihubyBk
aWZmZXJlbmNlIGluIGNhbGN1bGF0ZWQgdmFsdWVzKQoKMikgUFdNIExFRCBvbiBLaGFkYXMgVklN
CiAgIGNsb2NrIGlucHV0OiAyNE1IeiAoWFRBTCkKICAgcGVyaW9kOiA3ODEyNTAwbnMKICAgZHV0
eSBjeWNsZTogNzgxMjUwMG5zCm9sZCBhbGdvcml0aG06IHByZV9kaXY9MiwgY250PTYyMDA0Cm5l
dyBhbGdvcml0aG06IHByZV9kaXY9MiwgY250PTYyNTAwClVzaW5nIGEgc2NvcGUgKDI0TUh6IHNh
bXBsaW5nIHJhdGUpIHNob3dzIHRoZSBhY3R1YWwgZGlmZmVyZW5jZToKLSBvbGQ6IDc3NTMwMDBu
cywgb2ZmIGJ5IC01OTUwMG5zICgwLjc2MTYlKQotIG5ldzogNzgxNTAwMG5zLCBvZmYgYnkgKzI1
MDBucyAoMC4wMzIlKQoKMykgVGhlb3JldGljYWwgY2FzZSB3aGVyZSBwcmVfZGl2IGlzIGRpZmZl
cmVudAogICBjbG9jayBpbnB1dDogMjRNSHogKFhUQUwpCiAgIHBlcmlvZDogMjczMDYyNG5zCiAg
IGR1dHkgY3ljbGU6IDEzNjUzMTJucwpvbGQgYWxnb3JpdGhtOiBwcmVfZGl2PTEsIGNudD0zMjc2
OApuZXcgYWxnb3JpdGhtOiBwcmVfZGl2PTAsIGNudD02NTUzNApVc2luZyBhIHNjb3BlICgyNE1I
eiBzYW1wbGluZyByYXRlKSBzaG93cyB0aGUgYWN0dWFsIGRpZmZlcmVuY2U6Ci0gb2xkOiAyNzMx
MDAwbnMKLSBuZXc6IDI3MzEwMDBucwoobXkgc2NvcGUgaXMgbm90IHByZWNpc2UgZW5vdWdoIHRv
IG1lYXN1cmUgdGhlIGRpZmZlcmVuY2UgaWYgdGhlcmUncwphbnkpCgpTdWdnZXN0ZWQtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CkFja2VkLWJ5
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZp
ZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgpTaWduZWQt
b2ZmLWJ5OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1h
aWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIHwgMjUgKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIGIvZHJpdmVycy9wd20v
cHdtLW1lc29uLmMKaW5kZXggMjc5MTVkNjQ3NWUzLi45YWZhMWU1YWFlYmYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCkBA
IC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CiAjaW5jbHVkZSA8bGludXgv
aW8uaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxsaW51eC9tYXRoNjQu
aD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgpAQCAtMTQ1LDcgKzE0Niw2IEBAIHN0YXRpYyBpbnQg
bWVzb25fcHdtX2NhbGMoc3RydWN0IG1lc29uX3B3bSAqbWVzb24sIHN0cnVjdCBwd21fZGV2aWNl
ICpwd20sCiAJc3RydWN0IG1lc29uX3B3bV9jaGFubmVsICpjaGFubmVsID0gcHdtX2dldF9jaGlw
X2RhdGEocHdtKTsKIAl1bnNpZ25lZCBpbnQgZHV0eSwgcGVyaW9kLCBwcmVfZGl2LCBjbnQsIGR1
dHlfY250OwogCXVuc2lnbmVkIGxvbmcgZmluX2ZyZXEgPSAtMTsKLQl1NjQgZmluX3BzOwogCiAJ
ZHV0eSA9IHN0YXRlLT5kdXR5X2N5Y2xlOwogCXBlcmlvZCA9IHN0YXRlLT5wZXJpb2Q7CkBAIC0x
NjQsMjQgKzE2NCwxOSBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0cnVjdCBtZXNvbl9w
d20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCX0KIAogCWRldl9kYmcobWVzb24t
PmNoaXAuZGV2LCAiZmluX2ZyZXE6ICVsdSBIelxuIiwgZmluX2ZyZXEpOwotCWZpbl9wcyA9ICh1
NjQpTlNFQ19QRVJfU0VDICogMTAwMDsKLQlkb19kaXYoZmluX3BzLCBmaW5fZnJlcSk7Ci0KLQkv
KiBDYWxjIHByZV9kaXYgd2l0aCB0aGUgcGVyaW9kICovCi0JZm9yIChwcmVfZGl2ID0gMDsgcHJl
X2RpdiA8PSBNSVNDX0NMS19ESVZfTUFTSzsgcHJlX2RpdisrKSB7Ci0JCWNudCA9IERJVl9ST1VO
RF9DTE9TRVNUX1VMTCgodTY0KXBlcmlvZCAqIDEwMDAsCi0JCQkJCSAgICBmaW5fcHMgKiAocHJl
X2RpdiArIDEpKTsKLQkJZGV2X2RiZyhtZXNvbi0+Y2hpcC5kZXYsICJmaW5fcHM9JWxsdSBwcmVf
ZGl2PSV1IGNudD0ldVxuIiwKLQkJCWZpbl9wcywgcHJlX2RpdiwgY250KTsKLQkJaWYgKGNudCA8
PSAweGZmZmYpCi0JCQlicmVhazsKLQl9CiAKKwlwcmVfZGl2ID0gZGl2NjRfdTY0KGZpbl9mcmVx
ICogKHU2NClwZXJpb2QsIE5TRUNfUEVSX1NFQyAqIDB4ZmZmZkxMKTsKIAlpZiAocHJlX2RpdiA+
IE1JU0NfQ0xLX0RJVl9NQVNLKSB7CiAJCWRldl9lcnIobWVzb24tPmNoaXAuZGV2LCAidW5hYmxl
IHRvIGdldCBwZXJpb2QgcHJlX2RpdlxuIik7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAorCWNu
dCA9IGRpdjY0X3U2NChmaW5fZnJlcSAqICh1NjQpcGVyaW9kLCBOU0VDX1BFUl9TRUMgKiAocHJl
X2RpdiArIDEpKTsKKwlpZiAoY250ID4gMHhmZmZmKSB7CisJCWRldl9lcnIobWVzb24tPmNoaXAu
ZGV2LCAidW5hYmxlIHRvIGdldCBwZXJpb2QgY250XG4iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
fQorCiAJZGV2X2RiZyhtZXNvbi0+Y2hpcC5kZXYsICJwZXJpb2Q9JXUgcHJlX2Rpdj0ldSBjbnQ9
JXVcbiIsIHBlcmlvZCwKIAkJcHJlX2RpdiwgY250KTsKIApAQCAtMTk1LDggKzE5MCw4IEBAIHN0
YXRpYyBpbnQgbWVzb25fcHdtX2NhbGMoc3RydWN0IG1lc29uX3B3bSAqbWVzb24sIHN0cnVjdCBw
d21fZGV2aWNlICpwd20sCiAJCWNoYW5uZWwtPmxvID0gY250OwogCX0gZWxzZSB7CiAJCS8qIFRo
ZW4gY2hlY2sgaXMgd2UgY2FuIGhhdmUgdGhlIGR1dHkgd2l0aCB0aGUgc2FtZSBwcmVfZGl2ICov
Ci0JCWR1dHlfY250ID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKCh1NjQpZHV0eSAqIDEwMDAsCi0J
CQkJCQkgZmluX3BzICogKHByZV9kaXYgKyAxKSk7CisJCWR1dHlfY250ID0gZGl2NjRfdTY0KGZp
bl9mcmVxICogKHU2NClkdXR5LAorCQkJCSAgICAgTlNFQ19QRVJfU0VDICogKHByZV9kaXYgKyAx
KSk7CiAJCWlmIChkdXR5X2NudCA+IDB4ZmZmZikgewogCQkJZGV2X2VycihtZXNvbi0+Y2hpcC5k
ZXYsICJ1bmFibGUgdG8gZ2V0IGR1dHkgY3ljbGVcbiIpOwogCQkJcmV0dXJuIC1FSU5WQUw7Ci0t
IAoyLjIyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
