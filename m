Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547CA956CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 07:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTp6cKgYWIBGAF7yj8oxcx6Nu7iEvwPm4Ygmdpy/ITc=; b=DB9x29Sp3UMmgD
	kXHwP4Y8xzsMeZGHWd8CpPnimYvhNZb5kYfckAGxNCWkWL4mjbeTO+ERAT+4Be4HD3/NwGxu83rwR
	5O/K3EZusYZ0TFvV0ZGbgxX30rQ3Ifuo1W9v3H56rI4eIteeJ7lnUx6cNW81avxKfX8zO4wpQ6b53
	Iyo93/tgMwwxrsxZsVLXF04foNEey7alcMY++RDLSO5kBl5lVEoCkn7q+RS2kIpOYNLRDnv80od4r
	btFNIuK0isxGzbTBvCB1vhn7MOoF1/wdmI+wvj/3Gv1bvJ62xX+xeStPPOsstxDo0TdnTF+Z7kU83
	EGsnXf4JimtKB0vogYOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzwwd-0002Ik-Cz; Tue, 20 Aug 2019 05:44:35 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzwwH-0002I2-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 05:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566279834;
 bh=uzPHdZKUqYcn2hxSYbRWKZy5QOPpWc9pqFPWXolcQaE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CvaP38KseayEeQU59fMkrgn/QqAnX9jFFz09h8ewuCt6xdRXHk1hhmCKK73FhUNz9
 oYMcGuKyZqhtsIONSUnDv9LBj1a7+pSh+WRsBNKV+2eYLPvymxyrK589FFHMKzqTV2
 5IbOXQfSvWI5oIzdajjvqD9QSWA/Wa1EqUVmigHU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MxlzI-1iBRdU02zG-00zDu5; Tue, 20
 Aug 2019 07:43:54 +0200
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
To: Christoph Hellwig <hch@lst.de>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
 <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
 <20190820012415.GA21178@lst.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <a69cce68-8c41-2030-b011-cdfacfeae421@gmx.net>
Date: Tue, 20 Aug 2019 07:43:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820012415.GA21178@lst.de>
Content-Language: en-US
X-Provags-ID: V03:K1:F1Hh4JVVCp9ffNxQI/lDuOJKjko4RUYBLmrflndVI3a4YXXy7fY
 7kmCegpactMhyNkHQSH1bz1+g0GlzzoSvpRbttOrptzLmjm36kGvGRv8op7+9yPH3mszz2D
 NBrWGnKpoA0EInwopjEIqweEgmSkhwJgMIFtsv9nvURxn2Esb5Bp2jWZfSq3wVLQ/Ee+qB0
 uQEVZaEtvBjtd1dnzoDow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zAzFlUSICW4=:alfsWQKOMedYw8VY4LG6sc
 uMM1VRWPjLOw978CJ9AloP4M/hHIamj8G82IcdVdIhXqb4ZAyxo5yAtTT7Ljs7RCz2OZ4uCs4
 XXSdPZK4ATrNIceAAKRhj1kYjBEw8ZULHTANCnw4aP1xNPCy5lVJsSth+S2/1g16UB7st000+
 2R5LApmqfagjLp2tHS9OXWkRrLFFsPFgJV8Nuw7tkCWAqO7iYvVcBjO9GH3qGpmsYT2BTNBoO
 4wVsyUyJS6I/qgUlZpbNsats3p6tq2Pe7LV81G67h8SEVoRK3XlprXjWuhmQaTSgSFadkbaao
 7Cw21PwbM7mMm4msgX8kFFSBCbrMfBFTU67fiG68e4o5BYT48w60wsPNydIlM9LGxSwjG7Eg1
 Tusi2eOildtYXHfUQFrc1vZlLrPdr2BYhU3OyxSuvyTSYxPxGPqtiG7TX4G58oBBrM7kMSG17
 r6Xojhzmkm1pZApaIpPXneRinOoa0W9CuAKZ5OtUzG4aBDY3IBp7i55W4wRWjeUP7mmJb23tL
 KqbpUJEuj/n+WX2vevXgiiu81R0VoUwTbXLiV0i65l3oHzlcwA0QOUZ0S3x7LAi9S88uny1Pj
 xTcoV0Kv2dfMIfNqF16xjOwi6ChCWNP58cYMPTPNwcMFjNePV+h9Wqr+V/x8sWwO/r5r0MLVF
 6sEkBBfP+2sFP2fgj77XKOPZORzWQsYUvXsytJGyfsdOPs2cJxqcYW+95H0HM/x1BwkyDJ5qE
 PhoR7oUh9ffYP//WmVFiE28Z4MNdhXbiA3b3vwIa7KFeYkNm/S0QDK6SvY7ghiLCieg34jtue
 Qs5a7lqdJZJbS9Aui0JZoIRXxOr6hQOtAWvl+rz6MG56P7OwBkaav5nzRz4f8TtXQjMpgEaWZ
 u1XJfY0vlXoEzhgK/Z1vyE3RssoZhhLd2MaThl2wMgq/wHiz/7UuLeCASxfa/x8DhbvBRMRFm
 8aUqGXS/H1LPQuGDlfWE7oZd8PVZ6coiuS7wP7rhIRvB7SvEuHXgyFqK9GL5wkPrGFut7NvqB
 xg2H5QklXh4yDnS8oNbX6ACT0TLGbr84ktKHbu2jtpW0RGbJ4Tll9WHR/hH5/tfIrzKnG96ne
 1f9oMDtFGGLZM9pjpoKAi3NBBsQjm6NN5rOpZ5KDPC5cbNRI/VGHCceTCqkoBfqje9CHLSHP2
 7j11zFcBtE/thGZ6fyquNvIwiFu6iC4uFbmqWzxmwuR/gczQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_224413_702863_71D66F71 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Avaneesh Kumar Dwivedi <akdwived@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, iommu@lists.linux-foundation.org,
 Ian Jackson <ian.jackson@citrix.com>, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKQW0gMjAuMDguMTkgdW0gMDM6MjQgc2NocmllYiBDaHJpc3RvcGggSGVs
bHdpZzoKPiBIaSBTdGVmYW4sCj4KPiBwbGVhc2UgdHJ5IHRoZSBwYXRjaCBiZWxvdy4KPgo+IC0t
LQo+IEZyb20gZTA1NzA2MjhkOTZmYWE1MGViZmM5NGNlOGU1NDU5NjgzMzZkYjIyNSBNb24gU2Vw
IDE3IDAwOjAwOjAwIDIwMDEKPiBGcm9tOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4K
PiBEYXRlOiBUdWUsIDIwIEF1ZyAyMDE5IDEwOjA4OjM4ICswOTAwCj4gU3ViamVjdDogYXJtOiBz
ZWxlY3QgdGhlIGRtYS1ub25jb2hlcmVudCBzeW1ib2xzIGZvciBhbGwgc3dpb3RsYiBidWlsZHMK
Pgo+IFdlIG5lZWQgdG8gcHJvdmlkZSB0aGUgYXJjaCBob29rcyBmb3Igbm9uLWNvaGVyZW50IGRt
YS1kaXJlY3QKPiBhbmQgc3dpb3RsYiBmb3IgYWxsIHN3aW90bGIgYnVpbGRzLCBub3QganVzdCB3
aGVuIExQQVMgaXMgZW5hYmxlZC4Kcy9MUEFTL0xQQUUvCj4gV2l0aG91dCB0aGF0IHRoZSBYZW4g
YnVpbGQgdGhhdCBzZWxlY3RzIFNXSU9UTEIgaW5kaXJlY3RseSB0aHJvdWdoCj4gU1dJT1RMQl9Y
RU4gZmFpbHMgdG8gYnVpbGQuCj4KPiBGaXhlczogYWQzYzdiMThjNWIzICgiYXJtOiB1c2Ugc3dp
b3RsYiBmb3IgYm91bmNlIGJ1ZmZlcmluZyBvbiBMUEFFIGNvbmZpZ3MiKQo+IFJlcG9ydGVkLWJ5
OiBTdGVmYW4gV2FocmVuIDx3YWhyZW5zdEBnbXgubmV0Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
dG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgoKaSBhcHBsaWVkIHRoaXMgcGF0Y2ggYW5kIGl0IGZp
eGVzIHRoZSBidWlsZCBpc3N1ZSBpIHJlcG9ydGVkIGJlZm9yZS4gQnV0CnRoaXMgc2VlbXMgdG8g
cmV2ZWFsIGFub3RoZXIgYnVpbGQgaXNzdWUgaW4gZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5j
OgoKZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5jOiBJbiBmdW5jdGlvbiDigJhxY29tX3NjbV9h
c3NpZ25fbWVt4oCZOgpkcml2ZXJzL2Zpcm13YXJlL3Fjb21fc2NtLmM6NDYwOjQ3OiBlcnJvcjog
cGFzc2luZyBhcmd1bWVudCAzIG9mCuKAmGRtYV9hbGxvY19jb2hlcmVudOKAmSBmcm9tIGluY29t
cGF0aWJsZSBwb2ludGVyIHR5cGUKWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNd
CsKgIHB0ciA9IGRtYV9hbGxvY19jb2hlcmVudChfX3NjbS0+ZGV2LCBwdHJfc3osICZwdHJfcGh5
cywgR0ZQX0tFUk5FTCk7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF4KSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvZmlybXdhcmUvcWNvbV9zY20uYzoxMjowOgouL2lu
Y2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaDo2MzY6MjE6IG5vdGU6IGV4cGVjdGVkIOKAmGRtYV9h
ZGRyX3QgKiB7YWthCmxvbmcgbG9uZyB1bnNpZ25lZCBpbnQgKn3igJkgYnV0IGFyZ3VtZW50IGlz
IG9mIHR5cGUg4oCYcGh5c19hZGRyX3QgKiB7YWthCnVuc2lnbmVkIGludCAqfeKAmQrCoHN0YXRp
YyBpbmxpbmUgdm9pZCAqZG1hX2FsbG9jX2NvaGVyZW50KHN0cnVjdCBkZXZpY2UgKmRldiwgc2l6
ZV90IHNpemUsCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+
fn5+fn5+fn5+fn5+CmNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwpz
Y3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4MDogZGllIFJlZ2VsIGbDvHIgWmllbArigJ5kcml2ZXJz
L2Zpcm13YXJlL3Fjb21fc2NtLm/igJwgc2NoZWl0ZXJ0ZQoKTHVja2lseSB0aGVyZSBpcyBhbHJl
YWR5IGEgcGF0Y2ggdG8gZml4IHRoaXMgaW4gbGludXgtbmV4dDoKCmZpcm13YXJlOiBxY29tX3Nj
bTogVXNlIHByb3BlciB0eXBlcyBmb3IgZG1hIG1hcHBpbmdzCgpJdCBzZWVtcyB0aGF0IGl0IG1p
c3NlcyB0aGUgZml4ZXMgdGFnLgoKUmVnYXJkcwpTdGVmYW4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
