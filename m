Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D96A767
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g48GB5e5cJc4eTAEkXNsWcjkJo3m5iT+9GOwLMXIe0U=; b=fTlYqx/LVtyfNa
	fCdq5lcc1Qz7K4rC1KGVQ1vo7zqR+XemFPoQUFhaN89MBAYM3UC28OMMV/Xai8/cVuSmXxFY473XC
	fCSk/lFBbGld2NGcITPpM0kvaec3ITnh71hJhyjK2+e0w2bXW5vu3PPW8nq7kWQjZ47QDi9gNjv/d
	PkOgaoGXlD0LnTrgOXZRHrLZk4pr9LYj+h94+k1fTpJhWEDPJmBJ9WJBoCV1kpRpmoCvQiXOuBF0I
	jiJRKQLcZuPRdgbYemwzemXxdLfZv4GB/A3Mp5Sty15g4QZ1AKZtLLco0el8fzovBDHvvTwH2c0Qk
	pSCwATgNq30Exe+K7FFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLZ6-0005V2-Ip; Tue, 16 Jul 2019 11:24:12 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLYm-0005EK-8i
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:23:56 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190716112349epoutp03d214f0d4aef3391d3a4d818ad828efe3~x33Kg6Uub2480724807epoutp03Z
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 11:23:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190716112349epoutp03d214f0d4aef3391d3a4d818ad828efe3~x33Kg6Uub2480724807epoutp03Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563276229;
 bh=CKB1e2isOLxF66j2/eCxbJDSalbr3NE7/La/WhR+j24=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=F6RHUmAVUiv+OxbTh0aQ8+hwjRj3XTYUyKKKXrezrcK071uH7UwHoBdp+H2l64z4e
 5eunIdgKXccJKginNkIWhN8/2eRn2HR65G89EZMswlj1apF0HL6AjkF8+IJoiLwvMa
 GQ4sRn1cdiNcGn7LLGyDBrbSEp6fJNC89e3M7zkQ=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190716112348epcas1p35988781ef5657a148a0bb1e21558de5d~x33JuBRxC0519105191epcas1p3m;
 Tue, 16 Jul 2019 11:23:48 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 45nyhC3NxQzMqYkV; Tue, 16 Jul
 2019 11:23:39 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 3D.2B.04160.BB3BD2D5; Tue, 16 Jul 2019 20:23:39 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190716112338epcas1p27572fa536e769c6fce6126ef12752336~x33AyTczs0106301063epcas1p2P;
 Tue, 16 Jul 2019 11:23:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190716112338epsmtrp2306563007682b2a1be921d7d66e9a8f4~x33AwuJn82404724047epsmtrp2H;
 Tue, 16 Jul 2019 11:23:38 +0000 (GMT)
X-AuditID: b6c32a38-b33ff70000001040-4d-5d2db3bb7f37
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 55.2C.03706.AB3BD2D5; Tue, 16 Jul 2019 20:23:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716112338epsmtip2e323e5e758a74bf95d2197407f6a83cf~x33Af4jFb0406804068epsmtip2U;
 Tue, 16 Jul 2019 11:23:38 +0000 (GMT)
Subject: Re: [PATCH v2 2/4] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <29cfafc4-ee22-6d38-4c67-776c48bfed8a@samsung.com>
Date: Tue, 16 Jul 2019 20:26:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3ba736fa-832c-a72c-e60b-f4328e54c524@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIJsWRmVeSWpSXmKPExsWy7bCmge7uzbqxBl1nxCw2zljPajH/yDlW
 i759/xkt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLrF5ks
 bjeuYLN48+Msk0Xr3iPsFv+ubWSx2PzgGJuDoMeaeWsYPTat6mTz2Lyk3uPguz1MHn1bVjF6
 HL+xncnj8ya5APaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUX
 nwBdt8wcoA+UFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWWBXrFibnFpXnpesn5
 uVaGBgZGpkCFCdkZ/xpXMBbsmMtY0fD+AHsD48aKLkYODgkBE4nfP7S6GLk4hAR2MEqcPbuH
 BcL5xCix8vRaZgjnG6PEt/cNjF2MnGAduzZNZoJI7GWU2Dn3MjtIQkjgPaPE7TfaILawQLjE
 r/u7wBpEBCwk1q54CzaWWeACi8Sx1bdZQRJsAloS+1/cYAOx+QUUJa7+eAzWwCtgJ7Ho2nkW
 EJtFQFVi44R7YLaoQITEqSPzWCBqBCVOznwCZnMK2Es8OPodrJdZQFzi1pP5TBC2vETz1tlg
 L0gInGKX6D//kQ3iBReJa+0rWSBsYYlXx7ewQ9hSEp/f7YWqqZZYefIIG0RzB6PElv0XWCES
 xhL7l4L8zwG0QVNi/S59iLCixM7fc6GO4JN497WHFRLAvBIdbUIQJcoSlx/cZYKwJSUWt3ey
 TWBUmoXknVlIXpiF5IVZCMsWMLKsYhRLLSjOTU8tNiwwQY7uTYzg5K1lsYNxzzmfQ4wCHIxK
 PLwn9ujECrEmlhVX5h5ilOBgVhLhtf2qHSvEm5JYWZValB9fVJqTWnyI0RQY2hOZpUST84GZ
 Ja8k3tDUyNjY2MLE0MzU0FBJnHfeH81YIYH0xJLU7NTUgtQimD4mDk6pBsaM/wYq3rPq2I51
 3Fu46P6Wn5fsb7BMbs85+MjU9cae9fOYXolZ25/Q2zjhnVnyzNuhu3NWbNCZaPVpI8MxXe/U
 l6rn5qet2R5XxLJvWuH3rq8Hv2RUM0Z9DjvHLJbSu75z6mUm9xXnlQWyftoxaMxYrCH/2m25
 c1bWr81xX3842GZJq+lHppsrsRRnJBpqMRcVJwIAnH14WfQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsWy7bCSvO6uzbqxBrfeKFhsnLGe1WL+kXOs
 Fn37/jNa9D9+zWxx/vwGdouzTW/YLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i6XXLzJZ
 3G5cwWbx5sdZJovWvUfYLf5d28hisfnBMTYHQY8189Ywemxa1cnmsXlJvcfBd3uYPPq2rGL0
 OH5jO5PH501yAexRXDYpqTmZZalF+nYJXBn/GlcwFuyYy1jR8P4AewPjxoouRk4OCQETiV2b
 JjN1MXJxCAnsZpT4MvEjG0RCUmLaxaPMXYwcQLawxOHDxRA1bxklvp5pZgKpERYIl/h1fxcj
 iC0iYCGxdsVbFhCbWeASi0Tz9FKIhqXMEo8XvmQGSbAJaEnsf3EDbAG/gKLE1R+PwZp5Bewk
 Fl07D9bMIqAqsXHCPTBbVCBCYtK1nSwQNYISJ2c+AbM5BewlHhz9zgixTF3iz7xLzBC2uMSt
 J/OZIGx5ieats5knMArPQtI+C0nLLCQts5C0LGBkWcUomVpQnJueW2xYYJiXWq5XnJhbXJqX
 rpecn7uJERzHWpo7GC8viT/EKMDBqMTDe2KPTqwQa2JZcWXuIUYJDmYlEV7br9qxQrwpiZVV
 qUX58UWlOanFhxilOViUxHmf5h2LFBJITyxJzU5NLUgtgskycXBKNTCyh00oPdtjUFFu9ej+
 1lPMYd9+zNUqtUr6a3//6LIPxzw2XHjgHRjGdnSDSa9ZzLJ3k/S8PKtX5Tbw2z4LyD36cb5m
 2dNcuRRD06ZpGT92aCmkqzIXrI1JeFEktKDDR7laufhk4c+/ZUf3nTPzFW4557DkXXZ7znGZ
 aVoyrv6WUoGPv0dH71NiKc5INNRiLipOBAAVwoCH3wIAAA==
X-CMS-MailID: 20190716112338epcas1p27572fa536e769c6fce6126ef12752336
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190715120431eucas1p215eae81d0ca772d7e2a22a803669068a
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120431eucas1p215eae81d0ca772d7e2a22a803669068a@eucas1p2.samsung.com>
 <20190715120416.3561-3-k.konieczny@partner.samsung.com>
 <7f7cf551-005a-c647-d571-77eb5426478a@samsung.com>
 <3d1687b7-4825-ad82-2706-a712c30e530b@samsung.com>
 <5612547b-47c8-0dc4-cb3c-e972782d5a26@samsung.com>
 <3ba736fa-832c-a72c-e60b-f4328e54c524@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_042353_976968_E85B97B4 
X-CRM114-Status: GOOD (  29.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kamil Konieczny <k.konieczny@partner.samsung.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gNy4gMTYuIOyYpO2bhCA3OjU5LCBCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6
IHdyb3RlOgo+IAo+IE9uIDcvMTYvMTkgMTI6MzMgUE0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4g
SGkgQmFydGxvbWllaiwKPj4KPj4gT24gMTkuIDcuIDE2LiDsmKTtm4QgNzoxMywgQmFydGxvbWll
aiBab2xuaWVya2lld2ljeiB3cm90ZToKPj4+Cj4+PiBIaSBDaGFud29vLAo+Pj4KPj4+IE9uIDcv
MTYvMTkgNTo1NiBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+Pj4+IEhpIEthbWlsLAo+Pj4+Cj4+
Pj4gTG9va3MgZ29vZCB0byBtZS4gQnV0LCB0aGlzIHBhdGNoIGhhcyBzb21lIGlzc3VlLgo+Pj4+
IEkgYWRkZWQgdGhlIGRldGFpbGVkIHJldmlld3MuCj4+Pj4KPj4+PiBJIHJlY29tbWVuZCB0aGF0
IHlvdSBtYWtlIHRoZSBzZXBhcmF0ZSBwYXRjaGVzIGFzIGZvbGxvd2luZwo+Pj4+IGluIG9yZGVy
IHRvIGNsYXJpZnkgdGhlIHJvbGUgb2Ygd2hpY2ggYXBwbHkgdGhlIGRldl9wbV9vcHBfKiBmdW5j
dGlvbi4KPj4+Pgo+Pj4+IEZpcnN0IHBhdGNoLAo+Pj4+IE5lZWQgdG8gY29uc29saWRhdGUgdGhl
IGZvbGxvd2luZyB0d28gZnVuY3Rpb24gaW50byBvbmUgZnVuY3Rpb24uCj4+Pj4gYmVjYXVzZSB0
aGUgb3JpZ2luYWwgZXh5bm9zLWJ1cy5jIGhhcyB0aGUgcHJvYmxlbSB0aGF0IHRoZSByZWd1bGF0
b3IKPj4+PiBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgaGF2ZSB0byBiZSBlbmFibGVkIGJlZm9y
ZSBlbmFibGluZyB0aGUgY2xvY2suCj4+Pj4gVGhpcyBpc3N1ZSBkaWQgbm90IGhhcHBlbiBiZWNh
dXNlIGJvb3Rsb2FkZXIgZW5hYmxlcyB0aGUgYnVzLXJlbGF0ZWQKPj4+PiByZWd1bGF0b3JzIGJl
Zm9yZSBrZXJuZWwgYm9vdGluZy4KPj4+PiAtIGV4eW5vc19idXNfcGFyc2Vfb2YoKQo+Pj4+IC0g
ZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YoKQo+Pj4+PiBTZWNvbmQgcGF0Y2gsCj4+Pj4gQXBw
bHkgZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGFuZCBkZXZfcG1fb3BwX3NldF9yYXRlKCkK
Pj4+Pgo+Pj4+Cj4+Pj4gT24gMTkuIDcuIDE1LiDsmKTtm4QgOTowNCwgS2FtaWwgS29uaWVjem55
IHdyb3RlOgo+Pj4+PiBSZXVzZSBvcHAgY29yZSBjb2RlIGZvciBzZXR0aW5nIGJ1cyBjbG9jayBh
bmQgdm9sdGFnZS4gQXMgYSBzaWRlCj4+Pj4+IGVmZmVjdCB0aGlzIGFsbG93IHVzZWFnZSBvZiBj
b3VwbGVkIHJlZ3VsYXRvcnMgZmVhdHVyZSAocmVxdWlyZWQKPj4+Pj4gZm9yIGJvYXJkcyB1c2lu
ZyBFeHlub3M1NDIyLzU4MDAgU29DcykgYmVjYXVzZSBkZXZfcG1fb3BwX3NldF9yYXRlKCkKPj4+
Pj4gdXNlcyByZWd1bGF0b3Jfc2V0X3ZvbHRhZ2VfdHJpcGxldCgpIGZvciBzZXR0aW5nIHJlZ3Vs
YXRvciB2b2x0YWdlCj4+Pj4+IHdoaWxlIHRoZSBvbGQgY29kZSB1c2VkIHJlZ3VsYXRvcl9zZXRf
dm9sdGFnZV90b2woKSB3aXRoIGZpeGVkCj4+Pj4+IHRvbGVyYW5jZS4gVGhpcyBwYXRjaCBhbHNv
IHJlbW92ZXMgbm8gbG9uZ2VyIG5lZWRlZCBwYXJzaW5nIG9mIERUCj4+Pj4+IHByb3BlcnR5ICJl
eHlub3Msdm9sdGFnZS10b2xlcmFuY2UiIChubyBFeHlub3MgZGV2ZnJlcSBEVCBub2RlIHVzZXMK
Pj4+Pj4gaXQpLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBLb25pZWN6bnkgPGsu
a29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiAgZHJpdmVycy9k
ZXZmcmVxL2V4eW5vcy1idXMuYyB8IDE3MiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDEwNiBkZWxldGlv
bnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4+Pj4+IGluZGV4IDQ4NmNjNWI0MjJm
MS4uN2ZjNGY3NmJkODQ4IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9z
LWJ1cy5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+Pj4gQEAg
LTI1LDcgKzI1LDYgQEAKPj4+Pj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4+Pj4+ICAKPj4+
Pj4gICNkZWZpbmUgREVGQVVMVF9TQVRVUkFUSU9OX1JBVElPCTQwCj4+Pj4+IC0jZGVmaW5lIERF
RkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UJMgo+Pj4+PiAgCj4+Pj4+ICBzdHJ1Y3QgZXh5bm9zX2J1
cyB7Cj4+Pj4+ICAJc3RydWN0IGRldmljZSAqZGV2Owo+Pj4+PiBAQCAtMzcsOSArMzYsOSBAQCBz
dHJ1Y3QgZXh5bm9zX2J1cyB7Cj4+Pj4+ICAKPj4+Pj4gIAl1bnNpZ25lZCBsb25nIGN1cnJfZnJl
cTsKPj4+Pj4gIAo+Pj4+PiAtCXN0cnVjdCByZWd1bGF0b3IgKnJlZ3VsYXRvcjsKPj4+Pj4gKwlz
dHJ1Y3Qgb3BwX3RhYmxlICpvcHBfdGFibGU7Cj4+Pj4+ICsKPj4+Pj4gIAlzdHJ1Y3QgY2xrICpj
bGs7Cj4+Pj4+IC0JdW5zaWduZWQgaW50IHZvbHRhZ2VfdG9sZXJhbmNlOwo+Pj4+PiAgCXVuc2ln
bmVkIGludCByYXRpbzsKPj4+Pj4gIH07Cj4+Pj4+ICAKPj4+Pj4gQEAgLTk5LDU2ICs5OCwyNSBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfdGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWdu
ZWQgbG9uZyAqZnJlcSwgdTMyIGZsYWdzKQo+Pj4+PiAgewo+Pj4+PiAgCXN0cnVjdCBleHlub3Nf
YnVzICpidXMgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+Pj4gIAlzdHJ1Y3QgZGV2X3BtX29w
cCAqbmV3X29wcDsKPj4+Pj4gLQl1bnNpZ25lZCBsb25nIG9sZF9mcmVxLCBuZXdfZnJlcSwgbmV3
X3ZvbHQsIHRvbDsKPj4+Pj4gIAlpbnQgcmV0ID0gMDsKPj4+Pj4gLQo+Pj4+PiAtCS8qIEdldCBu
ZXcgb3BwLWJ1cyBpbnN0YW5jZSBhY2NvcmRpbmcgdG8gbmV3IGJ1cyBjbG9jayAqLwo+Pj4+PiAr
CS8qCj4+Pj4+ICsJICogTmV3IGZyZXF1ZW5jeSBmb3IgYnVzIG1heSBub3QgYmUgZXhhY3RseSBt
YXRjaGVkIHRvIG9wcCwgYWRqdXN0Cj4+Pj4+ICsJICogKmZyZXEgdG8gY29ycmVjdCB2YWx1ZS4K
Pj4+Pj4gKwkgKi8KPj4+Pgo+Pj4+IFlvdSBiZXR0ZXIgdG8gY2hhbmdlIHRoaXMgY29tbWVudCB3
aXRoIGZvbGxvd2luZyBzdHlsZXMKPj4+PiB0byBrZWVwIHRoZSBjb25zaXN0ZW5jeToKPj4+Pgo+
Pj4+IAkvKiBHZXQgY29ycmVjdCBmcmVxdWVuY3kgZm9yIGJ1cyAuLi4gKi8KPj4+Pgo+Pj4+PiAg
CW5ld19vcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVkX29wcChkZXYsIGZyZXEsIGZsYWdzKTsKPj4+
Pj4gIAlpZiAoSVNfRVJSKG5ld19vcHApKSB7Cj4+Pj4+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIGdldCByZWNvbW1lbmRlZCBvcHAgaW5zdGFuY2VcbiIpOwo+Pj4+PiAgCQlyZXR1cm4gUFRS
X0VSUihuZXdfb3BwKTsKPj4+Pj4gIAl9Cj4+Pj4+ICAKPj4+Pj4gLQluZXdfZnJlcSA9IGRldl9w
bV9vcHBfZ2V0X2ZyZXEobmV3X29wcCk7Cj4+Pj4+IC0JbmV3X3ZvbHQgPSBkZXZfcG1fb3BwX2dl
dF92b2x0YWdlKG5ld19vcHApOwo+Pj4+PiAgCWRldl9wbV9vcHBfcHV0KG5ld19vcHApOwo+Pj4+
PiAgCj4+Pj4+IC0Jb2xkX2ZyZXEgPSBidXMtPmN1cnJfZnJlcTsKPj4+Pj4gLQo+Pj4+PiAtCWlm
IChvbGRfZnJlcSA9PSBuZXdfZnJlcSkKPj4+Pj4gLQkJcmV0dXJuIDA7Cj4+Pj4+IC0JdG9sID0g
bmV3X3ZvbHQgKiBidXMtPnZvbHRhZ2VfdG9sZXJhbmNlIC8gMTAwOwo+Pj4+PiAtCj4+Pj4+ICAJ
LyogQ2hhbmdlIHZvbHRhZ2UgYW5kIGZyZXF1ZW5jeSBhY2NvcmRpbmcgdG8gbmV3IE9QUCBsZXZl
bCAqLwo+Pj4+PiAgCW11dGV4X2xvY2soJmJ1cy0+bG9jayk7Cj4+Pj4+ICsJcmV0ID0gZGV2X3Bt
X29wcF9zZXRfcmF0ZShkZXYsICpmcmVxKTsKPj4+Pj4gKwlpZiAoIXJldCkKPj4+Pj4gKwkJYnVz
LT5jdXJyX2ZyZXEgPSAqZnJlcTsKPj4+Pgo+Pj4+IEhhdmUgdG8gcHJpbnQgdGhlIGVycm9yIGxv
ZyBpZiByZXQgaGFzIG1pbnVzIGVycm9yIHZhbHVlLgo+Pj4KPj4+IGRldl9wbV9vcHBfc2V0X3Jh
dGUoKSBzaG91bGQgcHJpbnQgdGhlIGVycm9yIG1lc3NhZ2Ugb24gYWxsCj4+PiBlcnJvcnMgc28g
d291bGRuJ3QgcHJpbnRpbmcgdGhlIGVycm9yIGxvZyBhbHNvIGhlcmUgYmUgc3VwZXJmbHVvdXM/
Cj4+Pgo+Pj4gWyBQbGVhc2UgYWxzbyBub3RlIHRoYXQgdGhlIG90aGVyIHVzZXIgb2YgZGV2X3Bt
X29wcF9zZXRfcmF0ZSgpCj4+PiAgIChjcHVmcmVxLWR0IGNwdWZyZXEgZHJpdmVyKSBkb2Vzbid0
IGRvIHRoaXMuIF0KPj4KPj4gT0suIFRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLiAKPj4KPj4+
Cj4+Pj4gTW9kaWZ5IGl0IGFzIGZvbGxvd2luZzoKPj4+Pgo+Pj4+IAlpZiAocmV0IDwgMCkgewo+
Pj4+IAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gc2V0IGJ1cyByYXRlXG4iKTsKPj4+PiAJCWdv
dG8gZXJyOgo+Pj4+IAl9Cj4+Pj4gCWJ1cy0+Y3Vycl9mcmVxID0gKmZyZXE7Cj4+Pj4KPj4+PiBl
cnI6Cj4+Pj4gCW11dGV4X3VubG9jaygmYnVzLT5sb2NrKTsKPj4+PiAJCj4+Pj4gCXJldHVybiBy
ZXQ7Cj4+Pj4KPj4+Pj4gIAo+Pj4+PiAtCWlmIChvbGRfZnJlcSA8IG5ld19mcmVxKSB7Cj4+Pj4+
IC0JCXJldCA9IHJlZ3VsYXRvcl9zZXRfdm9sdGFnZV90b2woYnVzLT5yZWd1bGF0b3IsIG5ld192
b2x0LCB0b2wpOwo+Pj4+PiAtCQlpZiAocmV0IDwgMCkgewo+Pj4+PiAtCQkJZGV2X2VycihidXMt
PmRldiwgImZhaWxlZCB0byBzZXQgdm9sdGFnZVxuIik7Cj4+Pj4+IC0JCQlnb3RvIG91dDsKPj4+
Pj4gLQkJfQo+Pj4+PiAtCX0KPj4+Pj4gLQo+Pj4+PiAtCXJldCA9IGNsa19zZXRfcmF0ZShidXMt
PmNsaywgbmV3X2ZyZXEpOwo+Pj4+PiAtCWlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0JCWRldl9lcnIo
ZGV2LCAiZmFpbGVkIHRvIGNoYW5nZSBjbG9jayBvZiBidXNcbiIpOwo+Pj4+PiAtCQljbGtfc2V0
X3JhdGUoYnVzLT5jbGssIG9sZF9mcmVxKTsKPj4+Pj4gLQkJZ290byBvdXQ7Cj4+Pj4+IC0JfQo+
Pj4+PiAtCj4+Pj4+IC0JaWYgKG9sZF9mcmVxID4gbmV3X2ZyZXEpIHsKPj4+Pj4gLQkJcmV0ID0g
cmVndWxhdG9yX3NldF92b2x0YWdlX3RvbChidXMtPnJlZ3VsYXRvciwgbmV3X3ZvbHQsIHRvbCk7
Cj4+Pj4+IC0JCWlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0JCQlkZXZfZXJyKGJ1cy0+ZGV2LCAiZmFp
bGVkIHRvIHNldCB2b2x0YWdlXG4iKTsKPj4+Pj4gLQkJCWdvdG8gb3V0Owo+Pj4+PiAtCQl9Cj4+
Pj4+IC0JfQo+Pj4+PiAtCWJ1cy0+Y3Vycl9mcmVxID0gbmV3X2ZyZXE7Cj4+Pj4+IC0KPj4+Pj4g
LQlkZXZfZGJnKGRldiwgIlNldCB0aGUgZnJlcXVlbmN5IG9mIGJ1cyAoJWx1SHogLT4gJWx1SHos
ICVsdUh6KVxuIiwKPj4+Pj4gLQkJCW9sZF9mcmVxLCBuZXdfZnJlcSwgY2xrX2dldF9yYXRlKGJ1
cy0+Y2xrKSk7Cj4+Pj4+IC1vdXQ6Cj4+Pj4+ICAJbXV0ZXhfdW5sb2NrKCZidXMtPmxvY2spOwo+
Pj4+PiAgCj4+Pj4+ICAJcmV0dXJuIHJldDsKPj4+Pj4gQEAgLTE5NCwxMCArMTYyLDExIEBAIHN0
YXRpYyB2b2lkIGV4eW5vc19idXNfZXhpdChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4+ICAJaWYg
KHJldCA8IDApCj4+Pj4+ICAJCWRldl93YXJuKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBk
ZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+Pj4+PiAgCj4+Pj4+IC0JaWYgKGJ1cy0+cmVndWxh
dG9yKQo+Pj4+PiAtCQlyZWd1bGF0b3JfZGlzYWJsZShidXMtPnJlZ3VsYXRvcik7Cj4+Pj4+ICsJ
aWYgKGJ1cy0+b3BwX3RhYmxlKQo+Pj4+PiArCQlkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKGJ1
cy0+b3BwX3RhYmxlKTsKPj4+Pgo+Pj4+IEhhdmUgdG8gZGlzYWJsZSByZWd1bGF0b3IgYWZ0ZXIg
ZGlzYWJsaW5nIHRoZSBjbG9jawo+Pj4+IHRvIHByZXZlbnQgdGhlIGgvdyBmYXVsdC4KPj4+Pgo+
Pj4+IEkgdGhpbmsgdGhhdCB5b3Ugc2hvdWxkIGNhbGwgdGhlbSB3aXRoIGZvbGxvd2luZyBzZXF1
ZW5jZToKPj4+Pgo+Pj4+IAljbGtfZGlzYWJsZV91bnByZXBhcmUoYnVzLT5jbGspOwo+Pj4+IAlp
ZiAoYnVzLT5vcHBfdGFibGUpCj4+Pj4gCQlkZXZfcG1fb3BwX3B1dF9yZWd1bGF0b3JzKGJ1cy0+
b3BwX3RhYmxlKTsKPj4+PiAJZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoZGV2KTsKPj4+Pgo+
Pj4+PiAgCj4+Pj4+ICAJZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoZGV2KTsKPj4+Pj4gKwo+
Pj4+PiAgCWNsa19kaXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7Cj4+Pj4+ICB9Cj4+Pj4+ICAK
Pj4+Pj4gQEAgLTIwOSwzOSArMTc4LDI2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXNzaXZl
X3RhcmdldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGxvbmcgKmZyZXEsCj4+Pj4+ICB7
Cj4+Pj4+ICAJc3RydWN0IGV4eW5vc19idXMgKmJ1cyA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+
Pj4+PiAgCXN0cnVjdCBkZXZfcG1fb3BwICpuZXdfb3BwOwo+Pj4+PiAtCXVuc2lnbmVkIGxvbmcg
b2xkX2ZyZXEsIG5ld19mcmVxOwo+Pj4+PiAtCWludCByZXQgPSAwOwo+Pj4+PiArCWludCByZXQ7
Cj4+Pj4+ICAKPj4+Pj4gLQkvKiBHZXQgbmV3IG9wcC1idXMgaW5zdGFuY2UgYWNjb3JkaW5nIHRv
IG5ldyBidXMgY2xvY2sgKi8KPj4+Pj4gKwkvKgo+Pj4+PiArCSAqIE5ldyBmcmVxdWVuY3kgZm9y
IGJ1cyBtYXkgbm90IGJlIGV4YWN0bHkgbWF0Y2hlZCB0byBvcHAsIGFkanVzdAo+Pj4+PiArCSAq
ICpmcmVxIHRvIGNvcnJlY3QgdmFsdWUuCj4+Pj4+ICsJICovCj4+Pj4KPj4+PiBZb3UgYmV0dGVy
IHRvIGNoYW5nZSB0aGlzIGNvbW1lbnQgd2l0aCBmb2xsb3dpbmcgc3R5bGVzCj4+Pj4gdG8ga2Vl
cCB0aGUgY29uc2lzdGVuY3k6Cj4+Pj4KPj4+PiAJLyogR2V0IGNvcnJlY3QgZnJlcXVlbmN5IGZv
ciBidXMgLi4uICovCj4+Pj4KPj4+Pj4gIAluZXdfb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9v
cHAoZGV2LCBmcmVxLCBmbGFncyk7Cj4+Pj4+ICAJaWYgKElTX0VSUihuZXdfb3BwKSkgewo+Pj4+
PiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcmVjb21tZW5kZWQgb3BwIGluc3RhbmNl
XG4iKTsKPj4+Pj4gIAkJcmV0dXJuIFBUUl9FUlIobmV3X29wcCk7Cj4+Pj4+ICAJfQo+Pj4+PiAg
Cj4+Pj4+IC0JbmV3X2ZyZXEgPSBkZXZfcG1fb3BwX2dldF9mcmVxKG5ld19vcHApOwo+Pj4+PiAg
CWRldl9wbV9vcHBfcHV0KG5ld19vcHApOwo+Pj4+PiAgCj4+Pj4+IC0Jb2xkX2ZyZXEgPSBidXMt
PmN1cnJfZnJlcTsKPj4+Pj4gLQo+Pj4+PiAtCWlmIChvbGRfZnJlcSA9PSBuZXdfZnJlcSkKPj4+
Pj4gLQkJcmV0dXJuIDA7Cj4+Pj4+IC0KPj4+Pj4gIAkvKiBDaGFuZ2UgdGhlIGZyZXF1ZW5jeSBh
Y2NvcmRpbmcgdG8gbmV3IE9QUCBsZXZlbCAqLwo+Pj4+PiAgCW11dGV4X2xvY2soJmJ1cy0+bG9j
ayk7Cj4+Pj4+ICsJcmV0ID0gZGV2X3BtX29wcF9zZXRfcmF0ZShkZXYsICpmcmVxKTsKPj4+Pj4g
KwlpZiAoIXJldCkKPj4+Pj4gKwkJYnVzLT5jdXJyX2ZyZXEgPSAqZnJlcTsKPj4+Pgo+Pj4+IGRp
dHRvLiBIYXZlIHRvIHByaW50IHRoZSBlcnJvciBsb2csIGNoZWNrIGFib3ZlIGNvbW1lbnQuCj4+
Pj4KPj4+Pj4gIAo+Pj4+PiAtCXJldCA9IGNsa19zZXRfcmF0ZShidXMtPmNsaywgbmV3X2ZyZXEp
Owo+Pj4+PiAtCWlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IHNldCB0aGUgY2xvY2sgb2YgYnVzXG4iKTsKPj4+Pj4gLQkJZ290byBvdXQ7Cj4+Pj4+IC0JfQo+
Pj4+PiAtCj4+Pj4+IC0JKmZyZXEgPSBuZXdfZnJlcTsKPj4+Pj4gLQlidXMtPmN1cnJfZnJlcSA9
IG5ld19mcmVxOwo+Pj4+PiAtCj4+Pj4+IC0JZGV2X2RiZyhkZXYsICJTZXQgdGhlIGZyZXF1ZW5j
eSBvZiBidXMgKCVsdUh6IC0+ICVsdUh6LCAlbHVIeilcbiIsCj4+Pj4+IC0JCQlvbGRfZnJlcSwg
bmV3X2ZyZXEsIGNsa19nZXRfcmF0ZShidXMtPmNsaykpOwo+Pj4+PiAtb3V0Ogo+Pj4+PiAgCW11
dGV4X3VubG9jaygmYnVzLT5sb2NrKTsKPj4+Pj4gIAo+Pj4+PiAgCXJldHVybiByZXQ7Cj4+Pj4+
IEBAIC0yNTksMjAgKzIxNSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vf
b2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPj4+Pj4gIAkJCQkJc3RydWN0IGV4eW5vc19idXMg
KmJ1cykKPj4+Pj4gIHsKPj4+Pj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPj4+
Pj4gLQlpbnQgaSwgcmV0LCBjb3VudCwgc2l6ZTsKPj4+Pj4gLQo+Pj4+PiAtCS8qIEdldCB0aGUg
cmVndWxhdG9yIHRvIHByb3ZpZGUgZWFjaCBidXMgd2l0aCB0aGUgcG93ZXIgKi8KPj4+Pj4gLQli
dXMtPnJlZ3VsYXRvciA9IGRldm1fcmVndWxhdG9yX2dldChkZXYsICJ2ZGQiKTsKPj4+Pj4gLQlp
ZiAoSVNfRVJSKGJ1cy0+cmVndWxhdG9yKSkgewo+Pj4+PiAtCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBnZXQgVkREIHJlZ3VsYXRvclxuIik7Cj4+Pj4+IC0JCXJldHVybiBQVFJfRVJSKGJ1cy0+
cmVndWxhdG9yKTsKPj4+Pj4gLQl9Cj4+Pj4+IC0KPj4+Pj4gLQlyZXQgPSByZWd1bGF0b3JfZW5h
YmxlKGJ1cy0+cmVndWxhdG9yKTsKPj4+Pj4gLQlpZiAocmV0IDwgMCkgewo+Pj4+PiAtCQlkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgVkREIHJlZ3VsYXRvclxuIik7Cj4+Pj4+IC0JCXJl
dHVybiByZXQ7Cj4+Pj4+IC0JfQo+Pj4+PiArCWludCBpLCBjb3VudCwgc2l6ZTsKPj4+Pj4gIAo+
Pj4+PiAgCS8qCj4+Pj4+ICAJICogR2V0IHRoZSBkZXZmcmVxLWV2ZW50IGRldmljZXMgdG8gZ2V0
IHRoZSBjdXJyZW50IHV0aWxpemF0aW9uIG9mCj4+Pj4+IEBAIC0yODEsMjQgKzIyNCwyMCBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCj4+Pj4+ICAJY291bnQgPSBkZXZmcmVxX2V2ZW50X2dldF9lZGV2X2NvdW50KGRldik7Cj4+
Pj4+ICAJaWYgKGNvdW50IDwgMCkgewo+Pj4+PiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBn
ZXQgdGhlIGNvdW50IG9mIGRldmZyZXEtZXZlbnQgZGV2XG4iKTsKPj4+Pj4gLQkJcmV0ID0gY291
bnQ7Cj4+Pj4+IC0JCWdvdG8gZXJyX3JlZ3VsYXRvcjsKPj4+Pj4gKwkJcmV0dXJuIGNvdW50Owo+
Pj4+PiAgCX0KPj4+Pj4gKwo+Pj4+PiAgCWJ1cy0+ZWRldl9jb3VudCA9IGNvdW50Owo+Pj4+PiAg
Cj4+Pj4+ICAJc2l6ZSA9IHNpemVvZigqYnVzLT5lZGV2KSAqIGNvdW50Owo+Pj4+PiAgCWJ1cy0+
ZWRldiA9IGRldm1fa3phbGxvYyhkZXYsIHNpemUsIEdGUF9LRVJORUwpOwo+Pj4+PiAtCWlmICgh
YnVzLT5lZGV2KSB7Cj4+Pj4+IC0JCXJldCA9IC1FTk9NRU07Cj4+Pj4+IC0JCWdvdG8gZXJyX3Jl
Z3VsYXRvcjsKPj4+Pj4gLQl9Cj4+Pj4+ICsJaWYgKCFidXMtPmVkZXYpCj4+Pj4+ICsJCXJldHVy
biAtRU5PTUVNOwo+Pj4+PiAgCj4+Pj4+ICAJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyspIHsK
Pj4+Pj4gIAkJYnVzLT5lZGV2W2ldID0gZGV2ZnJlcV9ldmVudF9nZXRfZWRldl9ieV9waGFuZGxl
KGRldiwgaSk7Cj4+Pj4+IC0JCWlmIChJU19FUlIoYnVzLT5lZGV2W2ldKSkgewo+Pj4+PiAtCQkJ
cmV0ID0gLUVQUk9CRV9ERUZFUjsKPj4+Pj4gLQkJCWdvdG8gZXJyX3JlZ3VsYXRvcjsKPj4+Pj4g
LQkJfQo+Pj4+PiArCQlpZiAoSVNfRVJSKGJ1cy0+ZWRldltpXSkpCj4+Pj4+ICsJCQlyZXR1cm4g
LUVQUk9CRV9ERUZFUjsKPj4+Pj4gIAl9Cj4+Pj4+ICAKPj4+Pj4gIAkvKgo+Pj4+PiBAQCAtMzE0
LDIyICsyNTMsMTUgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgCWlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwg
ImV4eW5vcyxzYXR1cmF0aW9uLXJhdGlvIiwgJmJ1cy0+cmF0aW8pKQo+Pj4+PiAgCQlidXMtPnJh
dGlvID0gREVGQVVMVF9TQVRVUkFUSU9OX1JBVElPOwo+Pj4+PiAgCj4+Pj4+IC0JaWYgKG9mX3By
b3BlcnR5X3JlYWRfdTMyKG5wLCAiZXh5bm9zLHZvbHRhZ2UtdG9sZXJhbmNlIiwKPj4+Pj4gLQkJ
CQkJJmJ1cy0+dm9sdGFnZV90b2xlcmFuY2UpKQo+Pj4+PiAtCQlidXMtPnZvbHRhZ2VfdG9sZXJh
bmNlID0gREVGQVVMVF9WT0xUQUdFX1RPTEVSQU5DRTsKPj4+Pj4gLQo+Pj4+PiAgCXJldHVybiAw
Owo+Pj4+PiAtCj4+Pj4+IC1lcnJfcmVndWxhdG9yOgo+Pj4+PiAtCXJlZ3VsYXRvcl9kaXNhYmxl
KGJ1cy0+cmVndWxhdG9yKTsKPj4+Pj4gLQo+Pj4+PiAtCXJldHVybiByZXQ7Cj4+Pj4+ICB9Cj4+
Pj4+ICAKPj4+Pj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wLAo+Pj4+PiAtCQkJICAgICAgc3RydWN0IGV4eW5vc19idXMgKmJ1cykKPj4+Pj4g
KwkJCSAgICAgIHN0cnVjdCBleHlub3NfYnVzICpidXMsIGJvb2wgcGFzc2l2ZSkKPj4+Pj4gIHsK
Pj4+Pj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPj4+Pj4gKwlzdHJ1Y3Qgb3Bw
X3RhYmxlICpvcHBfdGFibGU7Cj4+Pj4+ICsJY29uc3QgY2hhciAqdmRkID0gInZkZCI7Cj4+Pj4+
ICAJc3RydWN0IGRldl9wbV9vcHAgKm9wcDsKPj4+Pj4gIAl1bnNpZ25lZCBsb25nIHJhdGU7Cj4+
Pj4+ICAJaW50IHJldDsKPj4+Pj4gQEAgLTM0NywxMSArMjc5LDIyIEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgCQlyZXR1cm4g
cmV0Owo+Pj4+PiAgCX0KPj4+Pj4gIAo+Pj4+PiArCWlmICghcGFzc2l2ZSkgewo+Pj4+PiArCQlv
cHBfdGFibGUgPSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgJnZkZCwgMSk7Cj4+Pj4+
ICsJCWlmIChJU19FUlIob3BwX3RhYmxlKSkgewo+Pj4+PiArCQkJcmV0ID0gUFRSX0VSUihvcHBf
dGFibGUpOwo+Pj4+PiArCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gc2V0IHJlZ3VsYXRvcnMg
JWRcbiIsIHJldCk7Cj4+Pj4+ICsJCQlnb3RvIGVycl9jbGs7Lwo+Pj4+PiArCQl9Cj4+Pj4+ICsK
Pj4+Pj4gKwkJYnVzLT5vcHBfdGFibGUgPSBvcHBfdGFibGU7Cj4+Pj4+ICsJfQo+Pj4+Cj4+Pj4g
VGhpcyBkcml2ZXIgaGFzIGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKCkgZnVuY3Rpb24gZm9y
IHBhcmVudCBkZXZmcmVxIGRldmljZS4KPj4+PiBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKCkg
aGF2ZSB0byBiZSBjYWxsZWQgaW4gZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YoKQo+Pj4+IGJl
Y2F1c2UgdGhlIHJlZ3VsYXRvciBpcyBvbmx5IHVzZWQgYnkgcGFyZW50IGRldmZyZXEgZGV2aWNl
Lgo+Pj4KPj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSBpcyBjYWxsZWQgZm9yIGFsbCBkZXZmcmVx
IGRldmljZXMgKGluY2x1ZGluZwo+Pj4gcGFyZW50KSBhbmQgKGFzIHlvdSd2ZSBub3RpY2VkKSB0
aGUgcmVndWxhdG9yIHNob3VsZCBiZSBlbmFibGVkIGJlZm9yZQo+Pj4gZW5hYmxpbmcgY2xvY2sg
KHdoaWNoIGlzIGRvbmUgaW4gZXh5bm9zX2J1c19wYXJzZV9vZigpKSBzbyBhZGRpbmcKPj4+IGV4
dHJhIGFyZ3VtZW50IHRvIGV4eW5vc19idXNfcGFyc2Vfb2YoKSAobGlrZSBpdCBpcyBkb25lIGN1
cnJlbnRseSBpbgo+Pj4gdGhlIHBhdGNoKSAKPj4KPj4gSSB0aGluayB0aGF0IHRoaXMgcGF0Y2gg
aGFzIHN0aWxsIHRoZSBwcm9ibGVtIGFib3V0IGNhbGwgc2VxdWVuY2UKPj4gYmV0d2VlbiBjbG9j
ayBhbmQgcmVndWxhdG9yIGFzIGZvbGxvd2luZzoKPiAKPiBZZXMsIHRoaXMgc2hvdWxkIGJlIGZp
eGVkICh0aG91Z2ggdGhlIHdyb25nIHNlcXVlbmNlIGJldHdlZW4gcmVndWxhdG9yCj4gYW5kIGNs
b2NrIGhhbmRsaW5nIGlzIG5vdCBpbnRyb2R1Y2VkIGJ5IHRoZSBwYXRjaHNldCBpdHNlbGYgYW5k
IGlzIHByZXNlbnQKPiBpbiB0aGUgb3JpZ2luYWwgZHJpdmVyIGNvZGUpLgo+IAo+PiAyNzMgICAg
ICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoYnVzLT5jbGspOyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKPj4gMjc0ICAgICAgICAgaWYgKHJldCA8IDApIHsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4+IDI3
NSAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IGVuYWJsZSBjbG9j
a1xuIik7ICAgICAgICAgICAgICAgICAgIAo+PiAyNzYgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK
Pj4gMjc3ICAgICAgICAgfSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4+IDI3OCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAo+PiAyNzkgICAgICAgICBpZiAoIXBhc3NpdmUpIHsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPj4gMjgwICAgICAgICAgICAgICAg
ICBvcHBfdGFibGUgPSBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3JzKGRldiwgJnZkZCwgMSk7ICAg
ICAgICAgICAgCj4+IDI4MSAgICAgICAgICAgICAgICAgaWYgKElTX0VSUihvcHBfdGFibGUpKSB7
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+PiAyODIgICAgICAgICAg
ICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihvcHBfdGFibGUpOyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAKPj4gMjgzICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2
LCAiZmFpbGVkIHRvIHNldCByZWd1bGF0b3JzICVkXG4iLCByZXQpOyAgICAgCj4+IDI4NCAgICAg
ICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9jbGs7ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAo+PiAyODUgICAgICAgICAgICAgICAgIH0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPj4gMjg2
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCj4+IDI4NyAgICAgICAgICAgICAgICAgYnVzLT5vcHBf
dGFibGUgPSBvcHBfdGFibGU7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+
PiAyODggICAgICAgICB9ICAgICAgICAgICAgICAgICAgIAo+Pgo+PiBtYWtlcyBpdCBwb3NzaWJs
ZSB0byBkbyB0aGUgc2V0dXAgY29ycmVjdGx5IHdpdGhvdXQgdGhlIG5lZWQKPj4+IG9mIG1lcmdp
bmcgYm90aCBmdW5jdGlvbnMgaW50byBvbmUgaHVnZSBmdW5jdGlvbiAod2hpY2ggd291bGQgYmUg
bW9yZQo+Pj4gZGlmZmljdWx0IHRvIGZvbGxvdyB0aGFuIHR3byBzaW1wbGVyIGZ1bmN0aW9ucyBJ
TUhPKS4gSXMgdGhhdCBhcHByb2FjaAo+Pj4gYWNjZXB0YWJsZSBvciBkbyB5b3UgcHJlZmVyIG9u
ZSBiaWcgZnVuY3Rpb24/Cj4+Cj4+IEFjdHVhbGx5LCBJIGRvbid0IGZvcmNlIHRvIG1ha2Ugb25l
IGZ1bmN0aW9uIGZvciBib3RoCj4+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSBhbmQgZXh5bm9zX2J1
c19wYXJlbnRfcGFyc2Vfb2YoKS4KPj4KPj4gSWYgd2UganVzdCBrZWVwIHRoaXMgY29kZSwgZGV2
X3BtX29wcF9zZXRfcmVndWxhdG9ycygpCj4+IHNob3VsZCBiZSBoYW5kbGVkIGluIGV4eW5vc19i
dXNfcGFyZW50X3BhcnNlX29mKCkKPj4gYmVjYXVzZSBvbmx5IHBhcmVudCBkZXZmcmVxIGRldmlj
ZSBjb250cm9scyB0aGUgcmVndWxhdG9yLgo+IAo+IENvdWxkIHlvdXIgcGxlYXNlIGV4cGxhaW4g
cmF0aW9uYWxlIGZvciB0aGlzIHJlcXVpcmVtZW50IChiZXNpZGVzCj4gZnVuY3Rpb24gbmFtZSk/
CgpPSy4gSSBob3BlIHRvIHNhdGlzZnkgdGhlIGZvbGxvd2luZyByZXF1aXJlbWVudHM6CgoxLiBG
aXggdGhlIHNlcXVlbmNlIHByb2JsZW0gYmV0d2VlbiBjbG9jayBhbmQgcmVndWxhdG9yIGZvciBl
bmFibGluZyB0aGVtLgoyLiBkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3IoKSBoYXZlIHRvIGJlIGhh
bmRsZWQgaW4gZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YoKQogICBpbnN0ZWFkIG9mIGV4eW5v
c19idXNfcGFyc2Vfb2YoKSBmb3Igb25seSBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UuCjMuIGV4eW5v
c19idXNfcGFyc2Vfb2YoKSBoYXZlIHRvIGhhbmRsZSB0aGUgb25seSBjb21tb24gcHJvcGVydGll
cwogICBvZiBib3RoIHBhcmVudCBkZXZmcmVxIGRldmljZSBhbmQgcGFzc2l2ZSBkZXZmcmVxIGRl
dmljZS4KCj4gCj4gVGhlIHBhdGNoIGFkZHMgJ2Jvb2wgcGFzc2l2ZScgYXJndW1lbnQgKHdoaWNo
IGlzIHNldCB0byBmYWxzZSBmb3IKPiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgYW5kIHRydWUgZm9y
IGNoaWxkIGRldmZyZXEgZGV2aWNlKSB0bwo+IGV4eW5vc19idXNfcGFyc2Vfb2YoKSAod2hpY2gg
aXMgY2FsbGVkIGZvciAqYWxsKiBkZXZmcmVxIGRldmljZXMKCkFzIEkgbWVudGVpb25kLCBleHlu
b3NfYnVzX3BhcnNlX29mIGhhdmUgdG8gaGFuZGxlIHRoZSBvbmx5IGNvbW1vbgpwcm9wZXJ0aWVz
IG9mIGJvdGggcGFyZW50IGRldmljZSBhbmQgcGFzc2l2ZSBkZXZpY2UuIAoKSSBnYXRoZXJlZCB0
aGUgcHJvcGVydGllcyBmb3IgcGFyZW50IGRldmljZSBpbnRvIGV4eW5vc19idXNfcGFyZW50X3Bh
cnNlX29mKCkKVGhpcyB3YXkgdXNpbmcgJ2Jvb2wgcGFzc2l2ZScgYXJndW1lbnQgaXMgbm90IHBy
b3BlciBpbiBleHlub3NfYnVzX3BhcnNlX29mKCkuCgoKPiBhbmQgaXMgY2FsbGVkIGJlZm9yZSBl
eHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZigpKSBhbmQgdGhlcmUgaXMKPiBubyBoYXJkIHJlcXVp
cmVtZW50IHRvIGNhbGwgZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycygpIGluCj4gZXh5bm9zX2J1
c19wYXJlbnRfcGFyc2Vfb2YoKSBzbyBhZnRlciBvbmx5IGNoYW5naW5nIHRoZSBvcmRlcmluZwo+
IGJldHdlZW4gcmVndWxhdG9yIGFuZCBjbG9jayBoYW5kbGluZyB0aGUgc2V0dXAgY29kZSBzaG91
bGQgYmUKPiBjb3JyZWN0Lgo+IAo+IFsgUGxlYXNlIG5vdGUgdGhhdCB0aGlzIHBhdGNoIG1vdmVz
IHBhcmVudC9jaGlsZCBkZXRlY3Rpb24gYmVmb3JlCj4gICBleHlub3NfYnVzX3BhcnNlX29mKCkg
Y2FsbC4gXQo+IAo+PiBJbiBvcmRlciB0byBrZWVwIHRoZSB0d28gZnVuY3Rpb25zLCBtYXliZSBo
YXZlIHRvIGNoYW5nZQo+PiB0aGUgY2FsbCB0aGUgc2VxdWVuY2UgYmV0d2VlbiBleHlub3NfYnVz
X3BhcnNlX29mKCkgYW5kCj4+IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKCkuCj4gCj4gRG9l
c24ndCBzZWVtIHRvIGJlIG5lZWRlZCwgY2FyZSB0byBleHBsYWluIGl0IG1vcmU/CgpJbiBvcmRl
ciB0byBmaXggdGhlIHNlcXVlbmNlIHByb2JsZW0gYmV0d2VlbiBjbG9jayBhbmQgcmVndWxhdG9y
CndpdGggZGV2X3BtX29wcF9zZXRfcmVndWFsdG9yKCkgYW5kIHdhbnQgdG8ga2VlcCB0d28gZnVu
Y3Rpb25zCihleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZigpIGFuZCBleHlub3NfYnVzX3BhcnNl
X29mKCkpLApoYXZlIHRvIGNoYW5nZSB0aGUgY2FsbCBvcmRlciBhcyBmb2xsb3dpbmcgYW5kIHRo
ZW4gbW9kaWZ5CnRoZSBleGNlcHRpb24gaGFuZGxpbmcgY29kZSB3aGVuIGVycm9yIGhhcHBlbi4K
Cglub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYtPm9mX25vZGUsICJkZXZmcmVxIiwgMCk7ICAg
ICAgICAgICAgICAgICAgICAKCWlmIChub2RlKSB7ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoJCW9mX25vZGVfcHV0KG5vZGUpOyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKCQlwYXNzaXZlID0g
dHJ1ZQoJfQoKCWlmICghcGFzc2l2ZSkJCgkJZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YoKQoJ
CQlkZXZfcG1fb3BwX3NldF9yZWd1bGF0b3IKCglleHlub3NfYnVzX3BhcnNlX29mKCkKCj4gCj4+
IE9uY2UgYWdhaW4sIEkgZG9uJ3QgZm9yY2UgYW55IGZpeGVkIG1ldGhvZC4gSSB3YW50IHRvIGZp
eCB0aGVtCj4+IHdpdGggY29ycmVjdCB3YXkuCj4+Cj4+Pgo+Pj4+PiArCj4+Pj4+ICAJLyogR2V0
IHRoZSBmcmVxIGFuZCB2b2x0YWdlIGZyb20gT1BQIHRhYmxlIHRvIHNjYWxlIHRoZSBidXMgZnJl
cSAqLwo+Pj4+PiAgCXJldCA9IGRldl9wbV9vcHBfb2ZfYWRkX3RhYmxlKGRldik7Cj4+Pj4+ICAJ
aWYgKHJldCA8IDApIHsKPj4+Pj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IE9QUCB0
YWJsZVxuIik7Cj4+Pj4+IC0JCWdvdG8gZXJyX2NsazsKPj4+Pj4gKwkJZ290byBlcnJfcmVndWxh
dG9yOwo+Pj4+PiAgCX0KPj4+Pj4gIAo+Pj4+PiAgCXJhdGUgPSBjbGtfZ2V0X3JhdGUoYnVzLT5j
bGspOwo+Pj4+PiBAQCAtMzYyLDYgKzMwNSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJz
ZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgCQlyZXQgPSBQVFJfRVJSKG9wcCk7
Cj4+Pj4+ICAJCWdvdG8gZXJyX29wcDsKPj4+Pj4gIAl9Cj4+Pj4+ICsKPj4+Pj4gIAlidXMtPmN1
cnJfZnJlcSA9IGRldl9wbV9vcHBfZ2V0X2ZyZXEob3BwKTsKPj4+Pj4gIAlkZXZfcG1fb3BwX3B1
dChvcHApOwo+Pj4+PiAgCj4+Pj4+IEBAIC0zNjksNiArMzEzLDEzIEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4+PiAgCj4+Pj4+ICBl
cnJfb3BwOgo+Pj4+PiAgCWRldl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4+Pj4+ICsK
Pj4+Pj4gK2Vycl9yZWd1bGF0b3I6Cj4+Pj4+ICsJaWYgKGJ1cy0+b3BwX3RhYmxlKSB7Cj4+Pj4+
ICsJCWRldl9wbV9vcHBfcHV0X3JlZ3VsYXRvcnMoYnVzLT5vcHBfdGFibGUpOwo+Pj4+PiArCQli
dXMtPm9wcF90YWJsZSA9IE5VTEw7Cj4+Pj4+ICsJfQo+Pj4+Cj4+Pj4gQXMgSSBtZW50aW9uZWQg
YWJvdmUsIGl0IGl0IHdyb25nIHRvIGNhbGwgZGV2X3BtX29wcF9wdXRfcmVndWxhdG9ycygpCj4+
Pj4gYWZ0ZXIgcmVtb3ZpbmcgdGhlIG9wcF90YWJsZSBieSBkZXZfcG1fb3BwX29mX3JlbW92ZV90
YWJsZSgpLgo+Pj4+Cj4+Pj4+ICsKPj4+Pj4gIGVycl9jbGs6Cj4+Pj4+ICAJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKGJ1cy0+Y2xrKTsKPj4+Pj4gIAo+Pj4+PiBAQCAtMzg2LDYgKzMzNyw3IEBAIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4+PiAgCXN0cnVjdCBleHlub3NfYnVzICpidXM7Cj4+Pj4+ICAJaW50IHJldCwgbWF4X3N0YXRl
Owo+Pj4+PiAgCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+Pj4+PiArCWJvb2wg
cGFzc2l2ZSA9IGZhbHNlOwo+Pj4+PiAgCj4+Pj4+ICAJaWYgKCFucCkgewo+Pj4+PiAgCQlkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byBmaW5kIGRldmljZXRyZWUgbm9kZVxuIik7Cj4+Pj4+IEBAIC0z
OTUsMTIgKzM0NywxOCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPj4+Pj4gIAlidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwg
c2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKPj4+Pj4gIAlpZiAoIWJ1cykKPj4+Pj4gIAkJcmV0
dXJuIC1FTk9NRU07Cj4+Pj4+ICsKPj4+Pj4gIAltdXRleF9pbml0KCZidXMtPmxvY2spOwo+Pj4+
PiAgCWJ1cy0+ZGV2ID0gJnBkZXYtPmRldjsKPj4+Pj4gIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShw
ZGV2LCBidXMpOwo+Pj4+PiArCW5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwg
ImRldmZyZXEiLCAwKTsKPj4+Pj4gKwlpZiAobm9kZSkgewo+Pj4+PiArCQlvZl9ub2RlX3B1dChu
b2RlKTsKPj4+Pj4gKwkJcGFzc2l2ZSA9IHRydWU7Cj4+Pj4+ICsJfQo+Pj4+PiAgCj4+Pj4+ICAJ
LyogUGFyc2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5mb3JtYXRpb24g
Ki8KPj4+Pj4gLQlyZXQgPSBleHlub3NfYnVzX3BhcnNlX29mKG5wLCBidXMpOwo+Pj4+PiArCXJl
dCA9IGV4eW5vc19idXNfcGFyc2Vfb2YobnAsIGJ1cywgcGFzc2l2ZSk7Cj4+Pj4+ICAJaWYgKHJl
dCA8IDApCj4+Pj4+ICAJCXJldHVybiByZXQ7Cj4+Pj4+ICAKPj4+Pj4gQEAgLTQxMCwxMyArMzY4
LDEwIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+Pj4+PiAgCQlnb3RvIGVycjsKPj4+Pj4gIAl9Cj4+Pj4+ICAKPj4+Pj4gLQlub2Rl
ID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYtPm9mX25vZGUsICJkZXZmcmVxIiwgMCk7Cj4+Pj4+IC0J
aWYgKG5vZGUpIHsKPj4+Pj4gLQkJb2Zfbm9kZV9wdXQobm9kZSk7Cj4+Pj4+ICsJaWYgKHBhc3Np
dmUpCj4+Pj4+ICAJCWdvdG8gcGFzc2l2ZTsKPj4+Pj4gLQl9IGVsc2Ugewo+Pj4+PiAtCQlyZXQg
PSBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihucCwgYnVzKTsKPj4+Pj4gLQl9Cj4+Pj4+ICsK
Pj4+Pj4gKwlyZXQgPSBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihucCwgYnVzKTsKPj4+Pj4g
IAo+Pj4+Cj4+Pj4gUmVtb3ZlIHVubmVlZGVkIGJsYW5rIGxpbmUuCj4+Pj4KPj4+Pj4gIAlpZiAo
cmV0IDwgMCkKPj4+Pj4gIAkJZ290byBlcnI7Cj4+Pj4+IEBAIC01MDksNiArNDY0LDExIEBAIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4+PiAgCj4+Pj4+ICBlcnI6Cj4+Pj4+ICAJZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoZGV2
KTsKPj4+Pj4gKwlpZiAoYnVzLT5vcHBfdGFibGUpIHsKPj4+Pj4gKwkJZGV2X3BtX29wcF9wdXRf
cmVndWxhdG9ycyhidXMtPm9wcF90YWJsZSk7Cj4+Pj4+ICsJCWJ1cy0+b3BwX3RhYmxlID0gTlVM
TDsKPj4+Pj4gKwl9Cj4+Pj4+ICsKPj4+Pgo+Pj4+IGRpdHRvLgo+Pj4+IEhhdmUgdG8gZGlzYWJs
ZSByZWd1bGF0b3IgYWZ0ZXIgZGlzYWJsaW5nIHRoZSBjbG9jawo+Pj4+IHRvIHByZXZlbnQgdGhl
IGgvdyBmYXVsdC4KPj4+Pgo+Pj4+IEkgdGhpbmsgdGhhdCB5b3Ugc2hvdWxkIGNhbGwgdGhlbSB3
aXRoIGZvbGxvd2luZyBzZXF1ZW5jZToKPj4+Pgo+Pj4+IAljbGtfZGlzYWJsZV91bnByZXBhcmUo
YnVzLT5jbGspOwo+Pj4+IAlpZiAoYnVzLT5vcHBfdGFibGUpCj4+Pj4gCQlkZXZfcG1fb3BwX3B1
dF9yZWd1bGF0b3JzKGJ1cy0+b3BwX3RhYmxlKTsKPj4+PiAJZGV2X3BtX29wcF9vZl9yZW1vdmVf
dGFibGUoZGV2KTsKPj4+Pgo+Pj4+PiAgCWNsa19kaXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7
Cj4+Pj4+ICAKPj4+Pj4gIAlyZXR1cm4gcmV0Owo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IC0t
Cj4+PiBCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6Cj4+PiBTYW1zdW5nIFImRCBJbnN0aXR1dGUg
UG9sYW5kCj4+PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4gCj4gQmVzdCByZWdhcmRzLAo+IC0tCj4g
QmFydGxvbWllaiBab2xuaWVya2lld2ljego+IFNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQK
PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4gCj4gCgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBD
aG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
