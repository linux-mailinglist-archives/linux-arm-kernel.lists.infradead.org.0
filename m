Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B06761D76
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 13:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ICLinyWHODhu9EXdHARge5u2yqysV21VhUXwhn1UKwk=; b=MbG9gRiMi5xehepbnN87FHiX+
	8ynIzXC+twuHztESghZTMUjpGTkMt3CbizvvkhIlPKMhcj/dZaxer56I0o2ZoVS0i6hJUI54bKw7r
	9eoEpouHOU+IzZ4zm0LrWv68xjqaptpslBGBVGaHYzNmixAMSZK2Iph/AbGJF+36BjpfKdgyVfnsV
	3muQaF+oU2oXTJVRwScDesVdVhtemSXEp5aQ7eMatytulDWAo9zlBhEyLMgdBg6entstC+/me1nXu
	F0eWt/VR5y1nOuOD85c7lM16aiHLdCsrE5w8EqgiPJu8tI6gY5aUkxF6afVUJoTyPmp9nqkp5OjIE
	r+mZbXzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRQb-0000ur-Tt; Mon, 08 Jul 2019 11:03:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRPz-0000uR-1w
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 11:02:49 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1hkRPv-0005tn-2i; Mon, 08 Jul 2019 13:02:43 +0200
Subject: Re: [EXT] Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
To: Richard Zhu <hongxing.zhu@nxp.com>, "ohad@wizery.com" <ohad@wizery.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
 <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
 <3e0a061c-4f5e-ac32-031d-909a48644265@pengutronix.de>
 <AM0PR0402MB35706FFBFD76FF81BCF5E6018CF60@AM0PR0402MB3570.eurprd04.prod.outlook.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <e4629709-fbe7-6af9-3cee-309b2ec1892f@pengutronix.de>
Date: Mon, 8 Jul 2019 13:02:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <AM0PR0402MB35706FFBFD76FF81BCF5E6018CF60@AM0PR0402MB3570.eurprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_040247_132310_471834E7 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "arnaud.pouliquen@st.com" <arnaud.pouliquen@st.com>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "loic.pallardy@st.com" <loic.pallardy@st.com>,
 "elder@linaro.org" <elder@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKCk9uIDA4LjA3LjE5IDEyOjE3LCBSaWNoYXJkIFpodSB3cm90ZToKPiBIaSBP
bGVrc2lqOgo+IFRoYW5rcyBmb3IgeW91ciBjb21tZW50cy4KPiAKPiAKPj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogT2xla3NpaiBSZW1wZWwgW21haWx0bzpvLnJlbXBlbEBw
ZW5ndXRyb25peC5kZV0KPj4gU2VudDogMjAxOeW5tDfmnIg05pelIDE3OjM2Cj4+IFRvOiBSaWNo
YXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+OyBvaGFkQHdpemVyeS5jb207Cj4+IGJqb3Ju
LmFuZGVyc3NvbkBsaW5hcm8ub3JnOyBsaW51eC1yZW1vdGVwcm9jQHZnZXIua2VybmVsLm9yZwo+
PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBGYWJpZW4gREVTU0VO
TkUKPj4gPGZhYmllbi5kZXNzZW5uZUBzdC5jb20+OyBsb2ljLnBhbGxhcmR5QHN0LmNvbTsgYXJu
YXVkLnBvdWxpcXVlbkBzdC5jb207Cj4+IHMtYW5uYUB0aS5jb207IGVsZGVyQGxpbmFyby5vcmcK
Pj4gU3ViamVjdDogW0VYVF0gUmU6IFtSRkMgMi8yXSBycG1zZzogaW14OiBhZGQgdGhlIGluaXRp
YWwgaW14IHJwbXNnIHN1cHBvcnQKPj4KPj4gQ2F1dGlvbjogRVhUIEVtYWlsCj4+Cj4+IEhpIFJp
Y2hhcmQsCj4+Cj4+IE9uIDAxLjA3LjE5IDEwOjM0LCBSaWNoYXJkIFpodSB3cm90ZToKPj4+IEJh
c2VkIG9uICJ2aXJ0aW9fcnBtc2dfYnVzIiBkcml2ZXIsIFRoaXMgcGF0Y2gtc2V0IGlzIHVzZWQg
dG8gc2V0IHVwCj4+PiB0aGUgY29tbXVuaWNhdGlvbiBtZWNoYW5pc20gYmV0d2VlbiBBIGNvcmUg
YW5kIE0gY29yZSBvbiBpLk1YIEFNUAo+PiBTT0NzLgo+Pj4KPj4+IEFkZCB0aGUgaW5pdGlhbCBp
bXggcnBtc2cgc3VwcG9ydCBnbHVlIGRyaXZlciBhbmQgb25lIHBpbmdwb25nIGRlbW8sCj4+PiBk
ZW1vbnN0cmF0ZWQgdGhlIGRhdGEgdHJhbnNhY3Rpb25zIGJldHdlZW4gQSBjb3JlIGFuZCByZW1v
dGUgTSBjb3JlLgo+Pj4gRGlzdHJpYnV0ZWQgZnJhbWV3b3JrIGlzIHVzZWQgaW4gSU1YIFJQTVNH
IGltcGxlbWVudGF0aW9uLCByZWZlciB0bwo+Pj4gdGhlIGZvbGxvd2luZyByZXF1aXJlbWVudHM6
Cj4+PiAgICAgLSBUaGUgQ0FOIGZ1bmN0aW9ucyBjb250YWluZWQgaW4gTSBjb3JlIGFuZCBSVE9T
IHNob3VsZCBiZSByZWFkeSBhbmQKPj4+ICAgICAgIGNvbXBsZXRlIGZ1bmN0aW9uYWwgaW4gNTBt
cyBhZnRlciBBTVAgc3lzdGVtIGlzIHR1cm5lZCBvbi4KPj4+ICAgICAtIFBhcnRpdGlvbiByZXNl
dC4gU3lzdGVtIHdvdWxkbid0IGJlIHN0YWxsZWQgYnkgdGhlIGV4Y2VwdGlvbnMgKGUueAo+Pj4g
ICAgICAgdGhlIHJlc2V0IHRyaWdnZXJlZCBieSB0aGUgc3lzdGVtIGhhbmcpIG9jY3VycmVkIGF0
IHRoZSBvdGhlciBzaWRlLgo+Pj4gICAgICAgQW5kIHRoZSBSUE1TRyBtZWNoYW5pc20gc2hvdWxk
IGJlIHJlY292ZXJlZCBhdXRvbWFjdGlsbHkgYWZ0ZXIKPj4gdGhlCj4+PiAgICAgICBwYXJ0aXRp
b24gcmVzZXQgaXMgY29tcGxldGVkLgo+Pj4gSW4gdGhpcyBzY2VuYXJpbywgdGhlIE0gY29yZSBh
bmQgUlRPUyB3b3VsZCBiZSBraWNrZWQgb2ZmIGJ5Cj4+PiBib290bG9hZGVyIGZpcnN0bHksIHRo
ZW4gQSBjb3JlIGFuZCBMaW51eCB3b3VsZCBiZSBsb2FkZWQgbGF0ZXIuIEJvdGgKPj4+IE0gY29y
ZS9SVE9TIGFuZCBBIGNvcmUvTGludXggYXJlIHJ1bm5pbmcgaW5kZXBlbmRseS4KPj4+Cj4+PiBP
bmUgcGh5c2ljYWwgbWVtb3J5IHJlZ2lvbiB1c2VkIHRvIHN0b3JlIHRoZSB2cmluZyBpcyBtYW5k
YXRvcnkKPj4+IHJlcXVpcmVkIHRvIHByZS1yZXNlcnZlZCBhbmQgd2VsbC1rbm93bmVkIGJ5IGJv
dGggQSBjb3JlIGFuZCBNIGNvcmUKPj4KPj4gSSBkb24ndCBzZWUgYW55IHRoaW5nIGlteCBzcGVj
aWZpYyBpbiB0aGlzIHBhdGNoLiBXZSBhbHJlYWR5IGhhdmUgcmVtb3RlcHJvYwo+PiB3aGljaCB3
b3VsZCBwYXJzZSBmaXJtd2FyZSBoZWFkZXIgYW5kIGNyZWF0ZSBuZWVkZWQgZGV2aWNlcy4gVGhp
cyBkcml2ZXIgaXMKPj4gb25seSBuZWVkZWQgZm9yIHRoZSBjYXNlIHdoZXJlIGZpcm13YXJlIHdh
cyBzdGFyZWQgYnkgdGhlIGJvb3Rsb2FkZXIuCj4+Cj4gW1JpY2hhcmQgWmh1XSBCb290bG9hZGVy
IHN0YXJ0cyB0aGUgZmlybXdhcmUgaXMgbWFuZGF0b3J5IHJlcXVpcmVkIGluIHRoZXNlIHNjZW5h
cmlvCj4gcmVmZXIgdG8gdGhlIHJlYXNvbnMgbGlzdGVkIGluIHRoZSBjb21taXQuCj4gVGh1cywg
dGhlIGRpc3RyaWJ1dGVkIGZyYW1ld29yayBoYXMgdG8gYmUgdXNlZCwgYW5kIGJvdGggQSBjb3Jl
L0xpbnV4IGFuZCByZW1vdGUgY29yZS9SVE9TCj4gd29ya3MgaW5kZXBlbmRlbnRseS4KPiAKPj4g
SSBwZXJzb25hbGx5IHdvdWxkIHByZWZlciB0byBoYXZlIGdlbmVyaWMgZHJpdmVyIG9yIGV4dGVu
ZCB0aGUgcmVtb3RlcHJvYwo+PiBmcmFtZXdvcmsuIFNvIHdlIGNhbiBub3RpZnkga2VybmVsIGFi
b3V0IHdvcmsgYWxyZWFkeSBkb25lIGJ5IGJvb3Rsb2FkZXIuCj4+Cj4gW1JpY2hhcmQgWmh1XSBU
aGFua3MgZm9yIHlvdXIgc3VnZ2VzdGlvbnMuCj4gUmVnYXJkaW5nIHRvIG15IHVuZGVyc3RhbmQs
IGl0IHNlZW1zIHRoYXQgbWFzdGVyL3NsYXZlIG1vZGUgaXMgdXNlZCBpbiB0aGUgcmVtb3RlcHJv
YyBjdXJyZW50bHkuCj4gQSBjb3JlL0xpbnV4IGFjdHMgYXMgbWFzdGVyLCB0byBjb250cm9scy9t
YW5pcHVsYXRlcyByZW1vdGUgY29yZS9SVE9TLgo+IEl0IGlzbid0IGFwcGxpY2FibGUgZm9yIHRo
ZSBzY2VuYXJpbyBkZXNjcmliZWQgYnkgdGhpcyBwYXRjaC1zZXQuCj4gCj4+IEluIGdlbmVyYWws
IHNvbWUgbW9yZSBpc3N1ZXMgc2hvdWxkIGJlIHNvbHZlZDoKPj4gLSBIYW5kbGUgb3Igbm90IHRv
dWNoIGlkbGUgY2xvY2tzIGZvciBkaWZmZXJlbnQgbm9kZSB1c2VkIGJ5IE0gY29yZSBhbmQgbm90
Cj4+IG1haW4gc3lzdGVtLgo+PiAtIHBpbiBjb250cm9sCj4+IC0gcmVndWxhdG9ycwo+Pgo+PiBT
VCBkZXZzIGFscmVhZHkgdHJpZWQgdG8gc29sdmUgdGhpcyBpc3N1ZXMgYnkgY3JlYXRpbmcgInJl
bW90ZXByb2M6IGFkZCBzeXN0ZW0KPj4gcmVzb3VyY2UgbWFuYWdlciBkZXZpY2UiIHBhdGNoLiBJ
IGRvbid0IGtub3cgd2hhdCBpcyBjdXJyZW50IHN0YXRlIG9mIGl0ICgvbWUKPj4gYWRkaW5nIFNU
IGRldnMgdG8gQ0MpLgo+Pgo+IFtSaWNoYXJkIFpodV0gWWVzLCBpdCBpcy4gTWFueSBjb250cmli
dXRpb25zIGhhdmUgYmVlbiBtYWRlIGJ5IEZhYmllbi4KPiBJTUhPLCB0aGVyZSBhcmUgc29tZSBk
aWZmZXJlbnQgYmVoYXZpb3JzIG9uIGlNWDhRWFAvUU0gcGxhdGZvcm1zLCB0aGUKPiAgIHJlc291
cmNlcyAoZS54IElQIG1vZHVsZXMpIGhhZCBiZWVuIGFzc2lnbmVkIGFuZCBtYW5hZ2VkIGJ5IHRo
ZSBYUkRDLgo+IEluIHRoZSBvdGhlciB3b3JkcywgdGhlIEhXIHJlc291cmNlcyB3b3VsZCBiZSBh
c3NpZ25lZCBhbmQgbWFuYWdlZCB3b3VsZAo+ICAgYmUgdHJhbnNwYXJlbnQgdG8gU1cuCj4gCj4g
VGh1cywgYm90aCBBIGNvcmUvTGludXggYW5kIE0gY29yZS9SVE9TIGNhbiB3b3JrIHJlYWwgaW5k
ZXBlbmRlbnRseS4KPiBTeXN0ZW0gd291bGRuJ3QgYmUgc3RhbGxlZCBieSB0aGUgZXhjZXB0aW9u
cyAoZS54IHRoZSByZXNldCB0cmlnZ2VyZWQgYnkgdGhlCj4gc3lzdGVtIGhhbmcpIG9jY3VycmVk
IGF0IHRoZSBvdGhlciBzaWRlLiBBbmQgdGhlIFJQTVNHIG1lY2hhbmlzbSBzaG91bGQKPiAgIGJl
IHJlY292ZXJlZCBhdXRvbWF0aWNhbGx5IGFmdGVyIHRoZSBwYXJ0aXRpb24gcmVzZXQgaXMgY29t
cGxldGVkLgoKSXQgaXMgZXhhY3RseSB0aGUgd2F5IEkgZGlkIHVuZGVyc3Rvb2QgaXQgaW4gdGhl
IGZpcnMgbWFpbC4gQW55IHdheSwgaSdtIG9rCndpdGggdGhpcyBkcml2ZXIuIEp1c3QgcmVuYW1l
IGlteCB0byBzb21lIHRoaW5nIGdlbmVyaWMuIFRoaXMgZHJpdmVyIGNhbiBhbmQgd2lsbCBiZSAK
cmV1c2VkIG9uIG90aGVyIHBsYXRmb3JtcyBhcyB3ZWxsLgoKS2luZCByZWdhcmRzLApPbGVrc2lq
IFJlbXBlbAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25z
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBT
dHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
