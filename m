Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCA01FDE55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsOfIZy1ZHirI1wo3DaraCV0TJdvzjkkFbaaRc5KhrE=; b=I2XefTdm3E++pK
	5rhm9JPIstSJBedHR6T2EcJ8gkhEAJVn+GQmV2G8NRFYzUDo07XCOAdC+k1OHEQDxIH+Yt0MqkUXo
	zxAUTNEE9Vr+GrvBJlYgWb4lxKk1BT7qgmQbfTccA/aX5cPplyaHNpjoYRQUjABjm3oKRijdTEfuf
	lsuUq4/btbr7xK3Tc/uwbiMpYn6FGGCG6zwEg1M8TUh8REE5Y7LygtvsmIhVEG3WhVW49Xw31wqwg
	QifhPSd4QBXEVrx4zlaUso059sks5XhTO1Rq4dKJVgvUgVlaigTXTwpS78CJHfiEh6/WSKg8RWETf
	RYJau9yuRyb+KaMQiutA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljQY-0002bk-OW; Thu, 18 Jun 2020 01:33:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj8q-0003ze-27
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E624B21D7E;
 Thu, 18 Jun 2020 01:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442895;
 bh=dmuvR/xPFusMGiKvEEAwv0PxlMX7akh3AkyTfLZHxdg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kkYvzKy1EEX2MwFS6IbrL0L/+dmDe4PLTCZ3bjoAH96bpMoX/t0/wLruDvJWahMg+
 fH42410mvcA89CUbK4TyAi9SMVl/UChEMMSH5KUzs35YiXlWA6N4/E0XPi5CSJa2On
 nZfy/nX+bR7Bn0v0GYglNQH0m8xM9yNzyDvbxlm4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 317/388] pwm: imx27: Fix rounding behavior
Date: Wed, 17 Jun 2020 21:06:54 -0400
Message-Id: <20200618010805.600873-317-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181456_199071_F2FC5534 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClsgVXBzdHJlYW0gY29tbWl0IGFlZjFhMzc5OWI1Y2IzYmE0ODQxZjYwMzQ0OTdiMTc5NjQ2Y2Nj
NzAgXQoKVG8gbm90IHRyaWdnZXIgdGhlIHdhcm5pbmdzIHByb3ZpZGVkIGJ5IENPTkZJR19QV01f
REVCVUcKCiAtIHVzZSB1cC1yb3VuZGluZyBpbiAuZ2V0X3N0YXRlKCkKIC0gZG9uJ3QgZGl2aWRl
IGJ5IHRoZSByZXN1bHQgb2YgYSBkaXZpc2lvbgogLSBkb24ndCB1c2UgdGhlIHJvdW5kZWQgY291
bnRlciB2YWx1ZSBmb3IgdGhlIHBlcmlvZCBsZW5ndGggdG8gY2FsY3VsYXRlCiAgIHRoZSBjb3Vu
dGVyIHZhbHVlIGZvciB0aGUgZHV0eSBjeWNsZQoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogVGhp
ZXJyeSBSZWRpbmcgPHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogU2Fz
aGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1pbXgyNy5j
IHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20taW14Mjcu
YyBiL2RyaXZlcnMvcHdtL3B3bS1pbXgyNy5jCmluZGV4IGE2ZTQwZDRjNDg1Zi4uNzMyYTZmMzcw
MWU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20taW14MjcuYworKysgYi9kcml2ZXJzL3B3
bS9wd20taW14MjcuYwpAQCAtMTUwLDEzICsxNTAsMTIgQEAgc3RhdGljIHZvaWQgcHdtX2lteDI3
X2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCiAKIAlwcmVzY2FsZXIgPSBNWDNfUFdN
Q1JfUFJFU0NBTEVSX0dFVCh2YWwpOwogCXB3bV9jbGsgPSBjbGtfZ2V0X3JhdGUoaW14LT5jbGtf
cGVyKTsKLQlwd21fY2xrID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHB3bV9jbGssIHByZXNjYWxl
cik7CiAJdmFsID0gcmVhZGwoaW14LT5tbWlvX2Jhc2UgKyBNWDNfUFdNUFIpOwogCXBlcmlvZCA9
IHZhbCA+PSBNWDNfUFdNUFJfTUFYID8gTVgzX1BXTVBSX01BWCA6IHZhbDsKIAogCS8qIFBXTU9V
VCAoSHopID0gUFdNQ0xLIC8gKFBXTVBSICsgMikgKi8KLQl0bXAgPSBOU0VDX1BFUl9TRUMgKiAo
dTY0KShwZXJpb2QgKyAyKTsKLQlzdGF0ZS0+cGVyaW9kID0gRElWX1JPVU5EX0NMT1NFU1RfVUxM
KHRtcCwgcHdtX2Nsayk7CisJdG1wID0gTlNFQ19QRVJfU0VDICogKHU2NCkocGVyaW9kICsgMikg
KiBwcmVzY2FsZXI7CisJc3RhdGUtPnBlcmlvZCA9IERJVl9ST1VORF9VUF9VTEwodG1wLCBwd21f
Y2xrKTsKIAogCS8qCiAJICogUFdNU0FSIGNhbiBiZSByZWFkIG9ubHkgaWYgUFdNIGlzIGVuYWJs
ZWQuIElmIHRoZSBQV00gaXMgZGlzYWJsZWQsCkBAIC0xNjcsOCArMTY2LDggQEAgc3RhdGljIHZv
aWQgcHdtX2lteDI3X2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCiAJZWxzZQogCQl2
YWwgPSBpbXgtPmR1dHlfY3ljbGU7CiAKLQl0bXAgPSBOU0VDX1BFUl9TRUMgKiAodTY0KSh2YWwp
OwotCXN0YXRlLT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgcHdtX2Ns
ayk7CisJdG1wID0gTlNFQ19QRVJfU0VDICogKHU2NCkodmFsKSAqIHByZXNjYWxlcjsKKwlzdGF0
ZS0+ZHV0eV9jeWNsZSA9IERJVl9ST1VORF9VUF9VTEwodG1wLCBwd21fY2xrKTsKIAogCXB3bV9p
bXgyN19jbGtfZGlzYWJsZV91bnByZXBhcmUoaW14KTsKIH0KQEAgLTIyMCwyMiArMjE5LDIzIEBA
IHN0YXRpYyBpbnQgcHdtX2lteDI3X2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0
IHB3bV9kZXZpY2UgKnB3bSwKIAlzdHJ1Y3QgcHdtX2lteDI3X2NoaXAgKmlteCA9IHRvX3B3bV9p
bXgyN19jaGlwKGNoaXApOwogCXN0cnVjdCBwd21fc3RhdGUgY3N0YXRlOwogCXVuc2lnbmVkIGxv
bmcgbG9uZyBjOworCXVuc2lnbmVkIGxvbmcgbG9uZyBjbGtyYXRlOwogCWludCByZXQ7CiAJdTMy
IGNyOwogCiAJcHdtX2dldF9zdGF0ZShwd20sICZjc3RhdGUpOwogCi0JYyA9IGNsa19nZXRfcmF0
ZShpbXgtPmNsa19wZXIpOwotCWMgKj0gc3RhdGUtPnBlcmlvZDsKKwljbGtyYXRlID0gY2xrX2dl
dF9yYXRlKGlteC0+Y2xrX3Blcik7CisJYyA9IGNsa3JhdGUgKiBzdGF0ZS0+cGVyaW9kOwogCi0J
ZG9fZGl2KGMsIDEwMDAwMDAwMDApOworCWRvX2RpdihjLCBOU0VDX1BFUl9TRUMpOwogCXBlcmlv
ZF9jeWNsZXMgPSBjOwogCiAJcHJlc2NhbGUgPSBwZXJpb2RfY3ljbGVzIC8gMHgxMDAwMCArIDE7
CiAKIAlwZXJpb2RfY3ljbGVzIC89IHByZXNjYWxlOwotCWMgPSAodW5zaWduZWQgbG9uZyBsb25n
KXBlcmlvZF9jeWNsZXMgKiBzdGF0ZS0+ZHV0eV9jeWNsZTsKLQlkb19kaXYoYywgc3RhdGUtPnBl
cmlvZCk7CisJYyA9IGNsa3JhdGUgKiBzdGF0ZS0+ZHV0eV9jeWNsZTsKKwlkb19kaXYoYywgTlNF
Q19QRVJfU0VDICogcHJlc2NhbGUpOwogCWR1dHlfY3ljbGVzID0gYzsKIAogCS8qCi0tIAoyLjI1
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
