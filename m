Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AE21C029D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7a6XG74JVQMLgRPn5VGYEtbdZDcUi6oM4f64sFSEUE=; b=splpGj5xWi28Ar
	jwB4G8s1OM1+ukO3UZ/J6rnOHc+XXq4izKfHJkpw9nua3x46rPxYBL9dV7Wo+GFtfJe8aN8wQsUXm
	yHz9BR6uCGjWy70arCX7pxxUnqboUP/gP/D3wPXEfsjzNzoYb9i0mZ3iqJBnIFMdue4JD/sncKPAp
	ugg7j1KSlej28ilaJBerP5Fq3/HuiWJfkh8kCyfDwt5foXFCjlEcVAIbKCXQsjDcc/Oj1fr2bFV28
	fU2/FDdqSxtQiFmbc/l8Ld3otS/UyGElkQGopJnohWhhBzODsfaviqQnqDcQV/cjfg2ztaoY+HFRh
	jOcDOohU2Teeb5SvUuSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC7Z-0006y7-K5; Thu, 30 Apr 2020 16:33:09 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC6m-0006Xp-0C
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:32:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200430163218euoutp0268b77041903c72c744e887058c14149c~KpgA-dhTR3143631436euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 16:32:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200430163218euoutp0268b77041903c72c744e887058c14149c~KpgA-dhTR3143631436euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588264338;
 bh=7QE3VHZ7MPCtYt13bWDgB4+62v21P5g7HbzKzNmuRs4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fiRnfsbhvflbPEU3Y/0VHe1k11ThcpeuT1K7eAK0GAMqetMS5882tXLqC1cDnsFPs
 aKIGVVxUu5idQ7pq9rQJPlsaz1gknUANVW7DjU+EL41DE7BffViOxSKedeFuYiDoL5
 BCOnf0VzDgGE3iv3sYPqPxP/hbg970Kng4hVwOVA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200430163218eucas1p27b766f65eec97aabce6a69a69fd47637~KpgAuUttp1131211312eucas1p2x;
 Thu, 30 Apr 2020 16:32:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 25.6A.60698.29DFAAE5; Thu, 30
 Apr 2020 17:32:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200430163218eucas1p1e89bdacc1cb8f1819d72cd789e972648~KpgAc8rwl1989019890eucas1p16;
 Thu, 30 Apr 2020 16:32:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200430163218eusmtrp20c91cf7ccc4c38135b833571ced7e676~KpgAcUP3F1116911169eusmtrp2k;
 Thu, 30 Apr 2020 16:32:18 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-66-5eaafd923f45
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.BB.07950.19DFAAE5; Thu, 30
 Apr 2020 17:32:17 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200430163217eusmtip28cd53c2abd3f287d82030a9d6a4357cb~KpgAP6wNa1765417654eusmtip2Y;
 Thu, 30 Apr 2020 16:32:17 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] x86: kexec_file: print appropriate variable
Date: Thu, 30 Apr 2020 18:31:42 +0200
Message-Id: <20200430163142.27282-3-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200430163142.27282-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHee7brubsuiQPZkXDPii4NCOeMEqpDzcS6kv0Qmqzbiq+VLup
 GZlmL5aaykZvajZLm0zJmmWmNmNFmpLiqi3LqFhhRq/OaopZzmvkt985z//8z//Aw5KK97Q/
 m5S2X9CkqVOUjCfV9HC0N0T72xgbWtbmjTvszTSu+tRFY+f1CQZ/vVqE8Nkbfvi12UDgfkst
 wiaHjcZPWioYXGPvI7D1np7A4+2jFG40nSGx7YWZwUPfOynsuu6gIzn+1/Fiiq+vrEe8yXiK
 4QdsbQz/padHxr+xNFJ8Y3UO/9X8jOGLbxoR7zQt4DuPjdAbZ23zXLlLSEnKEDRLVu3wTNTn
 NRB7P3AHvjUUolxU6V2APFjglkHv41KmAHmyCq4WwYWKYZlUjCDoqWynpcKJQPdSNyljp0YG
 r4RKfQOCd7Z8JBWDCAyvtDK3L8NFQUlNJ+1mX66fgPP6SDeTnJaAWl2gm+dwa6CypJVxM8Ut
 hhHnRcLNci4CHKPjjJRvIZQf6Z5iD24l1NT1kZLGBx5deEe5eTYXDPV5dkryXwhHb5WT7kDA
 VbHgKr5NSqnXwlsdkjznwMeOmzKJA+DPnUuEJMkBnXa5NFqEoKnCRUmaCBjoGZs6nuSCoKFl
 idSOgoEvXdOj3vD8s4+UwBu0Teeml8rh5AmFpA6EayVt04b+cPpjLSpFyrIZt5TNyF/2f5ce
 kUbkJ6SLqQmCGJ4mZKpEdaqYnpag2rkn1YQmP1/3RMePZmQej7cgjkVKLzlrMsYqaHWGmJVq
 QcCSSl/525jJlnyXOuugoNkTp0lPEUQLmsdSSj95+OWhGAWXoN4vJAvCXkHz75VgPfxzkSw/
 bzB7fajjRlFB/P35hqw3E5kPymMzsxVal8rqc7dwbEX+1u2+iwKHkk/4dpH808Pl98e2BOSu
 e7VbZTPoN8cZF3Vk80HhquKfm5bOHR62Wu32ZDxxeeP8z9HOtu3qQyFiQl39e+thUmPeFxE6
 KzoAbWjeUO04sLrdK6xVJj5VUmKiOiyY1Ijqv8u2K0R4AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xe7oT/66KM7i4yNLi+PUdrBYL35xi
 tfi84R+bxftlPYwW0zaKW9zft5zJ4uahFYwWmx5fY7W4vGsOm8XS6xeZLC4dWMBk8Wf/TxaL
 zZumMltcu7WPzeLlxxMsFj82PGZ1EPD43trH4rFm3hpGj02rOtk87lzbw+bx7tw5do8Hhzaz
 eGxeUu/xft9VNo++LasYPT5vkvM40fKFNYA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRS
 z9DYPNbKyFRJ384mJTUnsyy1SN8uQS9jQdN6poIXAhUf1nczNjDO4+ti5OCQEDCReL7YoIuR
 i0NIYCmjxP/731kh4lISK+emdzFyApnCEn+udbFB1DxllPi5eCYrSIJNwFGif+kJVpCEiMBj
 Jomln3aDOcwC05gkDk9bywxSJSzgLDGvfzcbiM0ioCrx5fNcJhCbV8Ba4vHPP2wQK+QlZjee
 BrM5BWwklq6+CNYrJJArMWnPNGaIekGJkzOfsIBcxyygLrF+nhBImF9AS2JN03UWEJsZaEzz
 1tnMExiFZiHpmIXQMQtJ1QJG5lWMIqmlxbnpucVGesWJucWleel6yfm5mxiBsb7t2M8tOxi7
 3gUfYhTgYFTi4eXYtCpOiDWxrLgy9xCjBAezkgjvw1igEG9KYmVValF+fFFpTmrxIUZToDcn
 MkuJJucD01BeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGwn+1
 roWWrWb9wSU5ZTxfQ76l3eq3+GgZPJuB58vOpfp3fd5de7JYnN392FrmT8z32k7WulS5KQlN
 2/Oi7v9lrUatncdZalvERbTOT5Xb4mJ1+5kj37Pn96w/HvIwFbrpkD5B+pzIRjnz5KMip7On
 Kkjt+LvEMTlL6rDo9tWuJVN+xc4LTv+jxFKckWioxVxUnAgABN726wsDAAA=
X-CMS-MailID: 20200430163218eucas1p1e89bdacc1cb8f1819d72cd789e972648
X-Msg-Generator: CA
X-RootMTR: 20200430163218eucas1p1e89bdacc1cb8f1819d72cd789e972648
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200430163218eucas1p1e89bdacc1cb8f1819d72cd789e972648
References: <20200430105034.17513-1-l.stelmach@samsung.com>
 <20200430163142.27282-1-l.stelmach@samsung.com>
 <CGME20200430163218eucas1p1e89bdacc1cb8f1819d72cd789e972648@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_093220_185228_750C164D 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>,
 Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhbHVlIG9mIGtidWYtPm1lbXN6IG1heSBiZSBkaWZmZXJlbnQgdGhhbiBrYnVmLT5idWZz
eiBhZnRlciBjYWxsaW5nCmtleGVjX2FkZF9idWZmZXIoKS4gSGVuY2UgYm90aCB2YWx1ZXMgc2hv
dWxkIGJlIGxvZ2dlZC4KCkZpeGVzOiBlYzJiOWJmYWFjNDRlICgia2V4ZWNfZmlsZTogQ2hhbmdl
IGtleGVjX2FkZF9idWZmZXIgdG8gdGFrZSBrZXhlY19idWYgYXMgYXJndW1lbnQuIikKRml4ZXM6
IDI3ZjQ4ZDNlNjMzYmUgKCJrZXhlYy1iekltYWdlNjQ6IHN1cHBvcnQgZm9yIGxvYWRpbmcgYnpJ
bWFnZSB1c2luZyA2NGJpdCBlbnRyeSIpCkZpeGVzOiBkZDVmNzI2MDc2Y2M3ICgia2V4ZWM6IHN1
cHBvcnQgZm9yIGtleGVjIG9uIHBhbmljIHVzaW5nIG5ldyBzeXN0ZW0gY2FsbCIpCkNjOiBWaXZl
ayBHb3lhbCA8dmdveWFsQHJlZGhhdC5jb20+CkNjOiBUaGlhZ28gSnVuZyBCYXVlcm1hbm4gPGJh
dWVybWFuQGxpbnV4LnZuZXQuaWJtLmNvbT4KU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFj
aCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KLS0tCiBhcmNoL3g4Ni9rZXJuZWwvY3Jhc2guYyAg
ICAgICAgICAgfCAyICstCiBhcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0LmMgfCA0ICsr
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jIGIvYXJjaC94ODYva2VybmVsL2NyYXNo
LmMKaW5kZXggZmQ4N2I1OTQ1MmEzLi5kNDA4ZTViNTM2ZmEgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2
L2tlcm5lbC9jcmFzaC5jCisrKyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCkBAIC00MjAsNyAr
NDIwLDcgQEAgaW50IGNyYXNoX2xvYWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCiAJ
fQogCWltYWdlLT5hcmNoLmVsZl9sb2FkX2FkZHIgPSBrYnVmLm1lbTsKIAlwcl9kZWJ1ZygiTG9h
ZGVkIEVMRiBoZWFkZXJzIGF0IDB4JWx4IGJ1ZnN6PTB4JWx4IG1lbXN6PTB4JWx4XG4iLAotCQkg
aW1hZ2UtPmFyY2guZWxmX2xvYWRfYWRkciwga2J1Zi5idWZzeiwga2J1Zi5idWZzeik7CisJCSBp
bWFnZS0+YXJjaC5lbGZfbG9hZF9hZGRyLCBrYnVmLmJ1ZnN6LCBrYnVmLm1lbXN6KTsKIAogCXJl
dHVybiByZXQ7CiB9CmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0
LmMgYi9hcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0LmMKaW5kZXggZGI2NTc4ZDQ1MTU3
Li40MjAzOTNjNThhNzMgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tlcm5lbC9rZXhlYy1iemltYWdl
NjQuYworKysgYi9hcmNoL3g4Ni9rZXJuZWwva2V4ZWMtYnppbWFnZTY0LmMKQEAgLTQzNCw3ICs0
MzQsNyBAQCBzdGF0aWMgdm9pZCAqYnpJbWFnZTY0X2xvYWQoc3RydWN0IGtpbWFnZSAqaW1hZ2Us
IGNoYXIgKmtlcm5lbCwKIAkJZ290byBvdXRfZnJlZV9wYXJhbXM7CiAJYm9vdHBhcmFtX2xvYWRf
YWRkciA9IGtidWYubWVtOwogCXByX2RlYnVnKCJMb2FkZWQgYm9vdF9wYXJhbSwgY29tbWFuZCBs
aW5lIGFuZCBtaXNjIGF0IDB4JWx4IGJ1ZnN6PTB4JWx4IG1lbXN6PTB4JWx4XG4iLAotCQkgYm9v
dHBhcmFtX2xvYWRfYWRkciwga2J1Zi5idWZzeiwga2J1Zi5idWZzeik7CisJCSBib290cGFyYW1f
bG9hZF9hZGRyLCBrYnVmLmJ1ZnN6LCBrYnVmLm1lbXN6KTsKIAogCS8qIExvYWQga2VybmVsICov
CiAJa2J1Zi5idWZmZXIgPSBrZXJuZWwgKyBrZXJuMTZfc2l6ZTsKQEAgLTQ2NCw3ICs0NjQsNyBA
QCBzdGF0aWMgdm9pZCAqYnpJbWFnZTY0X2xvYWQoc3RydWN0IGtpbWFnZSAqaW1hZ2UsIGNoYXIg
Kmtlcm5lbCwKIAkJaW5pdHJkX2xvYWRfYWRkciA9IGtidWYubWVtOwogCiAJCXByX2RlYnVnKCJM
b2FkZWQgaW5pdHJkIGF0IDB4JWx4IGJ1ZnN6PTB4JWx4IG1lbXN6PTB4JWx4XG4iLAotCQkJCWlu
aXRyZF9sb2FkX2FkZHIsIGluaXRyZF9sZW4sIGluaXRyZF9sZW4pOworCQkJCWluaXRyZF9sb2Fk
X2FkZHIsIGtidWYuYnVmc3osIGtidWYubWVtc3opOwogCiAJCXNldHVwX2luaXRyZChwYXJhbXMs
IGluaXRyZF9sb2FkX2FkZHIsIGluaXRyZF9sZW4pOwogCX0KLS0gCjIuMjUuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
