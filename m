Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6EE6BDE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 16:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBKV0NGnOKO9QCudZQ6roqwXVnoqSm3eHDgsudQyE98=; b=adhPoW0PlGRk9s
	oIbmnGGIlBzG95MrocG6CUtYCDyKVOvdHv/YrYTR9SX/voAF02K0KEf+wc3rhFHcDgzt2IYezrB02
	8apgaJmBPSc8VfWsPO56QPDalJJ4awOwaD+70JfvYWlAM6dkzNPc9ObbIdafQSBlzE5obcrUEqlgm
	oSHlcutJfDCzof1pmx6tAlwpBGrPuWLgC2cuw6Q1oDxep/QymPeEpebgQ4CN3qXORD3AzBOm0fD7Q
	JOSUZTLOYNeRwHfmriBTp92+iRVSTzCOKYhhX35iOHjLI2iXhxSYory3u5z2kW/BQtdJGChGO6tVm
	uHDgDpDleWifpkiE/aAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkg0-00076v-DI; Wed, 17 Jul 2019 14:13:00 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkfr-00075j-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 14:12:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190717141246euoutp0158c2306713f9cdd05803f9a28f98fc88~yNz9_s5vC0961709617euoutp01u
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 14:12:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190717141246euoutp0158c2306713f9cdd05803f9a28f98fc88~yNz9_s5vC0961709617euoutp01u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563372766;
 bh=e7owagyzm32/x8fQaeiUS1HzPuby4JB3XeoTnzx54mQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ABpsfu/AoPIpQ92e1e+OBC5bBSrkVN1FDhP4sqoygoxo8n0bTjyktWFxwegStsYog
 lnh3m1MItmuBO2A7SR05R/CGqpxlYFsFHW5Pp+dbD8whn9Q+SFaxS91pSHqkpMgaM5
 hCeLB9S3jPiZKjX66W+VJZPXuAm7z9sdIEyIdeCc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190717141245eucas1p2c16ff22a3ed0ebf0f56c021d47ca5616~yNz9Otly70335803358eucas1p2Y;
 Wed, 17 Jul 2019 14:12:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E5.49.04298.DDC2F2D5; Wed, 17
 Jul 2019 15:12:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190717141244eucas1p2f2a29627d97d942a7afad36f794a5190~yNz8UkrW40549205492eucas1p2P;
 Wed, 17 Jul 2019 14:12:44 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190717141244eusmtrp298844cfbbfdb6604b73f714120ca8a82~yNz8GN5zb3155131551eusmtrp2H;
 Wed, 17 Jul 2019 14:12:44 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-1d-5d2f2cdd021f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 36.A8.04146.CDC2F2D5; Wed, 17
 Jul 2019 15:12:44 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190717141243eusmtip2a6e78e0dcb3c2d83be7dcabbbaf919ef~yNz7aE4OC2299922999eusmtip2e;
 Wed, 17 Jul 2019 14:12:43 +0000 (GMT)
Subject: Re: [PATCH v2 1/4] opp: core: add regulators enable and disable
To: Chanwoo Choi <cw00.choi@samsung.com>
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <297179a4-a542-0836-6192-e06369fdcae5@partner.samsung.com>
Date: Wed, 17 Jul 2019 16:12:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9acc7dd0-614b-ccd3-a485-eeca3dab494b@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0iTURjGO/su+xSnx7nwRSNjEV3UWZR0SLtSuaAioj/Cslz6YZIz3Zym
 /dFmljdSUciaogXdMM2ctxS7TXOEmpRRM82GZnaTyksk0sztU/K/33ne5+F9XjgcJbUxPlxs
 fBKviVfFyVlXuqF9qjvwfUBQxNrqSh9Sc6WaIW8nRhhS3vaCIflD3yjS3X1fTLrSv4uJaegN
 Q3qaS1kyfqkNkSvdj0Skqu29mNx8+1JE+gx3WPL9T5eIXHjYJib2NzU0qbW1s9s8lZVllUhp
 qshmlbU3zinz6iqQ0mJtFCnHTUsPsOGuodF8XGwyrwnaEul60lRURCfUys68erZPj5pwDnLh
 AG+A6SfXaAdL8R0EVaMJOch1licQFD0zscJjHEF7p5GdT0ykD1LC4DaC4inrnGsUwZcffxmH
 ywsrwfJ6xJmQ4VVw9e9r5DBRuIeGy4OFThOLN8JgY6fIwRK8G2rqOygH03gF6PP6neHF+DCM
 2VoZweMJz69+dJZ1wVuh4XMfcjCFveHdx3KRwH5wvr7EWQ+wgYOahlqx0Hsn5NfdpAT2gq+W
 ujl9Ccw0CWHAKTB8PU8shDMQ2DJ/0cIgBFotL2dbcLMbVkN1c5Agb4fCklvIIQN2B+uop9DB
 HQobiilBlkDWRangDoSymU5GYF/ImbnHFCC5ccFlxgXXGBdcY/y/9xqiK5A3r9OqY3jtung+
 RaFVqbW6+BhF1Gm1Cc3+uw67ZewBmnx1wowwh+RuEv2yoAgpo0rWpqrNCDhKLpNsnvSPkEqi
 ValpvOb0cY0ujteakS9Hy70lZxfZjkhxjCqJP8XzCbxmfiriXHz0qGhTpf6xLHuP/ZZcEZi4
 0l4SOp15uXeAoxWG372dBn84pkg/6rXb/jQsuEWeV74yY/Gn9A8juYl+VVmKkVHdGVl4wMAO
 jyFDeEtHT1rpXc1a893P0ba44ahNVY3rM04Eq62HdMF7H3lEin8O9O9fnniwYFe026rsXOtF
 c25+SJi3nNaeVK1bQ2m0qn9iGAzTcwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsVy+t/xe7p3dPRjDfZdlbTYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZvFmx9nmSxa9x5ht/h3bSOLxeYHx9gcBD3WzFvD6LFpVSebx+Yl9R59W1Yxehy/sZ3J
 4/MmuQC2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27
 BL2MTZMnsxRsFqm4dNS3gXGnQBcjJ4eEgInEl6ZHzF2MXBxCAksZJS7uecUKkZCWaDy9mgnC
 Fpb4c62LDaLoNaPEs77zYEXCAh4Sx688ZwOxRQQ0JGb+vcIIUsQscJVF4vzGOWAJIYE2Jon3
 E1RBbDYBc4lH28+ATeUVcJPYuPU0M4jNIqAq0dB3B6xeVCBC4vCOWYwQNYISJ2c+YQGxOQXs
 Jba9uA0WZxZQl/gz7xIzhC0ucevJfCYIW16ieets5gmMQrOQtM9C0jILScssJC0LGFlWMYqk
 lhbnpucWG+oVJ+YWl+al6yXn525iBEb4tmM/N+9gvLQx+BCjAAejEg/vDSX9WCHWxLLiytxD
 jBIczEoivLZftWOFeFMSK6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YfPJK4g1NDc0tLA3Njc2N
 zSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTAWVIhl16SXv1+4ws8/RNiDp2/fGY7bfGKx
 VhflZj3kUJ4T3VFYe6h+5blAEdO8jeEhBRfVl/2PiH/Im7raZlPN5RknueN0W68ceBrZaSMY
 OEdwysLIwoc22kf7ctPa+5XuJlp0JpsIaHnePeYyS/xr86cpot63mOO6/u1cr7PU6+uqJr9t
 O5VYijMSDbWYi4oTAS3AVUMGAwAA
X-CMS-MailID: 20190717141244eucas1p2f2a29627d97d942a7afad36f794a5190
X-Msg-Generator: CA
X-RootMTR: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3@eucas1p1.samsung.com>
 <20190715120416.3561-2-k.konieczny@partner.samsung.com>
 <9acc7dd0-614b-ccd3-a485-eeca3dab494b@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_071251_898809_2DE0DAFD 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYuMDcuMjAxOSAwNjowMywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpIEthbWlsLAo+IAo+
IE9uIDE5LiA3LiAxNS4g7Jik7ZuEIDk6MDQsIEthbWlsIEtvbmllY3pueSB3cm90ZToKPj4gQWRk
IGVuYWJsZSByZWd1bGF0b3JzIHRvIGRldl9wbV9vcHBfc2V0X3JlZ3VsYXRvcnMoKSBhbmQgZGlz
YWJsZQo+PiByZWd1bGF0b3JzIHRvIGRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMoKS4gVGhpcyBw
cmVwYXJlcyBmb3IKPj4gY29udmVydGluZyBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyIHRvIHVz
ZSBkZXZfcG1fb3BwX3NldF9yYXRlKCkuCj4gCj4gSU1ITywgaXQgaXMgbm90IHByb3BlciB0byBt
ZW50aW9uIHRoZSBzcGVjaWZpYyBkcml2ZXIgbmFtZS4KPiBJZiB5b3UgZXhwbGFpbiB0aGUgcmVh
c29uIHdoeSBlbmFibGUgdGhlIHJlZ3VsYXRvciBiZWZvcmUgdXNpbmcgaXQsCj4gaXQgaXMgZW5v
dWdoIGRlc2NyaXB0aW9uLgo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBLb25pZWN6bnkg
PGsua29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+IC0tCj4+IENoYW5nZXMgaW4gdjI6
Cj4+Cj4+IC0gbW92ZSByZWd1bGF0b3IgZW5hYmxlIGFuZCBkaXNhYmxlIGludG8gbG9vcAo+Pgo+
PiAtLS0KPj4gIGRyaXZlcnMvb3BwL2NvcmUuYyB8IDE4ICsrKysrKysrKysrKysrKy0tLQo+PiAg
MSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL29wcC9jb3JlLmMgYi9kcml2ZXJzL29wcC9jb3JlLmMKPj4gaW5k
ZXggMGU3NzAzZmU3MzNmLi4wNjljNWNmODgyN2UgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvb3Bw
L2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL29wcC9jb3JlLmMKPj4gQEAgLTE1NzAsNiArMTU3MCwx
MCBAQCBzdHJ1Y3Qgb3BwX3RhYmxlICpkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKHN0cnVjdCBk
ZXZpY2UgKmRldiwKPj4gIAkJCWdvdG8gZnJlZV9yZWd1bGF0b3JzOwo+PiAgCQl9Cj4+ICAKPj4g
KwkJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShyZWcpOwo+PiArCQlpZiAocmV0IDwgMCkKPj4gKwkJ
CWdvdG8gZGlzYWJsZTsKPj4gKwo+PiAgCQlvcHBfdGFibGUtPnJlZ3VsYXRvcnNbaV0gPSByZWc7
Cj4+ICAJfQo+PiAgCj4+IEBAIC0xNTgyLDkgKzE1ODYsMTUgQEAgc3RydWN0IG9wcF90YWJsZSAq
ZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAKPj4gIAly
ZXR1cm4gb3BwX3RhYmxlOwo+PiAgCj4+ICtkaXNhYmxlOgo+PiArCXJlZ3VsYXRvcl9wdXQocmVn
KTsKPj4gKwktLWk7Cj4+ICsKPj4gIGZyZWVfcmVndWxhdG9yczoKPj4gLQl3aGlsZSAoaSAhPSAw
KQo+PiAtCQlyZWd1bGF0b3JfcHV0KG9wcF90YWJsZS0+cmVndWxhdG9yc1stLWldKTsKPj4gKwlm
b3IgKDsgaSA+PSAwOyAtLWkpIHsKPj4gKwkJcmVndWxhdG9yX2Rpc2FibGUob3BwX3RhYmxlLT5y
ZWd1bGF0b3JzW2ldKTsKPj4gKwkJcmVndWxhdG9yX3B1dChvcHBfdGFibGUtPnJlZ3VsYXRvcnNb
aV0pOwo+PiArCX0KPj4gIAo+PiAgCWtmcmVlKG9wcF90YWJsZS0+cmVndWxhdG9ycyk7Cj4+ICAJ
b3BwX3RhYmxlLT5yZWd1bGF0b3JzID0gTlVMTDsKPj4gQEAgLTE2MTAsOCArMTYyMCwxMCBAQCB2
b2lkIGRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMoc3RydWN0IG9wcF90YWJsZSAqb3BwX3RhYmxl
KQo+PiAgCS8qIE1ha2Ugc3VyZSB0aGVyZSBhcmUgbm8gY29uY3VycmVudCByZWFkZXJzIHdoaWxl
IHVwZGF0aW5nIG9wcF90YWJsZSAqLwo+PiAgCVdBUk5fT04oIWxpc3RfZW1wdHkoJm9wcF90YWJs
ZS0+b3BwX2xpc3QpKTsKPj4gIAo+PiAtCWZvciAoaSA9IG9wcF90YWJsZS0+cmVndWxhdG9yX2Nv
dW50IC0gMTsgaSA+PSAwOyBpLS0pCj4+ICsJZm9yIChpID0gb3BwX3RhYmxlLT5yZWd1bGF0b3Jf
Y291bnQgLSAxOyBpID49IDA7IGktLSkgewo+PiArCQlyZWd1bGF0b3JfZGlzYWJsZShvcHBfdGFi
bGUtPnJlZ3VsYXRvcnNbaV0pOwo+PiAgCQlyZWd1bGF0b3JfcHV0KG9wcF90YWJsZS0+cmVndWxh
dG9yc1tpXSk7Cj4+ICsJfQo+PiAgCj4+ICAJX2ZyZWVfc2V0X29wcF9kYXRhKG9wcF90YWJsZSk7
Cj4+ICAKPj4KPiAKPiBJIGFncmVlIHRvIGVuYWJsZSB0aGUgcmVndWxhdG9yIGJlZm9yZSB1c2lu
ZyBpdC4KPiBUaGUgYm9vdGxvYWRlciBtaWdodCBub3QgZW5hYmxlIHRoZSByZWd1bGF0b3JzCj4g
YW5kIHRoZSBrZXJuZWwgbmVlZCB0byBlbmFibGUgcmVndWxhdG9yIGluIG9yZGVyIHRvIGluY3Jl
YXNlCj4gdGhlIHJlZmVyZW5jZSBjb3VudCBleHBsaWNpdGx5IGV2ZW50IGlmIGJvb3Rsb2FkZXIg
ZW5hYmxlcyBpdC4KPiAKPiBSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ft
c3VuZy5jb20+CgpUaGFuayB5b3UsIEkgd2lsbCBjaGFuZ2UgY29tbWl0IGRlc2NyaXB0aW9uIGFu
ZCBzZW5kIHYzLgoKLS0gCkJlc3QgcmVnYXJkcywKS2FtaWwgS29uaWVjem55ClNhbXN1bmcgUiZE
IEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
