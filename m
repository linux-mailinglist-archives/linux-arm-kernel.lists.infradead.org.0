Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F41BBB9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 23:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c42ar0wmAyRoLqz0Nqe8JmZtUsz11N5nlPCyzu9Fd00=; b=geh1TP1DU41Yh8
	TAMMvpMgDA1FUc2q33jIoW5ohPwJ6kfwb0Tnoo5Semu1ZN2gvrtKK4PMFuNLM3pJ3G0NHzfpxvs2a
	sRazVGBo0s+kyZLLl37vJxKSlMeGhXZfmrQT3DbGg0TTO7xbzWLIkuZtb7JQdzGZ+mL9YjRCywLNe
	B0rXboPIPqTx3bRKuX2zE+pZQfgyE7Pr8f+EUbIzEQhe5smuR/RO9KRWFHyimwDz73RMnyrrWAscc
	1IYmqSuFugPA2sdb8Jnh0KH6agYDi4D383fch3RLl+Qt0rv2Q1Odggrn4bRk32YYRNWR0PC9lhS6K
	hnlbSt5I/xj5p66xAdqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKrVg-0001a9-1M; Sun, 28 Apr 2019 21:38:56 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrUl-0000gj-Kf
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 21:38:01 +0000
Received: from dellmb.labs.office.nic.cz (unknown [172.20.6.125])
 by mail.nic.cz (Postfix) with ESMTP id 994326372C;
 Sun, 28 Apr 2019 23:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1556487470; bh=Y/XaKqXNeDvzYLkSf1zTWCDYF1yloZlwLMmVd3V6OzE=;
 h=From:To:Date;
 b=c1JgzBaI6CHDKA1jOOvr50sFBO/wtG1IkBBhhr2NqZhY6tJ9XGJT7Q+B52wyGNYDP
 /TBLvCwuBpfyLPXhymkMVm6t3/yumXI+8rNxeAD36e76/5T0Z/3VHqvBAd2LDe0P5Z
 OxbyUjOV8o3NIiyDkUUeJs60c4lBkSw7ETSDVSHI=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v5 armsoc/drivers/bus+gpio 5/5] dt-bindings: gpio: Document
 GPIOs via Moxtet bus
Date: Sun, 28 Apr 2019 23:37:49 +0200
Message-Id: <20190428213749.7017-6-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190428213749.7017-1-marek.behun@nic.cz>
References: <20190428213749.7017-1-marek.behun@nic.cz>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_143759_978459_838619AC 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGRvY3VtZW50YXRpb24gb2YgdGhlIGRldmljZSB0cmVlIGJpbmRpbmdz
IGZvciBHUElPcwpvbiB0aGUgZGV2aWNlcyBjb25uZWN0ZWQgdmlhIE1veHRldCBidXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KUmV2aWV3ZWQtYnk6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlq
IDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
Z3Bpby9ncGlvLW1veHRldC50eHQgICB8IDE4ICsrKysrKysrKysrKysrKysrKwogTUFJTlRBSU5F
UlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIDIgZmlsZXMgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8tbW94dGV0LnR4dAoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8tbW94dGV0LnR4dCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8tbW94dGV0LnR4dApuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjQxMDc1OWRlOWYwOQotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8t
bW94dGV0LnR4dApAQCAtMCwwICsxLDE4IEBACitUdXJyaXMgTW94IE1veHRldCBHUElPIGV4cGFu
ZGVyIHZpYSBNb3h0ZXQgYnVzCisKK1JlcXVpcmVkIHByb3BlcnRpZXM6CisgLSBjb21wYXRpYmxl
CQk6IFNob3VsZCBiZSAiY3puaWMsbW94dGV0LWdwaW8iLgorIC0gZ3Bpby1jb250cm9sbGVyCTog
TWFya3MgdGhlIGRldmljZSBub2RlIGFzIGEgR1BJTyBjb250cm9sbGVyLgorIC0gI2dwaW8tY2Vs
bHMJCTogU2hvdWxkIGJlIHR3by4gRm9yIGNvbnN1bWVyIHVzZSBzZWUgZ3Bpby50eHQuCisKK090
aGVyIHByb3BlcnRpZXMgYXJlIHJlcXVpcmVkIGZvciBhIE1veHRldCBidXMgZGV2aWNlLCBwbGVh
c2UgcmVmZXIgdG8KK0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9idXMvbW94dGV0
LnR4dC4KKworRXhhbXBsZToKKworCW1veHRldF9zZnA6IGdwaW9AMCB7CisJCWNvbXBhdGlibGUg
PSAiY3puaWMsbW94dGV0LWdwaW8iOworCQlncGlvLWNvbnRyb2xsZXI7CisJCSNncGlvLWNlbGxz
ID0gPDI+OworCQlyZWcgPSA8MD47CisJfQpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUwppbmRleCBjODY1YmY3NDI5NjYuLmIyZGYxYWY0YmY5YiAxMDA2NDQKLS0tIGEvTUFJ
TlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTE1NDQsNiArMTU0NCw3IEBAIFM6CU1haW50
YWluZWQKIEY6CURvY3VtZW50YXRpb24vQUJJL3Rlc3RpbmcvZGVidWdmcy1tb3h0ZXQKIEY6CURv
Y3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtYnVzLW1veHRldC1kZXZpY2VzCiBGOglEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQKK0Y6CURvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dwaW8tbW94dGV0LnR4dAogRjoJaW5jbHVk
ZS9saW51eC9tb3h0ZXQuaAogRjoJZHJpdmVycy9idXMvbW94dGV0LmMKIEY6CWRyaXZlcnMvZ3Bp
by9ncGlvLW1veHRldC5jCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
