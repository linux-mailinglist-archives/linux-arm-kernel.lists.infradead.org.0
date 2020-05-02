Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBCD1C2552
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 14:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mODCQsZFKuPCeoTQRpyZ7NLoQnl5Ob1VKNid0IbzIfY=; b=Wq1+KQzqBG+Vmv
	cJ3E8BjbAGf8+DHQLjnijHzxLbjjvN8hjoEm9UfxWUVkQj4/vQlCpfu+NyUedBhzLVtJT09+8JDOo
	h2VyQTE7+wguBhH1nHzrjsY3QDleQCnZkwekQ4WSy1TX8oA9msC1IKEm4DQeXMFu6WxUP/7jxgnWJ
	8ErYHI81QNYHceRY80TrBDfY5tlNOmm4QW/rBC7kmhafFl6K9wKC+rNn03uxw5Jusl63RKJjjwXFY
	rxUAhZWqQB6I5lahQYEZNvHbZIE1VJe2fKeD+EaoK2wzzNTKxXqbjdQNJ/CPbDTnjZUXHyttmtjPa
	KwiWJd3Vza8KKFo+9gGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrKI-0005DS-1u; Sat, 02 May 2020 12:33:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrK9-0005CV-1H
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 12:32:56 +0000
Received: from localhost (unknown [117.99.89.89])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 662812495F;
 Sat,  2 May 2020 12:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588422772;
 bh=CaJB6DBVyGlr/9xAlH4HqYuo52o/ACr5ode7VcyTKvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vXixllMtmdY2HFmni4yV9QnTKpN/QdjFc8YBFFPdwu3QXeTPz41oui3x5Za14SI/G
 wjFqi+uF7fjVKA5IBd/B1xW9PA/rD0NrrLsNkYinqE7HQZftDJmjA6e3eUWV8dITpB
 7s50WwTV8A9dh7aHcZDOD5JQPD6EpnhKX/451/fA=
Date: Sat, 2 May 2020 18:02:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWC?= Hibner <rafal.hibner@secom.com.pl>
Subject: Re: [PATCH] dma: zynqmp_dma: Initialize descriptor list after
 freeing during reset
Message-ID: <20200502123242.GB1375924@vkoul-mobl>
References: <20200428143225.3357-1-rafal.hibner@secom.com.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428143225.3357-1-rafal.hibner@secom.com.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_053255_028225_C353DE87 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gUmFmYcWCLAoKT24gMjgtMDQtMjAsIDE2OjMyLCBSYWZhxYIgSGlibmVyIHdyb3RlOgo+
IExpc3QgZWxlbWVudHMgYXJlIG5vdCBmb3JtYWxseSByZW1vdmVkIGZyb20gbGlzdCB0aGVyZWZv
cmUKPiBsaXN0IGhlYWQgaXMgbm90IGluaXRpYWxpemVkIGR1cmluZyB6eW5xbXBfZG1hX3Jlc2V0
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmFsIEhpYm5lciA8cmFmYWwuaGlibmVyQHNlY29tLmNv
bS5wbD4KPiAKPiBUaGlzIEJVRyBjYXVzZXMga2VybmVsIHBhbmljIHdoZW4gdHJhbnNhY3Rpb24g
aXMgdW5zdWNjZXNzZnVsOgo+ICAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0K
PiBbICAgNjIuNzEwNzMwXSBsaXN0X2FkZCBjb3JydXB0aW9uLiBwcmV2LT5uZXh0IHNob3VsZCBi
ZSBuZXh0IChmZmZmZmZjMDdkMzA4MDQwKSwgYnV0IHdhcyBkZWFkMDAwMDAwMDAwMTAwLiAocHJl
dj1mZmZmZmZjMDU0MGI0MGI4KS4KPiBbICAgNjIuNzI3OTYwXSBXQVJOSU5HOiBDUFU6IDAgUElE
OiAxODQ1IGF0IC9ob21lL3JhZmFsaDExL3p5bnFfcHJvai96eW5xX3BsYXRmb3JtL0tFUk5FTC9s
aW51eC14bG54L2xpYi9saXN0X2RlYnVnLmM6MjggX19saXN0X2FkZF92YWxpZCsweDc0LzB4YTAK
PiBbICAgNjIuNzQ2Mzc0XSBNb2R1bGVzIGxpbmtlZCBpbjogc2Vjb21fbXhfcnBtc2coTykgcnBt
c2dfY2hhciBzZWNvbV9teF9yZXR1bmUoTykgYWQ5NjgwKE8pIGFkNTY4Nl9zcGkoTykgYWQ1Njg2
KE8pIGFkNzI5OChPKSBsdGM1NTk0KE8pIGxteDI1OTQoTykgYWQ4MzY2KE8pIHNlY29tX214KE8p
IGF4aV9qZXNkMjA0X3J4KE8pIGF4aV9hZHhjdnIoTykgeGlsaW54X3RyYW5zY2VpdmVyKE8pIGNm
X2F4aV9hZGNfY29yZShPKSBobWM3MDQ0KE8pCj4gWyAgIDYyLjc2ODU0Nl0gQ1BVOiAwIFBJRDog
MTg0NSBDb21tOiBteCBUYWludGVkOiBHICAgICAgICAgICBPICAgICAgNC4xOS4wICMxMAo+IFsg
ICA2Mi43NzU1ODJdIEhhcmR3YXJlIG5hbWU6IHhsbngsenlucW1wIChEVCkKPiBbICAgNjIuNzc5
NzUwXSBwc3RhdGU6IDYwMDAwMDA1IChuWkN2IGRhaWYgLVBBTiAtVUFPKQo+IFsgICA2Mi43ODQ1
MjRdIHBjIDogX19saXN0X2FkZF92YWxpZCsweDc0LzB4YTAKPiBbICAgNjIuNzg4NjkwXSBsciA6
IF9fbGlzdF9hZGRfdmFsaWQrMHg3NC8weGEwCj4gWyAgIDYyLjc5Mjg1NV0gc3AgOiBmZmZmZmY4
MDA4MDAzZGEwCj4gWyAgIDYyLjc5NjE1NF0geDI5OiBmZmZmZmY4MDA4MDAzZGEwIHgyODogMDAw
MDAwMDAwMDAwMDAyMAo+IFsgICA2Mi44MDE0NTddIHgyNzogMDAwMDAwMDAwMDAwMDAwMCB4MjY6
IGRlYWQwMDAwMDAwMDAxMDAKPiBbICAgNjIuODA2NzYwXSB4MjU6IGZmZmZmZmMwN2QzMDgwNDAg
eDI0OiBmZmZmZmZjMDU0MGI0MGEwCj4gWyAgIDYyLjgxMjA2NF0geDIzOiBmZmZmZmZjMDdkMzA4
MDE4IHgyMjogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICA2Mi44MTczNTldIHgyMTogZmZmZmZmYzA3
ZDMwODAxOCB4MjA6IGZmZmZmZmMwNTQwYjQwYjgKPiBbICAgNjIuODIyNjU0XSB4MTk6IGZmZmZm
ZmMwNTQwYjQwYjggeDE4OiBmZmZmZmZmZmZmZmZmZmZmCj4gWyAgIDYyLjgyNzk1N10geDE3OiAw
MDAwMDAwMDAwMDAwMDAwIHgxNjogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICA2Mi44MzMyNTJdIHgx
NTogZmZmZmZmODAwOGY4ODY0OCB4MTQ6IDMwMzQzMDM4MzAzMzY0MzcKPiBbICAgNjIuODM4NTQ2
XSB4MTM6IGZmZmZmZjgwMDhmODg2NzAgeDEyOiBmZmZmZmY4MDA4NWQwZWMwCj4gWyAgIDYyLjg0
Mzg0MV0geDExOiBmZmZmZmY4MDA4ZjY1MDE4IHgxMDogMDAwMDAwMDAwMDAwMDAwNgo+IFsgICA2
Mi44NDkxMzZdIHg5IDogNjU3MjcwMjAyZTZlNmY2OSB4OCA6IDM0NjIzMDM0MzUzMDYzNjYKPiBb
ICAgNjIuODU0NDMxXSB4NyA6IDY2NjY2NjY2NjYzZDc2NjUgeDYgOiAwMDAwMDAwMDAwMDAwMWEy
Cj4gWyAgIDYyLjg1OTcyNl0geDUgOiAwMDAwMDAwMDAwMDAwMDY0IHg0IDogMDAwMDAwMDAwMDAw
MDAwMAo+IFsgICA2Mi44NjUwMjBdIHgzIDogMDAwMDAwMDAwMDAwMDAwMCB4MiA6IGZmZmZmZmZm
ZmZmZmZmZmYKPiBbICAgNjIuODcwMzE1XSB4MSA6IDBjYmVlNzY1YmEwZWM5MDAgeDAgOiAwMDAw
MDAwMDAwMDAwMDAwCj4gWyAgIDYyLjg3NTYxMV0gQ2FsbCB0cmFjZToKPiBbICAgNjIuODc4MDQy
XSAgX19saXN0X2FkZF92YWxpZCsweDc0LzB4YTAKPiBbICAgNjIuODgxODY0XSAgenlucW1wX2Rt
YV9mcmVlX2Rlc2NyaXB0b3IrMHg0OC8weDEwMAo+IFsgICA2Mi44ODY2NDRdICB6eW5xbXBfZG1h
X2NoYW5fZGVzY19jbGVhbnVwKzB4YjQvMHhmOAo+IFsgICA2Mi44OTE1MDVdICB6eW5xbXBfZG1h
X2RvX3Rhc2tsZXQrMHg2OC8weDExMAo+IFsgICA2Mi44OTU4NDddICB0YXNrbGV0X2FjdGlvbl9j
b21tb24uaXNyYS4zKzB4N2MvMHgxNjgKPiBbICAgNjIuOTAwODAxXSAgdGFza2xldF9hY3Rpb24r
MHgyNC8weDMwCj4gWyAgIDYyLjkwNDQ0N10gIF9fZG9fc29mdGlycSsweDEwYy8weDIwMAo+IFsg
ICA2Mi45MDgwOTJdICBpcnFfZXhpdCsweGFjLzB4YzAKPiBbICAgNjIuOTExMjE5XSAgX19oYW5k
bGVfZG9tYWluX2lycSsweDYwLzB4YjAKPiBbICAgNjIuOTE1MzA1XSAgZ2ljX2hhbmRsZV9pcnEr
MHg2NC8weGMwCj4gWyAgIDYyLjkxODk1MV0gIGVsMV9pcnErMHhiMC8weDE0MAo+IFsgICA2Mi45
MjIwNzhdICBzY2hlZHVsZV90aW1lb3V0KzB4MjE4LzB4M2EwCj4gWyAgIDYyLjkyNjA3N10gIHdh
aXRfZm9yX2NvbW1vbisweDE3MC8weDI2OAo+IFsgICA2Mi45Mjk5ODNdICB3YWl0X2Zvcl9jb21w
bGV0aW9uX3RpbWVvdXQrMHgxMC8weDE4Cj4gWyAgIDYyLjkzNDc2MV0gIGlvY3RsKzB4NjQvMHgy
NzAgW3NlY29tX214X3JldHVuZV0KPiBbICAgNjIuOTM5MjgxXSAgZG9fdmZzX2lvY3RsKzB4Yjgv
MHg5MDAKPiBbICAgNjIuOTQyODM4XSAga3N5c19pb2N0bCsweDQ0LzB4OTAKPiBbICAgNjIuOTQ2
MTM3XSAgX19hcm02NF9zeXNfaW9jdGwrMHgxYy8weDI4Cj4gWyAgIDYyLjk1MDA0NF0gIGVsMF9z
dmNfY29tbW9uKzB4NjAvMHhlOAo+IFsgICA2Mi45NTM2ODldICBlbDBfc3ZjX2hhbmRsZXIrMHg2
Yy8weDg4Cj4gWyAgIDYyLjk1NzQyMV0gIGVsMF9zdmMrMHg4LzB4Ywo+IFsgICA2Mi45NjAyODRd
IC0tLVsgZW5kIHRyYWNlIDkxYjRmZGZlNjg1NDQ2YzQgXS0tLQo+IFsgICA2Mi45NjQ5MzRdIC0t
LS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IAo+IC0tLQo+ICBkcml2ZXJzL2Rt
YS94aWxpbngvenlucW1wX2RtYS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS94aWxpbngvenlucW1wX2RtYS5jIGIv
ZHJpdmVycy9kbWEveGlsaW54L3p5bnFtcF9kbWEuYwo+IGluZGV4IDkzMWU0MWE3Mi4uYTJiMGJl
MDdlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hL3hpbGlueC96eW5xbXBfZG1hLmMKPiArKysg
Yi9kcml2ZXJzL2RtYS94aWxpbngvenlucW1wX2RtYS5jCj4gQEAgLTQ1Myw2ICs0NTMsNyBAQCBz
dGF0aWMgdm9pZCB6eW5xbXBfZG1hX2ZyZWVfZGVzY19saXN0KHN0cnVjdCB6eW5xbXBfZG1hX2No
YW4gKmNoYW4sCj4gIAo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGRlc2MsIG5leHQsIGxp
c3QsIG5vZGUpCj4gIAkJenlucW1wX2RtYV9mcmVlX2Rlc2NyaXB0b3IoY2hhbiwgZGVzYyk7Cj4g
KwlJTklUX0xJU1RfSEVBRChsaXN0KTsKCldvdWxkIGl0IG5vdCBiZSBiZXR0ZXIgdG8gdXNlIGxp
c3RfZGVsX2luaXQoKSB3aGVyZSB3ZSBkZWxldGUgaXQgcmF0aGVyCnRoYW4gZG8gdGhlIGluaXQg
aGVyZT8KClRoYW5rcwotLSAKflZpbm9kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
