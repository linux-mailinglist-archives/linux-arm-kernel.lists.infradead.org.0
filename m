Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ABC21A95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wbsCVRxbeUltIvJyeb60izcSqTSRdJJ/j990nPJNDSE=; b=DQ1z5qiJPZIkmA
	FjtdF3Fhi1NROXHoI/6g1mz3H66Pbsv7CVF9AAl+eVHQY8uLPcvHPuBVjYUJJZw/LgC8wZixf63Wu
	b6PA6mPORoJWHx+oTEoWB1X9ydn65pX4cmMNyPtvHWekzDIsL1uQz+VuWnCfZtNno1fKTZHznbJ5C
	hwWhZt85d1bRcw3JcWSzCWRwOK18bbDCYGqs+Qb6WX5kpgNX9E981c0VRwB1AGao4bc41EsF/uD9U
	vYoHuSvctGmaFSULbLJ+zRBsvGROICx48PQdn3p1wsWXh+OQozM6AUHSuIZX7fjMdnlUcwE463Y1Y
	nUR83UAhgpcStsbXmx2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReqX-0006Eb-TP; Fri, 17 May 2019 15:32:33 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReqQ-0006EE-Lw
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:32:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id u199so5452799oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 08:32:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pjjzE4+GT6QIjZ+kII5LCAwn20M8y12XM5bh0VRi7ew=;
 b=Q/7pCVC5moPcWFjO9qRMVrEDezTSdAzV1AtQmOj1dgQlcWQU9TnkKrxlVB+NGIt6ad
 18IaoMVhVK3aIuwwasn91LnxGB+/T6HtHK7ebpm0adHMQ40L99DiqNzoSYE09A6hunh8
 1rd5inXyi7KnVvWX0Ci5h6iw6zsRVNNkVzz7Q+3BxwvCM6fkG+d2qwjPQFdkiTtE/mek
 cyvRgeqnoQKS2ItE7kkmUDh/owG4N4vc16qV4yzI80COHKSHDrSWL+MKMScIf3KjjPPc
 lje4YHrRKUS93tQX1DXDeK6TmyJf2pf1MHJPlbWMJsNM0t5/8YmBDOM3Lfl2TK+wgN5T
 h/oA==
X-Gm-Message-State: APjAAAXxkoIY++U9abGYfRj75o7yg7C+wonmw8SfKLHK7qAeM+RAep+p
 njHKaYjjwXxP5X/qnxwJ8ifsq6A=
X-Google-Smtp-Source: APXvYqwg5SXymU7zD7SeYVYMf5gcjpsxlY2K1eWVqSYq+9YY8ETKnHq7xVg6IvwAIHJDUEMqkXhgqA==
X-Received: by 2002:aca:aa8c:: with SMTP id t134mr9914294oie.169.1558107145584; 
 Fri, 17 May 2019 08:32:25 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id o124sm3340730oig.23.2019.05.17.08.32.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 17 May 2019 08:32:24 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
Date: Fri, 17 May 2019 10:32:23 -0500
Message-Id: <20190517153223.7650-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083226_713430_F8F6140A 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCBBY3Rpb25zIFNlbWkgU29DIGJpbmRpbmdzIHRvIERUIHNjaGVtYSBmb3JtYXQgdXNp
bmcganNvbi1zY2hlbWEuCgpDYzogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+
CkNjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmcKU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KLS0tCnYzOgot
IHVwZGF0ZSBNQUlOVEFJTkVSUwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25z
LnR4dCAgICAgICB8IDU2IC0tLS0tLS0tLS0tLS0tLS0tLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9hY3Rpb25zLnlhbWwgICAgICB8IDM4ICsrKysrKysrKysrKysKIE1BSU5UQUlORVJT
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiAzIGZpbGVzIGNoYW5n
ZWQsIDM5IGluc2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9ucy50eHQKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FjdGlv
bnMueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vYWN0aW9ucy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2Fj
dGlvbnMudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBkNTRmMzNjNGUwZGEuLjAw
MDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2Fj
dGlvbnMudHh0CisrKyAvZGV2L251bGwKQEAgLTEsNTYgKzAsMCBAQAotQWN0aW9ucyBTZW1pIHBs
YXRmb3JtcyBkZXZpY2UgdHJlZSBiaW5kaW5ncwotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQotCi0KLVM1MDAgU29DCi09PT09PT09PQotCi1SZXF1aXJlZCByb290
IG5vZGUgcHJvcGVydGllczoKLQotIC0gY29tcGF0aWJsZSA6ICBtdXN0IGNvbnRhaW4gImFjdGlv
bnMsczUwMCIKLQotCi1Nb2R1bGVzOgotCi1Sb290IG5vZGUgcHJvcGVydHkgY29tcGF0aWJsZSBt
dXN0IGNvbnRhaW4sIGRlcGVuZGluZyBvbiBtb2R1bGU6Ci0KLSAtIExlTWFrZXIgR3VpdGFyOiAi
bGVtYWtlcixndWl0YXIiCi0KLQotQm9hcmRzOgotCi1Sb290IG5vZGUgcHJvcGVydHkgY29tcGF0
aWJsZSBtdXN0IGNvbnRhaW4sIGRlcGVuZGluZyBvbiBib2FyZDoKLQotIC0gQWxsby5jb20gU3Bh
cmt5OiAiYWxsbyxzcGFya3kiCi0gLSBDdWJpZXRlY2ggQ3ViaWVCb2FyZDY6ICJjdWJpZXRlY2gs
Y3ViaWVib2FyZDYiCi0gLSBMZU1ha2VyIEd1aXRhciBCYXNlIEJvYXJkIHJldi4gQjogImxlbWFr
ZXIsZ3VpdGFyLWJiLXJldi1iIiwgImxlbWFrZXIsZ3VpdGFyIgotCi0KLVM3MDAgU29DCi09PT09
PT09PQotCi1SZXF1aXJlZCByb290IG5vZGUgcHJvcGVydGllczoKLQotLSBjb21wYXRpYmxlIDog
IG11c3QgY29udGFpbiAiYWN0aW9ucyxzNzAwIgotCi0KLUJvYXJkczoKLQotUm9vdCBub2RlIHBy
b3BlcnR5IGNvbXBhdGlibGUgbXVzdCBjb250YWluLCBkZXBlbmRpbmcgb24gYm9hcmQ6Ci0KLSAt
IEN1YmlldGVjaCBDdWJpZUJvYXJkNzogImN1YmlldGVjaCxjdWJpZWJvYXJkNyIKLQotCi1TOTAw
IFNvQwotPT09PT09PT0KLQotUmVxdWlyZWQgcm9vdCBub2RlIHByb3BlcnRpZXM6Ci0KLS0gY29t
cGF0aWJsZSA6ICBtdXN0IGNvbnRhaW4gImFjdGlvbnMsczkwMCIKLQotCi1Cb2FyZHM6Ci0KLVJv
b3Qgbm9kZSBwcm9wZXJ0eSBjb21wYXRpYmxlIG11c3QgY29udGFpbiwgZGVwZW5kaW5nIG9uIGJv
YXJkOgotCi0gLSB1Q1JvYm90aWNzIEJ1YmJsZWd1bS05NjogInVjcm9ib3RpY3MsYnViYmxlZ3Vt
LTk2IgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9h
Y3Rpb25zLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FjdGlv
bnMueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjYwYWJkMzcx
ZTQ3NAotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vYWN0aW9ucy55YW1sCkBAIC0wLDAgKzEsMzggQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL2FybS9hY3Rpb25zLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IEFjdGlvbnMgU2VtaSBwbGF0Zm9y
bXMgZGV2aWNlIHRyZWUgYmluZGluZ3MKKworbWFpbnRhaW5lcnM6CisgIC0gQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPgorICAtIE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CisKK3Byb3BlcnRpZXM6CisgIGNvbXBhdGlibGU6
CisgICAgb25lT2Y6CisgICAgICAjIFRoZSBBY3Rpb25zIFNlbWkgUzUwMCBpcyBhIHF1YWQtY29y
ZSBBUk0gQ29ydGV4LUE5IFNvQy4KKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBlbnVtOgor
ICAgICAgICAgICAgICAtIGFsbG8sc3Bhcmt5ICMgQWxsby5jb20gU3Bhcmt5CisgICAgICAgICAg
ICAgIC0gY3ViaWV0ZWNoLGN1YmllYm9hcmQ2ICMgQ3ViaWV0ZWNoIEN1YmllQm9hcmQ2CisgICAg
ICAgICAgLSBjb25zdDogYWN0aW9ucyxzNTAwCisgICAgICAtIGl0ZW1zOgorICAgICAgICAgIC0g
ZW51bToKKyAgICAgICAgICAgICAgLSBsZW1ha2VyLGd1aXRhci1iYi1yZXYtYiAjIExlTWFrZXIg
R3VpdGFyIEJhc2UgQm9hcmQgcmV2LiBCCisgICAgICAgICAgLSBjb25zdDogbGVtYWtlcixndWl0
YXIKKyAgICAgICAgICAtIGNvbnN0OiBhY3Rpb25zLHM1MDAKKworICAgICAgIyBUaGUgQWN0aW9u
cyBTZW1pIFM3MDAgaXMgYSBxdWFkLWNvcmUgQVJNIENvcnRleC1BNTMgU29DLgorICAgICAgLSBp
dGVtczoKKyAgICAgICAgICAtIGVudW06CisgICAgICAgICAgICAgIC0gY3ViaWV0ZWNoLGN1Ymll
Ym9hcmQ3ICMgQ3ViaWV0ZWNoIEN1YmllQm9hcmQ3CisgICAgICAgICAgLSBjb25zdDogYWN0aW9u
cyxzNzAwCisKKyAgICAgICMgVGhlIEFjdGlvbnMgU2VtaSBTOTAwIGlzIGEgcXVhZC1jb3JlIEFS
TSBDb3J0ZXgtQTUzIFNvQy4KKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBlbnVtOgorICAg
ICAgICAgICAgICAtIHVjcm9ib3RpY3MsYnViYmxlZ3VtLTk2ICMgdUNSb2JvdGljcyBCdWJibGVn
dW0tOTYKKyAgICAgICAgICAtIGNvbnN0OiBhY3Rpb25zLHM5MDAKZGlmZiAtLWdpdCBhL01BSU5U
QUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggMDA1OTAyZWExNDUwLi5iZThjMzU2NDgwNGMgMTAw
NjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xMzM4LDcgKzEzMzgs
NyBAQCBGOglkcml2ZXJzL3BpbmN0cmwvYWN0aW9ucy8qCiBGOglkcml2ZXJzL3NvYy9hY3Rpb25z
LwogRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9vd2wtKgogRjoJaW5jbHVkZS9saW51eC9z
b2MvYWN0aW9ucy8KLUY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0
aW9ucy50eHQKK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9u
cy55YW1sCiBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svYWN0aW9u
cyxvd2wtY211LnR4dAogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS9v
d2wtZG1hLnR4dAogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9pMmMt
b3dsLnR4dAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
