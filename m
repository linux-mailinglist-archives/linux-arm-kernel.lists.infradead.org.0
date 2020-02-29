Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A171174994
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 23:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uoZuJ6L5FVQAWPJNXKQ3g5V1/f6Ey9QFldPXN93cTgM=; b=rNjpqOJNm3OQHv
	twgYyKmgbUL23gwnsClMvt2UJTWD6LjtMACpUaaX9e2USQkNFx8F1xtoM2dlmw9dvD/NvoLAoJBfY
	rDBxmaJ0LZQPYce/rNF44MW4Frf91XaEQXd4HkwhgfOsManun4M3n5AKqFKFTnB15S82lnFFjfJq/
	IhIws8OTH4JDAfcZWCTa3kHghUEYe2AOWT9v2cDCzjzn/Ekusg3mMME/PgjfD4kw8YBu7Pne1RgV9
	/thCkZ+tvlHp8NtuwXi1/5XiSz0kIvLgj7b7W8mlZ8j68iuEeJnbOEIAvAZiKnQT4+e48igtdw69z
	z1A0DF8ufldTL90iDOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8AQ3-0007CT-B6; Sat, 29 Feb 2020 22:17:11 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8APt-0007Az-VN
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 22:17:03 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48VLNk2qpPz1rQC1;
 Sat, 29 Feb 2020 23:16:54 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48VLNk21X3z1r0bh;
 Sat, 29 Feb 2020 23:16:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id aGq5kC_jf68O; Sat, 29 Feb 2020 23:16:52 +0100 (CET)
X-Auth-Info: WDpKlVTQBPcpmhOpnRbP8hWbVI4mHVuxtGRW2sTkeTo=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 29 Feb 2020 23:16:52 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/stm: repair runtime power management
Date: Sat, 29 Feb 2020 23:16:49 +0100
Message-Id: <20200229221649.90813-1-marex@denx.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_141702_308117_BFFFC205 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Philippe Cornu <philippe.cornu@st.com>,
 =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG1pc3NpbmcgcG1fcnVudGltZV9nZXRfc3luYygpIGludG8gbHRkY19jcnRjX2F0b21pY19l
bmFibGUoKSB0bwptYXRjaCBwbV9ydW50aW1lX3B1dF9zeW5jKCkgaW4gbHRkY19jcnRjX2F0b21p
Y19kaXNhYmxlKCksIG90aGVyd2lzZQp0aGUgTFREQyBtaWdodCBzdXNwZW5kIHZpYSBydW50aW1l
IFBNLCBkaXNhYmxlIGNsb2NrLCBhbmQgdGhlbiBmYWlsCnRvIHJlc3VtZSBsYXRlciBvbi4KClRo
ZSB0ZXN0IHdoaWNoIHRyaWdnZXJzIGl0IGlzIHJvdWdobHkgLS0gcnVuIHF0NSBhcHBsaWNhdGlv
biB3aGljaAp1c2VzIGVnbGZzIHBsYXRmb3JtIGFuZCBldG5hdml2LCBzdG9wIHRoZSBhcHBsaWNh
dGlvbiwgc2xlZXAgZm9yIDE1Cm1pbnV0ZXMsIHJ1biB0aGUgYXBwbGljYXRpb24gYWdhaW4uIFRo
aXMgbGVhZHMgdG8gYSB0aW1lb3V0IHdhaXRpbmcKZm9yIHZzeW5jLCBiZWNhdXNlIHRoZSBMVERD
IGhhcyBzdXNwZW5kZWQsIGJ1dCBkaWQgbm90IHJlc3VtZS4KCkZpeGVzOiAzNWFiNmNmYmYyMTEg
KCJkcm0vc3RtOiBzdXBwb3J0IHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudCIpClNpZ25lZC1vZmYt
Ynk6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgpDYzogWWFubmljayBGZXJ0csOpIDx5YW5u
aWNrLmZlcnRyZUBzdC5jb20+CkNjOiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3Qu
Y29tPgpDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+
CkNjOiBWaW5jZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgpDYzogTWF4aW1lIENv
cXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgpDYzogQWxleGFuZHJlIFRvcmd1ZSA8
YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+ClRvOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCkNjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCi0tLS0tLS0tLS0tLVsgY3V0IGhl
cmUgXS0tLS0tLS0tLS0tLQpXQVJOSU5HOiBDUFU6IDAgUElEOiAyOTcgYXQgZHJpdmVycy9ncHUv
ZHJtL2RybV9hdG9taWNfaGVscGVyLmM6MTQ5NCBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92
YmxhbmtzKzB4MWRjLzB4MjAwCltDUlRDOjM1OmNydGMtMF0gdmJsYW5rIHdhaXQgdGltZWQgb3V0
Ck1vZHVsZXMgbGlua2VkIGluOgpDUFU6IDAgUElEOiAyOTcgQ29tbTogUVNHUmVuZGVyVGhyZWFk
IE5vdCB0YWludGVkIDUuNi4wLXJjMy1uZXh0LTIwMjAwMjI4LTAwMDEwLWczMThiZjBmYzA4ZWYg
IzIKSGFyZHdhcmUgbmFtZTogU1RNMzIgKERldmljZSBUcmVlIFN1cHBvcnQpCls8YzAxMGYxOGM+
XSAodW53aW5kX2JhY2t0cmFjZSkgZnJvbSBbPGMwMTBhZmI4Pl0gKHNob3dfc3RhY2srMHgxMC8w
eDE0KQpbPGMwMTBhZmI4Pl0gKHNob3dfc3RhY2spIGZyb20gWzxjMDdiMWQzYz5dIChkdW1wX3N0
YWNrKzB4YjQvMHhkMCkKWzxjMDdiMWQzYz5dIChkdW1wX3N0YWNrKSBmcm9tIFs8YzAxMWQ4Yjg+
XSAoX193YXJuKzB4ZDQvMHhmMCkKWzxjMDExZDhiOD5dIChfX3dhcm4pIGZyb20gWzxjMDExZGM0
Yz5dICh3YXJuX3Nsb3dwYXRoX2ZtdCsweDc4LzB4YTgpCls8YzAxMWRjNGM+XSAod2Fybl9zbG93
cGF0aF9mbXQpIGZyb20gWzxjMDRhMjY2Yz5dIChkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92
YmxhbmtzKzB4MWRjLzB4MjAwKQpbPGMwNGEyNjZjPl0gKGRybV9hdG9taWNfaGVscGVyX3dhaXRf
Zm9yX3ZibGFua3MpIGZyb20gWzxjMDRhNTEwYz5dIChkcm1fYXRvbWljX2hlbHBlcl9jb21taXRf
dGFpbCswCng1MC8weDYwKQpbPGMwNGE1MTBjPl0gKGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90
YWlsKSBmcm9tIFs8YzA0YTUyYTg+XSAoY29tbWl0X3RhaWwrMHgxMmMvMHgxM2MpCls8YzA0YTUy
YTg+XSAoY29tbWl0X3RhaWwpIGZyb20gWzxjMDRhNTNiND5dIChkcm1fYXRvbWljX2hlbHBlcl9j
b21taXQrMHhmNC8weDEwMCkKWzxjMDRhNTNiND5dIChkcm1fYXRvbWljX2hlbHBlcl9jb21taXQp
IGZyb20gWzxjMDRhMmQzOD5dIChkcm1fYXRvbWljX2hlbHBlcl9zZXRfY29uZmlnKzB4NTgvMHg2
YykKWzxjMDRhMmQzOD5dIChkcm1fYXRvbWljX2hlbHBlcl9zZXRfY29uZmlnKSBmcm9tIFs8YzA0
YjE5OTQ+XSAoZHJtX21vZGVfc2V0Y3J0YysweDQ1MC8weDU1MCkKWzxjMDRiMTk5ND5dIChkcm1f
bW9kZV9zZXRjcnRjKSBmcm9tIFs8YzA0YWQ1NzA+XSAoZHJtX2lvY3RsX2tlcm5lbCsweDkwLzB4
ZTgpCls8YzA0YWQ1NzA+XSAoZHJtX2lvY3RsX2tlcm5lbCkgZnJvbSBbPGMwNGFkOGFjPl0gKGRy
bV9pb2N0bCsweDJlNC8weDMyYykKWzxjMDRhZDhhYz5dIChkcm1faW9jdGwpIGZyb20gWzxjMDI0
Njc4ND5dICh2ZnNfaW9jdGwrMHgyMC8weDM4KQpbPGMwMjQ2Nzg0Pl0gKHZmc19pb2N0bCkgZnJv
bSBbPGMwMjQ3MGYwPl0gKGtzeXNfaW9jdGwrMHhiYy8weDdiMCkKWzxjMDI0NzBmMD5dIChrc3lz
X2lvY3RsKSBmcm9tIFs8YzAxMDEwMDA+XSAocmV0X2Zhc3Rfc3lzY2FsbCsweDAvMHg1NCkKRXhj
ZXB0aW9uIHN0YWNrKDB4ZWU4ZjNmYTggdG8gMHhlZThmM2ZmMCkKM2ZhMDogICAgICAgICAgICAg
ICAgICAgMDAwMDAwMDUgYWRjYmViMTggMDAwMDAwMDUgYzA2ODY0YTIgYWRjYmViMTggMDAwMDAw
MDEKM2ZjMDogMDAwMDAwMDUgYWRjYmViMTggYzA2ODY0YTIgMDAwMDAwMzYgMDAwMDAwMjkgMDAw
MDAwMjMgMDAwMDAwMjMgMDAwMDAwMDcKM2ZlMDogYjExM2IwOTggYWRjYmVhZmMgYjExMjU0MTMg
YjYxNTVjZjgKLS0tWyBlbmQgdHJhY2UgMmFkNWJhOTU0Y2ViNzY3YSBdLS0tCi0tLQogZHJpdmVy
cy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIGIvZHJpdmVycy9n
cHUvZHJtL3N0bS9sdGRjLmMKaW5kZXggOTliZjkzZThiMzZmLi4zMDFkZTA0OTgwNzggMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dG0vbHRkYy5jCkBAIC00MjUsOSArNDI1LDEyIEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9t
aWNfZW5hYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkJCQkgICAgc3RydWN0IGRybV9jcnRj
X3N0YXRlICpvbGRfc3RhdGUpCiB7CiAJc3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gY3J0Y190
b19sdGRjKGNydGMpOworCXN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gY3J0Yy0+ZGV2OwogCiAJ
RFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKIAorCXBtX3J1bnRpbWVfZ2V0X3N5bmMoZGRldi0+ZGV2
KTsKKwogCS8qIFNldHMgdGhlIGJhY2tncm91bmQgY29sb3IgdmFsdWUgKi8KIAlyZWdfd3JpdGUo
bGRldi0+cmVncywgTFREQ19CQ0NSLCBCQ0NSX0JDQkxBQ0spOwogCi0tIAoyLjI1LjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
