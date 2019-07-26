Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C0376518
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFUEOwnXTgD42HWC6zmwGvZbMx4bIaV853/bQglnmWE=; b=ibhQcsh1/pQo8d
	JTmQLsRlViemqdmaE/W4UL6uleRBekaYoyuUDHnOAcMYK2I4zuZGESJc8ufYpJHF4n/qEqFCI2cuA
	PjFUeQyyUCEIpLduYVHSwkxhMrg1nWOlqoDzILGdDyeuDO88AN9wqAR8xQYdYABsQpFHODTlNn30V
	CrC2zFqOJRA1ZavJsarmVHO7J/MzJxk7FI7wWEqbgKXbV6bTUDgSNEgWS0UibbBfdKxiwira1rnQH
	Fg/Uw1fWtmTkA6AYjT5ijV0LAE/Nv2d32AbreJxmqRJ6yva0GdKWO5vplfijGFMA2MA/28Egv95d/
	j8Rb6LNLZ2GS+NGx6WDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyw6-0001pw-LY; Fri, 26 Jul 2019 12:02:58 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyvp-0001on-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:02:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190726120239euoutp0220289b43500466e1c28dd30d7803116a~0817paGDx3061430614euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 12:02:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190726120239euoutp0220289b43500466e1c28dd30d7803116a~0817paGDx3061430614euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564142559;
 bh=DpZBxh2b3FgthXala1yFlfzP7R3sugOAntJqovIx5ks=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gkZItRGkiEfS246wY2lcNcwXj1+9oKYG/cG/j0IFhNQI4up5bXH43DY/Eo7ILurcL
 LNogapGj+FApDzNMGsX1lgXEwGsfR/aiC0ugaf87G1p9v3jkyoMRpZEY1KZyqCV5cb
 ypjeiakYVqv/zpJMgiESU5X1LFkjwM11kPVrxpPU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190726120239eucas1p20656c7e558391a8f78390c795dafdbbe~0817JtnK02738827388eucas1p2t;
 Fri, 26 Jul 2019 12:02:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CE.45.04377.EDBEA3D5; Fri, 26
 Jul 2019 13:02:38 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190726120238eucas1p243c54e3f3ff3d514e3873d40e2bdf3ab~0816VHYQC0843408434eucas1p2o;
 Fri, 26 Jul 2019 12:02:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190726120237eusmtrp21bb6a34874d8337ecbd2413f228e72b4~0816EElWM1338313383eusmtrp2e;
 Fri, 26 Jul 2019 12:02:37 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-dc-5d3aebdef158
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 21.DF.04140.DDBEA3D5; Fri, 26
 Jul 2019 13:02:37 +0100 (BST)
Received: from [106.120.50.63] (unknown [106.120.50.63]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190726120237eusmtip2c70175156eed774cdc329002f19d0590~0815ZG3vE1048010480eusmtip2N;
 Fri, 26 Jul 2019 12:02:37 +0000 (GMT)
Subject: Re: [RFC PATCH 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
To: cwchoi00@gmail.com, =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?=
 <a.swigon@partner.samsung.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <cc4c48c3-06a5-c58f-20de-0aa18ae8667e@samsung.com>
Date: Fri, 26 Jul 2019 14:02:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGTfZH1_Qk+vNa_AJW_8OA8MJbnZa3yCTLLRs2w23bNTm72gyQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUwTYRD16263S0Pxs6BM0ABpgihGEKJxBaNoMNk/GDz+eBCosuGQcrRQ
 PGLkSDwQEDAEKAjG4JEmeBRKKCBSBCoQAVFR5I6IoIIJrT84BCkryr83b97Mm5cMTUj7hE50
 ZEwCp4yRR8soMVnVMtOxffC7b/CO1FseTGOLXsR8sHwVMmPN25jSpg4h8+7XT4rJf66jmNyh
 bJLp7HwqYnSfe4TM25piijFnNiGmoLNewPSlPKKYgtsTlL8da9AMiFid9gbF9vfUUezQTZOA
 rSi7whqn6gRsVqUWsWadcxB9Urw3jIuOVHNKr32h4oj7IxmCuEX38wv9RpSM2iEd2dCAd8JE
 wyBKR2Jaih8haKttFfCFBcFsRxnJF2YEOcUjwpWRnPtGgm88RJA31vt3ZBKB+ZVBZFXZ4zAY
 r3+NrNgBn4Bc09VlEwLPEZB1Z25ZRGFvSJ9Mp6xYgvfB6ND0EqZpErtBQ8V+K70enwbDjwyC
 l6yD1sJR0opt8BEwFJcsjxLYBdL0RQSPHeHTaOnyQYB/iyD78XuRdSfgAHgxsJZPYA/fTJUi
 Hm+CRcOKPg3BSEe5iC8yELxNLUC8yg9emt4IrYsIvBWe1Hjx9AGwtF8j+f128HFyHX+DHeRW
 5RM8LYHrV6W8ejNoTI//2Rq7uolsJNOsSqZZlUazKo3mv+9dRGqRI5eoUoRzKp8YLslTJVeo
 EmPCPc/GKnRo6eXaF0yWalQzf6YRYRrJbCVbtHuCpUK5WnVB0YiAJmQOEn31EiUJk1+4yClj
 Q5SJ0ZyqEW2kSZmj5NKa4VNSHC5P4M5xXBynXOkKaBunZJQkVh5NSUVj8cVNx20PWgTds4eL
 jjVDSNe92sL4jSXeifOZltoBlzXDisvmeDWbVP5gIVCBt7i32U6luNplTEc9m3lwfVfohqii
 CLcydaDPnviE8f5Fbe96fQA3dMjJVv9kxh/tftjlEJnn6xHqUYCD1PbO3BeTG1EX6MpO+8lI
 VYTc24NQquR/AB0p7rFuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xe7p3X1vFGlzdpGdx6NhWdovrX56z
 Wjw7qm0x/8g5VosrX9+zWUzfu4nNYtL9CSwW589vYLfY9Pgaq8XlXXPYLD73HmG0mHF+H5PF
 7cYVbBYzJr9kc+Dz2DnrLrvHplWdbB53ru1h87jffZzJY/OSeo+D7/YwefRtWcXo8XmTXABH
 lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllqkb5dgl7G0oc9
 TAX/1Sv+3TnI2MB4WqKLkZNDQsBEYuLSg8xdjFwcQgJLGSX+TjrBBpGQkTg5rYEVwhaW+HOt
 iw2i6DWjxOYJL1lAEsICKRIv9p1lBLFFBCIlGpZPYQIpYhb4yyyxf80dRoiOKUwS/V8vgHWw
 CRhKdL3tAlvBK2An8eT+JyCbg4NFQFXiwGZ7kLCoQIzEvjPb2SFKBCVOznwC1sopECixc848
 sFZmATOJeZsfMkPY8hLNW2dD2eISt57MZ5rAKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpu
 sZFecWJucWleul5yfu4mRmBcbzv2c8sOxq53wYcYBTgYlXh4Lyy3jBViTSwrrsw9xCjBwawk
 wrt1B1CINyWxsiq1KD++qDQntfgQoynQbxOZpUST84EpJ68k3tDU0NzC0tDc2NzYzEJJnLdD
 4GCMkEB6YklqdmpqQWoRTB8TB6dUA2NYbcmhy2fqTspY9euu6pqnIX6Fe8qX91pm/4+lM/L/
 z/33OtY9cZ/AuWUqhcfN/vol6zwv13h0uOBgu9WHumdBBp8Vtz6aVSiU7/R62hNj8z9Fxyds
 XsxXoPvNyWglu+ah+w8Yp9mePq0SEvrt6+5Jz142rZzLlm049+gVk/jFyV6CgT0L4pYrsRRn
 JBpqMRcVJwIArD3n3wEDAAA=
X-CMS-MailID: 20190726120238eucas1p243c54e3f3ff3d514e3873d40e2bdf3ab
X-Msg-Generator: CA
X-RootMTR: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
References: <CGME20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-9-a.swigon@partner.samsung.com>
 <CAGTfZH1_Qk+vNa_AJW_8OA8MJbnZa3yCTLLRs2w23bNTm72gyQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050242_094685_5570A832 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIDIwMTktMDctMjUgMTU6MTMsIENoYW53b28gQ2hvaSB3cm90ZToKPiAyMDE564WEIDfs
m5QgMjTsnbwgKOyImCkg7Jik7KCEIDg6MDcsIEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0
bmVyLnNhbXN1bmcuY29tPuuLmOydtCDsnpHshLE6Cj4+IFRoaXMgcGF0Y2ggYWRkcyB0d28gZmll
bGRzIHRwIHRoZSBFeHlub3M0NDEyIERUUzoKPj4gICAgLSBwYXJlbnQ6IHRvIGRlY2xhcmUgY29u
bmVjdGlvbnMgYmV0d2VlbiBub2RlcyB0aGF0IGFyZSBub3QgaW4gYQo+PiAgICAgIHBhcmVudC1j
aGlsZCByZWxhdGlvbiBpbiBkZXZmcmVxOwo+PiAgICAtICNpbnRlcmNvbm5lY3QtY2VsbHM6IHJl
cXVpcmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrLgo+Pgo+PiBQbGVhc2Ugbm90ZSB0
aGF0ICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5vZGUgSURzIGFyZSBu
b3QKPj4gaGFyZGNvZGVkIGFueXdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndp
Z2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCAxICsKPj4gICBhcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgICB8IDkgKysrKysrKysrCj4+
ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4+IGluZGV4IGVhNTVmMzc3
ZDE3Yy4uYmRkNjFhZTg2MTAzIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlu
b3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlu
b3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+PiBAQCAtMTA2LDYgKzEwNiw3IEBACj4+ICAgJmJ1
c19sZWZ0YnVzIHsKPj4gICAgICAgICAgZGV2ZnJlcS1ldmVudHMgPSA8JnBwbXVfbGVmdGJ1c18z
PiwgPCZwcG11X3JpZ2h0YnVzXzM+Owo+PiAgICAgICAgICB2ZGQtc3VwcGx5ID0gPCZidWNrM19y
ZWc+Owo+PiArICAgICAgIHBhcmVudCA9IDwmYnVzX2RtYz47Cj4gSXQgaXMgd3JvbmcuICdidXNf
bGVmdGJ1cycgaGFzIG5vdCBhbnkgaC93IGRlcGVuZGVuY3kgb2YgJ2J1c19kbWMnCj4gYW5kICdi
dXNfbGVmdGJ1cycgaXMgbm90IGNoaWxkIG9mICdidXNfZG1jJy4KPgo+IEV2ZW4gaXQgdGhlcmUg
YXJlIHNvbWUgUE1Rb1MgcmVxdWlyZW1lbnQgYmV0d2VlbiB0aGVtLAo+IGl0IGl0IG5vdCBwcm9w
ZXIgdG8gdGllIGJvdGggJ2J1c19sZWZ0YnVzJyBhbmQgJ2J1c19kbWMnLgoKVGhlcmUgaXMgc3Ry
aWN0IGRlcGVuZGVuY3kgYmV0d2VlbiB0aGVtLiBETUMgYnVzIHJ1bm5pbmcgYXQgZnJlcXVlbmN5
IApsb3dlciB0aGFuIGxlZnQgKG9yIHJpZ2h0KSBidXMgcmVhbGx5IGRvZXNuJ3QgbWFrZSBtdWNo
IHNlbnNlLCBiZWNhdXNlIAppdCB3aWxsIGxpbWl0IHRoZSBsZWZ0IGJ1cyBwZXJmb3JtYW5jZS4g
VGhpcyBkZXBlbmRlbmN5IHNob3VsZCBiZSAKbW9kZWxlZCBzb21laG93LgoKPj4gICAgICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kK
Pj4gaW5kZXggZDIwZGIyZGZlOGUyLi5hNzBhNjcxYWNhY2QgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9l
eHlub3M0NDEyLmR0c2kKPj4gQEAgLTM5MCw2ICszOTAsNyBAQAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0RNQz47Cj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2RtY19vcHBfdGFibGU+Owo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4gICAgICAgICAgICAgICAgICB9
Owo+Pgo+PiBAQCAtMzk4LDYgKzM5OSw3IEBACj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNsb2NrIENMS19ESVZfQUNQPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAg
IGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRp
bmctcG9pbnRzLXYyID0gPCZidXNfYWNwX29wcF90YWJsZT47Cj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgICAgICAgICAgICAgICAgIH07Cj4+Cj4+IEBA
IC00MDYsNiArNDA4LDcgQEAKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Y2xvY2sgQ0xLX0RJVl9DMkM+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFt
ZXMgPSAiYnVzIjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMt
djIgPSA8JmJ1c19kbWNfb3BwX3RhYmxlPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2lu
dGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1
cyA9ICJkaXNhYmxlZCI7Cj4+ICAgICAgICAgICAgICAgICAgfTsKPj4KPj4gQEAgLTQ1OSw2ICs0
NjIsNyBAQAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtf
RElWX0dETD47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMi
Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVz
X2xlZnRidXNfb3BwX3RhYmxlPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29u
bmVjdC1jZWxscyA9IDwwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4+ICAgICAgICAgICAgICAgICAgfTsKPj4KPj4gQEAgLTQ2Nyw2ICs0NzEsNyBA
QAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0dE
Uj47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRi
dXNfb3BwX3RhYmxlPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1j
ZWxscyA9IDwwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4+ICAgICAgICAgICAgICAgICAgfTsKPj4KPj4gQEAgLTQ3NSw2ICs0ODAsNyBAQAo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzE2MD47Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rpc3BsYXlfb3Bw
X3RhYmxlPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9
IDwwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+
ICAgICAgICAgICAgICAgICAgfTsKPj4KPj4gQEAgLTQ4Myw2ICs0ODksNyBAQAo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEzMz47Cj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2ZzeXNfb3BwX3RhYmxlPjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAgICAgICAg
ICAgICAgICAgfTsKPj4KPj4gQEAgLTQ5MSw2ICs0OTgsNyBAQAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEwMD47Cj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX3Blcmlfb3BwX3RhYmxlPjsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAgICAgICAgICAgICAgICAg
fTsKPj4KPj4gQEAgLTQ5OSw2ICs1MDcsNyBAQAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
Y2xvY2tzID0gPCZjbG9jayBDTEtfU0NMS19NRkM+Owo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIG9wZXJh
dGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgICAgICAgICAgICAgICAgIH07Cj4+
Cj4+IC0tCj4+IDIuMTcuMQo+Pgo+CkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwg
UGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
