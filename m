Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB39F8D94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 12:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cqe6AGWwscP3btUAKaNXILfiaMjemt0GUdikcxwTdbo=; b=dMPjNULKy5BUGV
	2tLGK9T1sP+XWpbGWQt3Heb/Ik1bWg5Oa59ne3NDwDtvUZ5Z+aV5ZTxTrsb2R+jJjXPV62/UTYMZ0
	gANEwEKx+ToriFBw1zA06UrY3urViI+KIq0lYfJPj4WMPJh/ESao9mXyCA+OsiMtDBRR/Fh8CEmQG
	UN2vsIm77jqvHIqstxYz/396DdgYII79O3waelsR+Lolku+RP4Wpqp+/UeVqEYVMpOm4qFk3gW1u4
	7phhT/0Cj5BpaFuHuu2vYOidZu96Hlh+e1wAWMnWw1dY0g1TJJHfpA9G30owgT9NSv1/g+QjATI6K
	XUmbdjJ0oKcFm3RhsTaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU0r-00004r-Cx; Tue, 12 Nov 2019 11:07:09 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU0e-0008Uj-49; Tue, 12 Nov 2019 11:06:57 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iUU0Q-0007lz-FV; Tue, 12 Nov 2019 12:06:42 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xACB6ahL019198
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 12 Nov 2019 12:06:37 +0100
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Soeren Moch <smoch@web.de>, Kever Yang <kever.yang@rock-chips.com>,
 heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
 <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
 <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <f2c34d85-4d71-d9ff-99ea-044e6354fc87@fivetechno.de>
Date: Tue, 12 Nov 2019 12:06:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1573556816;
 e4b06f6e; 
X-HE-SMSGID: 1iUU0Q-0007lz-FV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030656_306457_E71E9BC5 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 Alexis Ballier <aballier@gentoo.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Andy Yan <andyshrk@gmail.com>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Oskari Lemmela <oskari@lemmela.net>, Nick Xie <nick@khadas.com>,
 Peter Robinson <pbrobinson@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Vivek Unune <npcomplete13@gmail.com>, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBTb3JlLCBLZXZlciwKCkFtIDEyLjExLjE5IHVtIDExOjE5IHNjaHJpZWIgU29lcmVuIE1v
Y2g6Cj4gCj4gCj4gT24gMTIuMTEuMTkgMTE6MDIsIEtldmVyIFlhbmcgd3JvdGU6Cj4+IE1hcmt1
cywKPj4KPj4KPj4gT24gMjAxOS8xMS8xMiDkuIvljYg0OjE2LCBNYXJrdXMgUmVpY2hsIHdyb3Rl
Ogo+Pj4gSGkgS2V2ZXIsCj4+Pgo+Pj4gaGF2ZSBhIHJrMzM5OS1yb2MtcGMgcnVubmluZyBtYWlu
bGluZSBVLUJvb3QgYW5kIGtlcm5lbCBhbmQgdmRkX2xvZyBpcwo+Pj4gc2hvd2luZyAxMTE4IG1W
Lgo+Pgo+PiBUaGUgcmszMzk5LXJvYy1wYyBoYXZlIHRoZSBzYW1lIHZkZF9sb2cgY2lyY3VpdCBp
biBzY2hlbWF0aWMsIHNvIGl0Cj4+IHNob3VsZCBsaWtlIHRoZSBwYXRjaCAxLzMgb2YKPj4KPj4g
dGhpcyBwYXRjaCBzZXQuCj4+Cj4+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aG8gaXMgc2V0dGluZyB0
aGlzIHZhbHVlLCBtYXliZSB0aGUgZGVmYXVsdCB2YWx1ZQo+PiB3aXRob3V0IHB3bSByZWd1bGF0
b3IgZW5hYmxlZD8KPj4KPj4+IElzIHRoaXMgYSBkYW5nZXIgZm9yIHRoZSBib2FyZD8KPj4+IEhv
dyB0byBmaXggaXQ/Cj4+Cj4+IFRoZSBiZXN0IHdheSBpcyB0byBzZXQgY29ycmVjdCBtaW4vbWF4
IG1pY3Jvdm9sdCBvZiB0aGUKPj4gcmVndWxhdG9yKG1lYXN1cmUgd2l0aCBQV00gb3V0cHV0IGxv
dyBhbmQgaGlnaCksCj4gSSBkaWRuJ3QgbG9vayBpbnRvIHRoZSBzY2hlbWF0aWMgb2YgdGhpcyBi
b2FyZCwgYnV0IGlmIGl0IGlzIHNpbWlsYXIgdG8KPiBSb2NrUHJvNjQsIHNldHRpbmcgdGhlIHB3
bSByZWd1bGF0b3IgdG8gdGhlIG1heCB2b2x0YWdlIG9mIDEuN1Ygd2lsbAo+IHByb2JhYmx5IGtp
bGwgdGhlIHJrMzM5OSBpbW1lZGlhdGVseS4gU28gSSByZWNvbW1lbmQgbm90IHRvIGRvIHRoaXMu
Li4KPiAKSXQgaGFzIHRvIGJlIHNldCB0byA0NTBtViAtIDE0MDBtViB0byBnaXZlIDk1M21WLgpJ
IHdpbGwgY29tZSBvdXQgd2l0aCBhIHBhdGNoIHRoYXQgZml4ZXMgdGhpcy4KCj4gUmVnYXJkcywK
PiBTb2VyZW4KPj4KPj4gKG5vdGUgdGhhdCBpZsKgIG5vIGRyaXZlciB0b3VjaCB0aGUgcmVndWxh
dG9yLCB0aGUgUFdNIGlzIGRlZmF1bHQKPj4gaW5wdXQsIG5vdCBvdXRwdXQ7KQo+PiB0bwo+PiBh
bmQgc2V0IGEgaW5pdC1taWNyb3ZvbHQgZm9yIFUtQm9vdCBkcml2ZXIsIGFuZCBJIHRoaW5rIG5v
IGtlcm5lbAo+PiBkcml2ZXIgdG91Y2ggdGhpcyByZWd1bGF0b3Igbm93Lgo+Pgo+Pgo+PiBUaGFu
a3MsCj4+Cj4+IC0gS2V2ZXIKPj4KPj4+IEJ0dy4gdmluLXN1cHBseSBmb3IgdGhpcyBwd20tcmVn
dWxhdG9yIGlzIGlnbm9yZWQgYW5kIEkgY291bGQgbm90Cj4+PiBmaW5kIGl0Cj4+PiBpbiBiaW5k
aW5ncyBkb2MuCj4+Pgo+Pj4gR3J1w58sCj4+Cj4+Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAoKR3J1w58sCi0t
IApNYXJrdXMgUmVpY2hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
