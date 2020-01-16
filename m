Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE213D805
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvwk3vjJDC/cgi890yZGBxT4rCYYdy9yCHfpZSwGfLs=; b=AItfOMIuS8uFXC
	bm1SQP1AkA+wLG3xzk0/ZLgKZK+RKPLC4mey5E7XbzDH03bgDkEPlN0ZWwSFVfdrVT6/3ntX2jNLF
	tJw/wU1r5QNBGj9NHYmZda6iQ8JiQUA4NDI3Odwr5yYR92Dc0ncM5dNypjCBolLFpD+IuGVHOYKQ/
	S7eEDWzxT14LhW9Vz4QD/y9AASliAzFFm+c9R4M0ZVzgvPIe9zhrnQnLYz17PNd+jGrn/rQq4aSm/
	cCksWyidVoADf11zOOMFbTUpc9icRY++vY/DYQn02qzKl4943s0O1A70kqdnTdAoeoPLukxHDRHYL
	BuwjRcbUypi1KU178EKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2V8-0006y5-CO; Thu, 16 Jan 2020 10:35:46 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2Uo-0006p1-I6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:35:31 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1is2Uf-00048X-Ra; Thu, 16 Jan 2020 11:35:17 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7755E101B66; Thu, 16 Jan 2020 11:35:17 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>, luto@kernel.org
Subject: Re: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
In-Reply-To: <b5fddcf8-99ff-fc0d-40c0-0eb81ad4e94a@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
 <87ftghbpuu.fsf@nanos.tec.linutronix.de>
 <d2de3211-9d7c-513e-fe0f-8bdce623fb65@c-s.fr>
 <b5fddcf8-99ff-fc0d-40c0-0eb81ad4e94a@c-s.fr>
Date: Thu, 16 Jan 2020 11:35:17 +0100
Message-ID: <87k15rwuxm.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_023526_756002_54283908 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arnd@arndb.de, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+IHdyaXRlczoKPiBMZSAx
NS8wMS8yMDIwIMOgIDA3OjE1LCBDaHJpc3RvcGhlIExlcm95IGEgw6ljcml0wqA6Cj4gIEZyb20g
eW91ciBwb2ludCBvZiB2aWV3LCB3aGF0IHNob3VsZCBJIGRvOgo+IEEvIF9fYXJjaF9nZXRfdmRz
b19kYXRhKCkgaGFuZGxlZCBlbnRpcmVseSBhdCBhcmNoIGxldmVsIGFuZCBhcmNoZXMgCj4gaGFu
ZGluZyBvdmVyIHRoZSB2ZHNvIGRhdGEgcG9pbnRlciB0byBnZW5lcmljIEMgVkRTTyBmdW5jdGlv
bnMgYWxsIHRoZSAKPiB0aW1lIChhcyBpbiBteSB2MiBzZXJpZXMpID8KCk5vLiBUaGF0J3MgYWdh
aW4gbW92aW5nIHRoZSBzYW1lIGNvZGUgdG8gYWxsIGFyY2hpdGVjdHVyZXMuCgo+IEIvIERhdGEg
cG9pbnRlciBiZWluZyBoYW5kZWQgb3ZlciBhbGwgdGhlIHdheSB1cCBmb3IgYXJjaGVzIHdhbnRp
bmcgdG8gCj4gZG8gc28sIG5vIGNoYW5nZXMgYXQgYWxsIGZvciBvdGhlcnMgKGFzIGluIG15IHYz
IHNlcmllcykgPwoKVG9vIG11Y2ggaWZkZWZmZXJ5Cgo+IEMvIF9fYXJjaF9nZXRfdmRzb19kYXRh
KCkgYmVpbmcgY2FsbGVkIGF0IHRoZSBvdXRlcm1vc3QgZ2VuZXJpYyBsZXZlbCAKPiBmb3IgYXJj
aGVzIG5vdCBpbnRlcmVzdGVkIGluIGhhbmRsaW5nIGRhdGEgcG9pbnRlciBmcm9tIHRoZSBjYWxs
ZXIgKGFzIAo+IHN1Z2dlc3RlZCBieSBUaG9tYXMpID8KPgo+IEFuZHksIHdpdGggQS8geW91IHdl
cmUgY29uY2VybmVkIGFib3V0IGFyY2hlcyBiZWluZyBhYmxlIHRvIGRvIFBDIAo+IHJlbGF0ZWQg
YWNjZXNzZXMuIFdvdWxkIGl0IGJlIGFuIGlzc3VlIGZvciBDLyBhcyB3ZWxsID8gSWYgbm90LCBJ
IGd1ZXNzIAo+IEMvIHdvdWxkIGJlIGNsZWFuZXIgdGhhbiBCLyBhbGx0aG91Z2h0IG5vdCBhcyBj
bGVhbiBhcyBBIHdoaWNoIGRvZXNuJ3QgCj4gYWRkIGFueSAjaWZkZWZlcnkgYXQgYWxsLgoKWW91
IGNhbiBhdm9pZCBpZmRlZmZlcnkgd2l0aCBDIGlmIHlvdSBkbzoKCnN0YXRpYyBfX21heWJlX3Vu
dXNlZCBpbnQKX19jdmRzb19kYXRhX2Nsb2NrX2dldHRpbWUoY2xvY2tpZF90IGNsb2NrLCBzdHJ1
Y3QgX19rZXJuZWxfdGltZXNwZWMgKnRzLAogICAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgdmRzb19kYXRhICp2ZCkKewogICAgICAgIC4uLi4uCn0KCnN0YXRpYyBfX21heWJl
X3VudXNlZCBpbnQKX19jdmRzb19jbG9ja19nZXR0aW1lKGNsb2NraWRfdCBjbG9jaywgc3RydWN0
IF9fa2VybmVsX3RpbWVzcGVjICp0cykKewogICAgICAgIGNvbnN0IHN0cnVjdCB2ZHNvX2RhdGEg
KnZkID0gX19hcmNoX2dldF92ZHNvX2RhdGEoKTsKCiAgICAgICAgcmV0dXJuIF9fY3Zkc29fZGF0
YV9jbG9ja19nZXR0aW1lKGNsb2NrLCB0cywgdmQpOwp9CgphbmQgdGhlbiB1c2UgX19jdmRzb19k
YXRhX2Nsb2NrX2dldHRpbWUgb24gUFBDIGFuZCBsZXQgdGhlIG90aGVyIGFyY2hzCnVubW9kaWZp
ZWQuCgpUaGFua3MsCgogICAgICAgIHRnbHgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
