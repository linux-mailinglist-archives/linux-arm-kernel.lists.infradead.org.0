Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388941374A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=of033+B7XzMTHtWVWKpYG3nK9GhQg5wQ5jkm2Dq3n0M=; b=uJVt23oLz2f6hM
	Kdwpy8m76G/Nu4I13aZOoOeJvOkwmbYdqOpk6IXr7d2EMf3SnFtA5ErF37uyed1zu4C77zNqGeKLL
	e8HENA0BJTEtLpXgeqjDRLFfG/hxxiErAugYjXADILnpeXnyrMQrsM00kCuYQLk734+18+rBvsSim
	jocndXky2E1ZOjtAy0KPR9OIBvjsf2Y4fklI5EYE4Z+Ckx9pbYIPnXC9GrhwKaaZt8Socdm/otmRw
	mAQULaLVdeT+Gr7R1f8W6Y4nQpXJpaLZqVYMQNQ4RsTmdkn1M7eZ/ns6u5kK7FQX1y6jnJnfv384M
	sXw7RGCwhCoAh9R1niog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxxU-0001DL-BT; Fri, 10 Jan 2020 17:20:28 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxxN-0001CF-2Z
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:20:22 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 31BE9E0007;
 Fri, 10 Jan 2020 17:20:15 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: at91: sama5d3: fix maximum peripheral clock
 rates
Date: Fri, 10 Jan 2020 18:20:06 +0100
Message-Id: <20200110172007.1253659-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092021_395203_C5B52610 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Karl=20Rudb=C3=A6k=20Olsen?= <karl@micro-technic.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q3VycmVudGx5IHRoZSBtYXhpbXVtIHJhdGUgZm9yIHBlcmlwaGVyYWwgY2xvY2sgaXMgY2FsY3Vs
YXRlZCBiYXNlZCBvbiBhCnR5cGljYWwgMTMzTUh6IE1DSy4gVGhlIG1heGltdW0gZnJlcXVlbmN5
IGlzIGRlZmluZWQgaW4gdGhlIGRhdGFzaGVldCBhcyBhCnJhdGlvIHRvIE1DSy4gU29tZSBzYW1h
NWQzIHBsYXRmb3JtcyBhcmUgdXNpbmcgYSAxNjZNSHogTUNLLiBVcGRhdGUgdGhlCmRldmljZSB0
cmVlcyB0byBtYXRjaCB0aGUgbWF4aW11bSByYXRlIGJhc2VkIG9uIDE2Nk1Iei4KClJlcG9ydGVk
LWJ5OiBLYXJsIFJ1ZGLDpmsgT2xzZW4gPGthcmxAbWljcm8tdGVjaG5pYy5jb20+CkZpeGVzOiBk
MmU4MTkwYjc5MTYgKCJBUk06IGF0OTEvZHQ6IGRlZmluZSBzYW1hNWQzIGNsb2NrcyIpClNpZ25l
ZC1vZmYtYnk6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNv
bT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zYW1hNWQzLmR0c2kgICAgICB8IDI4ICsrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfY2FuLmR0c2kg
IHwgIDQgKystLQogYXJjaC9hcm0vYm9vdC9kdHMvc2FtYTVkM191YXJ0LmR0c2kgfCAgNCArKy0t
CiAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDMuZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3NhbWE1ZDMuZHRzaQppbmRleCBmNzcwYWFjZTBlZmQuLjIwM2Q0MGJlNzBhNSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc2FtYTVkMy5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3NhbWE1ZDMuZHRzaQpAQCAtMTE4OCw0OSArMTE4OCw0OSBAQCBwaW9FX2NsazogcGlvRV9j
bGsgewogCQkJCQl1c2FydDBfY2xrOiB1c2FydDBfY2xrIHsKIAkJCQkJCSNjbG9jay1jZWxscyA9
IDwwPjsKIAkJCQkJCXJlZyA9IDwxMj47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0g
PDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgzMDAwMDAw
PjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDFfY2xrOiB1c2FydDFfY2xrIHsKIAkJCQkJCSNjbG9j
ay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxMz47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0
LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDww
IDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDJfY2xrOiB1c2FydDJfY2xrIHsKIAkJ
CQkJCSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxND47Ci0JCQkJCQlhdG1lbCxj
bGstb3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1y
YW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1c2FydDNfY2xrOiB1c2FydDNf
Y2xrIHsKIAkJCQkJCSNjbG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwxNT47Ci0JCQkJ
CQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xr
LW91dHB1dC1yYW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl1YXJ0MF9jbGs6
IHVhcnQwX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8MTY+
OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAwPjsKKwkJCQkJCWF0
bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07CiAKIAkJCQkJdHdp
MF9jbGs6IHR3aTBfY2xrIHsKIAkJCQkJCXJlZyA9IDwxOD47CiAJCQkJCQkjY2xvY2stY2VsbHMg
PSA8MD47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgMTY2MjUwMDA+OworCQkJ
CQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDQxNTAwMDAwPjsKIAkJCQkJfTsKIAogCQkJ
CQl0d2kxX2NsazogdHdpMV9jbGsgewogCQkJCQkJI2Nsb2NrLWNlbGxzID0gPDA+OwogCQkJCQkJ
cmVnID0gPDE5PjsKLQkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCAxNjYyNTAwMD47
CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNDE1MDAwMDA+OwogCQkJCQl9Owog
CiAJCQkJCXR3aTJfY2xrOiB0d2kyX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJ
CQkJCQlyZWcgPSA8MjA+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDE2NjI1
MDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA0MTUwMDAwMD47CiAJCQkJ
CX07CiAKIAkJCQkJbWNpMF9jbGs6IG1jaTBfY2xrIHsKQEAgLTEyNDYsMTkgKzEyNDYsMTkgQEAg
bWNpMV9jbGs6IG1jaTFfY2xrIHsKIAkJCQkJc3BpMF9jbGs6IHNwaTBfY2xrIHsKIAkJCQkJCSNj
bG9jay1jZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwyND47Ci0JCQkJCQlhdG1lbCxjbGstb3V0
cHV0LXJhbmdlID0gPDAgMTMzMDAwMDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2Ug
PSA8MCAxNjYwMDAwMDA+OwogCQkJCQl9OwogCiAJCQkJCXNwaTFfY2xrOiBzcGkxX2NsayB7CiAJ
CQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8MjU+OwotCQkJCQkJYXRtZWws
Y2xrLW91dHB1dC1yYW5nZSA9IDwwIDEzMzAwMDAwMD47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0
LXJhbmdlID0gPDAgMTY2MDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQl0Y2IwX2NsazogdGNiMF9j
bGsgewogCQkJCQkJI2Nsb2NrLWNlbGxzID0gPDA+OwogCQkJCQkJcmVnID0gPDI2PjsKLQkJCQkJ
CWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCAxMzMwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xr
LW91dHB1dC1yYW5nZSA9IDwwIDE2NjAwMDAwMD47CiAJCQkJCX07CiAKIAkJCQkJcHdtX2Nsazog
cHdtX2NsayB7CkBAIC0xMjY5LDcgKzEyNjksNyBAQCBwd21fY2xrOiBwd21fY2xrIHsKIAkJCQkJ
YWRjX2NsazogYWRjX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcg
PSA8Mjk+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAwPjsKKwkJ
CQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07CiAKIAkJ
CQkJZG1hMF9jbGs6IGRtYTBfY2xrIHsKQEAgLTEzMDAsMTMgKzEzMDAsMTMgQEAgaXNpX2Nsazog
aXNpX2NsayB7CiAJCQkJCXNzYzBfY2xrOiBzc2MwX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMg
PSA8MD47CiAJCQkJCQlyZWcgPSA8Mzg+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9
IDwwIDY2MDAwMDAwPjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAw
MD47CiAJCQkJCX07CiAKIAkJCQkJc3NjMV9jbGs6IHNzYzFfY2xrIHsKIAkJCQkJCSNjbG9jay1j
ZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwzOT47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJh
bmdlID0gPDAgNjYwMDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgz
MDAwMDAwPjsKIAkJCQkJfTsKIAogCQkJCQlzaGFfY2xrOiBzaGFfY2xrIHsKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfY2FuLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9z
YW1hNWQzX2Nhbi5kdHNpCmluZGV4IGNmMDZhMDE4ZWQwZi4uMjQ3MGRkM2ZmZjI1IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9zYW1hNWQzX2Nhbi5kdHNpCisrKyBiL2FyY2gvYXJtL2Jv
b3QvZHRzL3NhbWE1ZDNfY2FuLmR0c2kKQEAgLTM2LDEzICszNiwxMyBAQCBwZXJpcGhjayB7CiAJ
CQkJCWNhbjBfY2xrOiBjYW4wX2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJ
CQlyZWcgPSA8NDA+OwotCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAw
PjsKKwkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07
CiAKIAkJCQkJY2FuMV9jbGs6IGNhbjFfY2xrIHsKIAkJCQkJCSNjbG9jay1jZWxscyA9IDwwPjsK
IAkJCQkJCXJlZyA9IDw0MT47Ci0JCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgNjYw
MDAwMDA+OworCQkJCQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDgzMDAwMDAwPjsKIAkJ
CQkJfTsKIAkJCQl9OwogCQkJfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1
ZDNfdWFydC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc2FtYTVkM191YXJ0LmR0c2kKaW5kZXgg
NDMxNmJkYmRjMjVkLi5jYjYyYWRiZDI4ZWQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3NhbWE1ZDNfdWFydC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdWFydC5k
dHNpCkBAIC00MSwxMyArNDEsMTMgQEAgcGVyaXBoY2sgewogCQkJCQl1YXJ0MF9jbGs6IHVhcnQw
X2NsayB7CiAJCQkJCQkjY2xvY2stY2VsbHMgPSA8MD47CiAJCQkJCQlyZWcgPSA8MTY+OwotCQkJ
CQkJYXRtZWwsY2xrLW91dHB1dC1yYW5nZSA9IDwwIDY2MDAwMDAwPjsKKwkJCQkJCWF0bWVsLGNs
ay1vdXRwdXQtcmFuZ2UgPSA8MCA4MzAwMDAwMD47CiAJCQkJCX07CiAKIAkJCQkJdWFydDFfY2xr
OiB1YXJ0MV9jbGsgewogCQkJCQkJI2Nsb2NrLWNlbGxzID0gPDA+OwogCQkJCQkJcmVnID0gPDE3
PjsKLQkJCQkJCWF0bWVsLGNsay1vdXRwdXQtcmFuZ2UgPSA8MCA2NjAwMDAwMD47CisJCQkJCQlh
dG1lbCxjbGstb3V0cHV0LXJhbmdlID0gPDAgODMwMDAwMDA+OwogCQkJCQl9OwogCQkJCX07CiAJ
CQl9OwotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
