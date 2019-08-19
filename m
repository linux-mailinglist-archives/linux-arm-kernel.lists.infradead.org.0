Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CBD94D9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+AE34yMez1IpLefZXWmCuWouMFyMmuz7NjQU40YoW0=; b=W4OOPfmJth8yR0
	76sGcrZE338ZMNO1++j4oAaqAuEAShGT2ieO79DbA8Nasr8aKl3YZgIYTjhG1N2gkjprlFWG08Y7z
	dXVlQnE+STcfyN5+UB0D7iJ6bgKlIuCFT8y4QgFtT4wX5GE1kA4++ep3JnmUqpPCBuiFEpCXpr7LK
	IstgRsHn2kgXiaU71K6ck9c0kY5z6gWYhHl/tqpml/Hbw+ppCIyRabGT5MKUh5ypA0amVCeXZPR0D
	jysJ7tHNEcEKXwHbsPgRdzArA2iOJnv84atrEnpLTmwNcDVbgwV2druetzC1TOzeDCt9uM38km8HD
	wZaK2T1xqVFxyAIzA27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzn4y-0001np-EY; Mon, 19 Aug 2019 19:12:32 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzn4h-0001nM-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566241925;
 bh=IQ1HrA8S91To3KwXtSgfjjTeQk7Gg1ku9YZqdtusm10=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iTNDKDrrkZkvJaPoWEB4mj/uIXHEcJzWRRCH6EVg1Sh9tPoUgbaeD0D5JZPSNo9Ge
 XkPhupLiow9V9q7xCDyygKSSPzIxlpH/L4JuAJmy2ig2O8t0E8Ky7z5mI8J9R4rE2z
 HtFd6lruH2Nbi+IgzFh/BTLQC2PUjS+an0UbVNiQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MQiVh-1hq4KG0mdx-00U01C; Mon, 19
 Aug 2019 21:12:05 +0200
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
Date: Mon, 19 Aug 2019 21:12:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:AYO427Kp4/FPhSYXg5yavhHIxSlgjbel/9eiTflwvl9n1Bz/fCk
 OPkb0VILTvcc7tr2s6r1YJXRiDPioZj53VJ+8Lrbjlal8Pf8PNAhhQkTHFfLi+na0B6om1y
 msKzHU8/2+5CyPeL/G3lAlcmWiu0sUaSlbTLxoYn8I+xr+q9izDY3jyMIdAulmhvzTKAJR/
 3sq22QTSRnebKRDasJtMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cAoPz/oMr0I=:zHdyGVRVvr4Qvd+hXguSVq
 rCmPfukVZocx3mP+WN+jfN3ZaCFOiZfogqrmRM1Jup1lgYOSHPUFfbwPqoHXSQi/VhpMOJJ13
 4kD3Zjkuu67RSJuiSdTOtQOd9Xv/bQIISot770hojOZdAhs7p4FTGiDUKfhm3CfM4bkLL0U8H
 LhLoAzeGSW8DBOIpYTdFzFBWFyUWZQ91vrKiuhTtLg52LeA6mrt0dfCKhn2cW0mQiZvtwBuvo
 3f2G1+R5r2lHzGDFiD4ACEoXrNPNpbnhxfzx+VlgM53ldXRkHkhYuXtiHofCPEYvS1Dvi8/Ad
 qFl2FIUUx8MC+Ox49+aiYoxEi7+xCXeot1eli3HnWM2VfBHn3T9WvhGN4q9QgQuc6LgECYh0N
 I3j1+MZuVWL6+RQfS6cbZCno2RMCc7hv8LQLiFRRbPuNlllND9+6H1EnBtwyDDJTSyAERcyBb
 vMHprq/VRkHdfN07j1v/EZ/PIpEmWHXtS5Pn8lJhyCGsfouyXRwoh6LWSUMCe4dp4wzmpLFsA
 T4yhuVAlIFBeJqYuT7z3RWlcwYg4JfiphoAv0d1QKuLPr0pB6zfu+g3So49GhPlbvF1l7rZPG
 WleYrOxO/LTEP3HKHrbhNAMyJy0X3La/HNNk83yOqOtslcKFWyZhZ6yLZeSf8mrKIwmdws+IR
 NgUvmGB4KRKsGjBavvQAuYmOzo3KmUZHdrIuOtS7H+N+IAWiX3bOEQQ5EbCIdbgf0qvBJJjhi
 WORRqqWc9dOzcafrdOze+DvEZEXOHRzrZxSLlcT63dYSpbOjcZCpkP34v3RibFK4DCL6D/K0L
 TBdNSoI8bdOgrP9Z9rDIHma5O/DevpsaavPb6ggv1Eevyb+ybfJrD/ir/GoouvrzizJ2z2sLa
 xPe7jrd4I2N+nxnyVRzNEYgnkHWv0YDQdy8O0E3XYY/byakLRf5nKtSQckj75fe+qg/rTIFQy
 YmGhhsUqxEx0O5Mo6J3mJnXpuM8V+DevOBYAMHmyIhlWgPNL2Dy6c9hstkjO0WNmVDI9O24dR
 0nEjqyYFne8Mk1lQ4wW7yjuI9dBAbhpLnP1ulvCiDUYYX6NWfm20HrEQrcL5CgFZUFuhkl7mE
 iriwiwM6Hap0diCN7way9SC9zeIaTx3vZ8y5tlE5SKl2xnljoNNCLf3Fyhnjb9K1CAYxcXgai
 mhwoA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_121216_076281_05089AE2 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTkuMDguMTkgdW0gMjE6MDIgc2NocmllYiBSb2JpbiBNdXJwaHk6DQo+IE9uIDE5LzA4LzIw
MTkgMTk6MzcsIFN0ZWZhbiBXYWhyZW4gd3JvdGU6DQo+PiBIaSwNCj4+DQo+PiBpIHRyaWVkIHRv
IGNyb3NzIGNvbXBpbGUgYXJtL211bHRpX3Y3X2RlZmNvbmZpZyB3aXRoIENPTkZJR19YRU49eSB3
aXRoDQo+PiBMaW51eCA1LjMtcmM1IGFuZCBpJ20gZ2V0dGluZyB0aGlzOg0KPj4NCj4+IGFyY2gv
YXJtL21tL2RtYS1tYXBwaW5nLmM6IEluIGZ1bmN0aW9uIOKAmGFyY2hfc2V0dXBfZG1hX29wc+KA
mToNCj4+IGFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6MjM0Nzo1OiBlcnJvcjog4oCYc3RydWN0
IGRldmljZeKAmSBoYXMgbm8gbWVtYmVyDQo+PiBuYW1lZCDigJhkbWFfY29oZXJlbnTigJkNCj4+
IMKgwqAgZGV2LT5kbWFfY29oZXJlbnQgPSBjb2hlcmVudDsNCj4+IMKgwqDCoMKgwqAgXn4NCj4+
IGFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6IEF0IHRvcCBsZXZlbDoNCj4+IGFyY2gvYXJtL21t
L2RtYS1tYXBwaW5nLmM6MjM4NTo2OiBlcnJvcjogcmVkZWZpbml0aW9uIG9mDQo+PiDigJhhcmNo
X3N5bmNfZG1hX2Zvcl9kZXZpY2XigJkNCj4+IMKgwqB2b2lkIGFyY2hfc3luY19kbWFfZm9yX2Rl
dmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHBoeXNfYWRkcl90IHBhZGRyLA0KPj4gwqDCoMKgwqDC
oMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KPj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFy
Y2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6MTg6MDoNCj4+IC4vaW5jbHVkZS9saW51eC9kbWEtbm9u
Y29oZXJlbnQuaDo2NzoyMDogbm90ZTogcHJldmlvdXMgZGVmaW5pdGlvbiBvZg0KPj4g4oCYYXJj
aF9zeW5jX2RtYV9mb3JfZGV2aWNl4oCZIHdhcyBoZXJlDQo+PiDCoMKgc3RhdGljIGlubGluZSB2
b2lkIGFyY2hfc3luY19kbWFfZm9yX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fg0KPj4gYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYzoyMzkyOjY6IGVycm9yOiByZWRlZmlu
aXRpb24gb2YNCj4+IOKAmGFyY2hfc3luY19kbWFfZm9yX2NwdeKAmQ0KPj4gwqDCoHZvaWQgYXJj
aF9zeW5jX2RtYV9mb3JfY3B1KHN0cnVjdCBkZXZpY2UgKmRldiwgcGh5c19hZGRyX3QgcGFkZHIs
DQo+PiDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+PiBJbiBmaWxlIGluY2x1
ZGVkIGZyb20gYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYzoxODowOg0KPj4gLi9pbmNsdWRlL2xp
bnV4L2RtYS1ub25jb2hlcmVudC5oOjc3OjIwOiBub3RlOiBwcmV2aW91cyBkZWZpbml0aW9uIG9m
DQo+PiDigJhhcmNoX3N5bmNfZG1hX2Zvcl9jcHXigJkgd2FzIGhlcmUNCj4+IMKgwqBzdGF0aWMg
aW5saW5lIHZvaWQgYXJjaF9zeW5jX2RtYV9mb3JfY3B1KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+fn5+fn5+
fn5+fn5+DQo+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybS9pbmNsdWRlL2FzbS9w
YWdlLmg6MTQ5OjAsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20g
Li9hcmNoL2FybS9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oOjE0LA0KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9saW51eC90aHJlYWRfaW5mby5o
OjM4LA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVk
ZS9hc20tZ2VuZXJpYy9wcmVlbXB0Lmg6NSwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZnJvbSAuL2FyY2gvYXJtL2luY2x1ZGUvZ2VuZXJhdGVkL2FzbS9wcmVlbXB0Lmg6
MSwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2luY2x1ZGUv
bGludXgvcHJlZW1wdC5oOjc4LA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBmcm9tIC4vaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjUxLA0KPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVkZS9saW51eC9zZXFsb2NrLmg6MzYsDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L3RpbWUuaDo2LA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4v
aW5jbHVkZS9saW51eC9zdGF0Lmg6MTksDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L21vZHVsZS5oOjEwLA0KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIGFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6OToN
Cj4+DQo+PiBUaGVyZSBpcyBubyBidWlsZCBpc3N1ZSB3aXRoIExpbnV4IDUuMiwgc28gdGhpcyBt
dXN0IGJlIGludHJvZHVjZWQgd2l0aA0KPj4gNS4zLXJjLiBJIGhvcGUgeW91IGhhdmUgYSBjbHVl
IHdpdGhvdXQgYmlzZWN0aW5nIHRoaXMuDQo+DQo+IE9oLCB0aGF0IG11c3QgYmUgYWQzYzdiMThj
NWIsIHNpbmNlIHRoZSBkbWEtbm9uY29oZXJlbnQgc3R1ZmYgaXMgb25seQ0KPiBzZWxlY3RlZCBi
eSBDT05GSUdfQVJNX0xQQUUsIGJ1dCB0aGUgcmVmZXJlbmNlcyB0byBpdCBhcmUgZ3VhcmRlZCBi
eQ0KPiBDT05GSUdfU1dJT1RMQiwgYW5kIENPTkZJR19YRU4gYnJpbmdzIGluIHRoZSBsYXR0ZXIg
d2l0aG91dCB0aGUgZm9ybWVyLg0KWWVzLCByZXZlcnRpbmcgYWQzYzdiMThjNWIgKCJhcm06IHVz
ZSBzd2lvdGxiIGZvciBib3VuY2UgYnVmZmVyaW5nIG9uDQpMUEFFIGNvbmZpZ3MiKSBhdm9pZCB0
aGlzIGJ1aWxkIGlzc3VlLg0KPg0KPiBSb2Jpbi4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QNCj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
