Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7372E1E9FEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXeBm2ry1JcwwWuHP7853txE72vNJy5qF0XUHtt1SQo=; b=bizDWDw+lyp7+j
	26qmd//0lEGZgj0BbEH9itWLGJZ+myb20DTN69Rr4vSSH+DFikRMtUighlADOPU+9IulpXNblQGPX
	fPxGm9skW1WlHvqD0OJdzNagnCVPtHsI+H4MMjG/Jk+inesO62RTJFO2r5SlgLWi6Ea/uMFmoWbe0
	SgYmlJuyQC0UM9lzxWFaAr1BUSCxqeu/fLckx4YCjBxc9INX+ePLLytM6A4OcxZuqJDehuiwVT8/T
	okxP/+GepHppemdEgMcMU46sQlcipYMZrW1e/sr5amPLhd49/1JLjkE5BTftH7QETHSB3uDnD3jDu
	cp7cmmYpNgsuabqI7VFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffdh-0001W5-TK; Mon, 01 Jun 2020 08:17:45 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffdH-0001Bt-KL
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:17:22 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601081716euoutp01099ae2be55e4609f1dff1791e29f1f67~UXY7lpunH0206902069euoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 08:17:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601081716euoutp01099ae2be55e4609f1dff1791e29f1f67~UXY7lpunH0206902069euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590999436;
 bh=37JGf7EE9HaegulwiZqkIB0AWI45wJrwlmv0uHoMlfk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Utd5qiWW5rJlSReUL19M2i2PagglJE05zIeZjSbCaECwLu5v6r3o6jW/spFeAqwaz
 Ea19boC3tDMr/+u1TxmHaOqLsXqRONqGaf0dv7+PjmOKvSe8RwbF1r7CAw//EiMJ1D
 rRMjKfYCDtf4qScckQA0YvYwKiP8cfnYrXxc/ovA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601081716eucas1p1e4889d2339eb5a9b52da54ff760e18dc~UXY7XKbnb2277422774eucas1p1J;
 Mon,  1 Jun 2020 08:17:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 33.72.60698.C89B4DE5; Mon,  1
 Jun 2020 09:17:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601081716eucas1p1e7f30e33e5bfdf8922c2d693e165793c~UXY699sj31067710677eucas1p1B;
 Mon,  1 Jun 2020 08:17:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601081716eusmtrp19d58a0adbf51b878348cc716bcd9715e~UXY69Lvlg2135421354eusmtrp15;
 Mon,  1 Jun 2020 08:17:16 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-e9-5ed4b98c9045
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 82.64.07950.B89B4DE5; Mon,  1
 Jun 2020 09:17:15 +0100 (BST)
Received: from [106.210.123.115] (unknown [106.210.123.115]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200601081714eusmtip29e6bd48a3316bef61f1612f5a42ddd77~UXY51GyEv2457424574eusmtip2a;
 Mon,  1 Jun 2020 08:17:14 +0000 (GMT)
Subject: Re: [RFC PATCH v5 0/6] Exynos: Simple QoS for exynos-bus using
 interconnect
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <5cd5166b-2b18-2a8f-8940-b3ccf7b1a533@samsung.com>
Date: Mon, 1 Jun 2020 10:17:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200529163200.18031-1-s.nawrocki@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHe/Ze9jpcPU7Fg4XBGJWBVmT4VHZRCkYfKj9UUGitfFNLp2xp
 GkGmeamZil1cy0wi0UbDWmpei5a51FLQZRezgVt5KYvIEC0ttzfJb7/z/58/5xw4HCXrY/y5
 ePUJXqNWJchZCV3XNtkdlN9gi17dMATEXpaNyH19NUNejw8x5GZrF0NsP7+xpKTFzJJiexFN
 urvviYnZ0ceQ3sZSlui7H4mIqXVATPrPVrEku6VVTPSXRtiti5Rm43lW+b6vmVXadVaR8sHt
 M8qCGiNS/jAH7Gb3S8Ji+IT4VF6zavMhSdzlMp/krGVpVyYKmQx0LuAC8uAAh0D/ww7qApJw
 MlyF4NbUWVYoxhE4XwwxQvEDwdM3w9RcpOp5plgwKhHk9mbSLkOGvyMwdmEXe+O98G7gs8jF
 Pngb5Hwso10BCg+KYObudcZlsHgNXHxWgFwsxZshu6DWzTRWwJhD5w774ijIt49SQo8XtF9z
 uod54DDQ/da7dQr7wTvnTZHASyGr9vq/TSfFMNS8U+Bt8CFDzwrsDaPWGrHAS6DzUr57OcBZ
 CPKb+sVCUYTAbi1HQtdGeN81NZvmZicEQnXjKkEOh8f9FrFLBrwQ3ox5CTsshOK6EkqQpZCX
 IxO6FfDLWCIS2B90zj90EZIb5l1mmHeNYd41hv9zyxFtRH58ijYxlteuVfMng7WqRG2KOjb4
 SFKiGc1+W+eM9Wc9evT7sAVhDsk9pSt6eqNljCpVm55oQcBRch9pxMvOaJk0RpV+itckHdSk
 JPBaC1rM0XI/6dpbI1EyHKs6wR/n+WReM+eKOA//DDTgTRQ9hXVXb28JedJJ2yLjTEpNU6Vz
 +m3bxM5QiWL5C6ZxweXQCtMNx6hDF6k+UNqY/Knj2vCTzNLtg2kR6+Er+SJtCfTN+/Z6x6a9
 cSG2knDDOklBrip418XQo0HmO6bpV6GnUXlT0rHwV5PODY4KRXsq1O/JjLSZrJ77LDo5rY1T
 rVlJabSqvzAvNzppAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJIsWRmVeSWpSXmKPExsVy+t/xe7rdO6/EGWw+YG1xf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2CxmnN/HZLH2yF12
 i9uNK9gsWvceYbeYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPvi2rGD0+b5ILYIvSsynK
 Ly1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy5gyT6SgWa1i
 6vd+1gbGFrkuRk4OCQETiRUnmti7GLk4hASWMkpMObmDtYuRAyghJTG/RQmiRljiz7UuNoia
 94wSBzb3sYEkhAXCJG7dfc0EYosIuEi0PZ3HAlLELPCISWJpUx8zREc/o8StGdPYQarYBAwl
 eo/2MYLYvAJ2Eq19W8FsFgEVibePu8EmiQrESnQv/sEOUSMocXLmExYQm1PARqL7zwxmEJtZ
 QF3iz7xLULa4xK0n85kgbHmJ5q2zmScwCs1C0j4LScssJC2zkLQsYGRZxSiSWlqcm55bbKRX
 nJhbXJqXrpecn7uJERjN24793LKDsetd8CFGAQ5GJR7eC+cvxwmxJpYVV+YeYpTgYFYS4XU6
 ezpOiDclsbIqtSg/vqg0J7X4EKMp0HMTmaVEk/OBiSavJN7Q1NDcwtLQ3Njc2MxCSZy3Q+Bg
 jJBAemJJanZqakFqEUwfEwenVANj9Na6z2LRnYZrn9ke+RdZFWSXcuaP3wJP1qp3KoefFjM+
 4BW+dyFuxv3CXQrH+zcn/4pTrlzNtfRm47UtrzhVFgadkdrAGWrK3ztv7sK9d3OXv/Ha/uH6
 xqVnFiY2T8y5t1Rfb8fWaXIGW61vyd7pPf3RXmi6l6qLROuUsr+eIt+bnLY8W+A3S4mlOCPR
 UIu5qDgRAMJtcaj8AgAA
X-CMS-MailID: 20200601081716eucas1p1e7f30e33e5bfdf8922c2d693e165793c
X-Msg-Generator: CA
X-RootMTR: 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b
References: <CGME20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b@eucas1p1.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011720_014220_2944E8E9 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, a.swigon@samsung.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 inki.dae@samsung.com, Rob Herring <robh+dt@kernel.org>,
 myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2M6IFJvYiwgZGV2aWNldHJlZSBNTAoKT24gMjkuMDUuMjAyMCAxODozMSwgU3lsd2VzdGVyIE5h
d3JvY2tpIHdyb3RlOgo+IFRoaXMgcGF0Y2hzZXQgYWRkcyBpbnRlcmNvbm5lY3QgQVBJIHN1cHBv
cnQgZm9yIHRoZSBFeHlub3MgU29DICJzYW1zdW5nLAo+IGV4eW5vcy1idXMiIGNvbXBhdGlibGUg
ZGV2aWNlcywgd2hpY2ggYWxyZWFkeSBoYXZlIHRoZWlyIGNvcnJlc3BvbmRpbmcgCj4gZXh5bm9z
LWJ1cyBkcml2ZXIgaW4gdGhlIGRldmZyZXEgc3Vic3lzdGVtLiAgQ29tcGxlbWVudGluZyB0aGUg
ZGV2ZnJlcSBkcml2ZXIgCj4gd2l0aCBhbiBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0eSBhbGxv
d3MgdG8gZW5zdXJlIHRoZSBRb1MgcmVxdWlyZW1lbnRzIAo+IG9mIGRldmljZXMgYWNjZXNzaW5n
IHRoZSBzeXN0ZW0gbWVtb3J5IChlLmcuIHZpZGVvIHByb2Nlc3NpbmcgZGV2aWNlcykgCj4gYXJl
IGZ1bGZpbGxlZCBhbmQgdG8gYXZvaWQgaXNzdWVzIGxpa2UgdGhlIG9uZSBkaXNjdXNzZWQgaW4g
dGhyZWFkIFsxXS4KPiAKPiBUaGlzIHBhdGNoIHNlcmllcyBkZXBlbmRzIG9uIDMgcGF0Y2hlcyBm
cm9tIEFydHVyIGZvciB0aGUgaW50ZXJjb25uZWN0IEFQSSAKPiBbMl0sIHdoaWNoIGludHJvZHVj
ZSBmb2xsb3dpbmcgY2hhbmdlczoKPiAKPiAgLSBleHBvcnRpbmcgb2ZfaWNjX2dldF9mcm9tX3By
b3ZpZGVyKCkgdG8gYXZvaWQgaGFyZCBjb2RpbmcgZXZlcnkgZ3JhcGggCj4gICAgZWRnZSBpbiB0
aGUgRFQgb3IgZHJpdmVyIHNvdXJjZSwKPiAgLSByZWxheGluZyB0aGUgcmVxdWlyZW1lbnQgb24g
I2ludGVyY29ubmVjdC1jZWxscywgc28gdGhlcmUgaXMgbm8gbmVlZCAKPiAgICB0byBwcm92aWRl
IGR1bW15IG5vZGUgSURzIGluIHRoZSBEVCwgCj4gIC0gYWRkaW5nIG5ldyBmaWVsZCBpbiBzdHJ1
Y3QgaWNjX3Byb3ZpZGVyIHRvIGV4cGxpY2l0bHkgYWxsb3cgY29uZmlndXJpbmcgCj4gICAgbm9k
ZSBwYWlycyBmcm9tIHR3byBkaWZmZXJlbnQgcHJvdmlkZXJzLgo+IAo+IFRoaXMgc2VyaWVzIGFk
ZHMgaW1wbGVtZW50YXRpb24gb2YgaW50ZXJjb25uZWN0IHByb3ZpZGVyIHBlciBlYWNoICJzYW1z
dW5nLAo+IGV4eW5vcy1idXMiIGNvbXBhdGlibGUgRFQgbm9kZSwgd2l0aCBvbmUgaW50ZXJjb25u
ZWN0IG5vZGUgcGVyIHByb3ZpZGVyLgo+IFRoZSBpbnRlcmNvbm5lY3QgY29kZSB3aGljaCB3YXMg
cHJldmlvdXNseSBhZGRlZCBhcyBhIHBhcnQgb2YgdGhlIGRldmZyZXEKPiBkcml2ZXIgaGFzIGJl
ZW4gY29udmVydGVkIHRvIGEgc2VwYXJhdGUgcGxhdGZvcm0gZHJpdmVyLiAgSW4gdGhlIGRldmZy
ZXEgCj4gYSBjb3JyZXNwb25kaW5nIHZpcnR1YWwgY2hpbGQgcGxhdGZvcm0gZGV2aWNlIGlzIHJl
Z2lzdGVyZWQuICBJbnRlZ3JhdGlvbiAKPiBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnJh
bWV3b3JrcyBpcyBhY2hpZXZlZCB0aHJvdWdoIHRoZSBQTSBRb1MgQVBJLgo+IAo+IEEgc2FtcGxl
IGludGVyY29ubmVjdCBjb25zdW1lciBmb3IgZXh5bm9zLW1peGVyIGlzIGFkZGVkIGluIHBhdGNo
ZXMgNS82LCAKPiA2LzYsIGl0IGlzIGN1cnJlbnRseSBhZGRlZCBvbmx5IGZvciBleHlub3M0NDEy
IGFuZCBhbGxvd3MgdG8gYWRkcmVzcyB0aGUgCj4gbWl4ZXIgRE1BIHVuZGVycnVuIGVycm9yIGlz
c3VlcyBbMV0uCj4gCj4gVGhlIHNlcmllcyBoYXMgYmVlbiB0ZXN0ZWQgb24gT2Ryb2lkIFUzIGJv
YXJkLiBJdCBpcyBiYXNlZCBvbiBpY2MtbmV4dCAKPiBicmFuY2ggd2l0aCBkZXZmcmVxLW5leHQg
YnJhbmNoIG1lcmdlZCBhbmQgcGF0Y2hlcyBbMl0gYXBwbGllZC4KPiAKPiAtLQo+IFJlZ2FyZHMs
Cj4gU3lsd2VzdGVyCj4gCj4gLS0KPiBDaGFuZ2VzIHNpbmNlIHYzIFszXSAodjQgc2tpcHBlZCB0
byBhbGlnbiB3aXRoIHBhdGNoc2V0IFsxXSksIGRldGFpbGVkIAo+IGNoYW5nZXMgYXJlIGxpc3Rl
ZCBhdCBlYWNoIHBhdGNoOgo+ICAtIGNvbnZlcnNpb24gdG8gYSBzZXBhcmF0ZSBpbnRlcmNvbm5l
Y3QgKHBsYXRmb3JtKSBkcml2ZXIsCj4gIC0gYW4gdXBkYXRlIG9mIHRoZSBEVCBiaW5kaW5nIGRv
Y3VtZW50aW5nIG5ldyBvcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMsIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVudCBpbiAic2Ftc3VuZyxleHlub3MtYnVzIgo+
ICAgIG5vZGVzLAo+ICAtIG5ldyBEVCBwcm9wZXJ0aWVzIGFkZGVkIHRvIHRoZSBTb0MsIHJhdGhl
ciB0aGFuIHRvIHRoZSBib2FyZCBzcGVjaWZpYyAKPiAgICBmaWxlcy4KPiAKPiBDaGFuZ2VzIHNp
bmNlIHYyIFs1XToKPiAgLSBVc2UgaWNjX3N0ZF9hZ2dyZWdhdGUoKS4KPiAgLSBJbXBsZW1lbnQg
YSBkaWZmZXJlbnQgbW9kaWZpY2F0aW9uIG9mIGFwcGx5X2NvbnN0cmFpbnRzKCkgaW4KPiAgICBk
cml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMgKHBhdGNoIDAzKS4KPiAgLSBVc2UgJ2V4eW5vcyxp
bnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIGluIHRoZSBEVCBpbnN0ZWFkIG9mCj4gICAgJ2RldmZy
ZXEnLydwYXJlbnQnLCBkZXBlbmRpbmcgb24gdGhlIGJ1cy4KPiAgLSBSZWJhc2Ugb24gRFQgcGF0
Y2hlcyB0aGF0IGRlcHJlY2F0ZSB0aGUgJ2RldmZyZXEnIERUIHByb3BlcnR5Lgo+ICAtIEltcHJv
dmUgZXJyb3IgaGFuZGxpbmcsIGluY2x1ZGluZyBmcmVlaW5nIGdlbmVyYXRlZCBJRHMgb24gZmFp
bHVyZS4KPiAgLSBSZW1vdmUgZXh5bm9zX2J1c19pY2NfY29ubmVjdCgpIGFuZCBhZGQgZXh5bm9z
X2J1c19pY2NfZ2V0X3BhcmVudCgpLgo+IAo+IENoYW5nZXMgc2luY2UgdjEgWzRdOgo+ICAtIFJl
YmFzZSBvbiBjb3VwbGVkIHJlZ3VsYXRvcnMgcGF0Y2hlcy4KPiAgLSBVc2UgZGV2X3BtX3Fvc18q
KCkgQVBJIGluc3RlYWQgb2Ygb3ZlcnJpZGluZyBmcmVxdWVuY3kgaW4KPiAgICBleHlub3NfYnVz
X3RhcmdldCgpLgo+ICAtIFVzZSBJRFIgZm9yIG5vZGUgSUQgYWxsb2NhdGlvbi4KPiAgLSBSZXZl
cnNlIG9yZGVyIG9mIG11bHRpcGxpY2F0aW9uIGFuZCBkaXZpc2lvbiBpbgo+ICAgIG1peGVyX3Nl
dF9tZW1vcnlfYmFuZHdpZHRoKCkgKHBhdGNoIDA3KSB0byBhdm9pZCBpbnRlZ2VyIG92ZXJmbG93
Lgo+IAo+IAo+IFJlZmVyZW5jZXM6Cj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTA4NjE3NTcvIChvcmlnaW5hbCBpc3N1ZSkKPiBbMl0gaHR0cHM6Ly93d3cuc3Bpbmlj
cy5uZXQvbGlzdHMvbGludXgtc2Ftc3VuZy1zb2MvbXNnNzAwMTQuaHRtbAo+IFszXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1wbS8yMDE5MTIyMDExNTY1My42NDg3LTEtYS5zd2lnb25A
c2Ftc3VuZy5jb20KPiBbNF0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA1
NDQxNy8gKHYxIG9mIHRoaXMgUkZDKQo+IFs1XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L2NvdmVyLzExMTUyNTk1LyAodjIgb2YgdGhpcyBSRkMpCj4gCj4gCj4gQXJ0dXIgxZp3aWdvxYQg
KDEpOgo+ICAgQVJNOiBkdHM6IGV4eW5vczogQWRkIGludGVyY29ubmVjdHMgdG8gRXh5bm9zNDQx
MiBtaXhlcgo+IAo+IE1hcmVrIFN6eXByb3dza2kgKDEpOgo+ICAgZHJtOiBleHlub3M6IG1peGVy
OiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKPiAKPiBTeWx3ZXN0ZXIgTmF3cm9ja2kgKDQpOgo+
ICAgZHQtYmluZGluZ3M6IGV4eW5vcy1idXM6IEFkZCBkb2N1bWVudGF0aW9uIGZvciBpbnRlcmNv
bm5lY3QgcHJvcGVydGllcwo+ICAgaW50ZXJjb25uZWN0OiBBZGQgZ2VuZXJpYyBpbnRlcmNvbm5l
Y3QgZHJpdmVyIGZvciBFeHlub3MgU29Dcwo+ICAgUE0gLyBkZXZmcmVxOiBleHlub3MtYnVzOiBB
ZGQgcmVnaXN0cmF0aW9uIG9mIGludGVyY29ubmVjdCBjaGlsZAo+ICAgICBkZXZpY2UKPiAgIEFS
TTogZHRzOiBleHlub3M6IEFkZCBpbnRlcmNvbm5lY3QgcHJvcGVydGllcyB0byBFeHlub3M0NDEy
IGJ1cyBub2Rlcwo+IAo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1i
dXMudHh0ICAgICB8ICAxNSArLQo+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kg
ICAgICAgICAgICAgICAgICB8ICAgNiArCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDE3ICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3Mv
ZXh5bm9zX21peGVyLmMgICAgICAgICAgICAgIHwgIDczICsrKysrKystCj4gIGRyaXZlcnMvaW50
ZXJjb25uZWN0L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVy
cy9pbnRlcmNvbm5lY3QvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBk
cml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvS2NvbmZpZyAgICAgICAgICAgICAgICB8ICAgNiAr
Cj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9NYWtlZmlsZSAgICAgICAgICAgICAgIHwg
ICA0ICsKPiAgZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL2V4eW5vcy5jICAgICAgICAgICAg
ICAgfCAxODUgKysrKysrKysrKysrKysrKysrKysrCj4gIDkgZmlsZXMgY2hhbmdlZCwgMzAxIGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2ludGVyY29ubmVjdC9leHlub3MvS2NvbmZpZwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9pbnRlcmNvbm5lY3QvZXh5bm9zL01ha2VmaWxlCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2ludGVyY29ubmVjdC9leHlub3MvZXh5bm9zLmMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
