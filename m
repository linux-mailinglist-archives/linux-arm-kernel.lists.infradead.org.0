Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A3671C0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y4d85/DshuVyWTLLykJIFJ+VtzXiyYUtO8FyPD4EuAY=; b=KgDg/4+F1zOXgndq6KpvSDQDYI
	b8gadAOAsgCDRwATVQXrRjCyj/oMl9IdlGaO5wul18MM6+sDwgsYcAGV/BWja43mmla2KWy0krDMW
	DhyYKEzaeO3NoTMSZrWWXOtyMmdkz4E2b5m0jba+YYMWeLolCjtRRQHRzRxCDAiDKZIDmfIlnHNZ6
	DGChmGlVKfFbk7kdsf3wf9Tlr8gOXXfuTTa79AudvvS4jKzWHH3SSQAeDqs62g2ZloY4SSHwmXfxS
	GWwb821o4+n6ADGvsXyCMpoD4K/Eg1KFLYpbW6q7bmlovYpydi5+x8TJJMkF/P3eapq7ZX9P+ndyf
	IP1eMu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwzA-0004FF-AM; Tue, 23 Jul 2019 15:45:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwyd-000495-RY
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:45:22 +0000
Received: from [10.84.150.87] (unknown [167.220.149.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F973218D3;
 Tue, 23 Jul 2019 15:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563896718;
 bh=sP0aqu0Qk8102QyJi+gE1hEHYCS6moC40PKb8ZZL1Ek=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=GqtKJjkGjk3+9SGzgE+NELdGNUe59PahyiAvgLvlltAR6jWd0KJH1jHgwXLmHw+xx
 /mMFgXhYcLkL8m5hcEGzTUQdzVdKGSghxq3NANdND2qYMhzaTwiFQSWS/pJs0gxL9z
 mb137ii9FbJdTswftEVHGcR2FDb35ibt6hPpM4w0=
Subject: Re: [PATCH] dma: qcom: hidma_mgmt: Add of_node_put() before goto
To: Robin Murphy <robin.murphy@arm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, agross@kernel.org,
 vkoul@kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org
References: <20190723103543.7888-1-nishkadg.linux@gmail.com>
 <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
From: Sinan Kaya <okaya@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=okaya@kernel.org; keydata=
 mQENBFrnOrUBCADGOL0kF21B6ogpOkuYvz6bUjO7NU99PKhXx1MfK/AzK+SFgxJF7dMluoF6
 uT47bU7zb7HqACH6itTgSSiJeSoq86jYoq5s4JOyaj0/18Hf3/YBah7AOuwk6LtV3EftQIhw
 9vXqCnBwP/nID6PQ685zl3vH68yzF6FVNwbDagxUz/gMiQh7scHvVCjiqkJ+qu/36JgtTYYw
 8lGWRcto6gr0eTF8Wd8f81wspmUHGsFdN/xPsZPKMw6/on9oOj3AidcR3P9EdLY4qQyjvcNC
 V9cL9b5I/Ud9ghPwW4QkM7uhYqQDyh3SwgEFudc+/RsDuxjVlg9CFnGhS0nPXR89SaQZABEB
 AAG0HVNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+iQFOBBMBCAA4FiEEYdOlMSE+a7/c
 ckrQvGF4I+4LAFcFAlztcAoCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQvGF4I+4L
 AFfidAf/VKHInxep0Z96iYkIq42432HTZUrxNzG9IWk4HN7c3vTJKv2W+b9pgvBF1SmkyQSy
 8SJ3Zd98CO6FOHA1FigFyZahVsme+T0GsS3/OF1kjrtMktoREr8t0rK0yKpCTYVdlkHadxmR
 Qs5xLzW1RqKlrNigKHI2yhgpMwrpzS+67F1biT41227sqFzW9urEl/jqGJXaB6GV+SRKSHN+
 ubWXgE1NkmfAMeyJPKojNT7ReL6eh3BNB/Xh1vQJew+AE50EP7o36UXghoUktnx6cTkge0ZS
 qgxuhN33cCOU36pWQhPqVSlLTZQJVxuCmlaHbYWvye7bBOhmiuNKhOzb3FcgT7kBDQRa5zq1
 AQgAyRq/7JZKOyB8wRx6fHE0nb31P75kCnL3oE+smKW/sOcIQDV3C7mZKLf472MWB1xdr4Tm
 eXeL/wT0QHapLn5M5wWghC80YvjjdolHnlq9QlYVtvl1ocAC28y43tKJfklhHiwMNDJfdZbw
 9lQ2h+7nccFWASNUu9cqZOABLvJcgLnfdDpnSzOye09VVlKr3NHgRyRZa7me/oFJCxrJlKAl
 2hllRLt0yV08o7i14+qmvxI2EKLX9zJfJ2rGWLTVe3EJBnCsQPDzAUVYSnTtqELu2AGzvDiM
 gatRaosnzhvvEK+kCuXuCuZlRWP7pWSHqFFuYq596RRG5hNGLbmVFZrCxQARAQABiQEfBBgB
 CAAJBQJa5zq1AhsMAAoJELxheCPuCwBX2UYH/2kkMC4mImvoClrmcMsNGijcZHdDlz8NFfCI
 gSb3NHkarnA7uAg8KJuaHUwBMk3kBhv2BGPLcmAknzBIehbZ284W7u3DT9o1Y5g+LDyx8RIi
 e7pnMcC+bE2IJExCVf2p3PB1tDBBdLEYJoyFz/XpdDjZ8aVls/pIyrq+mqo5LuuhWfZzPPec
 9EiM2eXpJw+Rz+vKjSt1YIhg46YbdZrDM2FGrt9ve3YaM5H0lzJgq/JQPKFdbd5MB0X37Qc+
 2m/A9u9SFnOovA42DgXUyC2cSbIJdPWOK9PnzfXqF3sX9Aol2eLUmQuLpThJtq5EHu6FzJ7Y
 L+s0nPaNMKwv/Xhhm6Y=
Message-ID: <ecaf00a7-dbb2-679b-3670-b9d6619bf97c@kernel.org>
Date: Tue, 23 Jul 2019 11:45:16 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_084520_138892_4B3CE412 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yMy8yMDE5IDg6MDIgQU0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBXaHkgbm90IGp1c3Qg
YWRkIGl0IG9uY2UgYXQgdGhlICJvdXQiIGxhYmVsIGl0c2VsZj8gKENvbnNpZGVyIHRoZQo+IGNv
bmRpdGlvbnMgZm9yIHRoZSBsb29wIHRlcm1pbmF0aW5nIG5hdHVyYWxseSkKPiAKCisxCgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2EgRGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdtYWlsLmNv
bT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jIHwgMTMgKysrKysr
KysrKy0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jCj4+
IGIvZHJpdmVycy9kbWEvcWNvbS9oaWRtYV9tZ210LmMKPj4gaW5kZXggMzAyMmQ2NmU3YTMzLi4y
MDlhZGM2Y2VhYmUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5j
Cj4+ICsrKyBiL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jCj4+IEBAIC0zNjIsMTYgKzM2
MiwyMiBAQCBzdGF0aWMgaW50IF9faW5pdAo+PiBoaWRtYV9tZ210X29mX3BvcHVsYXRlX2NoYW5u
ZWxzKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpuZXdfcGRldjsKPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9
IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2UoY2hpbGQsIDAsICZyZXNbMF0pOwo+PiAtwqDCoMKgwqDC
oMKgwqAgaWYgKCFyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIXJldCkgewo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1dChjaGlsZCk7CgpUaGUgc3BhY2luZyBvbiB0aGlz
IGFsc28gbG9va3Mgd2VpcmQuCgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91
dDsKPj4gK8KgwqDCoMKgwqDCoMKgIH0gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
