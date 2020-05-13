Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D2C1D1E8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 21:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OT3ayke7EA4J9FVn7EWOi1uJOQXyBl2ZDbx8XEHoAuA=; b=T6LQiMG/LDJVAZ
	8McnT3mAsWwx4l5Jl3No+vHedJ3ylhreTXKYuD4YNgibI2UEr7moS61LkXyeCaGLRNr0vWyLiTtvm
	RxDz5OphzjzpXvvsINqz7snXt5Xqk+ydKOfM08HUxgd2VOGRkMtkqItDoB+snFW7ydXk/ZkfGeOpy
	NgGZNfmRkBUiHp4vjRFpvqr/migXpeAkqSIFSMGyH56TavrWY2/O+3rqido4QFmLK4O8Rih5BqBuN
	Kz0QwP6SYbYbGqkwTM2eXSHzSyr/xjMC2AKqZhwItq+jINFse5WJKiMfW//x+C/f8zWQb/jHGqQgA
	SqITLO8cM0+ovIbP2FZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwkB-0006y0-4I; Wed, 13 May 2020 19:08:39 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwk2-0006xX-PY
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 19:08:32 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPSA id 984EA140C67;
 Wed, 13 May 2020 21:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1589396905; bh=GRqsH3e9SUpbdJmBU0JJDXOCaFV9KW4ZAxwv2OrWmRA=;
 h=Date:From:To;
 b=wfC95LHJaSAZI/kXFQdN3UCgu1NG0lc+2iGIcWfUei+Hf3E0YIFZLtawZBehW+6CL
 htEzAoJXGRC18QUGhD6gOZ+W/JotGHombgzpTodJvQRZWIHlJU7SNr8Gvf/VDgd4Ea
 yzChuft5f+ZuUMOG8V7RfcUiObneT8hk9h3q9eYM=
Date: Wed, 13 May 2020 21:08:25 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Domenico Andreoli <domenico.andreoli@linux.com>
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox.dts: fix
 sdhci1 pins
Message-ID: <20200513210825.0f8bc9ec@nic.cz>
In-Reply-To: <20200513175648.GA7561@dumbo>
References: <20200513175648.GA7561@dumbo>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_120831_125959_8B811BCF 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
 Leigh Brown <leigh@solinno.co.uk>, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG9tZW5pY28sCgpJIGFtIG5vdCBhd2FyZSBvZiBzdWNoIGJ1Zy4gVGhlIGxpbmsgZnJvbSB5
b3UgbWVzc2FnZSBkb2VzIG5vdCB3b3JrIChpdApzYXlzIE1lc3NhZ2UtSUQgPDE2NWZkZWI1NTgz
MDY5ZDg5MzQzNmU5NWNhYzU0MzZAc29saW5uby5jby51az4gbm90CmZvdW5kKS4KCkNvdWxkIHlv
dSBwbGVhc2UgcmVzZW5kIHRoZSBtZXNzYWdlIGRlc2NyaWJpbmcgdGhlIHByb2JsZW0/CgpNYXJl
awoKT24gV2VkLCAxMyBNYXkgMjAyMCAxOTo1Njo0OCArMDIwMApEb21lbmljbyBBbmRyZW9saSA8
ZG9tZW5pY28uYW5kcmVvbGlAbGludXguY29tPiB3cm90ZToKCj4gRnJvbTogRG9tZW5pY28gQW5k
cmVvbGkgPGRvbWVuaWNvLmFuZHJlb2xpQGxpbnV4LmNvbT4KPiAKPiBJbiBvcmRlciB0byB1c2Ug
dGhlIHNkY2FyZCBzbG90IG9uIFR1cnJpcyBNT1ggaXQgaXMgbmVjZXNzYXJ5IHRvIG11eAo+IHRo
ZSBzZGlvMCBwaW5zIGluIHRoZSBub3J0aC1icmlkZ2UsIHdoaWNoIGFyZSBoZXJlaW4gYWxzbyBh
ZGRlZC4KPiAKPiBUaGlzIGZpeGVzIHRoZSBib290IHByb2JsZW0gcmVwb3J0ZWQgYXQgWzBdLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IERvbWVuaWNvIEFuZHJlb2xpIDxkb21lbmljby5hbmRyZW9saUBs
aW51eC5jb20+Cj4gQ2M6IEdyZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4u
Y29tPgo+IENjOiAiTWFyZWsgQmVow7puIiA8bWFyZWsuYmVodW5AbmljLmN6Pgo+IENjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAKPiBbMF0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8xNjVmZGViNTU4MzA2OWQ4OTM0MzZlOTVjYWM1NDM2
QHNvbGlubm8uY28udWsvCj4gCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyB8ICAgIDIgKy0KPiAgYXJjaC9hcm02NC9ib290L2R0
cy9tYXJ2ZWxsL2FybWFkYS0zN3h4LmR0c2kgICAgICAgICAgIHwgICAgNSArKysrKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IEluZGV4OiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwo+
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3
MjAtdHVycmlzLW1veC5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTM3MjAtdHVycmlzLW1veC5kdHMKPiBAQCAtMTczLDcgKzE3Myw3IEBACj4gIAo+ICAmc2Ro
Y2kxIHsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gLQlwaW5jdHJsLTAgPSA8JnNk
aW9fcGlucz47Cj4gKwlwaW5jdHJsLTAgPSA8JnNkaW8wX3BpbnMgJnNkaW9fcGlucz47Cj4gIAlu
b24tcmVtb3ZhYmxlOwo+ICAJYnVzLXdpZHRoID0gPDQ+Owo+ICAJbWFydmVsbCxwYWQtdHlwZSA9
ICJzZCI7Cj4gSW5kZXg6IGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4
LmR0c2kKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Fy
bWFkYS0zN3h4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRh
LTM3eHguZHRzaQo+IEBAIC0yNDQsNiArMjQ0LDExIEBACj4gIAkJCQkJZ3JvdXBzID0gImVtbWNf
bmIiOwo+ICAJCQkJCWZ1bmN0aW9uID0gImVtbWMiOwo+ICAJCQkJfTsKPiArCj4gKwkJCQlzZGlv
MF9waW5zOiBzZGlvMC1waW5zIHsKPiArCQkJCQlncm91cHMgPSAic2RpbzAiOwo+ICsJCQkJCWZ1
bmN0aW9uID0gInNkaW8iOwo+ICsJCQkJfTsKPiAgCQkJfTsKPiAgCj4gIAkJCW5iX3BtOiBzeXNj
b25AMTQwMDAgewo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
