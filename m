Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285BF75C5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 02:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+m6dPo8eb00S9FC2i0REPE0CawwW3QO81HeSmVz2eU=; b=NRYsway3tznqsp
	Sn6OZH1LHpAaqtd6wOuN97y9s76JiRZUL9vhWNDd56602xPy3Wo+xq/pDWJJPtWylFZIQa3sBmYFj
	iR0pR5FIJ5bl8jnpkZ3Rv15C/Sy67uvZuQw71HnrZKxgWzBMMIoj+jTXetUXyv7BqmV1yfDuq7HMc
	J7ker54JflUIXKg3x5Vz0OYJJPRlDp7IsQWXGIEo0o+kXHM7+g1xvxmf5A3UJfNTqRKEzJuC4LCH7
	IIJz8kv08uSMW0sjxm1TwN0/xuLT+wrvojy8co7ggjOVJASvpAapNJRCkJIEeMrakJ0e4eObhRFHg
	nnIpM0GYsNTF7KY/Qk3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqoZp-00020z-Iw; Fri, 26 Jul 2019 00:59:17 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqoZa-00020I-AG
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 00:59:04 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190726005858epoutp01d494e800bb5f6624b38d470d21f7f35c~0zydeoECD3164731647epoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 00:58:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190726005858epoutp01d494e800bb5f6624b38d470d21f7f35c~0zydeoECD3164731647epoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564102738;
 bh=xy+qO0Ne2KMLwzaQJVPFqzSei7gTjsn/OjgcYFbr+wo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=losr1A4UDs+rvDGGNqc/WteYvROZvSzswrAJ7yjmzZQ00iluwz4L3ENP/jTWOTu6t
 TTYymBr9VYlq+T9xyD4VCtXqO+DmPayWtQYPYCbapNMGR1UbA5J19MWfVVzMcIQ25j
 fdSACtY1ikZVUfyjUX3fyY37MUjRKRCOV/72f9cw=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190726005857epcas1p36f36dcae8d642fa703d13a0e94b45904~0zyc1qWPS2573825738epcas1p3K;
 Fri, 26 Jul 2019 00:58:57 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 45vrLl307kzMqYkj; Fri, 26 Jul
 2019 00:58:55 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 E3.E9.04066.F405A3D5; Fri, 26 Jul 2019 09:58:55 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190726005854epcas1p115956b9a20f1aaeeb2e7deeed5ef4a7a~0zyaBNDjt0308703087epcas1p1B;
 Fri, 26 Jul 2019 00:58:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190726005854epsmtrp1f2e211a2538df8228d22afdd386f1778~0zyaAEMQx0740907409epsmtrp1i;
 Fri, 26 Jul 2019 00:58:54 +0000 (GMT)
X-AuditID: b6c32a37-e3fff70000000fe2-5a-5d3a504f81cc
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 36.51.03706.E405A3D5; Fri, 26 Jul 2019 09:58:54 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190726005854epsmtip2ca33772f79931990a6fc4d51f3b3a78c~0zyZr0vtj1793417934epsmtip2M;
 Fri, 26 Jul 2019 00:58:54 +0000 (GMT)
Subject: Re: [PATCH v3 3/5] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
To: Kamil Konieczny <k.konieczny@partner.samsung.com>, cwchoi00@gmail.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <605a07ce-1b2c-c19c-87ae-23a576951263@samsung.com>
Date: Fri, 26 Jul 2019 10:02:14 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4f62d397-0f62-f81d-8b76-b73c6fbee93d@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJJsWRmVeSWpSXmKPExsWy7bCmvq5/gFWswectIhYbZ6xntXh2VNti
 /pFzrBZ9+/4zWvQ/fs1scf78BnaLs01v2C02Pb7GanF51xw2i8+9RxgtZpzfx2Sx9shddoul
 1y8yWdxuXMFm8ebHWSaL1r1H2C3+XdvIYrH5wTE2ByGPNfPWMHrsnHWX3WPTqk42j81L6j0O
 vtvD5NG3ZRWjx/Eb25k8Pm+SC+CIyrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQw
 V1LIS8xNtVVy8QnQdcvMAXpFSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgWaBX
 nJhbXJqXrpecn2tlaGBgZApUmJCdcfbpOeaC12kVqx/fZW5gPOPTxcjJISFgIvH8QC9zFyMX
 h5DADkaJ5mvbGSGcT4wSjWfXsoBUCQl8Y5S4sZEXpmPSyQdMEEV7GSVOzX7CBuG8Z5SY+v8U
 M0iVsEC4RPviTlYQW0TAU+LZs9fsIEXMAitYJS58+cgIkmAT0JLY/+IGG4jNL6AocfXHY6A4
 BwevgJ3E7UNlIGEWAVWJ65v62UFsUYEIiU8PDoPN5BUQlDg58wnYdZwC7hJzrk4AizMLiEvc
 ejKfCcKWl2jeOhvsNwmBW+wS9w+1MkK84CJx6/UqFghbWOLV8S3sELaUxMv+Nii7WmLlySNs
 EM0djBJb9l9ghUgYS+xfOpkJ5FBmAU2J9bv0IcKKEjt/z2WEWMwn8e5rDytIiYQAr0RHmxBE
 ibLE5Qd3mSBsSYnF7Z1sExiVZiF5ZxaSF2YheWEWwrIFjCyrGMVSC4pz01OLDQuMkWN7EyM4
 mWuZ72DccM7nEKMAB6MSD++F5ZaxQqyJZcWVuYcYJTiYlUR4t+4ACvGmJFZWpRblxxeV5qQW
 H2I0BYb2RGYp0eR8YKbJK4k3NDUyNja2MDE0MzU0VBLnXfjDIlZIID2xJDU7NbUgtQimj4mD
 U6qBMXOLeP5ll4BNUmZHLx3mv6N4Nur0+h/3HJ/NOiSesfXf7P95NfedHV20TRhNZxeKxH99
 KfBt7urLLw/+71z9/pRU0/zAm3EFSo843DxaJztH+kv6n2XgX3W4c93ErLarPezOF4xM1s9V
 6r58p/f/KeU9Mx5Gvp4m//2umhRv4ocFbx4I13zJmKjEUpyRaKjFXFScCAATXqME/AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsWy7bCSvK5fgFWswd1ruhYbZ6xntXh2VNti
 /pFzrBZ9+/4zWvQ/fs1scf78BnaLs01v2C02Pb7GanF51xw2i8+9RxgtZpzfx2Sx9shddoul
 1y8yWdxuXMFm8ebHWSaL1r1H2C3+XdvIYrH5wTE2ByGPNfPWMHrsnHWX3WPTqk42j81L6j0O
 vtvD5NG3ZRWjx/Eb25k8Pm+SC+CI4rJJSc3JLEst0rdL4Mo4+/Qcc8HrtIrVj+8yNzCe8eli
 5OSQEDCRmHTyAVMXIxeHkMBuRomzl2+zQCQkJaZdPMrcxcgBZAtLHD5cDFHzllHi994zzCA1
 wgLhEu2LO1lBbBEBT4lnz16zgxQxC6xhlWjacIENouMks0TfqZeMIFVsAloS+1/cYAOx+QUU
 Ja7+eMwIsoFXwE7i9qEykDCLgKrE9U397CC2qECExOEds8BaeQUEJU7OfAJ2HKeAu8ScqxPA
 FjMLqEv8mXeJGcIWl7j1ZD4ThC0v0bx1NvMERuFZSNpnIWmZhaRlFpKWBYwsqxglUwuKc9Nz
 iw0LDPNSy/WKE3OLS/PS9ZLzczcxguNaS3MH4+Ul8YcYBTgYlXh4NVZZxgqxJpYVV+YeYpTg
 YFYS4d26AyjEm5JYWZValB9fVJqTWnyIUZqDRUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QD
 4yQNk8ted6UEI7W+fk0612w7vUvYT3O5xvKDVarr9kR1dplwld7ebeX18ldmtOK+2t8N6hyH
 XVOvbjsSkzx3gr7iNNHpB/fn9kvcWPyH2UB4f02yeW7aHOmo8pjsDx2vTmsXry6OeZjEvT/l
 SUrbNqPtjm/XGFzgc7Lq0T4RuIDpW33gN3ZnJZbijERDLeai4kQAQD+EMecCAAA=
X-CMS-MailID: 20190726005854epcas1p115956b9a20f1aaeeb2e7deeed5ef4a7a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190719150555eucas1p197adc3c58e45c53137fd70cadbfae60e
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150555eucas1p197adc3c58e45c53137fd70cadbfae60e@eucas1p1.samsung.com>
 <20190719150535.15501-4-k.konieczny@partner.samsung.com>
 <beb2455b-7f9e-35df-d524-01f4f51a1c62@samsung.com>
 <ed80b6e3-5b40-18ce-ca1e-65520edf516e@partner.samsung.com>
 <CAGTfZH1OaYpTheQxWQs7Fs4qcJEGtXQHESLg0CJSsL=dmROpQw@mail.gmail.com>
 <4f62d397-0f62-f81d-8b76-b73c6fbee93d@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_175902_859514_D0D5719C 
X-CRM114-Status: GOOD (  29.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 devicetree <devicetree@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNy4gMjYuIOyYpOyghCAxMjoxNSwgS2FtaWwgS29uaWVjem55IHdyb3RlOgo+
IEhpLAo+IAo+IE9uIDI1LjA3LjIwMTkgMTY6NTMsIENoYW53b28gQ2hvaSB3cm90ZToKPj4gMjAx
OeuFhCA37JuUIDI17J28ICjrqqkpIOyYpO2bhCAxMToxOSwgS2FtaWwgS29uaWVjem55Cj4+IDxr
LmtvbmllY3pueUBwYXJ0bmVyLnNhbXN1bmcuY29tPuuLmOydtCDsnpHshLE6Cj4+Pgo+Pj4gSGkg
Q2hhbndvbywKPj4+Cj4+PiBPbiAyNS4wNy4yMDE5IDEyOjE3LCBDaGFud29vIENob2kgd3JvdGU6
Cj4+Pj4gSGkgS2FtaWwsCj4+Pj4KPj4+PiBMb29rcyBnb29kIHRvIG1lLiBCdXQsIEkgaGF2ZSBz
b21lIGNvbW1lbnQuIFBsZWFzZSBjaGVjayB0aGVtLgo+Pj4KPj4+IFRoYW5rIHlvdSBmb3IgcmV2
aWV3LCBwbGVhc2Ugc2VlIGFuc3dlcnMgYmVsb3cuCj4+Pgo+Pj4+IEFmdGVyIHRoaXMgcGF0Y2gs
IGV4eW5vc19idXNfdGFyZ2V0IGlzIHBlcmZlY3RseSBzYW1lIHdpdGgKPj4+PiBleHlub3NfYnVz
X3Bhc3NpdmVfdGFyZ2V0LiBUaGUgZXh5bm9zX2J1c19wYXNzaXZlX3RhcmdldCgpIGNvdWxkIGJl
IHJlbW92ZWQuCj4+Pgo+Pj4gT2ssIEkgd2lsbCBtYWtlIGl0IGluIHNlcGFyYXRlIHBhdGNoIHRv
IHNpbXBsaWZ5IHJldmlldyBwcm9jZXNzLgo+Pgo+PiBJIHRoaW5rIHlvdSBjYW4ganVzdCBtb2Rp
ZnkgdGhpcyBwYXRjaCB3aXRob3V0IGFueSBzZXBhcmF0ZSBwYXRjaC4KPiAKPiBEbyB5b3Ugd2Fu
dCBtZSB0byBzZW5kIHY1IHdpdGggcGF0Y2ggNSBzcXVhc2hlZCBpbiBwYXRjaCAzID8KClllcy4g
SW4gcmVzdWx0LCBpdCBtYWRlIHR3byBmdW5jdGlvbnMgc2FtZSBieSB0aGlzIHBhdGNoClNvLCBJ
IHRoaW5rIHRoYXQgY2FuIGNvbWJpbmUgdGhlbSB3aXRob3V0IHNlcGFyYXRlIHBhdGNoLgoKPiAg
Cj4+Pj4gT24gMTkuIDcuIDIwLiDsmKTsoIQgMTI6MDUsIGsua29uaWVjem55QHBhcnRuZXIuc2Ft
c3VuZy5jb20gd3JvdGU6Cj4+Pj4+IFJldXNlIG9wcCBjb3JlIGNvZGUgZm9yIHNldHRpbmcgYnVz
IGNsb2NrIGFuZCB2b2x0YWdlLiBBcyBhIHNpZGUKPj4+Pj4gZWZmZWN0IHRoaXMgYWxsb3cgdXNl
YWdlIG9mIGNvdXBsZWQgcmVndWxhdG9ycyBmZWF0dXJlIChyZXF1aXJlZAo+Pj4+Cj4+Pj4gcy91
c2VhZ2UvdXNhZ2UgPwo+Pj4KPj4+IEdvb2QgY2F0Y2gsIEkgd2lsbCBjaGFuZ2UgaXQuCj4+Pgo+
Pj4+PiBmb3IgYm9hcmRzIHVzaW5nIEV4eW5vczU0MjIvNTgwMCBTb0NzKSBiZWNhdXNlIGRldl9w
bV9vcHBfc2V0X3JhdGUoKQo+Pj4+PiB1c2VzIHJlZ3VsYXRvcl9zZXRfdm9sdGFnZV90cmlwbGV0
KCkgZm9yIHNldHRpbmcgcmVndWxhdG9yIHZvbHRhZ2UKPj4+Pj4gd2hpbGUgdGhlIG9sZCBjb2Rl
IHVzZWQgcmVndWxhdG9yX3NldF92b2x0YWdlX3RvbCgpIHdpdGggZml4ZWQKPj4+Pj4gdG9sZXJh
bmNlLiBUaGlzIHBhdGNoIGFsc28gcmVtb3ZlcyBubyBsb25nZXIgbmVlZGVkIHBhcnNpbmcgb2Yg
RFQKPj4+Pj4gcHJvcGVydHkgImV4eW5vcyx2b2x0YWdlLXRvbGVyYW5jZSIgKG5vIEV4eW5vcyBk
ZXZmcmVxIERUIG5vZGUgdXNlcwo+Pj4+PiBpdCkuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEthbWlsIEtvbmllY3pueSA8ay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4+Pj4g
LS0tCj4+Pj4+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMTQzICsrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0
aW9ucygrKSwgMTA2IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+
Pj4gaW5kZXggZjM5MTA0NGFhMzlkLi5jMjE0N2IwOTEyYTAgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYwo+Pj4+PiBAQCAtMjUsNyArMjUsNiBAQAo+Pj4+PiAgI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4KPj4+Pj4KPj4+Pj4gICNkZWZpbmUgREVGQVVMVF9TQVRVUkFUSU9OX1JBVElPICAg
IDQwCj4+Pj4+IC0jZGVmaW5lIERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UgICAyCj4+Pj4+Cj4+
Pj4+ICBzdHJ1Y3QgZXh5bm9zX2J1cyB7Cj4+Pj4+ICAgICAgc3RydWN0IGRldmljZSAqZGV2Owo+
Pj4+PiBAQCAtMzcsOSArMzYsOSBAQCBzdHJ1Y3QgZXh5bm9zX2J1cyB7Cj4+Pj4+Cj4+Pj4+ICAg
ICAgdW5zaWduZWQgbG9uZyBjdXJyX2ZyZXE7Cj4+Pj4+Cj4+Pj4+IC0gICAgc3RydWN0IHJlZ3Vs
YXRvciAqcmVndWxhdG9yOwo+Pj4+PiArICAgIHN0cnVjdCBvcHBfdGFibGUgKm9wcF90YWJsZTsK
Pj4+Pj4gKwo+Pj4+PiAgICAgIHN0cnVjdCBjbGsgKmNsazsKPj4+Pj4gLSAgICB1bnNpZ25lZCBp
bnQgdm9sdGFnZV90b2xlcmFuY2U7Cj4+Pj4+ICAgICAgdW5zaWduZWQgaW50IHJhdGlvOwo+Pj4+
PiAgfTsKPj4+Pj4KPj4+Pj4gQEAgLTk5LDU2ICs5OCwyMyBAQCBzdGF0aWMgaW50IGV4eW5vc19i
dXNfdGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyAqZnJlcSwgdTMyIGZs
YWdzKQo+Pj4+PiAgewo+Pj4+PiAgICAgIHN0cnVjdCBleHlub3NfYnVzICpidXMgPSBkZXZfZ2V0
X2RydmRhdGEoZGV2KTsKPj4+Pj4gICAgICBzdHJ1Y3QgZGV2X3BtX29wcCAqbmV3X29wcDsKPj4+
Pj4gLSAgICB1bnNpZ25lZCBsb25nIG9sZF9mcmVxLCBuZXdfZnJlcSwgbmV3X3ZvbHQsIHRvbDsK
Pj4+Pj4gICAgICBpbnQgcmV0ID0gMDsKPj4+Pj4KPj4+Pj4gLSAgICAvKiBHZXQgbmV3IG9wcC1i
dXMgaW5zdGFuY2UgYWNjb3JkaW5nIHRvIG5ldyBidXMgY2xvY2sgKi8KPj4+Pj4gKyAgICAvKiBH
ZXQgY29ycmVjdCBmcmVxdWVuY3kgZm9yIGJ1cy4gKi8KPj4+Pj4gICAgICBuZXdfb3BwID0gZGV2
ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCBmcmVxLCBmbGFncyk7Cj4+Pj4+ICAgICAgaWYgKElT
X0VSUihuZXdfb3BwKSkgewo+Pj4+PiAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gZ2V0IHJlY29tbWVuZGVkIG9wcCBpbnN0YW5jZVxuIik7Cj4+Pj4+ICAgICAgICAgICAgICBy
ZXR1cm4gUFRSX0VSUihuZXdfb3BwKTsKPj4+Pj4gICAgICB9Cj4+Pj4+Cj4+Pj4+IC0gICAgbmV3
X2ZyZXEgPSBkZXZfcG1fb3BwX2dldF9mcmVxKG5ld19vcHApOwo+Pj4+PiAtICAgIG5ld192b2x0
ID0gZGV2X3BtX29wcF9nZXRfdm9sdGFnZShuZXdfb3BwKTsKPj4+Pj4gICAgICBkZXZfcG1fb3Bw
X3B1dChuZXdfb3BwKTsKPj4+Pj4KPj4+Pj4gLSAgICBvbGRfZnJlcSA9IGJ1cy0+Y3Vycl9mcmVx
Owo+Pj4+PiAtCj4+Pj4+IC0gICAgaWYgKG9sZF9mcmVxID09IG5ld19mcmVxKQo+Pj4+PiAtICAg
ICAgICAgICAgcmV0dXJuIDA7Cj4+Pj4+IC0gICAgdG9sID0gbmV3X3ZvbHQgKiBidXMtPnZvbHRh
Z2VfdG9sZXJhbmNlIC8gMTAwOwo+Pj4+PiAtCj4+Pj4+ICAgICAgLyogQ2hhbmdlIHZvbHRhZ2Ug
YW5kIGZyZXF1ZW5jeSBhY2NvcmRpbmcgdG8gbmV3IE9QUCBsZXZlbCAqLwo+Pj4+PiAgICAgIG11
dGV4X2xvY2soJmJ1cy0+bG9jayk7Cj4+Pj4+ICsgICAgcmV0ID0gZGV2X3BtX29wcF9zZXRfcmF0
ZShkZXYsICpmcmVxKTsKPj4+Pj4gKyAgICBpZiAoIXJldCkKPj4+Pj4gKyAgICAgICAgICAgIGJ1
cy0+Y3Vycl9mcmVxID0gKmZyZXE7Cj4+Pj4+Cj4+Pj4+IC0gICAgaWYgKG9sZF9mcmVxIDwgbmV3
X2ZyZXEpIHsKPj4+Pj4gLSAgICAgICAgICAgIHJldCA9IHJlZ3VsYXRvcl9zZXRfdm9sdGFnZV90
b2woYnVzLT5yZWd1bGF0b3IsIG5ld192b2x0LCB0b2wpOwo+Pj4+PiAtICAgICAgICAgICAgaWYg
KHJldCA8IDApIHsKPj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgZGV2X2VycihidXMtPmRldiwg
ImZhaWxlZCB0byBzZXQgdm9sdGFnZVxuIik7Cj4+Pj4+IC0gICAgICAgICAgICAgICAgICAgIGdv
dG8gb3V0Owo+Pj4+PiAtICAgICAgICAgICAgfQo+Pj4+PiAtICAgIH0KPj4+Pj4gLQo+Pj4+PiAt
ICAgIHJldCA9IGNsa19zZXRfcmF0ZShidXMtPmNsaywgbmV3X2ZyZXEpOwo+Pj4+PiAtICAgIGlm
IChyZXQgPCAwKSB7Cj4+Pj4+IC0gICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBj
aGFuZ2UgY2xvY2sgb2YgYnVzXG4iKTsKPj4+Pj4gLSAgICAgICAgICAgIGNsa19zZXRfcmF0ZShi
dXMtPmNsaywgb2xkX2ZyZXEpOwo+Pj4+PiAtICAgICAgICAgICAgZ290byBvdXQ7Cj4+Pj4+IC0g
ICAgfQo+Pj4+PiAtCj4+Pj4+IC0gICAgaWYgKG9sZF9mcmVxID4gbmV3X2ZyZXEpIHsKPj4+Pj4g
LSAgICAgICAgICAgIHJldCA9IHJlZ3VsYXRvcl9zZXRfdm9sdGFnZV90b2woYnVzLT5yZWd1bGF0
b3IsIG5ld192b2x0LCB0b2wpOwo+Pj4+PiAtICAgICAgICAgICAgaWYgKHJldCA8IDApIHsKPj4+
Pj4gLSAgICAgICAgICAgICAgICAgICAgZGV2X2VycihidXMtPmRldiwgImZhaWxlZCB0byBzZXQg
dm9sdGFnZVxuIik7Cj4+Pj4+IC0gICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+Pj4+PiAt
ICAgICAgICAgICAgfQo+Pj4+PiAtICAgIH0KPj4+Pj4gLSAgICBidXMtPmN1cnJfZnJlcSA9IG5l
d19mcmVxOwo+Pj4+PiAtCj4+Pj4+IC0gICAgZGV2X2RiZyhkZXYsICJTZXQgdGhlIGZyZXF1ZW5j
eSBvZiBidXMgKCVsdUh6IC0+ICVsdUh6LCAlbHVIeilcbiIsCj4+Pj4+IC0gICAgICAgICAgICAg
ICAgICAgIG9sZF9mcmVxLCBuZXdfZnJlcSwgY2xrX2dldF9yYXRlKGJ1cy0+Y2xrKSk7Cj4+Pj4+
IC1vdXQ6Cj4+Pj4+ICAgICAgbXV0ZXhfdW5sb2NrKCZidXMtPmxvY2spOwo+Pj4+Pgo+Pj4+PiAg
ICAgIHJldHVybiByZXQ7Cj4+Pj4+IEBAIC0xOTUsOCArMTYxLDggQEAgc3RhdGljIHZvaWQgZXh5
bm9zX2J1c19leGl0KHN0cnVjdCBkZXZpY2UgKmRldikKPj4+Pj4gICAgICAgICAgICAgIGRldl93
YXJuKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIp
Owo+Pj4+Pgo+Pj4+PiAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7Cj4+Pj4+
IC0gICAgaWYgKGJ1cy0+cmVndWxhdG9yKQo+Pj4+PiAtICAgICAgICAgICAgcmVndWxhdG9yX2Rp
c2FibGUoYnVzLT5yZWd1bGF0b3IpOwo+Pj4+PiArICAgIGlmIChidXMtPm9wcF90YWJsZSkKPj4+
Pj4gKyAgICAgICAgICAgIGRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMoYnVzLT5vcHBfdGFibGUp
Owo+Pj4+Pgo+Pj4+PiAgICAgIGRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4+Pj4+
ICB9Cj4+Pj4+IEBAIC0yMDksMzkgKzE3NSwyMyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcGFz
c2l2ZV90YXJnZXQoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxLAo+Pj4+
PiAgewo+Pj4+PiAgICAgIHN0cnVjdCBleHlub3NfYnVzICpidXMgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsKPj4+Pj4gICAgICBzdHJ1Y3QgZGV2X3BtX29wcCAqbmV3X29wcDsKPj4+Pj4gLSAgICB1
bnNpZ25lZCBsb25nIG9sZF9mcmVxLCBuZXdfZnJlcTsKPj4+Pj4gLSAgICBpbnQgcmV0ID0gMDsK
Pj4+Pj4gKyAgICBpbnQgcmV0Owo+Pj4+Pgo+Pj4+PiAtICAgIC8qIEdldCBuZXcgb3BwLWJ1cyBp
bnN0YW5jZSBhY2NvcmRpbmcgdG8gbmV3IGJ1cyBjbG9jayAqLwo+Pj4+PiArICAgIC8qIEdldCBj
b3JyZWN0IGZyZXF1ZW5jeSBmb3IgYnVzLiAqLwo+Pj4+PiAgICAgIG5ld19vcHAgPSBkZXZmcmVx
X3JlY29tbWVuZGVkX29wcChkZXYsIGZyZXEsIGZsYWdzKTsKPj4+Pj4gICAgICBpZiAoSVNfRVJS
KG5ld19vcHApKSB7Cj4+Pj4+ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBn
ZXQgcmVjb21tZW5kZWQgb3BwIGluc3RhbmNlXG4iKTsKPj4+Pj4gICAgICAgICAgICAgIHJldHVy
biBQVFJfRVJSKG5ld19vcHApOwo+Pj4+PiAgICAgIH0KPj4+Pj4KPj4+Pj4gLSAgICBuZXdfZnJl
cSA9IGRldl9wbV9vcHBfZ2V0X2ZyZXEobmV3X29wcCk7Cj4+Pj4+ICAgICAgZGV2X3BtX29wcF9w
dXQobmV3X29wcCk7Cj4+Pj4+Cj4+Pj4+IC0gICAgb2xkX2ZyZXEgPSBidXMtPmN1cnJfZnJlcTsK
Pj4+Pj4gLQo+Pj4+PiAtICAgIGlmIChvbGRfZnJlcSA9PSBuZXdfZnJlcSkKPj4+Pj4gLSAgICAg
ICAgICAgIHJldHVybiAwOwo+Pj4+PiAtCj4+Pj4+ICAgICAgLyogQ2hhbmdlIHRoZSBmcmVxdWVu
Y3kgYWNjb3JkaW5nIHRvIG5ldyBPUFAgbGV2ZWwgKi8KPj4+Pj4gICAgICBtdXRleF9sb2NrKCZi
dXMtPmxvY2spOwo+Pj4+PiArICAgIHJldCA9IGRldl9wbV9vcHBfc2V0X3JhdGUoZGV2LCAqZnJl
cSk7Cj4+Pj4+ICsgICAgaWYgKCFyZXQpCj4+Pj4+ICsgICAgICAgICAgICBidXMtPmN1cnJfZnJl
cSA9ICpmcmVxOwo+Pj4+Pgo+Pj4+PiAtICAgIHJldCA9IGNsa19zZXRfcmF0ZShidXMtPmNsaywg
bmV3X2ZyZXEpOwo+Pj4+PiAtICAgIGlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0gICAgICAgICAgICBk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgdGhlIGNsb2NrIG9mIGJ1c1xuIik7Cj4+Pj4+IC0g
ICAgICAgICAgICBnb3RvIG91dDsKPj4+Pj4gLSAgICB9Cj4+Pj4+IC0KPj4+Pj4gLSAgICAqZnJl
cSA9IG5ld19mcmVxOwo+Pj4+PiAtICAgIGJ1cy0+Y3Vycl9mcmVxID0gbmV3X2ZyZXE7Cj4+Pj4+
IC0KPj4+Pj4gLSAgICBkZXZfZGJnKGRldiwgIlNldCB0aGUgZnJlcXVlbmN5IG9mIGJ1cyAoJWx1
SHogLT4gJWx1SHosICVsdUh6KVxuIiwKPj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgb2xkX2Zy
ZXEsIG5ld19mcmVxLCBjbGtfZ2V0X3JhdGUoYnVzLT5jbGspKTsKPj4+Pj4gLW91dDoKPj4+Pj4g
ICAgICBtdXRleF91bmxvY2soJmJ1cy0+bG9jayk7Cj4+Pj4+Cj4+Pj4+ICAgICAgcmV0dXJuIHJl
dDsKPj4+Pj4gQEAgLTI1OSwyMCArMjA5LDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVu
dF9wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGV4eW5vc19idXMgKmJ1cykKPj4+Pj4gIHsKPj4+
Pj4gICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPj4+Pj4gLSAgICBpbnQgaSwg
cmV0LCBjb3VudCwgc2l6ZTsKPj4+Pj4gLQo+Pj4+PiAtICAgIC8qIEdldCB0aGUgcmVndWxhdG9y
IHRvIHByb3ZpZGUgZWFjaCBidXMgd2l0aCB0aGUgcG93ZXIgKi8KPj4+Pj4gLSAgICBidXMtPnJl
Z3VsYXRvciA9IGRldm1fcmVndWxhdG9yX2dldChkZXYsICJ2ZGQiKTsKPj4+Pj4gLSAgICBpZiAo
SVNfRVJSKGJ1cy0+cmVndWxhdG9yKSkgewo+Pj4+PiAtICAgICAgICAgICAgZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZ2V0IFZERCByZWd1bGF0b3JcbiIpOwo+Pj4+PiAtICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIoYnVzLT5yZWd1bGF0b3IpOwo+Pj4+PiAtICAgIH0KPj4+Pj4gLQo+Pj4+PiAt
ICAgIHJldCA9IHJlZ3VsYXRvcl9lbmFibGUoYnVzLT5yZWd1bGF0b3IpOwo+Pj4+PiAtICAgIGlm
IChyZXQgPCAwKSB7Cj4+Pj4+IC0gICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBl
bmFibGUgVkREIHJlZ3VsYXRvclxuIik7Cj4+Pj4+IC0gICAgICAgICAgICByZXR1cm4gcmV0Owo+
Pj4+PiAtICAgIH0KPj4+Pj4gKyAgICBzdHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGU7Cj4+Pj4+
ICsgICAgY29uc3QgY2hhciAqdmRkID0gInZkZCI7Cj4+Pj4+ICsgICAgaW50IGksIGNvdW50LCBz
aXplOwo+Pj4+Pgo+Pj4+PiAgICAgIC8qCj4+Pj4+ICAgICAgICogR2V0IHRoZSBkZXZmcmVxLWV2
ZW50IGRldmljZXMgdG8gZ2V0IHRoZSBjdXJyZW50IHV0aWxpemF0aW9uIG9mCj4+Pj4+IEBAIC0y
ODEsMjYgKzIyMCwyOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+Pj4+ICAgICAgY291bnQgPSBkZXZmcmVxX2V2ZW50X2dl
dF9lZGV2X2NvdW50KGRldik7Cj4+Pj4+ICAgICAgaWYgKGNvdW50IDwgMCkgewo+Pj4+PiAgICAg
ICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IHRoZSBjb3VudCBvZiBkZXZmcmVx
LWV2ZW50IGRldlxuIik7Cj4+Pj4+IC0gICAgICAgICAgICByZXQgPSBjb3VudDsKPj4+Pj4gLSAg
ICAgICAgICAgIGdvdG8gZXJyX3JlZ3VsYXRvcjsKPj4+Pj4gKyAgICAgICAgICAgIHJldHVybiBj
b3VudDsKPj4+Pj4gICAgICB9Cj4+Pj4+IC0gICAgYnVzLT5lZGV2X2NvdW50ID0gY291bnQ7Cj4+
Pj4+Cj4+Pj4+ICsgICAgYnVzLT5lZGV2X2NvdW50ID0gY291bnQ7Cj4+Pj4+ICAgICAgc2l6ZSA9
IHNpemVvZigqYnVzLT5lZGV2KSAqIGNvdW50Owo+Pj4+PiAgICAgIGJ1cy0+ZWRldiA9IGRldm1f
a3phbGxvYyhkZXYsIHNpemUsIEdGUF9LRVJORUwpOwo+Pj4+PiAtICAgIGlmICghYnVzLT5lZGV2
KSB7Cj4+Pj4+IC0gICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+Pj4+PiAtICAgICAgICAgICAg
Z290byBlcnJfcmVndWxhdG9yOwo+Pj4+PiAtICAgIH0KPj4+Pj4gKyAgICBpZiAoIWJ1cy0+ZWRl
dikKPj4+Pj4gKyAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+Pj4+Pgo+Pj4+PiAgICAgIGZv
ciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+Pj4+ICAgICAgICAgICAgICBidXMtPmVkZXZb
aV0gPSBkZXZmcmVxX2V2ZW50X2dldF9lZGV2X2J5X3BoYW5kbGUoZGV2LCBpKTsKPj4+Pj4gLSAg
ICAgICAgICAgIGlmIChJU19FUlIoYnVzLT5lZGV2W2ldKSkgewo+Pj4+PiAtICAgICAgICAgICAg
ICAgICAgICByZXQgPSAtRVBST0JFX0RFRkVSOwo+Pj4+PiAtICAgICAgICAgICAgICAgICAgICBn
b3RvIGVycl9yZWd1bGF0b3I7Cj4+Pj4+IC0gICAgICAgICAgICB9Cj4+Pj4+ICsgICAgICAgICAg
ICBpZiAoSVNfRVJSKGJ1cy0+ZWRldltpXSkpCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgIHJl
dHVybiAtRVBST0JFX0RFRkVSOwo+Pj4+PiArICAgIH0KPj4+Pj4gKwo+Pj4+PiArICAgIG9wcF90
YWJsZSA9IGRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMoZGV2LCAmdmRkLCAxKTsKPj4+Pj4gKyAg
ICBpZiAoSVNfRVJSKG9wcF90YWJsZSkpIHsKPj4+Pj4gKyAgICAgICAgICAgIGkgPSBQVFJfRVJS
KG9wcF90YWJsZSk7Cj4+Pj4+ICsgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBz
ZXQgcmVndWxhdG9ycyAlZFxuIiwgaSk7Cj4+Pj4+ICsgICAgICAgICAgICByZXR1cm4gaTsKPj4+
Pgo+Pj4+IE1heWJlLCB5b3UganVzdCB1c2VkIHRoZSAnaScgZGVmaW5lZCB2YXJpYWJsZSBpbnN0
ZWFkIG9mIGFkZGluZwo+Pj4+IG5ldyB2YXJpYWJsZS4gQnV0LCBJIHRoaW5rIHRoYXQgeW91IGJl
dHRlciB0byBhZGQgbmV3IHZhcmlhYmxlCj4+Pj4gbGlrZSAnZXJyJyBmb3IgdGhlIHJlYWRhYmls
aXR5LiBPciwganV0IHVzZSB0aGUgJ1BUUl9FUlIob3BwX3RhYmxlKScKPj4+PiBkaXJlY3RseSB3
aXRob3V0IGFueSBhZGRpdGlvbmFsIHZhcmlhYmxlLgo+Pj4KPj4+IEkgd2lsbCByZW1vdmUgbm90
IHJlbGF0ZWQgY2hhbmdlcywgc28gaGVyZSBJIHdpbGwgcmV1c2UgJ3JldCcgdmFyaWFibGUuCj4+
Pgo+Pj4+PiAgICAgIH0KPj4+Pj4KPj4+Pj4gKyAgICBidXMtPm9wcF90YWJsZSA9IG9wcF90YWJs
ZTsKPj4+Pgo+Pj4+IEFkZCBibGFuayBsaW5lLgo+Pj4KPj4+IE9LCj4+Pgo+Pj4+PiAgICAgIC8q
Cj4+Pj4+ICAgICAgICogT3B0aW9uYWxseSwgR2V0IHRoZSBzYXR1cmF0aW9uIHJhdGlvIGFjY29y
ZGluZyB0byBFeHlub3MgU29DCj4+Pj4+ICAgICAgICogV2hlbiBtZWFzdXJpbmcgdGhlIHV0aWxp
emF0aW9uIG9mIGVhY2ggQVhJIGJ1cyB3aXRoIGRldmZyZXEtZXZlbnQKPj4+Pj4gQEAgLTMxNCwx
NiArMjU2LDcgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgICAgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwg
ImV4eW5vcyxzYXR1cmF0aW9uLXJhdGlvIiwgJmJ1cy0+cmF0aW8pKQo+Pj4+PiAgICAgICAgICAg
ICAgYnVzLT5yYXRpbyA9IERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTzsKPj4+Pj4KPj4+Pj4gLSAg
ICBpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJleHlub3Msdm9sdGFnZS10b2xlcmFuY2Ui
LAo+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmJ1cy0+dm9sdGFn
ZV90b2xlcmFuY2UpKQo+Pj4+PiAtICAgICAgICAgICAgYnVzLT52b2x0YWdlX3RvbGVyYW5jZSA9
IERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0U7Cj4+Pj4+IC0KPj4+Pj4gICAgICByZXR1cm4gMDsK
Pj4+Pj4gLQo+Pj4+PiAtZXJyX3JlZ3VsYXRvcjoKPj4+Pj4gLSAgICByZWd1bGF0b3JfZGlzYWJs
ZShidXMtPnJlZ3VsYXRvcik7Cj4+Pj4+IC0KPj4+Pj4gLSAgICByZXR1cm4gcmV0Owo+Pj4+PiAg
fQo+Pj4+Pgo+Pj4+PiAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcnNlX29mKHN0cnVjdCBleHlu
b3NfYnVzICpidXMpCj4+Pj4+IEBAIC00MTQsMTIgKzM0Nyw4IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+Pgo+Pj4+PiAgICAg
IC8qIFBhcnNlIHRoZSBkZXZpY2UtdHJlZSB0byBnZXQgdGhlIHJlc291cmNlIGluZm9ybWF0aW9u
ICovCj4+Pj4+ICAgICAgcmV0ID0gZXh5bm9zX2J1c19wYXJzZV9vZihidXMpOwo+Pj4+PiAtICAg
IGlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0gICAgICAgICAgICBpZiAoIXBhc3NpdmUpCj4+Pj4+IC0g
ICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvcl9kaXNhYmxlKGJ1cy0+cmVndWxhdG9yKTsKPj4+
Pj4gLQo+Pj4+PiAtICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4+Pj4gLSAgICB9Cj4+Pj4+ICsg
ICAgaWYgKHJldCA8IDApCj4+Pj4+ICsgICAgICAgICAgICBnb3RvIGVycl9yZWc7Cj4+Pj4+Cj4+
Pj4+ICAgICAgaWYgKHBhc3NpdmUpCj4+Pj4+ICAgICAgICAgICAgICBnb3RvIHBhc3NpdmU7Cj4+
Pj4+IEBAIC01MTIsMTAgKzQ0MSwxMiBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+Pj4KPj4+Pj4gIGVycjoKPj4+Pj4gICAgICBj
bGtfZGlzYWJsZV91bnByZXBhcmUoYnVzLT5jbGspOwo+Pj4+PiAtICAgIGlmICghcGFzc2l2ZSkK
Pj4+Pj4gLSAgICAgICAgICAgIHJlZ3VsYXRvcl9kaXNhYmxlKGJ1cy0+cmVndWxhdG9yKTsKPj4+
Pj4gLQo+Pj4+PiAgICAgIGRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4+Pj4KPj4+
PiBUaGlzIGZ1bmN0aW9uIHJlbW92ZXMgdGhlICdvcHBfdGFibGUnLiBCdXQsIHRoZSBiZWxvdyBj
b2RlCj4+Pj4gdXNlcyB0aGUgJ29wcF90YWJsZScgdmFyaWFibGUgYnkgZGV2X3BtX29wcF9wdXRf
cmVndWxhdG9ycygpLgo+Pj4+Cj4+Pj4gVG8gZGlzYWJsZSB0aGUgcmVndWxhdG9yLCB5b3UgaGF2
ZSB0byBjYWxsIGRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldikKPj4+PiBhZnRlciBkZXZf
cG1fb3BwX3B1dF9yZWd1bGF0b3JzKGJ1cy0+b3BwX3RhYmxlKS4KPj4+Cj4+PiBSZWd1bGF0b3Jz
IHNob3VsZCBiZSBzZXQgYmVmb3JlIGRldl9wbV9vcHBfYWRkX3RhYmxlKCksIHNvIGV4aXQgc2Vx
dWVuY2UKPj4+IHNob3VsZCBiZSBpbiByZXZlcnNlIG9yZGVyLAo+Pj4KPj4+IGluaXQgb3JkZXI6
Cj4+Pgo+Pj4gZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YoKQo+Pj4gICAgICAgICBkZXZfcG1f
b3BwX3NldF9yZWd1bGF0b3JzKCkKPj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKQo+Pj4gICAgICAg
ICBjbGtfcHJlcGFyZV9lbmFibGUoKQo+Pj4gICAgICAgICBkZXZfcG1fb3BwX29mX2FkZF90YWJs
ZSgpCj4+Pgo+Pj4gZXhpdCBvciBlcnJvciBvcmRlcjoKPj4+Cj4+PiBkZXZfcG1fb3BwX29mX3Jl
bW92ZV90YWJsZSgpCj4+PiBjbGtfZGlzYWJsZV91bnByZXBhcmUoKQo+Pj4gaWYgKGJ1cy0+b3Bw
X3RhYmxlKQo+Pj4gICAgICAgICBkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKGJ1cy0+b3BwX3Rh
YmxlKTsKPj4KPj4gZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoKSBoYXZlIHRvIGJlIGNhbGxl
ZCBhdCB0aGUgZW5kIG9mIGV4aXQgc2VxdWVuY2UKPj4gYWZ0ZXIgZGlzYWJsaW5nIGNsb2NrIGFu
ZCBwdXQgcmVndWxhdG9ycy4gQmVjYXVzZSBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZSgpCj4+
IGZyZWVzIHRoZSAnb3BwX3RhYmxlJyBwb2ludGVyIG9mIGRldmljZS4KPj4KPj4gY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKCkKPj4gaWYgKGJ1cy0+b3BwX3RhYmxlKQo+PiAgICAgICAgICAgZGV2X3Bt
X29wcF9wdXRfcmVndWxhdG9ycyhidXMtPm9wcF90YWJsZSk7Cj4+IGRldl9wbV9vcHBfb2ZfcmVt
b3ZlX3RhYmxlKCkKPiAKPiBUaGUgdGFibGUgaXMgcmVmZXJlbmNlIGNvdW50ZWQgc28gaXQgd2ls
bCBiZSBmcmVlZCBhZnRlciBjb3VudCBnbyB0byB6ZXJvLgoKWW91J3JlIHJpZ2h0LiBJIGNoZWNr
ZWQgaXQgd2l0aCBPUFAgY29kZS4KCj4gCj4+PiBJIHdpbGwgc2VuZCB2NCBzb29uLgo+Pj4KPj4+
Pj4gK2Vycl9yZWc6Cj4+Pj4+ICsgICAgaWYgKGJ1cy0+b3BwX3RhYmxlKSB7Cj4+Pj4+ICsgICAg
ICAgICAgICBkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKGJ1cy0+b3BwX3RhYmxlKTsKPj4+Pj4g
KyAgICAgICAgICAgIGJ1cy0+b3BwX3RhYmxlID0gTlVMTDsKPj4+Pj4gKyAgICB9Cj4+Pj4+Cj4+
Pj4+ICAgICAgcmV0dXJuIHJldDsKPj4+Pj4gIH0KPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFu
d29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
