Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A7991A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crtfG4AVq83SceR5IQKZpMivQDJCng1RimTPSx36Lqk=; b=Mx1cUCR0IWYZNY
	i5pGJeqMbbwYtBVhiQynhbBH2bEaQSrBwrxE/edmHyWWDyXYE7qnRgs4KzGMcsRbSuOSGDxz6frld
	J0vjqAa6mqR/jcyfLBOgth2TlsCArphSI0hbIRyNhVGGJcv6TsI99RSNwJG/pyxyG5SVdXiSFkkkC
	pR9f0IvoVczc8bPxui0Ln8wvujGnELLUQPLxT2NQGxUtO3L33DMBRnTsfPdRu55kN2b7JYMpmdMyp
	WGEd8VB+BBxKHfolSuRNVGS26KMRpsPrIO8S63jaKNskRGlLK1XSKawHYP+SCH98PlUlH11qAQlDK
	TT+ztF1Ib0t/2HiqNX9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kvd-0002AE-MP; Thu, 22 Aug 2019 11:06:53 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kvQ-00029j-1A
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:06:41 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190822110635epoutp04a2ddd08165287f9ab7d7addb1f5374d8~9Ofr5SPc92228522285epoutp04G
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 11:06:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190822110635epoutp04a2ddd08165287f9ab7d7addb1f5374d8~9Ofr5SPc92228522285epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566471995;
 bh=TAoKfGBQpqWLoUvIFbA8wZ6nWF6kfhBScSiKNEYhBiE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=DtB5kOFR5DlJtSLj5Eu+GhIIS0ZAzy4hTIMmuR2dEhWztbDT6fpp0kQ3YxyWSUS41
 u3a2V2nFrwVnm/z4fmPFE3AMLEc3deBq7kOQmOi28RG9uOxDc0AO0W8W6sPWZ9MFhy
 MRNfo5vSu4U9Uos+1O1WmJeX9q+4bHYJEVghEiqc=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190822110634epcas1p2b8a5872bc9f1c97a77c71be029c58bf8~9OfrXCRJa2560525605epcas1p2V;
 Thu, 22 Aug 2019 11:06:34 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46DhYN5SNlzMqYkh; Thu, 22 Aug
 2019 11:06:32 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 3C.9A.04085.8377E5D5; Thu, 22 Aug 2019 20:06:32 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190822110632epcas1p42a10918858f147261f07c0e51c7ae907~9Ofo55jSL0654606546epcas1p4Q;
 Thu, 22 Aug 2019 11:06:32 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190822110632epsmtrp1a6dacf92ef708b814e8b805cbe090340~9Ofo5Atjd0142401424epsmtrp1Q;
 Thu, 22 Aug 2019 11:06:32 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-ba-5d5e7738f37c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6F.B3.03638.8377E5D5; Thu, 22 Aug 2019 20:06:32 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190822110632epsmtip1afbecc74250951fc3972a8b7b3504f13~9OfoqwDfm2504525045epsmtip1_;
 Thu, 22 Aug 2019 11:06:32 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <4bdc0742-42ab-1ab6-4868-409eb9738cd8@samsung.com>
Date: Thu, 22 Aug 2019 20:10:11 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023D551332373BE98CA60E8EEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMJsWRmVeSWpSXmKPExsWy7bCmga5FeVysQcspbYtDx7ayW3w9fYrR
 4uUhTYvpezexWZw/v4Hd4mzTG3aLFXc/slpsenyN1eJz7xFGi9uNK9gsVp87yGbRdegvm8XG
 rx4OvB7vb7SyeyzYVOqxaVUnm8eda3vYPDYvqffY+G4Hk8fBd3uYPPq2rGL0+LxJLoAzKtsm
 IzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX0NLCXEkhLzE31VbJxSdA1y0zB+hoJYWyxJxS
 oFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6BZYFecWJucWleul5yfq6VoYGBkSlQYUJ2xqKv
 u5kKtqhVzPtc0cC4QL6LkZNDQsBE4vHsa8xdjFwcQgI7GCWmNlxlhXA+MUq8e7mPEcL5xiix
 pus5O0zLxAXTmSASexklGg5uZoFw3jNKPNl0ECjDwSEsECgxe1caSFxEYC2jxOT588DmMgsc
 ZZY4taqPGWQUm4CWxP4XN9hAbH4BRYmrPx4zgti8AnYSd+dMZwGxWQRUJV7cnQFWLyoQIfHp
 wWFWiBpBiZMzn4DVcArESuz8+wjsPGYBcYlbT+YzQdjyEs1bZzNDnL2JXeJzdz2E7SLRfv4J
 G4QtLPHq+Bao16QkXva3QdnVEitPHmEDOVpCoINRYsv+C6wQCWOJ/Usng33JLKApsX6XPkRY
 UWLn77mMEDavRMPG31D38Em8+9rDClIOEu9oE4IoUZa4/OAu0wRG5VlIvpmF5INZSD6YhbBs
 ASPLKkax1ILi3PTUYsMCU+TY3sQITtBaljsYj53zOcQowMGoxMM7QTc2Vog1say4MvcQowQH
 s5IIb8WcqFgh3pTEyqrUovz4otKc1OJDjKbAwJ7ILCWanA/MHnkl8YamRsbGxhYmhmamhoZK
 4rwLf1jECgmkJ5akZqemFqQWwfQxcXBKNTCmXtv6cfc59eUcUwV8v5+1Ul5+9MS00tlM0k3r
 Fj4SmjWB+3+2zpTzX/nPGxocCN+dyFpbeS7mSa3PMqvot4xrDzo4FPv+na+wPlHcIzf+aqpy
 tN8SVmbD2dtD95r6Cq6UXSAuF6S55f+eZP6KznJdw1mpPBZ3rGSzfd9XcHWlS05boW7E06HE
 UpyRaKjFXFScCADbVCuz5gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDIsWRmVeSWpSXmKPExsWy7bCSnK5FeVyswYKTnBaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8Xn3iOMFrcbV7BZrD53kM2i69BfNouN
 Xz0ceD3e32hl91iwqdRj06pONo871/aweWxeUu+x8d0OJo+D7/YwefRtWcXo8XmTXABnFJdN
 SmpOZllqkb5dAlfGoq+7mQq2qFXM+1zRwLhAvouRk0NCwERi4oLpTF2MXBxCArsZJVY9msYK
 kZCUmHbxKHMXIweQLSxx+HAxRM1bRontfyYygsSFBQIlZu9KAykXEVjPKNFzxh/EZhY4yiyx
 a00yRP0nIPvpHGaQBJuAlsT+FzfYQGx+AUWJqz8eM4LYvAJ2EnfnTGcBsVkEVCVe3J0BVi8q
 ECFxeMcsqBpBiZMzn4DVcArESuz8+4gdYpm6xJ95l5ghbHGJW0/mM0HY8hLNW2czT2AUnoWk
 fRaSlllIWmYhaVnAyLKKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM4TrW0djCeOBF/
 iFGAg1GJh3eCbmysEGtiWXFl7iFGCQ5mJRHeijlRsUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 5fOPRQoJpCeWpGanphakFsFkmTg4pRoYzYWYQ1NkXj61/uJQwxMWzJf0SHtjzN/E+bMrGM4/
 TdnAK2F7i1nbqC08zfDss4nbhU7P+nHvz/vthTM2OO/Y9nsWZ4TPDo01b9x+bVg5nSsneGP6
 /tYtfjOlzk3ist5bXH40duf7ZnYNxtApFvkh3ad69DUiUvwEP9SJmjPsdj+0kClZ/VSzEktx
 RqKhFnNRcSIAHMRXcM8CAAA=
X-CMS-MailID: 20190822110632epcas1p42a10918858f147261f07c0e51c7ae907
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152411epcas4p33e2ef4d271ddd82a4401c0286b53d2f1@epcas4p3.samsung.com>
 <af14021b98254032e856397b54329756c1cc59c0.1566314535.git.leonard.crestez@nxp.com>
 <e2ba9b0d-1930-0d2a-c262-72f0f85c86d0@samsung.com>
 <VI1PR04MB7023A7AC7DDE349BF6D2D2C9EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <921d9eb8-aa38-6e67-ac2e-55e01bf630f5@samsung.com>
 <VI1PR04MB7023D551332373BE98CA60E8EEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_040640_316756_2F04E4E7 
X-CRM114-Status: GOOD (  26.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDIyLiDsmKTtm4QgNzo1OCwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE9uIDgv
MjIvMjAxOSAxOjAzIFBNLCBDaGFud29vIENob2kgd3JvdGU6Cj4+IE9uIDE5LiA4LiAyMS4g7Jik
7ZuEIDEwOjAzLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBPbiAyMS4wOC4yMDE5IDA1OjAy
LCBDaGFud29vIENob2kgd3JvdGU6Cj4+Pj4gT24gMTkuIDguIDIxLiDsmKTsoIQgMTI6MjQsIExl
b25hcmQgQ3Jlc3RleiB3cm90ZToKPj4+Pj4gTm93IHRoYXQgZGV2ZnJlcSBzdXBwb3J0cyBkZXZf
cG1fcW9zIHJlcXVlc3RzIHdlIGNhbiB1c2UgdGhlbSB0byBoYW5kbGUKPj4+Pj4gdGhlIG1pbi9t
YXhfZnJlcSB2YWx1ZXMgc2V0IGJ5IHVzZXJzcGFjZSBpbiBzeXNmcywgc2ltaWxhciB0byBjcHVm
cmVxLgo+Pj4+Pgo+Pj4+PiBTaW5jZSBkZXZfcG1fcW9zIGhhbmRsZXMgZnJlcXVlbmNpZXMgYXMg
a0h6IHRoaXMgY2hhbmdlIHJlZHVjZXMgdGhlCj4+Pj4+IHByZWNpc2lvbiBvZiBtaW5fZnJlcSBh
bmQgbWF4X2ZyZXEuIFRoaXMgc2hvdWxkbid0IGludHJvZHVjZSBwcm9ibGVtcwo+Pj4+PiBiZWNh
dXNlIGZyZXF1ZW5jaWVzIHdoaWNoIGFyZSBub3QgYW4gaW50ZWdlciBudW1iZXIgb2Yga0h6IGFy
ZSBsaWtlbHkKPj4+Pj4gbm90IGFuIGludGVnZXIgbnVtYmVyIG9mIEh6IGVpdGhlci4KPj4+Pj4K
Pj4+Pj4gVHJ5IHRvIGVuc3VyZSBjb21wYXRpYmlsaXRpdHkgYnkgcm91bmRpbmcgbWluIHZhbHVl
cyBkb3duIGFuZCByb3VuZGluZwo+Pj4+PiBtYXggdmFsdWVzIHVwLgo+Pj4+Pgo+Pj4+PiBTaW1w
bGlmeSB0aGUge21pbixtYXh9X2ZyZXFfc3RvcmUgY29kZSBieSBzZXR0aW5nICJudWxsIiB2YWx1
ZXMgb2YgMCBhbmQKPj4+Pj4gTUFYX1MzMiByZXNwZWN0aXZlbHkgaW5zdGVhZCBvZiBjbGFtcGlu
ZyB0byB3aGF0IGZyZXEgdGFibGVzIGFyZQo+Pj4+PiBhY3R1YWxseSBzdXBwb3J0ZWQuIFZhbHVl
cyBhcmUgYWxyZWFkeSBhdXRvbWF0aWNhbGx5IGNsYW1wZWQgb24KPj4+Pj4gcmVhZGJhY2suCj4+
Pj4+Cj4+Pj4+IEFsc28gc2ltcGxpZnkgYnkgZHJvcGluZyB0aGUgbGltaXRhdGlvbiB0aGF0IHVz
ZXJzcGFjZSBtaW5fZnJlcSBtdXN0IGJlCj4+Pj4+IGxvd2VyIHRoYW4gdXNlcnNwYWNlIG1heF9m
cmVxLCBpdCBpcyBhbHJlYWR5IGRvY3VtZW50ZWQgdGhhdCBtYXhfZnJlcQo+Pj4+PiB0YWtlcyBw
cmVjZWRlbmNlLgo+Pj4+Pgo+Pj4+PiBAQCAtMTM1OCwzMyArMTM3MSwyMCBAQCBzdGF0aWMgc3Np
emVfdCBtaW5fZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlICphdHRyLAo+Pj4+PiAgICAKPj4+Pj4gICAgCXJldCA9IHNzY2FuZihidWYsICIlbHUi
LCAmdmFsdWUpOwo+Pj4+PiAgICAJaWYgKHJldCAhPSAxKQo+Pj4+PiAgICAJCXJldHVybiAtRUlO
VkFMOwo+Pj4+PiAgICAKPj4+Pj4gLQltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+Pj4+IC0KPj4+
Pj4gLQlpZiAodmFsdWUpIHsKPj4+Pj4gLQkJaWYgKHZhbHVlID4gZGYtPm1heF9mcmVxKSB7Cj4+
Pj4+IC0JCQlyZXQgPSAtRUlOVkFMOwo+Pj4+PiAtCQkJZ290byB1bmxvY2s7Cj4+Pj4+IC0JCX0K
Pj4+Pgo+Pj4+IEFjdHVhbGx5LCB0aGUgdXNlciBjYW4gaW5wdXQgdGhlIHZhbHVlIHRoZXkgd2Fu
dC4KPj4+PiBTbywgdGhlIGFib3ZlIGNvZGUgaXMgbm90IG5lY2Vzc2FyeSBiZWNhdXNlIHRoZSBk
ZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxCj4+Pj4gaXMgbmV2ZXIgb3ZlcmZsb3cgZnJvbSBzdXBw
b3J0ZWQgbWF4aW11bSBmcmVxdWVuY3kuIFRoZSBkZXZmcmVxLT5zY2FsaW5nX21heF9mcmVxCj4+
Pj4gaXMgYmFzZWQgb24gT1BQIGVudHJpZXMgZnJvbSBEVC4KPj4+Pgo+Pj4+IEJ1dCwgaWYgd2Ug
cmVwbGFjZSB0aGUgZXhpc3RpbmcgcmVxdWVzdCB3YXkgb2YgZGV2ZnJlcS1jb29saW5nLmMKPj4+
PiB3aXRoIGRldl9wbV9xb3MsIGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEgZG9lc24ndCBndWFy
YW50ZWUKPj4+PiB0aGUgc3VwcG9ydGVkIG1heGltdW0gZnJlcXVlbmN5LiA+Cj4+Pj4gV2UgbmVl
ZCB0byBrZWVwIHRoZSBzdXBwb3J0ZWQgbWluX2ZyZXEvbWF4X2ZyZXEgdmFsdWUgd2l0aG91dCBk
ZXZfcG1fcW9zCj4+Pj4gcmVxdWlyZW1lbnQgYmVjYXVzZSB0aGUgZGV2X3BtX3FvcyByZXF1aXJl
bWVudCBtaWdodCBoYXZlIHRoZSBvdmVyZmxvdyB2YWx1ZS4KPj4+PiB0aGUgZGV2X3BtX3FvcyBk
b2Vzbid0IGtub3cgdGhlIHN1cHBvcnRlZCBtaW5pbXVtIGFuZCBtYXhpbXVtIGZyZXF1ZW5jeQo+
Pj4+IG9mIGRldmZyZXEgZGV2aWNlLgo+Pj4KPj4+IEknbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQg
d2hhdCB5b3UgbWVhbi4gTXkgcGF0Y2ggYWxsb3dzIHVzZXIgdG8gc2V0Cj4+PiBlbnRpcmVseSBh
cmJpdHJhcnkgbWluL21heCByYXRlcyBhbmQgdGhpcyBpcyBnb29kIGJlY2F1c2Ugd2UgYWxyZWFk
eQo+Pj4gaGF2ZSBhIHdlbGwtZGVmaW5lZCB3YXkgdG8gaGFuZGxlIHRoaXM6IG1heCBvdmVycmlk
ZXMgbWluLgo+Pj4KPj4+IFRoZSBzY2FsaW5nX21pbl9mcmVxIGFuZCBzY2FsaW5nX21heF9mcmVx
IHZhcmlhYmxlcyBjYW4ganVzdCBiZSBrZXB0Cj4+PiBhcm91bmQgaW5kZWZpbml0ZWx5IG5vIG1h
dHRlciB3aGF0IGhhcHBlbnMgdG8gdGhlcm1hbC4gVGhleSdyZSBqdXN0IGEKPj4+IGNhY2hlIGZv
ciBkZXZfcG1fb3BwX2ZpbmRfZnJlcV9jZWlsIGFuZCBkZXZfcG1fb3BwX2ZpbmRfZnJlcV9mbG9v
ci4KPj4KPj4gVGhpcyBwYXRjaCBkb2Vzbid0IGNoZWNrIHRoZSByYW5nZSBvZiBpbnB1dCB2YWx1
ZQo+PiB3aXRoIHRoZSBzdXBwb3J0ZWQgZnJlcXVlbmNpZXMgb2YgZGV2ZnJlcSBkZXZpY2UuCj4+
Cj4+IEZvciBleGFtcGxlLAo+PiBUaGUgZGV2ZnJlcTAgZGV2aWNlIGhhcyB0aGUgZm9sbG93aW5n
IGF2YWlsYWJsZSBmcmVxdWVuY2llcwo+PiAxMDAwMDAwMDAgMjAwMDAwMDAwIDMwMDAwMDAwMAo+
Pgo+PiBhbmQgdGhlbiB1c2VyIGVudGVycyB0aGUgNTAwMDAwMDAwIGFzIGZvbGxvd2luZzoKPj4g
ZWNobyA1MDAwMDAwMDAgPiAvc3lzL2NsYXNzL2RldmZyZXEvZGV2ZnJlcTAvbWluX2ZyZXEKPj4K
Pj4gSW4gcmVzdWx0LCBnZXRfZWZmZWN0aXZlX21pbl9mcmVxKCkgd2lsbCByZXR1cm4gdGhlIDUw
MDAwMDAwMC4KPj4gSXQgaXMgd3JvbmcgdmFsdWUuIGl0IHNob3cgdGhlIHVuc3VwcG9ydGVkIGZy
ZXF1ZW5jeSB0aHJvdWdoCj4+IG1pbl9mcmVxIHN5c2ZzIHBhdGguCj4gCj4gVGhyb3VnaCBkZXZf
cG1fcW9zIGRldmljZXMgY2FuIGFsc28gYXNrIGZvciBhIGZyZXEgaGlnaGVyIHRoYW4gdGhlIAo+
IG1heGltdW0gT1BQIGFuZCB1bmxpa2Ugc3lzZnMgdGhlcmUgaXMgbm8gd2F5IHRvIHJlamVjdCBz
dWNoIHJlcXVlc3RzLCAKPiBpbnN0ZWFkIFBNIHFvcyBjbGFpbXMgaXQncyBiYXNlZCBvbiAiYmVz
dCBlZmZvcnQiLgo+IAo+IFRoZXJlIGFyZSBtYW55IHJlcXVlc3RzIGluIHRoZSBrZXJuZWwgZm9y
ICJQTV9RT1NfQ1BVX0RNQV9MQVRFTkNZIDAiIGFuZCAKPiBJIHRoaW5rIHRoYXQgREVWX1BNX1FP
U19NSU5fRlJFUVVFTkNZLCBNQVhfUzMyIGlzIGEgcmVhc29uYWJsZSB3YXkgZm9yIGEgCj4gZGV2
aWNlIHRvIHJlcXVlc3QgIm1heCBwZXJmb3JtYW5jZSIgZnJvbSBkZXZmcmVxLgo+IAo+IFJlamVj
dGluZyBtaW4gPiBtYXggaXMgY29tcGxpY2F0ZWQgKHdoYXQgaGFwcGVucyB0byByZWplY3RlZCBy
ZXF1ZXN0cyAKPiB3aGVuIG1heCBnb2VzIGJhY2sgdXA/KSBhbmQgSSB0aGluayBpdCdzIGJldHRl
ciB0byBqdXN0IHN0aWNrIHdpdGggYSAKPiAibWF4IG92ZXJyaWRlcyBtaW4iIHBvbGljeSBzaW5j
ZSBpdCBjYW4gYWxyZWFkeSBkZWFsIHdpdGggY29uZmxpY3RzLgo+IAo+IERvIHlvdSBoYXZlIGEg
dXNlY2FzZSBmb3IgcmVqZWN0aW5nIG91dC1vZi1yYW5nZSBtaW5fZnJlcSBmcm9tIAo+IHVzZXJz
cGFjZT8gY3B1ZnJlcSBhbHNvIGFjY2VwdHMgYXJiaXRyYXJ5IG1pbi9tYXggdmFsdWVzIGFuZCBo
YW5kbGVzIHRoZW0uCgpJIGRvbid0IG1lYW4gdGhlIHJlamVjdGluZyB3aGVuIHVzZXIgZW50ZXIg
dGhlIG91dC1vZi1yYW5nZSBmcmVxdWVuY3kuCkFzIEkgY29tbWVudGVkLCB1c2VyIGNhbiBlbnRl
ciB0aGUgdmFsdWUgdGhleSB3YW50LiBCdXQsIHdlIHNob3VsZApjaGVjayB0aGUgcmFuZ2Ugb2Yg
aW5wdXQgYmVjYXVzZSBkZXZmcmVxIGhhdmUgdG8gc2hvdyB0aGUgY29ycmVjdCBzdXBwb3J0ZWQK
ZnJlcXVlbmN5IHRocm91Z2ggc3lzZnMuCgo+IAo+IEluIHRoZW9yeSBwbV9xb3MgY291bGQgYmUg
ZXh0ZW5kZWQgdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuICJzb2Z0IiAKPiByZXF1ZXN0cyAoY3Vy
cmVudCBiZWhhdmlvcikgYW5kICJoYXJkIiByZXF1ZXN0cyB3aGljaCByZXR1cm4gZXJyb3JzIGlm
IAo+IHRoZXkgY2FuJ3QgYmUgZ3VhcmFudGVlZCBidXQgdGhpcyBpcyBmYXIgb3V0IG9mIHNjb3Bl
LgoKSSB0aGluayB0aGF0IHlvdSBhZ3JlZWQgdGhlIGxpbWl0YXRpb24gb2YgZGV2X3BtX3FvcyB3
aGVuIGVudGVyaW5nCm9yIHJlcXVlc3RpbmcgdGhlIHVuc3VwcG9ydGVkIGZyZXF1ZW5jeS4KClVu
dGlsIGZpeGluZyBpdCBvbiBkZXZfcG1fcW9zLCBpdCBoYXZlIHRvIGJlIGhhbmRsZWQgb24gY29u
c3VtZXIKbGlrZSBkZXZmcmVxLiBJIHRoaW5rIHRoYXQgZ2V0X21pbl9mcmVxKCkgYW5kIGdldF9t
YXhfZnJlcSgpIGhhdmUKdG8gY2hlY2sgdGhlIHJhbmdlIG9mIHJldHVybiB2YWx1ZSBvZiBkZXZf
cG1fcW9zX3JlYWRfdmFsdWUoKS4KCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ft
c3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
