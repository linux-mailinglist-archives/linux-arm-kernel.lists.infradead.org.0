Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A49C75221
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEg4zbDJAQu6pTt1xGhO6l0NKYTWaGS0qORUlP79diY=; b=O8stzkMIYkRroG
	pwCIlEBf6GadMKgoN51AjVlTVwzw6xfou3gg/YSABOPZvAaBdKn+a3tmXnAEKBXhlQqykKad7gYQH
	xcYxd1lrjhJASho1XO9aaoltFyC47YlCgrFcQzYFijVXSOzZunJzbpZgXroTst+utBcdV4MAbwsd3
	JPyr9OHXS6Idi89nVo2kkJDYnFiE82BDyu4DnpTQHPRmZ9L5FPF/GiBuNNmEaVeKahHyTyXYNvm9G
	T6clpr4lHyVRm59hWdNyp510YVzk3zE9hJ/cKWUvT7GfXK/qFI11qCc+mHxHVpUPjJGDVlm8n4Ryf
	gabit1atculEuFg4+5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfLR-0008F7-BJ; Thu, 25 Jul 2019 15:07:49 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfLD-0008Dz-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:07:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725150733euoutp01541ed16cdc39d092facf287479b26d2b~0ruFmXOZb1581115811euoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 15:07:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190725150733euoutp01541ed16cdc39d092facf287479b26d2b~0ruFmXOZb1581115811euoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564067253;
 bh=KMR+yHrr6Lsx+SAlQwuxyLppRvSG65o1a3cPzAiZ3eY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=quKUtOtcSVLSKjsQ6VPUnGaY07Abnm03laIrVGXSYKyhJrtTVozzcubYVQTyNVMqI
 8JS6zR3tg/Ywh6sEwG6Be/c+L1OmD81Wa/hFOln1eHZrTkbRWp90SUWNpIV9e3yPNU
 /QGBJBJ1A1XD/kTYhbaoyt+FvdmsDXFeKqRv97ns=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190725150732eucas1p1b60118aafc1452cfd76098ce4cfc2f9e~0ruE0-g-w1842318423eucas1p1N;
 Thu, 25 Jul 2019 15:07:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B2.54.04325.4B5C93D5; Thu, 25
 Jul 2019 16:07:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190725150731eucas1p298d791d9323c8a01c55549d8419d4a08~0ruD_4PB71393413934eucas1p2h;
 Thu, 25 Jul 2019 15:07:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725150731eusmtrp1d6c4b6a66e45b632987803de77157a7c~0ruDwcD9q2337023370eusmtrp1k;
 Thu, 25 Jul 2019 15:07:31 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-76-5d39c5b496a1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 84.C0.04146.3B5C93D5; Thu, 25
 Jul 2019 16:07:31 +0100 (BST)
Received: from [106.120.51.18] (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190725150730eusmtip21bae62c8558c204244444a32360ef201~0ruDAG6Dz1452814528eusmtip2T;
 Thu, 25 Jul 2019 15:07:30 +0000 (GMT)
Subject: Re: [PATCH v4 1/5] devfreq: exynos-bus: correct clock enable sequence
To: cwchoi00@gmail.com
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
Message-ID: <a7aba1d0-8e15-ae23-aff9-bf35f991ecb7@partner.samsung.com>
Date: Thu, 25 Jul 2019 17:07:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGTfZH0=skWJ3Dny7voeRzDp5oRkbNO=Pf6j+PM03=epmX-86g@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ2ZzkAsuRaUE9ybaBADaNRw3Zeo6aP45ALRChNQW9QOi2ii
 BVwJIKJRqQiIxRJksQUFUQmBYtkJGgUhhLK5ggmLW1CRdmrk7Tv/+c89508uR8k/M17c4YhI
 XhuhUiukrvTjFz9bfEtr1wavKG5eSky3ihnSPv6eIe9ql5MsSwtDrvR/pkhr60OWNMcPscTc
 /4YhryoypGQs2YLIrdZKCSm0dLMkt71NQrri8qRk6EezhJx/bmHJnzcmmpTYXki3yJUFmQVI
 +UTfzSrN+ZelyhLDWWVKaT5SWjvKJMox84Jd7D7XDaG8+nA0r/XfdNA1PH3wrfR42fyTxTkF
 Eh3q8UhELhzg1VCffJ5ORK6cHOchMFQYGLEYRzCR3YfEYgxB/Ogg+jeSbOh1uowIRr7nsWIx
 jOCe0UTZXe54FxSaciR29sBzoOzGgOMpCrcw8OrtA0dDigOgr6zJwTK8E+LTXzqYxkvgY66O
 tfNsvAdGbTWM6JkF9ekDtJ1dcCAkFLY6/BT2hM6BLCcvhIRHtyn7MsBXOch4ncCKd2+HpL5c
 ZwZ3+GQtderzoPFaEi1yDAzeTWHF4XMIbBdHnI31UGNtm7qCm9qwDIor/EV5K9TVWRwyYDfo
 GJ4l3uAGaY9vUqIsg0sX5KLbFzInmxiR50LiZBGTihT6acn009Lop6XR/9+bjeh85MlHCZow
 XlgVwcf4CSqNEBUR5hdyTGNGU1+w8Y/1azmq/HWoGmEOKWbKvPPXBssZVbQQq6lGwFEKD9mj
 8ilJFqqKPcVrjx3QRql5oRrN5WiFp+z0DNt+OQ5TRfJHef44r/3XlXAuXjp0VZ1acTr7zprx
 4W0bLQs+6GIHSkJH2JCimlVxWYGLcj4N1+7Y1GusafgShq+t+90lnDkyzxDU85TS/LgebiPf
 vb6dvY/JiZE8L58qm0+Om9HbbAxK607bO9mUMhE9mrhTXaVbmZuaYt091DIRYJHr6zvjkoTM
 3mdLvBebPBo2/1bQQrhqpQ+lFVR/Ab7LeUl+AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRmVeSWpSXmKPExsVy+t/xe7qbj1rGGtxpUbfYOGM9q8X1L89Z
 LZ4d1baYf+Qcq0X/49fMFufPb2C3ONv0ht1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFm9+nGWyaN17hN3i37WNLBabHxxjcxDyWDNvDaPHzll32T02repk89i8pN6j
 b8sqRo/jN7YzeXzeJBfAHqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
 k5Kak1mWWqRvl6CXMfPpTbaC7bIV6xetYWpgvC/SxcjJISFgItG75CFrFyMXh5DAUkaJfXsb
 2SES0hKNp1czQdjCEn+udbGB2EICrxklfn+tAbGFBfwknj5vYASxRQTEJLZPe8IIMohZ4BKr
 xJnj+1kgps5ikngw9xZYFZuAucSj7WfApvIKuEk0zbwEZrMIqEq8XNoAtllUIELi8I5ZjBA1
 ghInZz5hAbE5BQIlmteeB6tnFlCX+DPvEjOELS5x68l8qLi8RPPW2cwTGIVmIWmfhaRlFpKW
 WUhaFjCyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiM+m3Hfm7ewXhpY/AhRgEORiUe3gvL
 LWOFWBPLiitzDzFKcDArifBu3QEU4k1JrKxKLcqPLyrNSS0+xGgK9NxEZinR5HxgQsoriTc0
 NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cAYzKF6qjpsx/3Sr/wd3NeE
 a1dcmxL9+8LyNflsmTdC554yu76D+2S/YKaUYfYPTdvIxK+N16cHpTxaZbbGTurSDOngtwfv
 cDmr7Hlyy/H/KUvXjX0K/Gdr5e5kbCxxXPiTZ1rbKsc1V2LjnL2OXSloXalun1bFdFVv2Ynt
 h47sXrc3WfPU+eyXSizFGYmGWsxFxYkACYpdWhADAAA=
X-CMS-MailID: 20190725150731eucas1p298d791d9323c8a01c55549d8419d4a08
X-Msg-Generator: CA
X-RootMTR: 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff
References: <CGME20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff@eucas1p1.samsung.com>
 <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <20190725144300.25014-2-k.konieczny@partner.samsung.com>
 <CAGTfZH0=skWJ3Dny7voeRzDp5oRkbNO=Pf6j+PM03=epmX-86g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_080736_241177_D3D1B623 
X-CRM114-Status: GOOD (  23.27  )
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 devicetree <devicetree@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyNS4wNy4yMDE5IDE2OjU5LCBDaGFud29vIENob2kgd3JvdGU6Cj4gSGksCj4gCj4g
WW91IGFyZSBtaXNzaW5nIG15IEFja2VkIHRhZy4KCkkgY2hhbmdlZCBjb2RlLCBzbyBJIGNhbiBu
b3QgYWRkIHlvdXIgQWNrIGluIHY0LgpQbGVhc2Ugc2VuZCBuZXcgQWNrIGZvciB0aGlzIHBhdGNo
LgoKPiAyMDE564WEIDfsm5QgMjXsnbwgKOuqqSkg7Jik7ZuEIDExOjQ0LCA8ay5rb25pZWN6bnlA
cGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Pgo+PiBSZWd1bGF0b3JzIHNob3Vs
ZCBiZSBlbmFibGVkIGJlZm9yZSBjbG9ja3MgdG8gYXZvaWQgaC93IGhhbmcuIFRoaXMKPj4gcmVx
dWlyZSBjaGFuZ2UgaW4gZXh5bm9zX2J1c19wcm9iZSgpIHRvIG1vdmUgZXh5bm9zX2J1c19wYXJz
ZV9vZigpCj4+IGFmdGVyIGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKCkgYW5kIGNoYW5nZSBp
biBlcnJvciBoYW5kbGluZy4KPj4gU2ltaWxhciBjaGFuZ2UgaXMgbmVlZGVkIGluIGV4eW5vc19i
dXNfZXhpdCgpIHdoZXJlIGNsb2NrIHNob3VsZCBiZQo+PiBkaXNhYmxlZCBiZWZvcmUgcmVndWxh
dG9ycy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogS2FtaWwgS29uaWVjem55IDxrLmtvbmllY3pueUBw
YXJ0bmVyLnNhbXN1bmcuY29tPgo+PiAtLS0KPj4gQ2hhbmdlczoKPj4gdjQ6Cj4+IC0gbW92ZSBy
ZWd1bGF0b3IgZGlzYWJsZSBhZnRlciBjbG9jayBkaXNhYmxlCj4+IC0gcmVtb3ZlIHVucmVsYXRl
ZCBjaGFuZ2VzCj4+IC0gYWRkIGRpc2FibGluZyByZWd1bGF0b3JzIGluIGVycm9yIHBhdGggaW4g
ZXh5bm9zX2J1c19wcm9iZSgpCj4+Cj4+IC0tLQo+PiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1i
dXMuYyB8IDMxICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCj4+IGluZGV4IDQ4NmNjNWI0MjJmMS4uZjM0ZmEyNmYwMGQwIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlu
b3MtYnVzLmMKPj4gQEAgLTE5NCwxMSArMTk0LDEwIEBAIHN0YXRpYyB2b2lkIGV4eW5vc19idXNf
ZXhpdChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAgICAgICAgaWYgKHJldCA8IDApCj4+ICAgICAg
ICAgICAgICAgICBkZXZfd2FybihkZXYsICJmYWlsZWQgdG8gZGlzYWJsZSB0aGUgZGV2ZnJlcS1l
dmVudCBkZXZpY2VzXG4iKTsKPj4KPj4gLSAgICAgICBpZiAoYnVzLT5yZWd1bGF0b3IpCj4+IC0g
ICAgICAgICAgICAgICByZWd1bGF0b3JfZGlzYWJsZShidXMtPnJlZ3VsYXRvcik7Cj4+IC0KPj4g
ICAgICAgICBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+PiAgICAgICAgIGNsa19k
aXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7Cj4+ICsgICAgICAgaWYgKGJ1cy0+cmVndWxhdG9y
KQo+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yX2Rpc2FibGUoYnVzLT5yZWd1bGF0b3IpOwo+
PiAgfQo+Pgo+PiAgLyoKPj4gQEAgLTM4Niw2ICszODUsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19i
dXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAgICBzdHJ1Y3Qg
ZXh5bm9zX2J1cyAqYnVzOwo+PiAgICAgICAgIGludCByZXQsIG1heF9zdGF0ZTsKPj4gICAgICAg
ICB1bnNpZ25lZCBsb25nIG1pbl9mcmVxLCBtYXhfZnJlcTsKPj4gKyAgICAgICBib29sIHBhc3Np
dmUgPSBmYWxzZTsKPj4KPj4gICAgICAgICBpZiAoIW5wKSB7Cj4+ICAgICAgICAgICAgICAgICBk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRldmljZXRyZWUgbm9kZVxuIik7Cj4+IEBAIC0z
OTksMjcgKzM5OSwyNyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPj4gICAgICAgICBidXMtPmRldiA9ICZwZGV2LT5kZXY7Cj4+ICAg
ICAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgYnVzKTsKPj4KPj4gLSAgICAgICAvKiBQ
YXJzZSB0aGUgZGV2aWNlLXRyZWUgdG8gZ2V0IHRoZSByZXNvdXJjZSBpbmZvcm1hdGlvbiAqLwo+
PiAtICAgICAgIHJldCA9IGV4eW5vc19idXNfcGFyc2Vfb2YobnAsIGJ1cyk7Cj4+IC0gICAgICAg
aWYgKHJldCA8IDApCj4+IC0gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiAtCj4+ICAgICAg
ICAgcHJvZmlsZSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcHJvZmlsZSksIEdGUF9LRVJO
RUwpOwo+PiAtICAgICAgIGlmICghcHJvZmlsZSkgewo+PiAtICAgICAgICAgICAgICAgcmV0ID0g
LUVOT01FTTsKPj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+PiAtICAgICAgIH0KPj4gKyAg
ICAgICBpZiAoIXByb2ZpbGUpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPj4K
Pj4gICAgICAgICBub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYtPm9mX25vZGUsICJkZXZmcmVx
IiwgMCk7Cj4+ICAgICAgICAgaWYgKG5vZGUpIHsKPj4gICAgICAgICAgICAgICAgIG9mX25vZGVf
cHV0KG5vZGUpOwo+PiAtICAgICAgICAgICAgICAgZ290byBwYXNzaXZlOwo+PiArICAgICAgICAg
ICAgICAgcGFzc2l2ZSA9IHRydWU7Cj4+ICAgICAgICAgfSBlbHNlIHsKPj4gICAgICAgICAgICAg
ICAgIHJldCA9IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKG5wLCBidXMpOwo+PiArICAgICAg
ICAgICAgICAgaWYgKHJldCA8IDApCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7Cj4+ICAgICAgICAgfQo+Pgo+PiArICAgICAgIC8qIFBhcnNlIHRoZSBkZXZpY2UtdHJlZSB0
byBnZXQgdGhlIHJlc291cmNlIGluZm9ybWF0aW9uICovCj4+ICsgICAgICAgcmV0ID0gZXh5bm9z
X2J1c19wYXJzZV9vZihucCwgYnVzKTsKPj4gICAgICAgICBpZiAocmV0IDwgMCkKPj4gLSAgICAg
ICAgICAgICAgIGdvdG8gZXJyOwo+PiArICAgICAgICAgICAgICAgZ290byBlcnJfcmVnOwo+PiAr
Cj4+ICsgICAgICAgaWYgKHBhc3NpdmUpCj4+ICsgICAgICAgICAgICAgICBnb3RvIHBhc3NpdmU7
Cj4+Cj4+ICAgICAgICAgLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVy
bm9yIGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KPj4gICAgICAgICBwcm9maWxlLT5wb2xsaW5n
X21zID0gNTA7Cj4+IEBAIC01MTAsNiArNTEwLDkgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICBlcnI6Cj4+ICAgICAgICAgZGV2
X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoZGV2KTsKPj4gICAgICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUoYnVzLT5jbGspOwo+PiArZXJyX3JlZzoKPj4gKyAgICAgICBpZiAoIXBhc3NpdmUpCj4+
ICsgICAgICAgICAgICAgICByZWd1bGF0b3JfZGlzYWJsZShidXMtPnJlZ3VsYXRvcik7Cj4+Cj4+
ICAgICAgICAgcmV0dXJuIHJldDsKPj4gIH0KPj4gLS0KPj4gMi4yMi4wCj4+Cj4gCj4gCgotLSAK
QmVzdCByZWdhcmRzLApLYW1pbCBLb25pZWN6bnkKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFu
ZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
