Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E3199F0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIg11/uzRyWv+sMbiNlinnzt/cY4y1UNfRrWlH1bVEM=; b=aasllTZprHp7Qd
	V3HZvgM7HM4i0x49kVu2ESofM8hv1wvTkcj2LEMi66nAhNFGZV+xjIlNquab7+JlmgcAR8qfTv3xk
	ERuh8UWjyqUD7ylkY+3KfJ6OaWRX2jeEJJgozyqpZKejMkTrhQ72Q0dTm0Di5ZGpGT3tHpxtZUin4
	+prsTXni8WF8B/nxFKfrzUMhLYuhuwEFp1WUdXNH8g9XQRVUJsI02dytWm5kQg1M9bT9VFDfC9g/E
	yn9aWcycSd0TBCX1mV9WT6zPY4rReNA9d9g+0TSbN8ynGPCKjg4Nof4ZM23zjzw8Y/NYj8xUBGf1w
	4k2AV5a+x4bIYNpQZFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMZy-0006kU-J3; Tue, 31 Mar 2020 19:29:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMZo-0006jM-Oc
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 19:29:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200331192930euoutp0219baaa26feb0f157586d2bbe2b302c8a~BekKg4nI40240302403euoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 19:29:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200331192930euoutp0219baaa26feb0f157586d2bbe2b302c8a~BekKg4nI40240302403euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585682970;
 bh=5TcLSchSxIf6i45hOrft2Axtz8VMmsYHHtpuwr3TN4U=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jMR1MNmstoKwLnMD+nt7V3BE2skvMfqgtk5JZ2zi6HcLcDZnx3iCJbu110aeEobgy
 YaHhaNiQSesXFg7vngVpeq4jlWlOHSJ1J04VsfLc4/mGmjaEiZvKGp2X8UCmlK9r82
 03rkbNI26dZ9YCSCP9KrPHGpfdoti6D3q2SnHdQ4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200331192929eucas1p2504d40d75aa7c063b5a79836ecb7c41d~BekJZ9lfG0078800788eucas1p2Z;
 Tue, 31 Mar 2020 19:29:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DF.DA.61286.91A938E5; Tue, 31
 Mar 2020 20:29:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200331192928eucas1p20327aab9f22430820b066fe05e310b51~BekJDHR090078100781eucas1p2h;
 Tue, 31 Mar 2020 19:29:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200331192928eusmtrp2577689e1a37335c321c15922ee7664ac~BekJCekFb2625726257eusmtrp2m;
 Tue, 31 Mar 2020 19:29:28 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-e3-5e839a19d4d7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6B.D6.08375.81A938E5; Tue, 31
 Mar 2020 20:29:28 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200331192928eusmtip19e05c1cd467a4331da0d5e959570b545~BekIVZxgy0318503185eusmtip1V;
 Tue, 31 Mar 2020 19:29:28 +0000 (GMT)
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>, Paul
 Cercueil <paul@crapouillou.net>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <da888000-52b6-b0c6-76ac-8fc535d07a5d@samsung.com>
Date: Tue, 31 Mar 2020 21:29:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <d9fe575926342b355f76e1f38fef62f0d7d38075.camel@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRmVeSWpSXmKPExsWy7djPc7qSs5rjDJ7+5bCYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH0+kUmi/7Fl1gsfhzvY7Zo3XuE3WLKkpnsDtwea+at
 YfRYfamdzWPnrLvsHptWdbJ5bF5S7/F5k1wAWxSXTUpqTmZZapG+XQJXxoJrd9gK2sUqzs9a
 zNbAuFiwi5GTQ0LARGLDsS7GLkYuDiGBFYwSU1Z+YoVwvjBKvLo/lwXC+cwo0Tj9CVAZB1jL
 wxd6EPHljBJH7qxig3DeM0o8XvSIBaRIWMBDYv/zZJAVIgJZEs3/usGmMgtsZ5Jo/riPHSTB
 JmAo0fW2iw3E5hWwk1i/9wYLiM0ioCqxftUcJhBbVCBG4uLhflaIGkGJkzOfgNVwCrhLfOzb
 B1bDLCAv0bx1NjOELS5x68l8JojfbrFLHH3gDWG7SHybeZENwhaWeHV8CzuELSPxfydIPReQ
 3cwo8fDcWnYIp4dR4nLTDEaIKmuJO+d+sYF8xiygKbF+lz4kJBwl3t6UgDD5JG68FYQ4gU9i
 0rbpzBBhXomONiGIGWoSs46vg9t68MIl5gmMSrOQPDYLyTOzkDwzC2HtAkaWVYziqaXFuemp
 xYZ5qeV6xYm5xaV56XrJ+bmbGIEJ6/S/4592MH69lHSIUYCDUYmHt8KmOU6INbGsuDL3EKME
 B7OSCC+bf0OcEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRS9jhQTSE0tSs1NTC1KLYLJMHJxS
 DYzs+s1LHx7xc1ddEKG2vyi4NPNUXNOmhM1P+uZPNQjb83LnUpsNk/e5flpuzOocOV8qJCA2
 sV/SJmS+iF7u8vJ/kxiTol7cFFy09Omt1vD7G2+zPN3fs/P+rVKnXsm/dRWfXWt3GyoEhDMG
 rWmq/DpbWXON9ZLClUu9+14JPnXK/utwM/nh/BAlluKMREMt5qLiRABB9k9WVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xu7oSs5rjDDb+1beYf+Qcq0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH0+kUmi/7Fl1gsfhzvY7Zo3XuE3WLKkpnsDtwea+at
 YfRYfamdzWPnrLvsHptWdbJ5bF5S7/F5k1wAW5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexoJrd9gK2sUqzs9azNbAuFiwi5GDQ0LAROLhC70u
 Ri4OIYGljBLrDlxh7WLkBIrLSJyc1gBlC0v8udbFBlH0llGis3ETG0izsICHxP7nySA1IgJZ
 Ejuef2cCqWEW2M4ksXbTOmaQhJDALWaJvq2MIDabgKFE11uQQZwcvAJ2Euv33mABsVkEVCXW
 r5rDBGKLCsRI/NzTxQJRIyhxcuYTMJtTwF3iY98+sBpmATOJeZsfMkPY8hLNW2dD2eISt57M
 Z5rAKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmCMbjv2c/MO
 xksbgw8xCnAwKvHwVtg0xwmxJpYVV+YeYpTgYFYS4WXzb4gT4k1JrKxKLcqPLyrNSS0+xGgK
 9NxEZinR5Hxg+sgriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cCo
 41Z7aBKLf5Ifh6jK9ZURW84xvo6pfnG7p6rY5qCi0MJftduEqt+frJ5ZMu3B8e/HtsdU/z2w
 ptRz113N/9e0vpxTcDz499Err80hPfvO+QQuKN9lp7hku1TwnE/WnQ49Nq1dRztXbPDZeuWd
 jufnwz1+/JqzZqhGbnirwPDlytp9fpYmc849V2Ipzkg01GIuKk4EAESzMbnnAgAA
X-CMS-MailID: 20200331192928eucas1p20327aab9f22430820b066fe05e310b51
X-Msg-Generator: CA
X-RootMTR: 20200318142549eucas1p1793027850923ebad20b4691cba676671
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200318142549eucas1p1793027850923ebad20b4691cba676671
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
 <X7728Q.UX8A28S31JO92@crapouillou.net>
 <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
 <d9fe575926342b355f76e1f38fef62f0d7d38075.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_122933_000980_7C894C75 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIDIwMjAtMDMtMzEgMTc6MjksIFBhd2XFgiBDaG1pZWwgd3JvdGU6Cj4gT24gVHVlLCAy
MDIwLTAzLTMxIGF0IDE1OjU1ICswMjAwLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+PiBIaSBQ
YXVsLAo+Pgo+PiBPbiAyMDIwLTAzLTMxIDE1OjA5LCBQYXVsIENlcmN1ZWlsIHdyb3RlOgo+Pj4g
Q2M6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KPj4+Cj4+
PiBIaSBNYXJlaywKPj4+Cj4+PiBMZSBtYXIuIDMxIG1hcnMgMjAyMCDDoCA3OjM2LCBNYXJlayBT
enlwcm93c2tpCj4+PiA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPiBhIMOpY3JpdCA6Cj4+Pj4g
SGkgUGF1bCwKPj4+Pgo+Pj4+IE9uIDIwMjAtMDMtMTggMTU6MjUsIFBhdWwgQ2VyY3VlaWwgd3Jv
dGU6Cj4+Pj4+Pj4gICAgKyAgICB9Owo+Pj4+Pj4+ICAgICsKPj4+Pj4+PiAgICArICAgIHRzcF9y
ZWc6IHJlZ3VsYXRvci0xIHsKPj4+Pj4+PiAgICArICAgICAgICBjb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7Cj4+Pj4+Pj4gICAgKyAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiVFNQX0ZJ
WEVEX1ZPTFRBR0VTIjsKPj4+Pj4+PiAgICArICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDwzMzAwMDAwPjsKPj4+Pj4+PiAgICArICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwzMzAwMDAwPjsKPj4+Pj4+PiAgICArICAgICAgICBncGlvID0gPCZncGwwIDMgR1BJT19B
Q1RJVkVfSElHSD47Cj4+Pj4+Pj4gICAgKyAgICAgICAgc3RhcnR1cC1kZWxheS11cyA9IDw3MDAw
MD47Cj4+Pj4+Pj4gICAgKyAgICAgICAgZW5hYmxlLWFjdGl2ZS1oaWdoOwo+Pj4+Pj4+ICAgICsg
ICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+Pj4+Pj4+ICAgICsgICAgICAgIHJlZ3VsYXRvci1h
bHdheXMtb247Cj4+Pj4+PiAgIGFsd2F5cy1vbiBhbmQgYm9vdC1vbiBzaG91bGQgbm90IGJlIG5l
ZWRlZC4gWW91IGhhdmUgYSBjb25zdW1lcgo+Pj4+Pj4gZm9yIHRoaXMKPj4+Pj4+ICAgcmVndWxh
dG9yLgo+Pj4+PiAgIEFib3V0IHRoaXM6IHRoZSB0b3VjaHNjcmVlbiBkcml2ZXIgZG9lcyBub3Qg
dXNlIGEgcmVndWxhdG9yLCBzbyBJCj4+Pj4+ICAgYmVsaWV2ZSB0aGF0J3Mgd2h5IHRoZXNlIHBy
b3BlcnRpZXMgd2VyZSBoZXJlLgo+Pj4+Pgo+Pj4+PiAgIEkgc2VudCBwYXRjaGVzIHVwc3RyZWFt
IHRvIGFkZHJlc3MgdGhlIGlzc3VlOgo+Pj4+PiAgIGh0dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5j
b20vdXJsP2s9ZThhZWRjMjktYjUzMDcyYjMtZThhZjU3NjYtMGNjNDdhMzM2ZmFlLTc1OTU3OWZk
NTc2ZDgzODImdT1odHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzE1Lzk0Cj4+Pj4+Cj4+Pj4+
Cj4+Pj4+ICAgSSBiZWxpZXZlIHRoaXMgbWVhbnMgSSBjYW5ub3QgbWVyZ2UgdGhlIGk5MTAwIGRl
dmljZXRyZWUgdW50aWwgaXQgaXMKPj4+Pj4gICBhY2tlZC4KPj4+PiBPbmUgbW9yZSBpbmZvcm1h
dGlvbiAtIHNpbWlsYXIgY2hhbmdlIGhhcyBiZWVuIGFscmVhZHkgcG9zdGVkLCBidXQgaXQKPj4+
PiBsb29rcyBpdCBnb3QgbG9zdCB0aGVuOiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Bh
dGNoLzEwNTUwOTAzLwo+Pj4gSSB3YXMgYXdhcmUgb2YgdGhpcyBwYXRjaCwgYnV0IGRpZG4ndCBr
bm93IGl0IHdhcyBzZW50IHVwc3RyZWFtLgo+Pj4KPj4+IFRoaXMgb3RoZXIgcGF0Y2ggdXNlcyB0
d28gcmVndWxhdG9ycywgdmRkL2F2ZGQgYnV0IGRvZXNuJ3QgZ2l2ZSBhbnkKPj4+IHJlYXNvbiB3
aHkuCj4+Pgo+PiBJJ3ZlIGNoZWNrZWQgdGhlIFVuaXZlcnNhbEMyMTAgc2NoZW1hdGljLCB3aGlj
aCB1c2VzIHRoZSBzYW1lCj4+IHRvdWNoc2NyZWVuIGNoaXAuIFRoZXJlIGFyZSAyIHN1cHBsaWVz
IHRvIHRoZSB0b3VjaHNjcmVlbiBjaGlwOiAyLjhWIFZERAo+PiBhbmQgMy4zViBBVkRELiBCb3Ro
IGFyZSBlbmFibGVkIGJ5IHRoZSBzYW1lIEdQSU8gcGluIHRob3VnaC4gVGhlcmUgaXMKPj4gaG93
ZXZlciBubyByZXNldCBHUElPIHBpbiB0aGVyZS4KPiBIaQo+IERvbid0IHJlbWVtYmVyIG5vdyBo
b3cgaXQgd29ya2VkIG9uIEdhbGF4eSBTMSwgYnV0IGl0IGxvb2tzIGxpa2UgaXQgaGFzCj4gdGhl
IHNhbWUgc2V0dXAgLSB0d28gcmVndWxhdG9ycyBlbmFibGVkIGJ5IG9uZSBHUElPIHBpbi4KCkl0
IGlzIHF1aXRlIGNvbW1vbiBmb3IgdGhlIHJlZ3VsYXRvcnMgdG8gc2hhcmUgdGhlIGVuYWJsZSBH
UElPIGxpbmUsIHNvIAp0aGlzIGlzIG5vdCBhbiBpc3N1ZS4gUmVndWxhdG9yIGZyYW1ld29yayBz
dXBwb3J0cyBzdWNoIGNvbmZpZ3VyYXRpb24gCmZvciBhZ2VzLiBJJ20gY3VyaW91cyBhYm91dCB0
aGUgcmVzZXQgR1BJTyBsaW5lLCB3aGljaCB3ZXJlIG1hZGUgCm1hbmRhdG9yeSBmb3IgdGhlIHJl
Z3VsYXRvcnMgY29udHJvbCBpbiB5b3VyIHBhdGNoLiBJIGRpZG4ndCBmaW5kIGl0IG9uIAphbnkg
c2NoZW1hdGljIG9mIHRoZSBkZXZpY2VzIHdpdGggdGhpcyB0b3VjaCBzY3JlZW4sIGJ1dCBJIGRv
bid0IGhhdmUgYSAKc2NoZW1hdGljIG9mIHRoZSBHYWxheHkgUzEuIElNSE8gdGhlIHJlc2V0IHNp
Z25hbCBpcyBzaW1wbHkgZGVyaXZlZCBmcm9tIAp0aGUgc3VwcGx5IHJlZ3VsYXRvcnMgd2l0aCBz
b21lIHNpbXBsZSBjaXJjdWl0LCBidXQgSSBkb24ndCBoYXZlIApzY2hlbWF0aWMgb2YgdGhhdCBw
YXJ0LgoKQmVzdCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQg
SW5zdGl0dXRlIFBvbGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
