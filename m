Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD391FA564
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 03:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKG1dkFNgVvTj8ZQxTe4iWqVaqNyhpwje8O51Ywfxxo=; b=aftLrFE399lIZU
	yfBvVHZSMO1gPJeNwVySARpMIXxAuzTpPtK2J3AC2DSWXR4Gfnei7JsCU8O4VLNBPFZ4vvkTUfeyb
	3mmvDu3XhqIBZ/MUnHeSTZxicXxXOX1Ipio8qVjAoJ0DOJnGZoj0fQZWNX665VZRMrvawPhthznxT
	z3vykNZP7QHu8zcQI/EKPqRQ4nY45J85K30if68W3WRpJkSicg+p7O0rxqHzBfKKWBjWkOv/XP5c0
	1+1jl6jRg1QTU44XD29RN2h+PmyXVsGUtihbbeJZT+hu4kuZeup4FCzSXF6ZoAaZy/zpIvS0Tzil3
	HURXyMi7TeH0ZO54nJEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl052-0000qB-9y; Tue, 16 Jun 2020 01:08:00 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl04t-0000p9-Vr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 01:07:54 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200616010746epoutp0319b7fd8288fc342b746f6b502060e385~Y4NNSCg111766917669epoutp03N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:07:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200616010746epoutp0319b7fd8288fc342b746f6b502060e385~Y4NNSCg111766917669epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592269666;
 bh=gnY88RXOssvH5Xww17ErLswdrAfp00DoI8np6JeQBP8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ZKwZ/ZSUVspFfwwzAi713C12OqiW+Cgqz8oPM5CBTl9C31U6eAvosaqU5+X5LeNN3
 SNt0Mhs9W2vszvRpgfqXXsP+j+rrxivr70JUye0m4GNXjhq2wE5mlcKrAqyZDVCqee
 4fgwkR6tp1+ZgbkIPgpsrE+AzJt5yz2C9Ycbim3c=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200616010745epcas1p4647c4e2c103bb2a0f75f04a7ebb33d5d~Y4NMGTenh1149011490epcas1p4B;
 Tue, 16 Jun 2020 01:07:45 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49m96R35ZHzMqYlt; Tue, 16 Jun
 2020 01:07:43 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 02.30.28581.F5B18EE5; Tue, 16 Jun 2020 10:07:43 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200616010742epcas1p2b477f89fb10453e26d1f66744cc3ff4e~Y4NJ9SDyA0868708687epcas1p24;
 Tue, 16 Jun 2020 01:07:42 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200616010742epsmtrp206a398268b6ee10f5a027e331d45f31d~Y4NJ7y7GB2348323483epsmtrp2d;
 Tue, 16 Jun 2020 01:07:42 +0000 (GMT)
X-AuditID: b6c32a38-2e3ff70000006fa5-29-5ee81b5f1d8d
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 18.91.08382.E5B18EE5; Tue, 16 Jun 2020 10:07:42 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200616010742epsmtip17295d77c48794ab76c150fbe260e959a~Y4NJmFhWK0736907369epsmtip1q;
 Tue, 16 Jun 2020 01:07:42 +0000 (GMT)
Subject: Re: [PATCH v2] drm/exynos: fix ref count leak in mic_pre_enable
To: Navid Emamdoost <navid.emamdoost@gmail.com>, Joonyoung Shim
 <jy0922.shim@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin
 Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <ece0b0bb-43d6-0e8e-3fcd-280dac6cd07f@samsung.com>
Date: Tue, 16 Jun 2020 10:13:23 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200615054928.55188-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TfUwTZxzOe9deryTdjvr1Wpnisf0BC5RC6w7Hh4mEnOIS1Iw4k7UccKGM
 0nZtYTgxKzIY1iEUguOjTNhQsDLmmEMgMEJFWmSCDnECA9xgCJsTUwL7wLm1Hmb89/ye93ne
 3+95P3BU/CMmwdO1JtagZTQk5sNruxYoDVZtm1eG3mjcTBUPDSDUv21WlLqzvIhRc3mf8Kn5
 qds8qmTmN5RyfXpTQA0PXxZQN08+FFCtM3f51EinDaMqh79FKMsXhShVPNCOUpXlCxhVfD0P
 20PQN8x1GN29UsejO6onBXSr/RRGX125z6enTzsR+uuGD+gzV+yAHq0/KaCXWrcn+BzNiFSz
 TCpr8Ge1KbrUdG1aFBl/WLVXpdgVKguWRVCvkf5aJpONImMPJATHpWs8WUj/bEaT5aESGKOR
 lEZHGnRZJtZfrTOaokhWn6rRR+hDjEymMUubFpKiy9wtCw0NU3iESRnqqnoXph/Bc7rKQszA
 LLAAIQ4JOXR9NYpZgA8uJtoBtHQVoFzhBnC0dhThihUAf+q0os8tY/XjAm6hG8CRMdeaZRHA
 ttOFwAJwfANBwyZrnJffSLhQWDc0j3l5lNgHS8ck3o0w4hVobZrGvFhERMO+fCvfi3kefrVz
 HvXKNxFH4OAyw0l84UDVLM+LhUQM7KsoRLwYJbbA8dlza3gHzP+m5tk4kHiMw6GuKoQbOhYW
 OSb4HN4Af3VeWcsvgUuPujHOkA+gtXIQ4YoiACdnfuBxqnDYc74c4QIEwi87pRy9E3as1gKu
 8wvw0fLHfK8EEiJYVCjmJCTsv30PcBjCWw1WjMM0fHjNCUrBzup12arX5alel6f6/8Z1gGcH
 m1m9MTONNcr08vWX3QqePfMgqh3U/v44xAEQHDgAxFFyo8ix44FSLEpljr3PGnQqQ5aGNTqA
 wnPYVlSyKUXn+Sdak0qmCAsPD6fksl0KmYzcIhrYfUspJtIYE5vBsnrW8NyH4EKJGal4/dS0
 223r4JccTV+dK/9MWqaPnPW9jEuPm5VnzwUMKbJ9p2xPerfmZvf1y/8Oak65OFFxX9EQs3gx
 +sBCQO4Z0Phyc8KFooncnPP3TvxpGxk0Px2nhS5Gqc5x5jW1NB1yz02/uV2UxIjI9wjmSM9f
 5ruHWsylNWxWy5TToFK/8fNHmQVuYunOO2yeXECWJMe0fj9x1t9UOtofL8e6tj251Ft7nZCK
 0T3i5kuJlD0jYGtQTahwQS558dgffquHk37peSsq8WniP5P2Asl4cuN3yrer4l6yhxWX7bsa
 m3xw4PPjZSd6X1U21NYc/NAtjV951684cK8tgj9se2C6IPTbT/KMakYWhBqMzH/HoD6fbwQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSnG6c9Is4g95duha9504yWfzfNpHZ
 4srX92wWzxqns1q8uHeRxaL/8WtmixPzzrJbnD+/gd3ibNMbdotNj6+xWlzeNYfNYsb5fUwW
 XWvbmC16T+5gtpgx+SWbRe/RRjYHAY9TDQvYPPZ+W8DisXPWXXaPTas62Ty2f3vA6nG/+ziT
 x+Yl9R59W1Yxelxd2MTu8XmTXABXFJdNSmpOZllqkb5dAlfGzIUn2Aouc1TsmaTXwNjA3sXI
 ySEhYCJxc+EtMFtIYDejxNR39V2MHEBxCYktWzkgTGGJw4eLuxi5gCreMkrc+v+GDSQuLOAh
 sWKiG0hcROAUs8S27U+YQOLMAp4SE25KQdQfZ5TYuOY6E8h4NgFViYkr7rOB2LwCdhJHmiey
 gtgsQPHfu14wg9iiAhESz7ffYISoEZQ4OfMJC4jNKWAvcWRqG9gcZgF1iT/zLjFD2OISt57M
 h4rLSzRvnc08gVFoFpL2WUhaZiFpmYWkZQEjyypGydSC4tz03GLDAsO81HK94sTc4tK8dL3k
 /NxNjODI1dLcwbh91Qe9Q4xMHIyHGCU4mJVEeA/JP48T4k1JrKxKLcqPLyrNSS0+xCjNwaIk
 znujcGGckEB6YklqdmpqQWoRTJaJg1Oqgelwc79WR0baCnadj6Hp6uee/+i7961m9qVwhbfM
 KTve777LdPjvt6InQd9+6C58LFXg8uHPJebweJ9k5WdNz/6fVL34LHfzj7Dlbg3y/It0z6T9
 v3LJw1FRbHmvScm7qQ8Tn24J4jRYHjpxMhdDjcj8xrsWfAt//ONrWVt+8KjKTc0ExvYatglK
 9l1fNxyvSN3+PVM8LE1zQu3lMvV0heM7ZZ9Nsdm/TfekgG7sV7uYNzM/Tb3WGunLdYwxOOTB
 aZVdh8Q4PF/w9v59ytu1xaidc+qNnlPLBFkPVm84oS7VYXxEqeuOnd0kDU6hG7s4F7zm2HVc
 /+Vt0d/79m76znsoyU/qrknhmh2fNhTH5r9RYinOSDTUYi4qTgQAArHWaEsDAAA=
X-CMS-MailID: 20200616010742epcas1p2b477f89fb10453e26d1f66744cc3ff4e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200615054950epcas1p3f266ec99c3608f49f733644d8cd41c1a
References: <027d9eb5-a1c1-c329-72c3-a555b71f8677@samsung.com>
 <CGME20200615054950epcas1p3f266ec99c3608f49f733644d8cd41c1a@epcas1p3.samsung.com>
 <20200615054928.55188-1-navid.emamdoost@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_180753_085994_31AF7A6D 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mccamant@cs.umn.edu, emamd001@umn.edu, kjlu@umn.edu, wu000273@umn.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgoyMC4gNi4gMTUuIOyYpO2bhCAyOjQ57JeQIE5hdmlkIEVtYW1kb29zdCDsnbQo6rCAKSDsk7Qg
6riAOgo+IGluIG1pY19wcmVfZW5hYmxlLCBwbV9ydW50aW1lX2dldF9zeW5jIGlzIGNhbGxlZCB3
aGljaAo+IGluY3JlbWVudHMgdGhlIGNvdW50ZXIgZXZlbiBpbiBjYXNlIG9mIGZhaWx1cmUsIGxl
YWRpbmcgdG8gaW5jb3JyZWN0Cj4gcmVmIGNvdW50LiBJbiBjYXNlIG9mIGZhaWx1cmUsIGRlY3Jl
bWVudCB0aGUgcmVmIGNvdW50IGJlZm9yZSByZXR1cm5pbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TmF2aWQgRW1hbWRvb3N0IDxuYXZpZC5lbWFtZG9vc3RAZ21haWwuY29tPgo+IC0tLQo+IENoYW5n
ZXMgaW4gdjI6Cj4gCS0gcmV1c2UgdGhlIHVubG9jayBsYWJlbCBhbmQgY2FsbCBwbV9ydW50aW1l
X3B1dF9ub2lkbGUKClBpY2tlZCBpdCB1cC4KClRoYW5rcywKSW5raSBEYWUKCj4gLS0tCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9taWMuYyB8IDQgKysrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9taWMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9taWMuYwo+IGluZGV4IGE4NmFiYzE3MzYwNS4uMzgy
MWVhNzZhNzAzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2Ry
bV9taWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9taWMuYwo+
IEBAIC0yNjksOCArMjY5LDEwIEBAIHN0YXRpYyB2b2lkIG1pY19wcmVfZW5hYmxlKHN0cnVjdCBk
cm1fYnJpZGdlICpicmlkZ2UpCj4gIAkJZ290byB1bmxvY2s7Cj4gIAo+ICAJcmV0ID0gcG1fcnVu
dGltZV9nZXRfc3luYyhtaWMtPmRldik7Cj4gLQlpZiAocmV0IDwgMCkKPiArCWlmIChyZXQgPCAw
KSB7Cj4gKwkJcG1fcnVudGltZV9wdXRfbm9pZGxlKG1pYy0+ZGV2KTsKPiAgCQlnb3RvIHVubG9j
azsKPiArCX0KPiAgCj4gIAltaWNfc2V0X3BhdGgobWljLCAxKTsKPiAgCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
