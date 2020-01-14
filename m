Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0388D13A3E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz5HCea9gl5xwNUpyAxKnOP5CvM6/b0ZgHp+ikyG2Cs=; b=c9r03c4S12kUVT
	ypGQlnmqxad4yJDJ0JajI6GgcBuT2Qigmpk8R+hFX2RnCvKc3iuAUxwAsYy55cNOpGXbR40PYdsOM
	Wuft4aZVFZuyWZt6livr3YPZurClB9c+zhMFNj+VN3VealfNXUpkShdu2dLNzoNyo0iveeuvi7v1T
	jvmhCsxK9/BD8q7Wf31annJfFsJyWgmrWh+A/SrblnzrYzvwNdHe4ZpKP3gZf7KoljR3VYLe6dzWA
	LobUa7FI8uh09/A0E9zfhZx5ajZWS5g7M4pAH2KMOUbZLcwCwXHVEIVT/t2dQDwtL7LXtOI6/w9cc
	Orj+ZfXFyuTcEt/638Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIaL-0003FQ-A5; Tue, 14 Jan 2020 09:34:05 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIaB-0003Er-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:33:59 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irIa7-0006V0-A2; Tue, 14 Jan 2020 10:33:51 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 90C00101DEE; Tue, 14 Jan 2020 10:33:50 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 2/8] lib: vdso: Build 32 bit specific functions in the
 right context
In-Reply-To: <87tv4zq9dc.fsf@nanos.tec.linutronix.de>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
 <20190830135902.20861-3-vincenzo.frascino@arm.com>
 <87tv4zq9dc.fsf@nanos.tec.linutronix.de>
Date: Tue, 14 Jan 2020 10:33:50 +0100
Message-ID: <87r202qt4x.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_013355_570922_CBD0CB5B 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, salyzyn@android.com,
 paul.burton@mips.com, luto@kernel.org, will@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+IHdyaXRlczoKCj4gVmluY2Vuem8g
RnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+IHdyaXRlczoKPgo+PiBjbG9ja19n
ZXR0aW1lMzIgYW5kIGNsb2NrX2dldHJlc190aW1lMzIgc2hvdWxkIGJlIGNvbXBpbGVkIG9ubHkg
d2l0aCBhCj4+IDMyIGJpdCB2ZHNvIGxpYnJhcnkuCj4+Cj4+IEV4Y2x1ZGUgdGhlc2Ugc3ltYm9s
cyB3aGVuIEJVSUxEX1ZEU08zMiBpcyBub3QgZGVmaW5lZC4KPgo+IFRoaXMgYnJlYWtzIHRoZSBB
Uk0gYnVpbGQgd2l0aDoKPgo+IGFyY2gvYXJtL3Zkc28vdmdldHRpbWVvZmRheS5jOiBJbiBmdW5j
dGlvbiDigJhfX3Zkc29fY2xvY2tfZ2V0dGltZeKAmToKPiBhcmNoL2FybS92ZHNvL3ZnZXR0aW1l
b2ZkYXkuYzoxNTo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCY
X19jdmRzb19jbG9ja19nZXR0aW1lMzLigJk7IGRpZCB5b3UgbWVhbiDigJhfX2N2ZHNvX2Nsb2Nr
X2dldHRpbWXigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAg
cmV0dXJuIF9fY3Zkc29fY2xvY2tfZ2V0dGltZTMyKGNsb2NrLCB0cyk7Cj4gICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgICAgICAgICBfX2N2ZHNvX2Nsb2NrX2dldHRpbWUKPiBh
cmNoL2FybS92ZHNvL3ZnZXR0aW1lb2ZkYXkuYzogSW4gZnVuY3Rpb24g4oCYX192ZHNvX2Nsb2Nr
X2dldHJlc+KAmToKPiBhcmNoL2FybS92ZHNvL3ZnZXR0aW1lb2ZkYXkuYzozMzo5OiBlcnJvcjog
aW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYX19jdmRzb19jbG9ja19nZXRyZXNf
dGltZTMy4oCZOyBkaWQgeW91IG1lYW4g4oCYX19jdmRzb19jbG9ja19nZXRyZXNfY29tbW9u4oCZ
PyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgIHJldHVybiBfX2N2
ZHNvX2Nsb2NrX2dldHJlc190aW1lMzIoY2xvY2tfaWQsIHJlcyk7Cj4gICAgICAgICAgXn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgICAgX19jdmRzb19jbG9ja19nZXRyZXNfY29t
bW9uCj4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCj4KPiBUaGUg
cGF0Y2ggYmVsb3cgJ2ZpeGVzJyBhdCBsZWFzdCB0aGUgYnVpbGQuIENhbiBzb21lb25lIHBsZWFz
ZSBjb25maXJtCj4gdGhlIGNvcnJlY3RuZXNzPwoKQmFoLCBpdCdzIG5vdCBmaXhpbmcgaXQuIFRo
YXQncyB3aGF0IHlvdSBnZXQgd2hlbiB5b3UgY29tcGlsZSB0aGUgd3JvbmcKdHJlZS4uLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
