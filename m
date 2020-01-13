Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C5139C6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 23:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M20DmhhE049OgqSw7+o4hsHSq4VNT8GTW91OL+k/2bo=; b=B4ZOYTlEQtIR3v
	Fiv5KOG7dt74FdbdquEYdkdnTwen7w0lWgFLtV8Pqpx20vYLmbNs4OFtn6upKAL6jSOsIti4lAjBp
	ccTo0x7Z8dhs6U1l6+z/qFOUs2t9eDFI2zT3EPt/KMTH14q1w1PTuNR4f6ACUo0yasVuSSipxIui9
	TsjTPexTc8dcDec8gikrLSYdjlTu7lL4d9znzcGDTcAY8fFpGjWpq5kbOhbJrpFttJGNBwqmf2baj
	xV0d7Jt2dSfB4vM9d6AjTy2FIg5yC8UeP1/icPYGjm5u+N0rdwhWiG87meBRIeOwyePkTOVaycVxo
	54kCtUuOglBjNSDmT38w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir8CU-0006dm-BW; Mon, 13 Jan 2020 22:28:46 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir8CM-0006cp-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 22:28:39 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1ir8CG-0004Yk-9j; Mon, 13 Jan 2020 23:28:32 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 40F6F105BE6; Mon, 13 Jan 2020 23:28:31 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 2/8] lib: vdso: Build 32 bit specific functions in the
 right context
In-Reply-To: <20190830135902.20861-3-vincenzo.frascino@arm.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
 <20190830135902.20861-3-vincenzo.frascino@arm.com>
Date: Mon, 13 Jan 2020 23:28:31 +0100
Message-ID: <87tv4zq9dc.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_142838_213168_03615236 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

VmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+IHdyaXRlczoKCj4g
Y2xvY2tfZ2V0dGltZTMyIGFuZCBjbG9ja19nZXRyZXNfdGltZTMyIHNob3VsZCBiZSBjb21waWxl
ZCBvbmx5IHdpdGggYQo+IDMyIGJpdCB2ZHNvIGxpYnJhcnkuCj4KPiBFeGNsdWRlIHRoZXNlIHN5
bWJvbHMgd2hlbiBCVUlMRF9WRFNPMzIgaXMgbm90IGRlZmluZWQuCgpUaGlzIGJyZWFrcyB0aGUg
QVJNIGJ1aWxkIHdpdGg6CgphcmNoL2FybS92ZHNvL3ZnZXR0aW1lb2ZkYXkuYzogSW4gZnVuY3Rp
b24g4oCYX192ZHNvX2Nsb2NrX2dldHRpbWXigJk6CmFyY2gvYXJtL3Zkc28vdmdldHRpbWVvZmRh
eS5jOjE1Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhfX2N2
ZHNvX2Nsb2NrX2dldHRpbWUzMuKAmTsgZGlkIHlvdSBtZWFuIOKAmF9fY3Zkc29fY2xvY2tfZ2V0
dGltZeKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgcmV0dXJu
IF9fY3Zkc29fY2xvY2tfZ2V0dGltZTMyKGNsb2NrLCB0cyk7CiAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CiAgICAgICAgIF9fY3Zkc29fY2xvY2tfZ2V0dGltZQphcmNoL2FybS92ZHNv
L3ZnZXR0aW1lb2ZkYXkuYzogSW4gZnVuY3Rpb24g4oCYX192ZHNvX2Nsb2NrX2dldHJlc+KAmToK
YXJjaC9hcm0vdmRzby92Z2V0dGltZW9mZGF5LmM6MzM6OTogZXJyb3I6IGltcGxpY2l0IGRlY2xh
cmF0aW9uIG9mIGZ1bmN0aW9uIOKAmF9fY3Zkc29fY2xvY2tfZ2V0cmVzX3RpbWUzMuKAmTsgZGlk
IHlvdSBtZWFuIOKAmF9fY3Zkc29fY2xvY2tfZ2V0cmVzX2NvbW1vbuKAmT8gWy1XZXJyb3I9aW1w
bGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgcmV0dXJuIF9fY3Zkc29fY2xvY2tfZ2V0cmVz
X3RpbWUzMihjbG9ja19pZCwgcmVzKTsKICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+CiAgICAgICAgIF9fY3Zkc29fY2xvY2tfZ2V0cmVzX2NvbW1vbgpjYzE6IHNvbWUgd2Fybmlu
Z3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKClRoZSBwYXRjaCBiZWxvdyAnZml4ZXMnIGF0IGxl
YXN0IHRoZSBidWlsZC4gQ2FuIHNvbWVvbmUgcGxlYXNlIGNvbmZpcm0KdGhlIGNvcnJlY3RuZXNz
PwoKVGhhbmtzLAoKICAgICAgICB0Z2x4Cgo4PC0tLS0tLS0tLS0tLS0tLS0KLS0tIGEvYXJjaC9h
cm0vdmRzby9NYWtlZmlsZQorKysgYi9hcmNoL2FybS92ZHNvL01ha2VmaWxlCkBAIC0xNCw3ICsx
NCw3IEBAIHRhcmdldHMgOj0gJChvYmotdmRzbykgdmRzby5zbyB2ZHNvLnNvLmQKIG9iai12ZHNv
IDo9ICQoYWRkcHJlZml4ICQob2JqKS8sICQob2JqLXZkc28pKQogCiBjY2ZsYWdzLXkgOj0gLWZQ
SUMgLWZuby1jb21tb24gLWZuby1idWlsdGluIC1mbm8tc3RhY2stcHJvdGVjdG9yCi1jY2ZsYWdz
LXkgKz0gLURESVNBQkxFX0JSQU5DSF9QUk9GSUxJTkcKK2NjZmxhZ3MteSArPSAtRERJU0FCTEVf
QlJBTkNIX1BST0ZJTElORyAtREJVSUxEX1ZEU08zMgogCiBsZGZsYWdzLSQoQ09ORklHX0NQVV9F
TkRJQU5fQkU4KSA6PSAtLWJlOAogbGRmbGFncy15IDo9IC1Cc3ltYm9saWMgLS1uby11bmRlZmlu
ZWQgLXNvbmFtZT1saW51eC12ZHNvLnNvLjEgXAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
