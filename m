Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA3315E7FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbmZr1MRBVjqF18GnNDtweh+0qnmesI0uUlezHqXXoY=; b=hfACC1B/t+2jTm
	OvWeqbf+351NcFhaKvZOQrL8zknMglhJBorzO/q72a0j+kp9oGWqXxgD4VvLdeIfP1Is5sD8czHX5
	COb28GWs7DLXyxRz6OtwrSu0QAM2wDtZ3A00Zddtscm1JhiJLwEBJy5YmnUznmVJqFmgW6yB5FvQZ
	MThFL6XoPt2yzAyN6sc2qbHvK8G/fFPKMWIqNOTRI+Groyu7C3WBHlbgHkxYDQt6zCFYEES7S3C3V
	tPRXpd/Hr0q62ky71m5wN9ciHWJsgymbc4QFKb3VkfEG3oU8cYs7fn0hlnFvtisS9905nOl8No0xH
	Om+tGIacaPqXAPhR+zMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eI0-0006iv-VB; Fri, 14 Feb 2020 16:58:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dmf-0001o7-W1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:25:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7DC724771;
 Fri, 14 Feb 2020 16:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581697541;
 bh=+u5EBL3a4w2Coezj5q3yDAcoTg6wJonyuoR5mXT3+vQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jpqy5PstxlO9neLioTI66bpyhTyViICnrJWWPYWe3hRgiYHqACvUjwT/+2cnqcEwg
 +HefZjNWO4fnF8B5zfCHO9KmpqKFkv7gt5HAkYGZszE3698MUaAZBWdgQ+40NgTcvr
 pF9HhVSI0jCc8cKzz6DnBe6u0vbHsABTeeoXHQ3Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 061/100] ARM: dts: at91: sama5d3: fix maximum
 peripheral clock rates
Date: Fri, 14 Feb 2020 11:23:45 -0500
Message-Id: <20200214162425.21071-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_082542_080491_3FB982D0 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Karl=20Rudb=C3=A6k=20Olsen?= <karl@micro-technic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgoK
WyBVcHN0cmVhbSBjb21taXQgZWUwYWE5MjZkZGIwYmQ4YmE1OWUzM2UzODAzYjNiNTgwNGUzZjVk
YSBdCgpDdXJyZW50bHkgdGhlIG1heGltdW0gcmF0ZSBmb3IgcGVyaXBoZXJhbCBjbG9jayBpcyBj
YWxjdWxhdGVkIGJhc2VkIG9uIGEKdHlwaWNhbCAxMzNNSHogTUNLLiBUaGUgbWF4aW11bSBmcmVx
dWVuY3kgaXMgZGVmaW5lZCBpbiB0aGUgZGF0YXNoZWV0IGFzIGEKcmF0aW8gdG8gTUNLLiBTb21l
IHNhbWE1ZDMgcGxhdGZvcm1zIGFyZSB1c2luZyBhIDE2Nk1IeiBNQ0suIFVwZGF0ZSB0aGUKZGV2
aWNlIHRyZWVzIHRvIG1hdGNoIHRoZSBtYXhpbXVtIHJhdGUgYmFzZWQgb24gMTY2TUh6LgoKUmVw
b3J0ZWQtYnk6IEthcmwgUnVkYsOmayBPbHNlbiA8a2FybEBtaWNyby10ZWNobmljLmNvbT4KRml4
ZXM6IGQyZTgxOTBiNzkxNiAoIkFSTTogYXQ5MS9kdDogZGVmaW5lIHNhbWE1ZDMgY2xvY2tzIikK
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMDExMDE3MjAwNy4xMjUzNjU5LTEt
YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20KU2lnbmVkLW9mZi1ieTogQWxleGFuZHJlIEJl
bGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNo
YSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvc2FtYTVk
My5kdHNpICAgICAgfCAyOCArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybS9i
b290L2R0cy9zYW1hNWQzX2Nhbi5kdHNpICB8ICA0ICsrLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3Nh
bWE1ZDNfdWFydC5kdHNpIHwgIDQgKystLQogMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zYW1h
NWQzLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zYW1hNWQzLmR0c2kKaW5kZXggYTUzMjc5MTYw
Zjk4My4uNmIxODk0NDAwY2NjYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc2FtYTVk
My5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDMuZHRzaQpAQCAtMTEwNiw0OSAr
MTEwNiw0OSBAQAogCQkJCQl1c2FydDBfY2xrOiB1c2FydDBfY2xrIHsKIAkJCQkJCSNjbG9jay1j
ZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxMj47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJh
bmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgz
MDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDFfY2xrOiB1c2FydDFfY2xrIHsKIAkJCQkJ
CSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxMz47Ci0JCQkJCQlhdG1lbCxjbGst
b3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5n
ZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDJfY2xrOiB1c2FydDJfY2xr
IHsKIAkJCQkJCSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxND47Ci0JCQkJCQlh
dG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91
dHB1dC1yYW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDNfY2xrOiB1
c2FydDNfY2xrIHsKIAkJCQkJCSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxNT47
Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRt
ZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1YXJ0
MF9jbGs6IHVhcnQwX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcg
PSA8MTY+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAwPjsKKwkJ
CQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07CiAKIAkJ
CQkJdHdpMF9jbGs6IHR3aTBfY2xrIHsKIAkJCQkJCXJlZyA9IDwxOD47CiAJCQkJCQkjY2xvY2st
Y2VsbHMgPSA8MD47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgMTY2MjUwMDA+
OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDQxNTAwMDAwPjsKIAkJCQkJfTsK
IAogCQkJCQl0d2kxX2NsazogdHdpMV9jbGsgewogCQkJCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owog
CQkJCQkJcmVnID0gPDE5PjsKLQkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCAxNjYy
NTAwMD47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNDE1MDAwMDA+OwogCQkJ
CQl9OwogCiAJCQkJCXR3aTJfY2xrOiB0d2kyX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8
MD47CiAJCQkJCQlyZWcgPSA8MjA+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDww
IDE2NjI1MDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA0MTUwMDAwMD47
CiAJCQkJCX07CiAKIAkJCQkJbWNpMF9jbGs6IG1jaTBfY2xrIHsKQEAgLTExNjQsMTkgKzExNjQs
MTkgQEAKIAkJCQkJc3BpMF9jbGs6IHNwaTBfY2xrIHsKIAkJCQkJCSNjbG9jay1jZWxscyA9IDww
PjsKIAkJCQkJCXJlZyA9IDwyND47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAg
MTMzMDAwMDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCAxNjYwMDAwMDA+
OwogCQkJCQl9OwogCiAJCQkJCXNwaTFfY2xrOiBzcGkxX2NsayB7CiAJCQkJCQkjY2xvY2stY2Vs
bHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8MjU+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5n
ZSA9IDwwIDEzMzAwMDAwMD47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgMTY2
MDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl0Y2IwX2NsazogdGNiMF9jbGsgewogCQkJCQkJI2Ns
b2NrLWNlbGxzID0gPDA+OwogCQkJCQkJcmVnID0gPDI2PjsKLQkJCQkJCWF0bWVsLGNsay1vdXRw
dXQtcmFuZ2UgPSA8MCAxMzMwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9
IDwwIDE2NjAwMDAwMD47CiAJCQkJCX07CiAKIAkJCQkJcHdtX2NsazogcHdtX2NsayB7CkBAIC0x
MTg3LDcgKzExODcsNyBAQAogCQkJCQlhZGNfY2xrOiBhZGNfY2xrIHsKIAkJCQkJCSNjbG9jay1j
ZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwyOT47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJh
bmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgz
MDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQlkbWEwX2NsazogZG1hMF9jbGsgewpAQCAtMTIxOCwx
MyArMTIxOCwxMyBAQAogCQkJCQlzc2MwX2Nsazogc3NjMF9jbGsgewogCQkJCQkJI2Nsb2NrLWNl
bGxzID0gPDA+OwogCQkJCQkJcmVnID0gPDM4PjsKLQkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFu
Z2UgPSA8MCA2NjAwMDAwMD47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgODMw
MDAwMDA+OwogCQkJCQl9OwogCiAJCQkJCXNzYzFfY2xrOiBzc2MxX2NsayB7CiAJCQkJCQkjY2xv
Y2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8Mzk+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1
dC1yYW5nZSA9IDwwIDY2MDAwMDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8
MCA4MzAwMDAwMD47CiAJCQkJCX07CiAKIAkJCQkJc2hhX2Nsazogc2hhX2NsayB7CmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib290L2R0cy9zYW1hNWQzX2Nhbi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvc2FtYTVkM19jYW4uZHRzaQppbmRleCBjNWEzNzcyNzQxYmY2Li4wZmFjNzlmNzVjMDZjIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9zYW1hNWQzX2Nhbi5kdHNpCisrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3NhbWE1ZDNfY2FuLmR0c2kKQEAgLTM3LDEzICszNywxMyBAQAogCQkJCQlj
YW4wX2NsazogY2FuMF9jbGsgewogCQkJCQkJI2Nsb2NrLWNlbGxzID0gPDA+OwogCQkJCQkJcmVn
ID0gPDQwPjsKLQkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA2NjAwMDAwMD47CisJ
CQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgODMwMDAwMDA+OwogCQkJCQl9OwogCiAJ
CQkJCWNhbjFfY2xrOiBjYW4xX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJ
CQlyZWcgPSA8NDE+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAw
PjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07
CiAJCQkJfTsKIAkJCX07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zYW1hNWQzX3Vh
cnQuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdWFydC5kdHNpCmluZGV4IDI1MTFk
NzQ4ODY3YmQuLjcxODE4YzdiZmI2NzMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Nh
bWE1ZDNfdWFydC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdWFydC5kdHNp
CkBAIC00MiwxMyArNDIsMTMgQEAKIAkJCQkJdWFydDBfY2xrOiB1YXJ0MF9jbGsgewogCQkJCQkJ
I2Nsb2NrLWNlbGxzID0gPDA+OwogCQkJCQkJcmVnID0gPDE2PjsKLQkJCQkJCWF0bWVsLGNsay1v
dXRwdXQtcmFuZ2UgPSA8MCA2NjAwMDAwMD47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdl
ID0gPDAgODMwMDAwMDA+OwogCQkJCQl9OwogCiAJCQkJCXVhcnQxX2NsazogdWFydDFfY2xrIHsK
IAkJCQkJCSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxNz47Ci0JCQkJCQlhdG1l
bCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1
dC1yYW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAkJCQl9OwogCQkJfTsKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
