Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3B15406A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxKg0G+Ly98e5LzPJulMy0TVTEVPLr2NrgM5KZzOZ4k=; b=Teb8k6F/E8mvuK
	0XBfcrcaLM2zB3QHgt91hyTklt3C5tD0RcxTTrq/cDl9Vl9Tu+YHD5j2Dzcq2NN3z1dSPa5LEJhXo
	u20vp4Pr0a4w/FaOdVWHwTIXnEss20teL/B7ltNUsbWmczcKzLz3bkiNhnk2Kb71OizfiJHL4e85h
	EFFYpeH9Fzchy5U+/xgiZXkYtzUhdwmW7pZai1aDEGm+mvnghmwtX3MYSJ0r3IkUX+1YxUV/lMPHR
	Qe0TXYrM7L/U8x1YtgAuyNcuEK6U8gt5HVY+GVOT3FX9S8C6CYK/cpjUswG0QhgXDtFPB4o51C7eI
	Ud7nYEbBnTBcehkUIuuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcfn-0008My-SI; Thu, 06 Feb 2020 08:38:07 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcfg-0008M9-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:38:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9858127E03A0;
 Thu,  6 Feb 2020 09:37:55 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cyO7F9rmyerp; Thu,  6 Feb 2020 09:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E0AE227E0C42;
 Thu,  6 Feb 2020 09:37:53 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E0AE227E0C42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1580978273;
 bh=l2mAeXngR/5BNCZbuh9+mPg0UQnp76NPA6/k85Bg4q4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=hudIdxVU5ITKekTYQmrcTD7EeH2P0b/tzXYJeoLiPypP26D4jg1oXgMo5cwav/7JN
 dzUnIgFBuhCRUpjbMFBaFiznGuj+M+ULIb4sEb5+ihOmHDHUCS0knmgdtKN0e4pRL3
 OdyqpFTzdLKFXuedrIItVJziXz6l6f3eXc/cUJCM=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id J5-WDM_nHfGe; Thu,  6 Feb 2020 09:37:53 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BE6CB27E03A0;
 Thu,  6 Feb 2020 09:37:53 +0100 (CET)
Date: Thu, 6 Feb 2020 09:37:53 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Message-ID: <1065812225.2604892.1580978273748.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200205224936.GB25901@xps15>
References: <20200129163013.GA16538@xps15>
 <20200204174412.16814-1-cleger@kalray.eu>
 <20200204174412.16814-3-cleger@kalray.eu> <20200205224936.GB25901@xps15>
Subject: Re: [PATCH v3 2/2] remoteproc: Add elf64 support in elf loader
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC75 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: Add elf64 support in elf loader
Thread-Index: V6XODUe4azDGASdnez4hZiYZ5aNL9A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_003800_716309_86847BA4 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0aGlldSwKCi0tLS0tIE9uIDUgRmViLCAyMDIwLCBhdCAyMzo0OSwgTWF0aGlldSBQb2ly
aWVyIG1hdGhpZXUucG9pcmllckBsaW5hcm8ub3JnIHdyb3RlOgoKPiBPbiBUdWUsIEZlYiAwNCwg
MjAyMCBhdCAwNjo0NDoxMlBNICswMTAwLCBDbGVtZW50IExlZ2VyIHdyb3RlOgo+PiBlbGYzMiBh
bmQgZWxmNjQgbWFpbmx5IGRpZmZlciBieSB0aGVpciB0eXBlcy4gSW4gb3JkZXIgdG8gYXZvaWQK
Pj4gY29weS9wYXN0aW5nIHRoZSB3aG9sZSBsb2FkZXIgY29kZSwgZ2VuZXJhdGUgc3RhdGljIGlu
bGluZSBmdW5jdGlvbnMKPj4gd2hpY2ggd2lsbCBhY2Nlc3MgdmFsdWVzIGFjY29yZGluZyB0byB0
aGUgZWxmIGNsYXNzLiBJdCBhbGxvd3MgdG8ga2VlcCBhCj4+IGNvbW1vbiBsb2FkZXIgYmFzaXMu
Cj4+IEluIG9yZGVyIHRvIGFjY29tbW9kYXRlIGJvdGggZWxmIHR5cGVzIHNpemVzLCB0aGUgbWF4
aW11bSBzaXplIGZvciBhCj4+IGVsZiBoZWFkZXIgbWVtYmVyIGlzIGNob3NlbiB1c2luZyB0aGUg
bWF4aW11bSB2YWx1ZSBvZiBib3RoIGVsZiBjbGFzcy4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IENs
ZW1lbnQgTGVnZXIgPGNsZWdlckBrYWxyYXkuZXU+Cj4+IFRlc3RlZC1ieTogQXJuYXVkIFBPVUxJ
UVVFTiA8YXJuYXVkLnBvdWxpcXVlbkBzdC5jb20+Cj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlvbi9y
ZW1vdGVwcm9jLnR4dCAgICAgICAgICAgICAgIHwgICAyICstCj4+ICBkcml2ZXJzL3JlbW90ZXBy
b2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMgfCAxNDcgKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0KPj4gIGRyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIuaCB8ICA2
OSArKysrKysrKysrKysrKwo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfaW50ZXJu
YWwuaCAgIHwgICAyICstCj4+ICBkcml2ZXJzL3JlbW90ZXByb2Mvc3RfcmVtb3RlcHJvYy5jICAg
ICAgICAgfCAgIDIgKy0KPj4gIGluY2x1ZGUvbGludXgvcmVtb3RlcHJvYy5oICAgICAgICAgICAg
ICAgICB8ICAgNCArLQo+PiAgNiBmaWxlcyBjaGFuZ2VkLCAxNjcgaW5zZXJ0aW9ucygrKSwgNTkg
ZGVsZXRpb25zKC0pCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9yZW1vdGVwcm9jL3Jl
bW90ZXByb2NfZWxmX2xvYWRlci5oCj4+IAo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9y
ZW1vdGVwcm9jLnR4dCBiL0RvY3VtZW50YXRpb24vcmVtb3RlcHJvYy50eHQKPj4gaW5kZXggMDNj
M2QyZTU2OGIwLi4yYmUxMTQ3MjU2ZTAgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vcmVt
b3RlcHJvYy50eHQKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9yZW1vdGVwcm9jLnR4dAo+PiBAQCAt
MjMwLDcgKzIzMCw3IEBAIGluIHRoZSB1c2VkIHJpbmdzLgo+PiAgQmluYXJ5IEZpcm13YXJlIFN0
cnVjdHVyZQo+PiAgPT09PT09PT09PT09PT09PT09PT09PT09PQo+PiAgCj4+IC1BdCB0aGlzIHBv
aW50IHJlbW90ZXByb2Mgb25seSBzdXBwb3J0cyBFTEYzMiBmaXJtd2FyZSBiaW5hcmllcy4gSG93
ZXZlciwKPj4gK0F0IHRoaXMgcG9pbnQgcmVtb3RlcHJvYyBzdXBwb3J0cyBFTEYzMiBhbmQgRUxG
NjQgZmlybXdhcmUgYmluYXJpZXMuIEhvd2V2ZXIsCj4+ICBpdCBpcyBxdWl0ZSBleHBlY3RlZCB0
aGF0IG90aGVyIHBsYXRmb3Jtcy9kZXZpY2VzIHdoaWNoIHdlJ2Qgd2FudCB0bwo+PiAgc3VwcG9y
dCB3aXRoIHRoaXMgZnJhbWV3b3JrIHdpbGwgYmUgYmFzZWQgb24gZGlmZmVyZW50IGJpbmFyeSBm
b3JtYXRzLgo+PiAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJv
Y19lbGZfbG9hZGVyLmMKPj4gYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9h
ZGVyLmMKPj4gaW5kZXggNjA2YWFlMTY2ZWJhLi4yMWZkMmIyZmU1YWUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIuYwo+PiArKysgYi9kcml2
ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMKPj4gQEAgLTIzLDYgKzIzLDcg
QEAKPj4gICNpbmNsdWRlIDxsaW51eC9lbGYuaD4KPj4gIAo+PiAgI2luY2x1ZGUgInJlbW90ZXBy
b2NfaW50ZXJuYWwuaCIKPj4gKyNpbmNsdWRlICJyZW1vdGVwcm9jX2VsZl9sb2FkZXIuaCIKPj4g
IAo+PiAgLyoqCj4+ICAgKiBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5pdHkgQ2hlY2sg
RUxGIGZpcm13YXJlIGltYWdlCj4+IEBAIC0zNSw4ICszNiwxNiBAQCBpbnQgcnByb2NfZWxmX3Nh
bml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QKPj4gZmlybXdhcmUg
KmZ3KQo+PiAgewo+PiAgCWNvbnN0IGNoYXIgKm5hbWUgPSBycHJvYy0+ZmlybXdhcmU7Cj4+ICAJ
c3RydWN0IGRldmljZSAqZGV2ID0gJnJwcm9jLT5kZXY7Cj4+ICsJLyoKPj4gKwkgKiBFbGYgZmls
ZXMgYXJlIGJlZ2lubmluZyB3aXRoIHRoZSBzYW1lIHN0cnVjdHVyZS4gVGh1cywgdG8gc2ltcGxp
ZnkKPj4gKwkgKiBoZWFkZXIgcGFyc2luZywgd2UgY2FuIHVzZSB0aGUgZWxmMzJfaGRyIG9uZSBm
b3IgYm90aCBlbGY2NCBhbmQKPj4gKwkgKiBlbGYzMi4KPj4gKwkgKi8KPj4gIAlzdHJ1Y3QgZWxm
MzJfaGRyICplaGRyOwo+PiArCXUzMiBlbGZfc2hkcl9zaXplOwo+PiArCXU2NCBwaG9mZiwgc2hv
ZmY7Cj4+ICAJY2hhciBjbGFzczsKPj4gKwl1MTYgcGhudW07Cj4+ICAKPj4gIAlpZiAoIWZ3KSB7
Cj4+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGxvYWQgJXNcbiIsIG5hbWUpOwo+PiBAQCAt
NTAsMTMgKzU5LDIyIEBAIGludCBycHJvY19lbGZfc2FuaXR5X2NoZWNrKHN0cnVjdCBycHJvYyAq
cnByb2MsIGNvbnN0IHN0cnVjdAo+PiBmaXJtd2FyZSAqZncpCj4+ICAKPj4gIAllaGRyID0gKHN0
cnVjdCBlbGYzMl9oZHIgKilmdy0+ZGF0YTsKPj4gIAo+PiAtCS8qIFdlIG9ubHkgc3VwcG9ydCBF
TEYzMiBhdCB0aGlzIHBvaW50ICovCj4+ICsJaWYgKG1lbWNtcChlaGRyLT5lX2lkZW50LCBFTEZN
QUcsIFNFTEZNQUcpKSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAiSW1hZ2UgaXMgY29ycnVwdGVkIChi
YWQgbWFnaWMpXG4iKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCj4+ICAJY2xh
c3MgPSBlaGRyLT5lX2lkZW50W0VJX0NMQVNTXTsKPj4gLQlpZiAoY2xhc3MgIT0gRUxGQ0xBU1Mz
Mikgewo+PiArCWlmIChjbGFzcyAhPSBFTEZDTEFTUzMyICYmIGNsYXNzICE9IEVMRkNMQVNTNjQp
IHsKPj4gIAkJZGV2X2VycihkZXYsICJVbnN1cHBvcnRlZCBjbGFzczogJWRcbiIsIGNsYXNzKTsK
Pj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAJfQo+PiAgCj4+ICsJaWYgKGNsYXNzID09IEVMRkNM
QVNTNjQgJiYgZnctPnNpemUgPCBzaXplb2Yoc3RydWN0IGVsZjY0X2hkcikpIHsKPj4gKwkJZGV2
X2VycihkZXYsICJlbGY2NCBoZWFkZXIgaXMgdG9vIHNtYWxsXG4iKTsKPj4gKwkJcmV0dXJuIC1F
SU5WQUw7Cj4+ICsJfQo+PiArCj4+ICAJLyogV2UgYXNzdW1lIHRoZSBmaXJtd2FyZSBoYXMgdGhl
IHNhbWUgZW5kaWFubmVzcyBhcyB0aGUgaG9zdCAqLwo+PiAgIyBpZmRlZiBfX0xJVFRMRV9FTkRJ
QU4KPj4gIAlpZiAoZWhkci0+ZV9pZGVudFtFSV9EQVRBXSAhPSBFTEZEQVRBMkxTQikgewo+PiBA
QCAtNjcsMjYgKzg1LDI5IEBAIGludCBycHJvY19lbGZfc2FuaXR5X2NoZWNrKHN0cnVjdCBycHJv
YyAqcnByb2MsIGNvbnN0IHN0cnVjdAo+PiBmaXJtd2FyZSAqZncpCj4+ICAJCXJldHVybiAtRUlO
VkFMOwo+PiAgCX0KPj4gIAo+PiAtCWlmIChmdy0+c2l6ZSA8IGVoZHItPmVfc2hvZmYgKyBzaXpl
b2Yoc3RydWN0IGVsZjMyX3NoZHIpKSB7Cj4+IC0JCWRldl9lcnIoZGV2LCAiSW1hZ2UgaXMgdG9v
IHNtYWxsXG4iKTsKPj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4+IC0JfQo+PiArCXBob2ZmID0gZWxm
X2hkcl9lX3Bob2ZmKGNsYXNzLCBmdy0+ZGF0YSk7Cj4+ICsJc2hvZmYgPSBlbGZfaGRyX2Vfc2hv
ZmYoY2xhc3MsIGZ3LT5kYXRhKTsKPj4gKwlwaG51bSA9ICBlbGZfaGRyX2VfcGhudW0oY2xhc3Ms
IGZ3LT5kYXRhKTsKPj4gKwllbGZfc2hkcl9zaXplID0gZWxmX3NpemVfb2Zfc2hkcihjbGFzcyk7
Cj4+ICAKPj4gLQlpZiAobWVtY21wKGVoZHItPmVfaWRlbnQsIEVMRk1BRywgU0VMRk1BRykpIHsK
Pj4gLQkJZGV2X2VycihkZXYsICJJbWFnZSBpcyBjb3JydXB0ZWQgKGJhZCBtYWdpYylcbiIpOwo+
PiArCWlmIChmdy0+c2l6ZSA8IHNob2ZmICsgZWxmX3NoZHJfc2l6ZSkgewo+PiArCQlkZXZfZXJy
KGRldiwgIkltYWdlIGlzIHRvbyBzbWFsbFxuIik7Cj4+ICAJCXJldHVybiAtRUlOVkFMOwo+PiAg
CX0KPj4gIAo+PiAtCWlmIChlaGRyLT5lX3BobnVtID09IDApIHsKPj4gKwlpZiAocGhudW0gPT0g
MCkgewo+PiAgCQlkZXZfZXJyKGRldiwgIk5vIGxvYWRhYmxlIHNlZ21lbnRzXG4iKTsKPj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4+ICAJfQo+PiAgCj4+IC0JaWYgKGVoZHItPmVfcGhvZmYgPiBmdy0+
c2l6ZSkgewo+PiArCWlmIChwaG9mZiA+IGZ3LT5zaXplKSB7Cj4+ICAJCWRldl9lcnIoZGV2LCAi
RmlybXdhcmUgc2l6ZSBpcyB0b28gc21hbGxcbiIpOwo+PiAgCQlyZXR1cm4gLUVJTlZBTDsKPj4g
IAl9Cj4+ICAKPj4gKwlkZXZfZGJnKGRldiwgIkZpcm13YXJlIGlzIGFuIGVsZiVkIGZpbGVcbiIs
Cj4+ICsJCWNsYXNzID09IEVMRkNMQVNTMzIgPyAzMiA6IDY0KTsKPj4gKwo+PiAgCXJldHVybiAw
Owo+PiAgfQo+PiAgRVhQT1JUX1NZTUJPTChycHJvY19lbGZfc2FuaXR5X2NoZWNrKTsKPj4gQEAg
LTEwMiwxMSArMTIzLDkgQEAgRVhQT1JUX1NZTUJPTChycHJvY19lbGZfc2FuaXR5X2NoZWNrKTsK
Pj4gICAqIE5vdGUgdGhhdCB0aGUgYm9vdCBhZGRyZXNzIGlzIG5vdCBhIGNvbmZpZ3VyYWJsZSBw
cm9wZXJ0eSBvZiBhbGwgcmVtb3RlCj4+ICAgKiBwcm9jZXNzb3JzLiBTb21lIHdpbGwgYWx3YXlz
IGJvb3QgYXQgYSBzcGVjaWZpYyBoYXJkLWNvZGVkIGFkZHJlc3MuCj4+ICAgKi8KPj4gLXUzMiBy
cHJvY19lbGZfZ2V0X2Jvb3RfYWRkcihzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3Qg
ZmlybXdhcmUgKmZ3KQo+PiArdTY0IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyKHN0cnVjdCBycHJv
YyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpCj4+ICB7Cj4+IC0Jc3RydWN0IGVs
ZjMyX2hkciAqZWhkciAgPSAoc3RydWN0IGVsZjMyX2hkciAqKWZ3LT5kYXRhOwo+PiAtCj4+IC0J
cmV0dXJuIGVoZHItPmVfZW50cnk7Cj4+ICsJcmV0dXJuIGVsZl9oZHJfZV9lbnRyeShmd19lbGZf
Z2V0X2NsYXNzKGZ3KSwgZnctPmRhdGEpOwo+PiAgfQo+PiAgRVhQT1JUX1NZTUJPTChycHJvY19l
bGZfZ2V0X2Jvb3RfYWRkcik7Cj4+ICAKPj4gQEAgLTEzNywzNyArMTU2LDQxIEBAIEVYUE9SVF9T
WU1CT0wocnByb2NfZWxmX2dldF9ib290X2FkZHIpOwo+PiAgaW50IHJwcm9jX2VsZl9sb2FkX3Nl
Z21lbnRzKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpCj4+
ICB7Cj4+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnJwcm9jLT5kZXY7Cj4+IC0Jc3RydWN0IGVs
ZjMyX2hkciAqZWhkcjsKPj4gLQlzdHJ1Y3QgZWxmMzJfcGhkciAqcGhkcjsKPj4gKwljb25zdCB2
b2lkICplaGRyLCAqcGhkcjsKPj4gIAlpbnQgaSwgcmV0ID0gMDsKPj4gKwl1MTYgcGhudW07Cj4+
ICAJY29uc3QgdTggKmVsZl9kYXRhID0gZnctPmRhdGE7Cj4+ICsJdTggY2xhc3MgPSBmd19lbGZf
Z2V0X2NsYXNzKGZ3KTsKPj4gKwl1MzIgZWxmX3BoZHJfc2l6ZSA9IGVsZl9zaXplX29mX3BoZHIo
Y2xhc3MpOwo+PiAgCj4+IC0JZWhkciA9IChzdHJ1Y3QgZWxmMzJfaGRyICopZWxmX2RhdGE7Cj4+
IC0JcGhkciA9IChzdHJ1Y3QgZWxmMzJfcGhkciAqKShlbGZfZGF0YSArIGVoZHItPmVfcGhvZmYp
Owo+PiArCWVoZHIgPSBlbGZfZGF0YTsKPj4gKwlwaG51bSA9IGVsZl9oZHJfZV9waG51bShjbGFz
cywgZWhkcik7Cj4+ICsJcGhkciA9IGVsZl9kYXRhICsgZWxmX2hkcl9lX3Bob2ZmKGNsYXNzLCBl
aGRyKTsKPj4gIAo+PiAgCS8qIGdvIHRocm91Z2ggdGhlIGF2YWlsYWJsZSBFTEYgc2VnbWVudHMg
Ki8KPj4gLQlmb3IgKGkgPSAwOyBpIDwgZWhkci0+ZV9waG51bTsgaSsrLCBwaGRyKyspIHsKPj4g
LQkJdTMyIGRhID0gcGhkci0+cF9wYWRkcjsKPj4gLQkJdTMyIG1lbXN6ID0gcGhkci0+cF9tZW1z
ejsKPj4gLQkJdTMyIGZpbGVzeiA9IHBoZHItPnBfZmlsZXN6Owo+PiAtCQl1MzIgb2Zmc2V0ID0g
cGhkci0+cF9vZmZzZXQ7Cj4+ICsJZm9yIChpID0gMDsgaSA8IHBobnVtOyBpKyssIHBoZHIgKz0g
ZWxmX3BoZHJfc2l6ZSkgewo+PiArCQl1NjQgZGEgPSBlbGZfcGhkcl9wX3BhZGRyKGNsYXNzLCBw
aGRyKTsKPj4gKwkJdTY0IG1lbXN6ID0gZWxmX3BoZHJfcF9tZW1zeihjbGFzcywgcGhkcik7Cj4+
ICsJCXU2NCBmaWxlc3ogPSBlbGZfcGhkcl9wX2ZpbGVzeihjbGFzcywgcGhkcik7Cj4+ICsJCXU2
NCBvZmZzZXQgPSBlbGZfcGhkcl9wX29mZnNldChjbGFzcywgcGhkcik7Cj4+ICsJCXUzMiB0eXBl
ID0gZWxmX3BoZHJfcF90eXBlKGNsYXNzLCBwaGRyKTsKPj4gIAkJdm9pZCAqcHRyOwo+PiAgCj4+
IC0JCWlmIChwaGRyLT5wX3R5cGUgIT0gUFRfTE9BRCkKPj4gKwkJaWYgKHR5cGUgIT0gUFRfTE9B
RCkKPj4gIAkJCWNvbnRpbnVlOwo+PiAgCj4+IC0JCWRldl9kYmcoZGV2LCAicGhkcjogdHlwZSAl
ZCBkYSAweCV4IG1lbXN6IDB4JXggZmlsZXN6IDB4JXhcbiIsCj4+IC0JCQlwaGRyLT5wX3R5cGUs
IGRhLCBtZW1zeiwgZmlsZXN6KTsKPj4gKwkJZGV2X2RiZyhkZXYsICJwaGRyOiB0eXBlICVkIGRh
IDB4JWxseCBtZW1zeiAweCVsbHggZmlsZXN6IDB4JWxseFxuIiwKPj4gKwkJCXR5cGUsIGRhLCBt
ZW1zeiwgZmlsZXN6KTsKPj4gIAo+PiAgCQlpZiAoZmlsZXN6ID4gbWVtc3opIHsKPj4gLQkJCWRl
dl9lcnIoZGV2LCAiYmFkIHBoZHIgZmlsZXN6IDB4JXggbWVtc3ogMHgleFxuIiwKPj4gKwkJCWRl
dl9lcnIoZGV2LCAiYmFkIHBoZHIgZmlsZXN6IDB4JWxseCBtZW1zeiAweCVsbHhcbiIsCj4+ICAJ
CQkJZmlsZXN6LCBtZW1zeik7Cj4+ICAJCQlyZXQgPSAtRUlOVkFMOwo+PiAgCQkJYnJlYWs7Cj4+
ICAJCX0KPj4gIAo+PiAgCQlpZiAob2Zmc2V0ICsgZmlsZXN6ID4gZnctPnNpemUpIHsKPj4gLQkJ
CWRldl9lcnIoZGV2LCAidHJ1bmNhdGVkIGZ3OiBuZWVkIDB4JXggYXZhaWwgMHglenhcbiIsCj4+
ICsJCQlkZXZfZXJyKGRldiwgInRydW5jYXRlZCBmdzogbmVlZCAweCVsbHggYXZhaWwgMHglenhc
biIsCj4+ICAJCQkJb2Zmc2V0ICsgZmlsZXN6LCBmdy0+c2l6ZSk7Cj4+ICAJCQlyZXQgPSAtRUlO
VkFMOwo+PiAgCQkJYnJlYWs7Cj4+IEBAIC0xNzYsMTQgKzE5OSwxNSBAQCBpbnQgcnByb2NfZWxm
X2xvYWRfc2VnbWVudHMoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3QKPj4gc3RydWN0IGZpcm13
YXJlICpmdykKPj4gIAkJLyogZ3JhYiB0aGUga2VybmVsIGFkZHJlc3MgZm9yIHRoaXMgZGV2aWNl
IGFkZHJlc3MgKi8KPj4gIAkJcHRyID0gcnByb2NfZGFfdG9fdmEocnByb2MsIGRhLCBtZW1zeik7
Cj4+ICAJCWlmICghcHRyKSB7Cj4+IC0JCQlkZXZfZXJyKGRldiwgImJhZCBwaGRyIGRhIDB4JXgg
bWVtIDB4JXhcbiIsIGRhLCBtZW1zeik7Cj4+ICsJCQlkZXZfZXJyKGRldiwgImJhZCBwaGRyIGRh
IDB4JWxseCBtZW0gMHglbGx4XG4iLCBkYSwKPj4gKwkJCQltZW1zeik7Cj4+ICAJCQlyZXQgPSAt
RUlOVkFMOwo+PiAgCQkJYnJlYWs7Cj4+ICAJCX0KPj4gIAo+PiAgCQkvKiBwdXQgdGhlIHNlZ21l
bnQgd2hlcmUgdGhlIHJlbW90ZSBwcm9jZXNzb3IgZXhwZWN0cyBpdCAqLwo+PiAtCQlpZiAocGhk
ci0+cF9maWxlc3opCj4+IC0JCQltZW1jcHkocHRyLCBlbGZfZGF0YSArIHBoZHItPnBfb2Zmc2V0
LCBmaWxlc3opOwo+PiArCQlpZiAoZmlsZXN6KQo+PiArCQkJbWVtY3B5KHB0ciwgZWxmX2RhdGEg
KyBvZmZzZXQsIGZpbGVzeik7Cj4+ICAKPj4gIAkJLyoKPj4gIAkJICogWmVybyBvdXQgcmVtYWlu
aW5nIG1lbW9yeSBmb3IgdGhpcyBzZWdtZW50Lgo+PiBAQCAtMjAwLDI0ICsyMjQsMzUgQEAgaW50
IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0Cj4+IHN0
cnVjdCBmaXJtd2FyZSAqZncpCj4+ICB9Cj4+ICBFWFBPUlRfU1lNQk9MKHJwcm9jX2VsZl9sb2Fk
X3NlZ21lbnRzKTsKPj4gIAo+PiAtc3RhdGljIHN0cnVjdCBlbGYzMl9zaGRyICoKPj4gLWZpbmRf
dGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZWxmMzJfaGRyICplaGRyLCBzaXplX3Qg
Zndfc2l6ZSkKPj4gK3N0YXRpYyBjb25zdCB2b2lkICoKPj4gK2ZpbmRfdGFibGUoc3RydWN0IGRl
dmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KQo+PiAgewo+PiAtCXN0cnVjdCBl
bGYzMl9zaGRyICpzaGRyOwo+PiArCWNvbnN0IHZvaWQgKnNoZHIsICpuYW1lX3RhYmxlX3NoZHI7
Cj4+ICAJaW50IGk7Cj4+ICAJY29uc3QgY2hhciAqbmFtZV90YWJsZTsKPj4gIAlzdHJ1Y3QgcmVz
b3VyY2VfdGFibGUgKnRhYmxlID0gTlVMTDsKPj4gLQljb25zdCB1OCAqZWxmX2RhdGEgPSAodm9p
ZCAqKWVoZHI7Cj4+ICsJY29uc3QgdTggKmVsZl9kYXRhID0gKHZvaWQgKilmdy0+ZGF0YTsKPj4g
Kwl1OCBjbGFzcyA9IGZ3X2VsZl9nZXRfY2xhc3MoZncpOwo+PiArCXNpemVfdCBmd19zaXplID0g
ZnctPnNpemU7Cj4+ICsJY29uc3Qgdm9pZCAqZWhkciA9IGVsZl9kYXRhOwo+PiArCXUxNiBzaG51
bSA9IGVsZl9oZHJfZV9zaG51bShjbGFzcywgZWhkcik7Cj4+ICsJdTMyIGVsZl9zaGRyX3NpemUg
PSBlbGZfc2l6ZV9vZl9zaGRyKGNsYXNzKTsKPj4gKwl1MTYgc2hzdHJuZHggPSBlbGZfaGRyX2Vf
c2hzdHJuZHgoY2xhc3MsIGVoZHIpOwo+PiAgCj4+ICAJLyogbG9vayBmb3IgdGhlIHJlc291cmNl
IHRhYmxlIGFuZCBoYW5kbGUgaXQgKi8KPj4gLQlzaGRyID0gKHN0cnVjdCBlbGYzMl9zaGRyICop
KGVsZl9kYXRhICsgZWhkci0+ZV9zaG9mZik7Cj4+IC0JbmFtZV90YWJsZSA9IGVsZl9kYXRhICsg
c2hkcltlaGRyLT5lX3Noc3RybmR4XS5zaF9vZmZzZXQ7Cj4+IC0KPj4gLQlmb3IgKGkgPSAwOyBp
IDwgZWhkci0+ZV9zaG51bTsgaSsrLCBzaGRyKyspIHsKPj4gLQkJdTMyIHNpemUgPSBzaGRyLT5z
aF9zaXplOwo+PiAtCQl1MzIgb2Zmc2V0ID0gc2hkci0+c2hfb2Zmc2V0Owo+PiAtCj4+IC0JCWlm
IChzdHJjbXAobmFtZV90YWJsZSArIHNoZHItPnNoX25hbWUsICIucmVzb3VyY2VfdGFibGUiKSkK
Pj4gKwkvKiBGaXJzdCwgZ2V0IHRoZSBzZWN0aW9uIGhlYWRlciBhY2NvcmRpbmcgdG8gdGhlIGVs
ZiBjbGFzcyAqLwo+PiArCXNoZHIgPSBlbGZfZGF0YSArIGVsZl9oZHJfZV9zaG9mZihjbGFzcywg
ZWhkcik7Cj4+ICsJLyogQ29tcHV0ZSBuYW1lIHRhYmxlIHNlY3Rpb24gaGVhZGVyIGVudHJ5IGlu
IHNoZHIgYXJyYXkgKi8KPj4gKwluYW1lX3RhYmxlX3NoZHIgPSBzaGRyICsgKHNoc3RybmR4ICog
ZWxmX3NoZHJfc2l6ZSk7Cj4+ICsJLyogRmluYWxseSwgY29tcHV0ZSB0aGUgbmFtZSB0YWJsZSBz
ZWN0aW9uIGFkZHJlc3MgaW4gZWxmICovCj4+ICsJbmFtZV90YWJsZSA9IGVsZl9kYXRhICsgZWxm
X3NoZHJfc2hfb2Zmc2V0KGNsYXNzLCBuYW1lX3RhYmxlX3NoZHIpOwo+PiArCj4+ICsJZm9yIChp
ID0gMDsgaSA8IHNobnVtOyBpKyssIHNoZHIgKz0gZWxmX3NoZHJfc2l6ZSkgewo+PiArCQl1NjQg
c2l6ZSA9IGVsZl9zaGRyX3NoX3NpemUoY2xhc3MsIHNoZHIpOwo+PiArCQl1NjQgb2Zmc2V0ID0g
ZWxmX3NoZHJfc2hfb2Zmc2V0KGNsYXNzLCBzaGRyKTsKPj4gKwkJdTMyIG5hbWUgPSBlbGZfc2hk
cl9zaF9uYW1lKGNsYXNzLCBzaGRyKTsKPj4gKwo+PiArCQlpZiAoc3RyY21wKG5hbWVfdGFibGUg
KyBuYW1lLCAiLnJlc291cmNlX3RhYmxlIikpCj4+ICAJCQljb250aW51ZTsKPj4gIAo+PiAgCQl0
YWJsZSA9IChzdHJ1Y3QgcmVzb3VyY2VfdGFibGUgKikoZWxmX2RhdGEgKyBvZmZzZXQpOwo+PiBA
QCAtMjcwLDIxICszMDUsMjEgQEAgZmluZF90YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBlbGYzMl9oZHIgKmVoZHIsCj4+IHNpemVfdCBmd19zaXplKQo+PiAgICovCj4+ICBpbnQgcnBy
b2NfZWxmX2xvYWRfcnNjX3RhYmxlKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBm
aXJtd2FyZSAqZncpCj4+ICB7Cj4+IC0Jc3RydWN0IGVsZjMyX2hkciAqZWhkcjsKPj4gLQlzdHJ1
Y3QgZWxmMzJfc2hkciAqc2hkcjsKPj4gKwljb25zdCB2b2lkICpzaGRyOwo+PiAgCXN0cnVjdCBk
ZXZpY2UgKmRldiA9ICZycHJvYy0+ZGV2Owo+PiAgCXN0cnVjdCByZXNvdXJjZV90YWJsZSAqdGFi
bGUgPSBOVUxMOwo+PiAgCWNvbnN0IHU4ICplbGZfZGF0YSA9IGZ3LT5kYXRhOwo+PiAgCXNpemVf
dCB0YWJsZXN6Owo+PiArCXU4IGNsYXNzID0gZndfZWxmX2dldF9jbGFzcyhmdyk7Cj4+ICsJdTY0
IHNoX29mZnNldDsKPj4gIAo+PiAtCWVoZHIgPSAoc3RydWN0IGVsZjMyX2hkciAqKWVsZl9kYXRh
Owo+PiAtCj4+IC0Jc2hkciA9IGZpbmRfdGFibGUoZGV2LCBlaGRyLCBmdy0+c2l6ZSk7Cj4+ICsJ
c2hkciA9IGZpbmRfdGFibGUoZGV2LCBmdyk7Cj4+ICAJaWYgKCFzaGRyKQo+PiAgCQlyZXR1cm4g
LUVJTlZBTDsKPj4gIAo+PiAtCXRhYmxlID0gKHN0cnVjdCByZXNvdXJjZV90YWJsZSAqKShlbGZf
ZGF0YSArIHNoZHItPnNoX29mZnNldCk7Cj4+IC0JdGFibGVzeiA9IHNoZHItPnNoX3NpemU7Cj4+
ICsJc2hfb2Zmc2V0ID0gZWxmX3NoZHJfc2hfb2Zmc2V0KGNsYXNzLCBzaGRyKTsKPj4gKwl0YWJs
ZSA9IChzdHJ1Y3QgcmVzb3VyY2VfdGFibGUgKikoZWxmX2RhdGEgKyBzaF9vZmZzZXQpOwo+PiAr
CXRhYmxlc3ogPSBlbGZfc2hkcl9zaF9zaXplKGNsYXNzLCBzaGRyKTsKPj4gIAo+PiAgCS8qCj4+
ICAJICogQ3JlYXRlIGEgY29weSBvZiB0aGUgcmVzb3VyY2UgdGFibGUuIFdoZW4gYSB2aXJ0aW8g
ZGV2aWNlIHN0YXJ0cwo+PiBAQCAtMzE3LDEzICszNTIsMTcgQEAgRVhQT1JUX1NZTUJPTChycHJv
Y19lbGZfbG9hZF9yc2NfdGFibGUpOwo+PiAgc3RydWN0IHJlc291cmNlX3RhYmxlICpycHJvY19l
bGZfZmluZF9sb2FkZWRfcnNjX3RhYmxlKHN0cnVjdCBycHJvYyAqcnByb2MsCj4+ICAJCQkJCQkg
ICAgICAgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdykKPj4gIHsKPj4gLQlzdHJ1Y3QgZWxmMzJf
aGRyICplaGRyID0gKHN0cnVjdCBlbGYzMl9oZHIgKilmdy0+ZGF0YTsKPj4gLQlzdHJ1Y3QgZWxm
MzJfc2hkciAqc2hkcjsKPj4gKwljb25zdCB2b2lkICpzaGRyOwo+PiArCXU2NCBzaF9hZGRyLCBz
aF9zaXplOwo+PiArCXU4IGNsYXNzID0gZndfZWxmX2dldF9jbGFzcyhmdyk7Cj4+ICAKPj4gLQlz
aGRyID0gZmluZF90YWJsZSgmcnByb2MtPmRldiwgZWhkciwgZnctPnNpemUpOwo+PiArCXNoZHIg
PSBmaW5kX3RhYmxlKCZycHJvYy0+ZGV2LCBmdyk7Cj4+ICAJaWYgKCFzaGRyKQo+PiAgCQlyZXR1
cm4gTlVMTDsKPj4gIAo+PiAtCXJldHVybiBycHJvY19kYV90b192YShycHJvYywgc2hkci0+c2hf
YWRkciwgc2hkci0+c2hfc2l6ZSk7Cj4+ICsJc2hfYWRkciA9IGVsZl9zaGRyX3NoX2FkZHIoY2xh
c3MsIHNoZHIpOwo+PiArCXNoX3NpemUgPSBlbGZfc2hkcl9zaF9zaXplKGNsYXNzLCBzaGRyKTsK
Pj4gKwo+PiArCXJldHVybiBycHJvY19kYV90b192YShycHJvYywgc2hfYWRkciwgc2hfc2l6ZSk7
Cj4+ICB9Cj4+ICBFWFBPUlRfU1lNQk9MKHJwcm9jX2VsZl9maW5kX2xvYWRlZF9yc2NfdGFibGUp
Owo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRl
ci5oCj4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRlci5oCj4+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZmFjMzU2NTczNGY5Cj4+
IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxm
X2xvYWRlci5oCj4+IEBAIC0wLDAgKzEsNjkgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wICovCj4+ICsvKgo+PiArICogUmVtb3RlIHByb2Nlc3NvciBlbGYgbG9hZGVy
IGRlZmluZXMKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgS2FscmF5LCBJbmMuCj4+
ICsgKi8KPj4gKwo+PiArI2lmbmRlZiBSRU1PVEVQUk9DX0VMRl9MT0FERVJfSAo+PiArI2RlZmlu
ZSBSRU1PVEVQUk9DX0VMRl9MT0FERVJfSAo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvZWxmLmg+
Cj4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPj4gKwo+PiArLyoqCj4+ICsgKiBmd19lbGZf
Z2V0X2NsYXNzIC0gR2V0IGVsZiBjbGFzcwo+PiArICogQGZ3OiB0aGUgRUxGIGZpcm13YXJlIGlt
YWdlCj4+ICsgKgo+PiArICogTm90ZSB0aGF0IHdlIHVzZSBhbmQgZWxmMzJfaGRyIHRvIGFjY2Vz
cyB0aGUgY2xhc3Mgc2luY2UgdGhlIHN0YXJ0IG9mIHRoZQo+PiArICogc3RydWN0IGlzIHRoZSBz
YW1lIGZvciBib3RoIGVsZiBjbGFzcwo+PiArICoKPj4gKyAqIFJldHVybjogZWxmIGNsYXNzIG9m
IHRoZSBmaXJtd2FyZQo+PiArICovCj4+ICtzdGF0aWMgaW5saW5lIHU4IGZ3X2VsZl9nZXRfY2xh
c3MoY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdykKPj4gK3sKPj4gKwlzdHJ1Y3QgZWxmMzJfaGRy
ICplaGRyID0gKHN0cnVjdCBlbGYzMl9oZHIgKilmdy0+ZGF0YTsKPj4gKwo+PiArCXJldHVybiBl
aGRyLT5lX2lkZW50W0VJX0NMQVNTXTsKPj4gK30KPj4gKwo+PiArI2RlZmluZSBFTEZfR0VUX0ZJ
RUxEKF9fcywgX19maWVsZCwgX190eXBlKSBcCj4+ICtzdGF0aWMgaW5saW5lIF9fdHlwZSBlbGZf
IyNfX3MjI18jI19fZmllbGQodTggY2xhc3MsIGNvbnN0IHZvaWQgKmFyZykgXAo+PiAreyBcCj4+
ICsJaWYgKGNsYXNzID09IEVMRkNMQVNTMzIpIFwKPj4gKwkJcmV0dXJuIChfX3R5cGUpICgoY29u
c3Qgc3RydWN0IGVsZjMyXyMjX19zICopIGFyZyktPl9fZmllbGQ7IFwKPj4gKwllbHNlIFwKPj4g
KwkJcmV0dXJuIChfX3R5cGUpICgoY29uc3Qgc3RydWN0IGVsZjY0XyMjX19zICopIGFyZyktPl9f
ZmllbGQ7IFwKPj4gK30KPj4gKwo+PiArRUxGX0dFVF9GSUVMRChoZHIsIGVfZW50cnksIHU2NCkK
Pj4gK0VMRl9HRVRfRklFTEQoaGRyLCBlX3BobnVtLCB1MTYpCj4+ICtFTEZfR0VUX0ZJRUxEKGhk
ciwgZV9zaG51bSwgdTE2KQo+PiArRUxGX0dFVF9GSUVMRChoZHIsIGVfcGhvZmYsIHU2NCkKPj4g
K0VMRl9HRVRfRklFTEQoaGRyLCBlX3Nob2ZmLCB1NjQpCj4+ICtFTEZfR0VUX0ZJRUxEKGhkciwg
ZV9zaHN0cm5keCwgdTE2KQo+PiArCj4+ICtFTEZfR0VUX0ZJRUxEKHBoZHIsIHBfcGFkZHIsIHU2
NCkKPj4gK0VMRl9HRVRfRklFTEQocGhkciwgcF9maWxlc3osIHU2NCkKPj4gK0VMRl9HRVRfRklF
TEQocGhkciwgcF9tZW1zeiwgdTY0KQo+PiArRUxGX0dFVF9GSUVMRChwaGRyLCBwX3R5cGUsIHUz
MikKPj4gK0VMRl9HRVRfRklFTEQocGhkciwgcF9vZmZzZXQsIHU2NCkKPj4gKwo+PiArRUxGX0dF
VF9GSUVMRChzaGRyLCBzaF9zaXplLCB1NjQpCj4+ICtFTEZfR0VUX0ZJRUxEKHNoZHIsIHNoX29m
ZnNldCwgdTY0KQo+PiArRUxGX0dFVF9GSUVMRChzaGRyLCBzaF9uYW1lLCB1MzIpCj4+ICtFTEZf
R0VUX0ZJRUxEKHNoZHIsIHNoX2FkZHIsIHU2NCkKPj4gKwo+PiArI2RlZmluZSBFTEZfU1RSVUNU
X1NJWkUoX19zKSBcCj4+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcgZWxmX3NpemVfb2Zf
IyNfX3ModTggY2xhc3MpIFwKPj4gK3sgXAo+PiArCWlmIChjbGFzcyA9PSBFTEZDTEFTUzMyKVwK
Pj4gKwkJcmV0dXJuIHNpemVvZihzdHJ1Y3QgZWxmMzJfIyNfX3MpOyBcCj4+ICsJZWxzZSBcCj4+
ICsJCXJldHVybiBzaXplb2Yoc3RydWN0IGVsZjY0XyMjX19zKTsgXAo+PiArfQo+PiArCj4+ICtF
TEZfU1RSVUNUX1NJWkUoc2hkcikKPj4gK0VMRl9TVFJVQ1RfU0laRShwaGRyKQo+PiArCj4+ICsj
ZW5kaWYgLyogUkVNT1RFUFJPQ19FTEZfTE9BREVSX0ggKi8KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4gYi9kcml2ZXJzL3JlbW90ZXBy
b2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oCj4+IGluZGV4IDAwNDg2NzA2MTcyMS4uZWViMjY0MzQy
MjBlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5h
bC5oCj4+ICsrKyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4g
QEAgLTU1LDcgKzU1LDcgQEAgcGh5c19hZGRyX3QgcnByb2NfdmFfdG9fcGEodm9pZCAqY3B1X2Fk
ZHIpOwo+PiAgaW50IHJwcm9jX3RyaWdnZXJfcmVjb3Zlcnkoc3RydWN0IHJwcm9jICpycHJvYyk7
Cj4+ICAKPj4gIGludCBycHJvY19lbGZfc2FuaXR5X2NoZWNrKHN0cnVjdCBycHJvYyAqcnByb2Ms
IGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+PiAtdTMyIHJwcm9jX2VsZl9nZXRfYm9vdF9h
ZGRyKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+PiAr
dTY0IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0
cnVjdCBmaXJtd2FyZSAqZncpOwo+PiAgaW50IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzKHN0cnVj
dCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+PiAgaW50IHJwcm9j
X2VsZl9sb2FkX3JzY190YWJsZShzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmly
bXdhcmUgKmZ3KTsKPj4gIHN0cnVjdCByZXNvdXJjZV90YWJsZSAqcnByb2NfZWxmX2ZpbmRfbG9h
ZGVkX3JzY190YWJsZShzdHJ1Y3QgcnByb2MgKnJwcm9jLAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+PiBiL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9y
ZW1vdGVwcm9jLmMKPj4gaW5kZXggZWUxM2QyM2I0M2E5Li5hMzI2OGQ5NWE1MGUgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMKPj4gKysrIGIvZHJpdmVy
cy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+PiBAQCAtMTkwLDcgKzE5MCw3IEBAIHN0YXRp
YyBpbnQgc3RfcnByb2Nfc3RhcnQoc3RydWN0IHJwcm9jICpycHJvYykKPj4gIAkJfQo+PiAgCX0K
Pj4gIAo+PiAtCWRldl9pbmZvKCZycHJvYy0+ZGV2LCAiU3RhcnRlZCBmcm9tIDB4JXhcbiIsIHJw
cm9jLT5ib290YWRkcik7Cj4+ICsJZGV2X2luZm8oJnJwcm9jLT5kZXYsICJTdGFydGVkIGZyb20g
MHglbGx4XG4iLCBycHJvYy0+Ym9vdGFkZHIpOwo+PiAgCj4+ICAJcmV0dXJuIDA7Cj4+ICAKPj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcmVtb3RlcHJvYy5oIGIvaW5jbHVkZS9saW51eC9y
ZW1vdGVwcm9jLmgKPj4gaW5kZXggZjg0YmQ1ZmUwMjExLi44MmNlYmNhOTM0NGMgMTAwNjQ0Cj4+
IC0tLSBhL2luY2x1ZGUvbGludXgvcmVtb3RlcHJvYy5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgv
cmVtb3RlcHJvYy5oCj4+IEBAIC0zODIsNyArMzgyLDcgQEAgc3RydWN0IHJwcm9jX29wcyB7Cj4+
ICAJCQkJc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7Cj4+
ICAJaW50ICgqbG9hZCkoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICpmdyk7Cj4+ICAJaW50ICgqc2FuaXR5X2NoZWNrKShzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25z
dCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPj4gLQl1MzIgKCpnZXRfYm9vdF9hZGRyKShzdHJ1Y3Qg
cnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPj4gKwl1NjQgKCpnZXRf
Ym9vdF9hZGRyKShzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3
KTsKPj4gIH07Cj4+ICAKPj4gIC8qKgo+PiBAQCAtNDk4LDcgKzQ5OCw3IEBAIHN0cnVjdCBycHJv
YyB7Cj4+ICAJaW50IG51bV90cmFjZXM7Cj4+ICAJc3RydWN0IGxpc3RfaGVhZCBjYXJ2ZW91dHM7
Cj4+ICAJc3RydWN0IGxpc3RfaGVhZCBtYXBwaW5nczsKPj4gLQl1MzIgYm9vdGFkZHI7Cj4+ICsJ
dTY0IGJvb3RhZGRyOwo+IAo+IFRoYXQgd2lsbCBjYXVzZSBwcm9ibGVtcyBmb3IgcnByb2NfY29y
ZWR1bXAoKVsxXSBhbmQgZml4aW5nIGl0IHByb3Blcmx5Cj4gbGlrZWx5IG1lYW5zIHRoYXQgYSAz
MiBvciA2NCBlbGYgc2hvdWxkIGJlIGdlbmVyYXRlZCBiYXNlZCBvbiB0aGUgdHlwZSBvZiBpbWFn
ZQo+IHRoYXQgd2FzIGxvYWRlZC4gIFRoaXMgaXMgYWxzbyB0cnVlIGlmIC0+cF92YWRkciBhbmQg
LT5wX3BhZGRyIChhbHNvIGluIHRoZSBzYW1lCj4gZnVuY3Rpb24pIGFyZSB0byBiZSBoYW5kbGVk
IHByb3Blcmx5Lgo+IAo+IEknbSBpbnRlcmVzdGVkIGluIHlvdXIgb3BpbmlvbiBvbiB0aGlzLgoK
SW5kZWVkLCB5b3UgYXJlIHJpZ2h0ICEKCkknbSAiYWZyYWlkIiBJIHdpbGwgaGF2ZSB0byBmaXgg
dGhhdCAhCk1vc3Qgc2FuZSB0aGluZyB0byBkbyBpcyB0byBkdW1wIGFuIGVsZiB3aXRoIHRoZSBp
bnB1dCBlbGYgY2xhc3MuCkkgd2lsbCBtYWtlIGEgVjQgd2l0aCBhIHBhdGNoIGZvciB0aGF0LgoK
VGhhbmtzLAoKQ2zDqW1lbnQKCj4gCj4gVGhhbmtzLAo+IE1hdGhpZXUKPiAKPiBbMV0uCj4gaHR0
cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL3JlbW90
ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMjTDE2MDAKPiAKPj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIHJ2
ZGV2czsKPj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIHN1YmRldnM7Cj4+ICAJc3RydWN0IGlkciBub3Rp
ZnlpZHM7Cj4+IC0tCj4+IDIuMTUuMC4yNzYuZzg5ZWE3OTkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
