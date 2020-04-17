Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100231AE624
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtJt9sLYyIGPvTuowF3Gb0AVnZb/RT2A5oeSw92aR8g=; b=X9ACGIEzB8piPb
	f74sy6w4y3v4XRbbBMCSafVH9eXaLBQqjnP8WV2Nd/jcgRzaO2lXxjNA7Tf5Y/dgqWxkA4FHKMiLp
	SHmKk+QZB+TpLULMT1qsRLJ9eqJrDzNeMVLluwwHv/d5lbrQZEZhvKgXsh8rIfPmoakGRM3wxAqVq
	C8SvoWk5LgyTOYDio2CJ/6HgPSG6zUFhlu0uRQswLNSyOdpHujGw8FIxCxmPfCenuvvctLSHjhSFb
	WDDMOdEBK/8A3lRm18FyYBD/JERvm0oK2um8rK+5gY1iU6sDsMkSAlC40DBIQJwbPmgksf//lSQt9
	nfnC9pjPi+UhDJPSFTWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWu7-0001NH-Sm; Fri, 17 Apr 2020 19:43:59 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWtz-0001M7-GN
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 19:43:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A116127E0309;
 Fri, 17 Apr 2020 21:43:48 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tV94W3F9OK5N; Fri, 17 Apr 2020 21:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 14D6027E1067;
 Fri, 17 Apr 2020 21:43:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 61DbgYq2xx3I; Fri, 17 Apr 2020 21:43:47 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E9E3927E0309;
 Fri, 17 Apr 2020 21:43:47 +0200 (CEST)
Date: Fri, 17 Apr 2020 21:43:47 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Message-ID: <1280711269.16158926.1587152627279.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200417193837.GB6797@xps15>
References: <20200410102433.2672-1-cleger@kalray.eu>
 <20200410102433.2672-2-cleger@kalray.eu> <20200417193837.GB6797@xps15>
Subject: Re: [PATCH 1/2] remoteproc: add rproc_coredump_set_elf_info
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - FF68 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: add rproc_coredump_set_elf_info
Thread-Index: ZRVka9xHHsh5gxO0cyYKwOr1nrpnPA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_124351_892398_3A5BA5FB 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0gT24gMTcgQXByLCAyMDIwLCBhdCAyMTozOCwgTWF0aGlldSBQb2lyaWVyIG1hdGhpZXUu
cG9pcmllckBsaW5hcm8ub3JnIHdyb3RlOgoKPiBPbiBGcmksIEFwciAxMCwgMjAyMCBhdCAxMjoy
NDozMlBNICswMjAwLCBDbGVtZW50IExlZ2VyIHdyb3RlOgo+PiBUaGlzIGZ1bmN0aW9uIGFsbG93
cyBkcml2ZXJzIHRvIGNvcnJlY3RseSBzZXR1cCB0aGUgY29yZWR1bXAgb3V0cHV0Cj4+IGVsZiBp
bmZvcm1hdGlvbi4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IENsZW1lbnQgTGVnZXIgPGNsZWdlckBr
YWxyYXkuZXU+Cj4+IC0tLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5j
ICAgICAgIHwgMzIgKysrKysrKysrKysrKysrKysrKystLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9j
L3JlbW90ZXByb2NfZWxmX2xvYWRlci5jIHwgIDMgLS0KPj4gIGluY2x1ZGUvbGludXgvcmVtb3Rl
cHJvYy5oICAgICAgICAgICAgICAgICB8ICAyICsrCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDMyIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
ZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5jCj4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90
ZXByb2NfY29yZS5jCj4+IGluZGV4IGE5YWMxZDAxZTA5Yi4uMzgyNDQzYmFiNTgzIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMKPj4gKysrIGIvZHJp
dmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5jCj4+IEBAIC0xNTYyLDYgKzE1NjIsMjgg
QEAgaW50IHJwcm9jX2NvcmVkdW1wX2FkZF9jdXN0b21fc2VnbWVudChzdHJ1Y3QgcnByb2MKPj4g
KnJwcm9jLAo+PiAgfQo+PiAgRVhQT1JUX1NZTUJPTChycHJvY19jb3JlZHVtcF9hZGRfY3VzdG9t
X3NlZ21lbnQpOwo+PiAgCj4+ICsvKioKPj4gKyAqIHJwcm9jX2NvcmVkdW1wX3NldF9lbGZfaW5m
bygpIC0gc2V0IGNvcmVkdW1wIGVsZiBpbmZvcm1hdGlvbgo+PiArICogQHJwcm9jOgloYW5kbGUg
b2YgYSByZW1vdGUgcHJvY2Vzc29yCj4+ICsgKiBAY2xhc3M6CWVsZiBjbGFzcyBmb3IgY29yZWR1
bXAgZWxmIGZpbGUKPj4gKyAqIEBzaXplOgllbGYgbWFjaGluZSBmb3IgY29yZWR1bXAgZWxmIGZp
bGUKCkkganVzdCBub3RpY2VkIHRoYXQgdGhlcmUgaXMgYSB0eXBvLCB0aGlzIHNob3VsZCBiZSAi
bWFjaGluZSIgYW5kIG5vdCAic2l6ZSIuCkxldCBtZSBrbm93IGlmIHlvdSdsbCBmaXggaXQgd2hl
biBhcHBseWluZy4KClRoYW5rcywKCkNsw6ltZW50Cgo+PiArICoKPj4gKyAqIFNldCBlbGYgaW5m
b3JtYXRpb24gd2hpY2ggd2lsbCBiZSB1c2VkIGZvciBjb3JlZHVtcCBlbGYgZmlsZS4KPj4gKyAq
Cj4+ICsgKiBSZXR1cm46IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgZXJybm8gb24gZXJyb3IuCj4+
ICsgKi8KPj4gK2ludCBycHJvY19jb3JlZHVtcF9zZXRfZWxmX2luZm8oc3RydWN0IHJwcm9jICpy
cHJvYywgdTggY2xhc3MsIHUxNiBtYWNoaW5lKQo+PiArewo+PiArCWlmIChjbGFzcyAhPSBFTEZD
TEFTUzY0ICYmIGNsYXNzICE9IEVMRkNMQVNTMzIpCj4+ICsJCXJldHVybiAtRUlOVkFMOwo+PiAr
Cj4+ICsJcnByb2MtPmVsZl9jbGFzcyA9IGNsYXNzOwo+PiArCXJwcm9jLT5lbGZfbWFjaGluZSA9
IG1hY2hpbmU7Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0wocnBy
b2NfY29yZWR1bXBfc2V0X2VsZl9pbmZvKTsKPj4gKwo+PiAgLyoqCj4+ICAgKiBycHJvY19jb3Jl
ZHVtcCgpIC0gcGVyZm9ybSBjb3JlZHVtcAo+PiAgICogQHJwcm9jOglycHJvYyBoYW5kbGUKPj4g
QEAgLTE1ODQsNiArMTYwNiwxMSBAQCBzdGF0aWMgdm9pZCBycHJvY19jb3JlZHVtcChzdHJ1Y3Qg
cnByb2MgKnJwcm9jKQo+PiAgCWlmIChsaXN0X2VtcHR5KCZycHJvYy0+ZHVtcF9zZWdtZW50cykp
Cj4+ICAJCXJldHVybjsKPj4gIAo+PiArCWlmIChjbGFzcyA9PSBFTEZDTEFTU05PTkUpIHsKPj4g
KwkJZGV2X2VycigmcnByb2MtPmRldiwgIkVsZiBjbGFzcyBpcyBub3Qgc2V0XG4iKTsKPj4gKwkJ
cmV0dXJuOwo+PiArCX0KPj4gKwo+PiAgCWRhdGFfc2l6ZSA9IGVsZl9zaXplX29mX2hkcihjbGFz
cyk7Cj4+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShzZWdtZW50LCAmcnByb2MtPmR1bXBfc2VnbWVu
dHMsIG5vZGUpIHsKPj4gIAkJZGF0YV9zaXplICs9IGVsZl9zaXplX29mX3BoZHIoY2xhc3MpICsg
c2VnbWVudC0+c2l6ZTsKPj4gQEAgLTE2MDIsNyArMTYyOSw3IEBAIHN0YXRpYyB2b2lkIHJwcm9j
X2NvcmVkdW1wKHN0cnVjdCBycHJvYyAqcnByb2MpCj4+ICAJZWxmX2hkcl9pbml0X2lkZW50KGVo
ZHIsIGNsYXNzKTsKPj4gIAo+PiAgCWVsZl9oZHJfc2V0X2VfdHlwZShjbGFzcywgZWhkciwgRVRf
Q09SRSk7Cj4+IC0JZWxmX2hkcl9zZXRfZV9tYWNoaW5lKGNsYXNzLCBlaGRyLCBFTV9OT05FKTsK
Pj4gKwllbGZfaGRyX3NldF9lX21hY2hpbmUoY2xhc3MsIGVoZHIsIHJwcm9jLT5lbGZfbWFjaGlu
ZSk7Cj4+ICAJZWxmX2hkcl9zZXRfZV92ZXJzaW9uKGNsYXNzLCBlaGRyLCBFVl9DVVJSRU5UKTsK
Pj4gIAllbGZfaGRyX3NldF9lX2VudHJ5KGNsYXNzLCBlaGRyLCBycHJvYy0+Ym9vdGFkZHIpOwo+
PiAgCWVsZl9oZHJfc2V0X2VfcGhvZmYoY2xhc3MsIGVoZHIsIGVsZl9zaXplX29mX2hkcihjbGFz
cykpOwo+PiBAQCAtMjA0Myw3ICsyMDcwLDggQEAgc3RydWN0IHJwcm9jICpycHJvY19hbGxvYyhz
dHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIKPj4gKm5hbWUsCj4+ICAJcnByb2MtPm5hbWUg
PSBuYW1lOwo+PiAgCXJwcm9jLT5wcml2ID0gJnJwcm9jWzFdOwo+PiAgCXJwcm9jLT5hdXRvX2Jv
b3QgPSB0cnVlOwo+PiAtCXJwcm9jLT5lbGZfY2xhc3MgPSBFTEZDTEFTUzMyOwo+PiArCXJwcm9j
LT5lbGZfY2xhc3MgPSBFTEZDTEFTU05PTkU7Cj4+ICsJcnByb2MtPmVsZl9tYWNoaW5lID0gRU1f
Tk9ORTsKPj4gIAo+PiAgCWRldmljZV9pbml0aWFsaXplKCZycHJvYy0+ZGV2KTsKPj4gIAlycHJv
Yy0+ZGV2LnBhcmVudCA9IGRldjsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9y
ZW1vdGVwcm9jX2VsZl9sb2FkZXIuYwo+PiBiL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9j
X2VsZl9sb2FkZXIuYwo+PiBpbmRleCAxNmUyYzQ5NmZkNDUuLjQ4NjlmYjdkOGZlNCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRlci5jCj4+ICsr
KyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIuYwo+PiBAQCAtMjQ4
LDkgKzI0OCw2IEBAIGludCBycHJvY19lbGZfbG9hZF9zZWdtZW50cyhzdHJ1Y3QgcnByb2MgKnJw
cm9jLCBjb25zdAo+PiBzdHJ1Y3QgZmlybXdhcmUgKmZ3KQo+PiAgCQkJbWVtc2V0KHB0ciArIGZp
bGVzeiwgMCwgbWVtc3ogLSBmaWxlc3opOwo+PiAgCX0KPj4gIAo+PiAtCWlmIChyZXQgPT0gMCkK
Pj4gLQkJcnByb2MtPmVsZl9jbGFzcyA9IGNsYXNzOwo+PiAtCj4+ICAJcmV0dXJuIHJldDsKPj4g
IH0KPj4gIEVYUE9SVF9TWU1CT0wocnByb2NfZWxmX2xvYWRfc2VnbWVudHMpOwo+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9yZW1vdGVwcm9jLmggYi9pbmNsdWRlL2xpbnV4L3JlbW90ZXBy
b2MuaAo+PiBpbmRleCBlZDEyN2IyZDM1Y2EuLmQ2N2ViNWE0MDQ3NiAxMDA2NDQKPj4gLS0tIGEv
aW5jbHVkZS9saW51eC9yZW1vdGVwcm9jLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9yZW1vdGVw
cm9jLmgKPj4gQEAgLTUxNSw2ICs1MTUsNyBAQCBzdHJ1Y3QgcnByb2Mgewo+PiAgCXN0cnVjdCBs
aXN0X2hlYWQgZHVtcF9zZWdtZW50czsKPj4gIAlpbnQgbmJfdmRldjsKPj4gIAl1OCBlbGZfY2xh
c3M7Cj4+ICsJdTE2IGVsZl9tYWNoaW5lOwo+PiAgfTsKPiAKPiBSZXZpZXdlZC1ieTogTWF0aGll
dSBQb2lyaWVyIDxtYXRoaWV1LnBvaXJpZXJAbGluYXJvLm9yZz4KPiAKPj4gIAo+PiAgLyoqCj4+
IEBAIC02MTksNiArNjIwLDcgQEAgaW50IHJwcm9jX2NvcmVkdW1wX2FkZF9jdXN0b21fc2VnbWVu
dChzdHJ1Y3QgcnByb2MgKnJwcm9jLAo+PiAgCQkJCQkJICAgICBzdHJ1Y3QgcnByb2NfZHVtcF9z
ZWdtZW50ICpzZWdtZW50LAo+PiAgCQkJCQkJICAgICB2b2lkICpkZXN0KSwKPj4gIAkJCQkgICAg
ICB2b2lkICpwcml2KTsKPj4gK2ludCBycHJvY19jb3JlZHVtcF9zZXRfZWxmX2luZm8oc3RydWN0
IHJwcm9jICpycHJvYywgdTggY2xhc3MsIHUxNiBtYWNoaW5lKTsKPj4gIAo+PiAgc3RhdGljIGlu
bGluZSBzdHJ1Y3QgcnByb2NfdmRldiAqdmRldl90b19ydmRldihzdHJ1Y3QgdmlydGlvX2Rldmlj
ZSAqdmRldikKPj4gIHsKPj4gLS0KPj4gMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
