Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA997F2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NmG1ok+fMuGrKxKf+Q4ZM7spbuMVPcBNhT4KI6Mf7l8=; b=pDXcYvn3ih44Rqi8o6L6EhA+ik
	lQJ26BNSu/yjT3oqwT2tYUZfjGgw5a1FX+NgHzav+HCLtM3GAtXNa0eBwjTOwhKufJLBKAMcg9vlK
	c+i8yROjle2TsZaZk4qs8EVrEblM6Xn45ipFpyIu94McuVbio1hNxIeaPHxsLSvg/FOOXPyVXuA3s
	fJ9Uo2w5XWTCIic9bjdJmKdNgB+Ml0flbT8olbSuvx78P31T502XZj0mlRiZNt55QZzHjgf9Mla5n
	pBbZLBRZLmbLiPXKALRbHJP5aRCTE84Z+Q4Ssm1ANFW98Pi/fI729whnrN6G8lHyxpA+A7liaVYn9
	J4RppZpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Sl4-0004as-AG; Wed, 21 Aug 2019 15:42:46 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Skr-0004aQ-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:42:35 +0000
Received: by mail-ot1-x344.google.com with SMTP id b1so2479026otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 08:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QhXxO2GgdwtOjc+rS3UtsG7OE8maUuxkJc6q+fezsDA=;
 b=k6IGy/MFuc5I3iGi8td5oO59rBeSBdfBzayLNvTy7LsC0icl2SHHHtBxcE5iIOI0eu
 YxT55B2N0bpLcZlxs0ku3feexcj/8illW5viS1FDDWZGQaBGvNIB1ZUHsFZTyeKrU8HY
 AO3brOIJnOg/Qj7x/yH14ffC4J8K2YPfWgnIO4VXdZC5XtqP22T7v/4zfgaKAKY3oIKj
 6L5TCfLjWPIOnSj8w9O6NvZxdfv5An1s7J4V54CYculT29guKqy0mUCPsMjGD2SbHzMh
 qe41T18CzrOHPmhhg6j/vCHY3wIucXcOKkDRJkFIB933GdT+INddjXinMG82C9h1U1u1
 Y2CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=QhXxO2GgdwtOjc+rS3UtsG7OE8maUuxkJc6q+fezsDA=;
 b=AN+P4l1+716AtsNPL13V+2xq2l0DDU8gW2k2GfoHt3FpBrHH7blcXu9xDJ2gSeIgxI
 c9Q0jtNTGgNZdowKobiAGjEUqUuti+HytWNjTHPtwMc9J7uPCOH5SMyRvpw3XXMuVi8J
 CBfkburlKn0XodjpJUa24LCQAlWV2TB2/pt+WSrXmgyHE4mMYB3oMUwsN9ltxNgF2Cxm
 GeKcbtePoBIjwmVL+jXU72V7DkUYEtx2QoxmW6zUEuGy7dVResCweB/58vbSL9IXE7FB
 8s4K7t/Jq7fwe2N2mKFvBzL7Oxy1+2cbO4Vc70ijxV6pWpfh75GgxNAiA3rQ/Ic20FOa
 dgeQ==
X-Gm-Message-State: APjAAAVq7bnDvRB6KZLvE7zObmpIoI3dhh0gxBCRmIrlMP02+ZB1OQf3
 9WghRWc5H772pBunOLweNKALp0dPocX0A+zU/NLOiWK5
X-Google-Smtp-Source: APXvYqweImxDDfEpnH/Rgzajv7tgXZz9P6qFdWvQ/AQlZPfTKNXOkFKJfhE9VDTjtBIV/GbFwj131Oy6BdK5O2UUMxA=
X-Received: by 2002:a9d:7f90:: with SMTP id t16mr7677822otp.92.1566402152084; 
 Wed, 21 Aug 2019 08:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <CA+wirGq=rry-b57PR8B-wZ9zH__dCMNYQR4FXhDVRCbVTG9FMg@mail.gmail.com>
In-Reply-To: <CA+wirGq=rry-b57PR8B-wZ9zH__dCMNYQR4FXhDVRCbVTG9FMg@mail.gmail.com>
From: Alejandro <alejandro.gonzalez.correo@gmail.com>
Date: Wed, 21 Aug 2019 17:42:17 +0200
Message-ID: <CA+wirGrmeVq7U2fSDcno36SCRUfB_tvmj=2T7QcdC2WRTCVoMA@mail.gmail.com>
Subject: [PATCH 1/1] rtc: sun6i: Support for wake alarm resume from suspend
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084233_932996_FEAF0063 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alejandro.gonzalez.correo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRGU6IEFsZWphbmRybyA8YWxl
amFuZHJvLmdvbnphbGV6LmNvcnJlb0BnbWFpbC5jb20+CkRhdGU6IG1pw6kuLCAyMSBhZ28uIDIw
MTkgYSBsYXMgMTc6MzcKU3ViamVjdDogW1BBVENIIDEvMV0gcnRjOiBzdW42aTogU3VwcG9ydCBm
b3Igd2FrZSBhbGFybSByZXN1bWUgZnJvbSBzdXNwZW5kClRvOiA8bWF4aW1lLnJpcGFyZEBib290
bGluLmNvbT4sIDx3ZW5zQGNzaWUub3JnPiwKPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZz4sIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgpDYzogPGxpbnV4LXN1bnhp
QGdvb2dsZWdyb3Vwcy5jb20+CgpUaGlzIHBhdGNoIGFsbG93cyB1c2Vyc3BhY2UgdG8gc2V0IHVw
IHdha2V1cCBhbGFybXMgb24gYW55IFJUQyBoYW5kbGVkIGJ5IHRoZQpzdW42aSBkcml2ZXIsIGFu
ZCBhZGRzIHRoZSBuZWNlc3NhcnkgUE0gb3BlcmF0aW9ucyB0byBhbGxvdyByZXN1bWluZyBmcm9t
CnN1c3BlbmQgd2hlbiB0aGUgY29uZmlndXJlZCB3YWtldXAgYWxhcm0gZmlyZXMgYSBJUlEuIE9m
IGNvdXJzZSwgdGhhdCB0aGUKZGV2aWNlIGFjdHVhbGx5IHJlc3VtZXMgZGVwZW5kcyBvbiB0aGUg
c3VzcGVuZCBzdGF0ZSBhbmQgaG93IGEgcGFydGljdWxhcgpoYXJkd2FyZSByZWFjdHMgdG8gaXQs
IGJ1dCB0aGF0IGlzIG91dCBvZiBzY29wZSBmb3IgdGhpcyBwYXRjaC4KCkkndmUgdGVzdGVkIHRo
ZXNlIGNoYW5nZXMgb24gYSBQaW5lIEg2NCBtb2RlbCBCLCB3aGljaCBjb250YWlucyBhCkFsbHdp
bm5lciBINiBTb0MsIHdpdGggdGhlIGhlbHAgb2YgQ09ORklHX1BNX1RFU1RfU1VTUEVORCBrZXJu
ZWwgb3B0aW9uLgpUaGVzZSBhcmUgdGhlIGludGVyZXN0aW5nIG91dHB1dHMgZnJvbSB0aGUga2Vy
bmVsIGFuZC9vciBjb21tYW5kcyB3aGljaApzaG93IHRoYXQgaXQgd29ya3MuIEFzIGV2ZXJ5IFJU
QyBoYW5kbGVkIGJ5IHRoaXMgZHJpdmVyIGlzIGxhcmdlbHkgdGhlCnNhbWUsIEkgdGhpbmsgdGhh
dCBpdCBzaG91bGRuJ3QgaW50cm9kdWNlIGFueSByZWdyZXNzaW9uIG9uIG90aGVyIFNvQ3MsCmJ1
dCBJIG1heSBiZSB3cm9uZy4KClsgICAgMS4wOTI3MDVdIFBNOiB0ZXN0IFJUQyB3YWtldXAgZnJv
bSAnZnJlZXplJyBzdXNwZW5kClsgICAgMS4wOTgyMzBdIFBNOiBzdXNwZW5kIGVudHJ5IChzMmlk
bGUpClsgICAgMS4yMTI5MDddIFBNOiBzdXNwZW5kIGRldmljZXMgdG9vayAwLjA4MCBzZWNvbmRz
CihUaGUgU29DIGZyZWV6ZXMgZm9yIHNvbWUgc2Vjb25kcykKWyAgICAzLjE5NzYwNF0gUE06IHJl
c3VtZSBkZXZpY2VzIHRvb2sgMC4xMDQgc2Vjb25kcwpbICAgIDMuMjE1OTM3XSBQTTogc3VzcGVu
ZCBleGl0CgpbICAgIDEuMDkyODEyXSBQTTogdGVzdCBSVEMgd2FrZXVwIGZyb20gJ21lbScgc3Vz
cGVuZApbICAgIDEuMDk4MDg5XSBQTTogc3VzcGVuZCBlbnRyeSAoZGVlcCkKWyAgICAxLjEwMjAz
M10gUE06IHN1c3BlbmQgZXhpdApbICAgIDEuMTA1MjA1XSBQTTogc3VzcGVuZCB0ZXN0IGZhaWxl
ZCwgZXJyb3IgLTIyCgpJbiBhbnkgY2FzZSwgdGhlIFJUQyBhbGFybSBpbnRlcnJ1cHQgZ2V0cyBm
aXJlZCBhcyBleHB0ZWN0ZWQ6CgokIGVjaG8gKzUgPiAvc3lzL2NsYXNzL3J0Yy9ydGMwL3dha2Vh
bGFybSAmJiBzbGVlcCA1ICYmIGdyZXAgcnRjCi9wcm9jL2ludGVycnVwdHMKIDI5OiAgICAgICAg
ICAxICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwICAgICBHSUN2MiAxMzMgTGV2ZWwK
ICA3MDAwMDAwLnJ0YwoKU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIEdvbnrDoWxleiA8YWxlamFu
ZHJvLmdvbnphbGV6LmNvcnJlb0BnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ydGMvcnRjLXN1bjZp
LmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAz
MCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMgYi9k
cml2ZXJzL3J0Yy9ydGMtc3VuNmkuYwppbmRleCBjMGU3NWMzNzM2MDUuLmI3NjExZTVkZWEzZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKKysrIGIvZHJpdmVycy9ydGMvcnRj
LXN1bjZpLmMKQEAgLTU5OCw2ICs1OTgsMzMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBydGNfY2xh
c3Nfb3BzIHN1bjZpX3J0Y19vcHMgPSB7CiAgLmFsYXJtX2lycV9lbmFibGUgPSBzdW42aV9ydGNf
YWxhcm1faXJxX2VuYWJsZQogfTsKCisjaWZkZWYgQ09ORklHX1BNX1NMRUVQCisvKiBFbmFibGUg
SVJRIHdha2Ugb24gc3VzcGVuZCwgdG8gd2FrZSB1cCBmcm9tIFJUQy4gKi8KK3N0YXRpYyBpbnQg
c3VuNmlfcnRjX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQoreworIHN0cnVjdCBzdW42aV9y
dGNfZGV2ICpjaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisKKyBpZiAoZGV2aWNlX21heV93
YWtldXAoZGV2KSkKKyBlbmFibGVfaXJxX3dha2UoY2hpcC0+aXJxKTsKKworIHJldHVybiAwOwor
fQorCisvKiBEaXNhYmxlIElSUSB3YWtlIG9uIHJlc3VtZS4gKi8KK3N0YXRpYyBpbnQgc3VuNmlf
cnRjX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7Cisgc3RydWN0IHN1bjZpX3J0Y19kZXYg
KmNoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKworIGlmIChkZXZpY2VfbWF5X3dha2V1cChk
ZXYpKQorIGRpc2FibGVfaXJxX3dha2UoY2hpcC0+aXJxKTsKKworIHJldHVybiAwOworfQorI2Vu
ZGlmCisKK3N0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhzdW42aV9ydGNfcG1fb3BzLAorIHN1bjZp
X3J0Y19zdXNwZW5kLCBzdW42aV9ydGNfcmVzdW1lKTsKKwogc3RhdGljIGludCBzdW42aV9ydGNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKICBzdHJ1Y3Qgc3VuNmlfcnRj
X2RldiAqY2hpcCA9IHN1bjZpX3J0YzsKQEAgLTY1MCw2ICs2NzcsOCBAQCBzdGF0aWMgaW50IHN1
bjZpX3J0Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQoKICBjbGtfcHJlcGFy
ZV9lbmFibGUoY2hpcC0+bG9zYyk7CgorIGRldmljZV9pbml0X3dha2V1cCgmcGRldi0+ZGV2LCAx
KTsKKwogIGNoaXAtPnJ0YyA9IGRldm1fcnRjX2RldmljZV9yZWdpc3RlcigmcGRldi0+ZGV2LCAi
cnRjLXN1bjZpIiwKICAgICAgJnN1bjZpX3J0Y19vcHMsIFRISVNfTU9EVUxFKTsKICBpZiAoSVNf
RVJSKGNoaXAtPnJ0YykpIHsKQEAgLTY4NCw2ICs3MTMsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RyaXZlciBzdW42aV9ydGNfZHJpdmVyID0gewogIC5kcml2ZXIgPSB7CiAgLm5hbWUgPSAi
c3VuNmktcnRjIiwKICAub2ZfbWF0Y2hfdGFibGUgPSBzdW42aV9ydGNfZHRfaWRzLAorIC5wbSA9
ICZzdW42aV9ydGNfcG1fb3BzLAogIH0sCiB9OwogYnVpbHRpbl9wbGF0Zm9ybV9kcml2ZXIoc3Vu
NmlfcnRjX2RyaXZlcik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
