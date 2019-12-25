Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F912A89C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 18:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DGfsYpFV/XzQQmaNw1zSaM6Bo1EUmWGo2r654Ji86w=; b=gwq2SMTokiCC9Y
	HkLxPwuUPuNy8yTWADI83HSsGgO5Gu6ReIS04/B3wXJhH+j3/Xd7u3dE8+VsxtyRLN6RozIrvQkKk
	7/RHH5ldMJBSfXZUcdMQy6XkorMMIETCPnTZZzf/4sqoXBTFvMYptg5+hocOH1WRF/BylTs3ikAvS
	4muqRJf7nSg8qkpDHu+68ym9a1nHxpm53hbXZslyJ/QsN4oLb3P6U+rWcqtfhTJ5Rcuy2YlJfUukO
	TPz0M6LhS5+ZMx/D2DXlNICg9H7u2rxvjLJ0aHurre+oCRnej8eiH8DLxxwPGvWZL3X1hBPFCW0uc
	wTVqK15ZiZeWtj1ScPdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikA2i-0000cL-58; Wed, 25 Dec 2019 17:01:52 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikA2Y-0000bl-4D
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 17:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577293290;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=OoOmW3Xk0QeJPZM69nPutxxHH8KJBgrsbAwySS3OQwQ=;
 b=K7F8tZzqOGP9cMPfu4xN33YFXDM+MdS5VZomvrjwrpPYuChr8QUzDOIhBL93+uFn+Q
 U90kXXB5J7wpCXf2v366tl42TqvzNqlvtIaMqJZNhenQLisL2qz7naMYTEGK0373JWzy
 90rSjhvnhV2H/218ut2/qyX+Og+SBPM7zU7w3qpCsJgyWpBojKSntfjkh3GKed1Y2Rdh
 2RrvqZOX1BOyCEJJG8UlMpsSamh5fmcoC+2OgSH9AoPzWp/teCg7i8lq19Vt2zDSWlX2
 BRcY5n8CirkQr/q0z3BzHXt6gQ25wrSH1dY0Lwa1ziyBJ8l3aw4SFvE8cWU1EQqVkVdL
 Qyyw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBi5wp385lpdu3KwbY="
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.8] by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id a09dafvBPH1T4hq
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 25 Dec 2019 18:01:29 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191224184503.GK35479@atomide.com>
Date: Wed, 25 Dec 2019 18:01:33 +0100
Message-Id: <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_090142_755038_ED56A867 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, =?utf-8?Q?Andr=C3=A9_Hentschel?= <nerv@dawncrow.de>,
 linux@arm.linux.org.uk, webmaster@dawncrow.de, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgo+IEFtIDI0LjEyLjIwMTkgdW0gMTk6NDUgc2NocmllYiBUb255IExpbmRncmVuIDx0b255
QGF0b21pZGUuY29tPjoKPiAKPiAqIEFuZHLDqSBIZW50c2NoZWwgPG5lcnZAZGF3bmNyb3cuZGU+
IFsxOTEyMjQgMTY6MTFdOgo+PiBUaGlzIGlzIHRoZSBmaXJzdCBnZW5lcmF0aW9uIEFtYXpvbiBF
Y2hvIGZyb20gMjAxNi4KPj4gQXVkaW8gc3VwcG9ydCBpcyBub3QgeWV0IGltcGxlbWVudGVkLgo+
IAo+IE9LIGxvb2tzIGdvb2QgdG8gbWUsIGp1c3Qgd29ycmllZCBhYm91dCBvbmUgcGFydDoKPiAK
Pj4gKyZzZ3hfbW9kdWxlIHsKPj4gKwlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArfTsKPiAKPiBX
ZSBzaG91bGQgaGF2ZSBhIHNlcGFyYXRlIGFtMzcwMy5kdHNpIG9yIHdoYXRldmVyIHRoZSBTb0Mg
bW9kZWwKPiBkaXNhYmxpbmcgc2d4IGlmIG5vdCB0aGVyZSBvbiB0aGUgU29DLgoKSSB0aGluayB0
aGUgYW0zNzAzIGlzIGEgZG0zNzMwIChvbWFwMzYzMCkgd2hlcmUgdGhlIFNHWCBhbmQgdGhlCkRT
UCBoYXZlIG5vdCBwYXNzZWQgcHJvZHVjdGlvbiB0ZXN0IGFuZCBhcmUgImRpc2FibGVkIiBieSBl
RnVzZXMuClRoaXMgaXMgYSBjb21tb24gcHJvY2VkdXJlIGluIHNpbGljb24gcHJvZHVjdGlvbiB0
byBpbmNyZWFzZSB5aWVsZC4KClRoZXJlZm9yZSwgdGhlcmUgaXMgYSByZWdpc3RlciB3aGljaCBh
bGxvd3MgdG8gZHluYW1pY2FsbHkgZGV0ZXJtaW5lCndoYXQgY29tcG9uZW50cyAoU0dYIGFuZCBE
U1ApIGFyZSBhdmFpbGFibGUgb24gYSBzcGVjaWZpYyBTb0MgY2hpcC4KU2VlICJUYWJsZSAxLTYu
IENoaXAgSWRlbnRpZmljYXRpb24iIGluIHRoZSBjb21tb24KIkFNL0RNMzd4IE11bHRpbWVkaWEg
RGV2aWNlIFRSTSIuCgpTdWNoIGJpdHMgZXhpc3RzIGZvciBvbWFwMzR4eCBhbmQgZm9yIG9tYXAz
Nnh4IChha2EgYW0zN3h4L2RtMzd4eCkuCgpUaGF0IHdheSB0aGVyZSBpcyBubyBuZWVkIHRvIGRp
c2FibGUvZW5hYmxlIHNneCB0aHJvdWdoIGRldmljZSB0cmVlCnZhcmlhdGlvbnMgYW5kIGludHJv
ZHVjaW5nIG1vcmUgY29tcGxleGl0eSBieSBpbnRyb2R1Y2luZyBtb3JlIGFuZCBtb3JlCkRUUyBm
b3IgdmFyaWFudHMgKGFtMzcwMy5kdHNpLCBhbTM3MTUuZHRzaSwgZG0zNzIwLmR0c2ksIGRtMzcz
MC5kdHNpPykuCgpCVFc6IHdoYXQgYWJvdXQgYSBib2FyZCB0aGF0IGlzL3dhcyBwcm9kdWNlZCBp
biBlaXRoZXIgYW0zNzAzIG9yIGRtMzczMAp2YXJpYW50cz8gQ2FuIHRoZXkgc3RpbGwgc2hhcmUg
YW4gb21hcDM2eHguZHRzaSBiYXNlZCBEVEI/CgpTbyBJTUhPIGlmIHRoZXJlIGlzIGFuIGlzc3Vl
IHdpdGggc2d4IGVuYWJsZWQgb24gYW0zNzAzIGJ1dCBubyBTR1gKaGFyZHdhcmUgYXZhaWxhYmxl
IG9uIGEgc3BlY2lmaWMgU29DLCB0aGUgc3lzYyBzZXR1cCBzaG91bGQgc29tZWhvdyByZWFkCnRo
ZSBiaXRzIGFuZCBlZmZlY3RpdmVseSBkaXNhYmxlIGFsbCBTR1ggcmVsYXRlZCBzZXR1cCBpZiBp
dCBpcyBub3QKYXZhaWxhYmxlIG9uIHRoZSBTb0MuIElmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBz
b21lIG9sZGVyIGh3bW9kcyBkaWQKc3VjaCB0aGluZ3MgYnkgY2hlY2tpbmcgU29DIHZhcmlhbnQg
Yml0cy4KCkJSIGFuZCB0aGFua3MsCk5pa29sYXVzCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
