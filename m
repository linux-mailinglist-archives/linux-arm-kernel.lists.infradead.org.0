Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B7A181BDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7KYNL1gYUmGy96C3r3AAhyq+p39iV997mCxHjpFz08w=; b=hRx7Z2J8XLgLp5cZXReKQUnvg
	Cp0SFFSPvkqYDuEjPunirABjGytDCuqlzKk/yYgV9E8f9+Y1m6XVDFh1SE4Eqv3INH3aQSnf10Z2/
	mD3MKwShvO4r17pPVHrdBQPRpglA38S9X/xTs5wqOXoIxEOmQW/HqG9Mm0ffcKTt3MG8qIkFUaEc8
	LdOnVS1Dv1o9ZjkA1EOTX0kvF8LQGC5y+7QnSy48XrnGV2PNMVL6fTrzsM1JP6LpOkZbnAOdD477v
	wH/3QqZKX6gR61ShvNnzKKGtiK+KcmuXmZ60FYSVtkUKuC6nLQgWFbqHzBHqJxH3KJS1raARrhOM/
	iMvLPM3tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2nQ-0002Wa-Fb; Wed, 11 Mar 2020 14:57:20 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2nI-0002VT-1F; Wed, 11 Mar 2020 14:57:14 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id A0C77BB0;
 Wed, 11 Mar 2020 22:56:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.2.106] (unknown [112.49.214.205])
 by smtp.263.net (postfix) whith ESMTP id
 P30134T140169747363584S1583938607895180_; 
 Wed, 11 Mar 2020 22:56:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d997085203b868c662318d0858d02951>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 112.49.214.205
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip vop bindings to
 yaml
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200311130515.10663-1-jbx6244@gmail.com>
From: "sandy.huang" <hjc@rock-chips.com>
Message-ID: <28eb8ff1-b180-ebf7-a74c-966c6c7df2db@rock-chips.com>
Date: Wed, 11 Mar 2020 22:56:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311130515.10663-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_075712_662313_89688A5B 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgam9oYW4sCgrU2iAyMDIwLzMvMTEgMjE6MDUsIEpvaGFuIEpvbmtlciDQtLXAOgo+IEN1cnJl
bnQgZHRzIGZpbGVzIHdpdGggJ3ZvcCcgbm9kZXMgYXJlIG1hbnVhbGx5IHZlcmlmaWVkLgo+IElu
IG9yZGVyIHRvIGF1dG9tYXRlIHRoaXMgcHJvY2VzcyByb2NrY2hpcC12b3AudHh0Cj4gaGFzIHRv
IGJlIGNvbnZlcnRlZCB0byB5YW1sLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxq
Yng2MjQ0QGdtYWlsLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHYyOgo+ICAgIE5vIG5ldyBwcm9wZXJ0
aWVzCj4gLS0tCj4gICAuLi4vYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3Au
dHh0ICAgICB8ICA3NCAtLS0tLS0tLS0tLS0KPiAgIC4uLi9iaW5kaW5ncy9kaXNwbGF5L3JvY2tj
aGlwL3JvY2tjaGlwLXZvcC55YW1sICAgIHwgMTI2ICsrKysrKysrKysrKysrKysrKysrKwo+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAxMjYgaW5zZXJ0aW9ucygrKSwgNzQgZGVsZXRpb25zKC0pCj4gICBk
ZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnR4dAo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZv
cC55YW1sCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC50eHQKPiBkZWxldGVk
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCA4YjNhNWY1MTQuLjAwMDAwMDAwMAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlw
LXZvcC50eHQKPiArKysgL2Rldi9udWxsCj4gQEAgLTEsNzQgKzAsMCBAQAo+IC1kZXZpY2UtdHJl
ZSBiaW5kaW5ncyBmb3Igcm9ja2NoaXAgc29jIGRpc3BsYXkgY29udHJvbGxlciAodm9wKQo+IC0K
PiAtVk9QIChWaXN1YWwgT3V0cHV0IFByb2Nlc3NvcikgaXMgdGhlIERpc3BsYXkgQ29udHJvbGxl
ciBmb3IgdGhlIFJvY2tjaGlwCgpDYW4geW91IGNoYW5nZSAoVmlzdWFsIE91dCBQcm9jZXNzb3Ip
IHRvIChWaWRlbyBPdXQgUHJvY2Vzc29yKSBieSB0aGUgCndheSwgd2UgaGF2ZSBjaGFuZ2UgdGhp
cyBhdCB0aGUgbGF0ZXN0IFRSTSBkb2N1bWVudC4gdGhhbmtzLgoKPiAtc2VyaWVzIG9mIFNvQ3Mg
d2hpY2ggdHJhbnNmZXJzIHRoZSBpbWFnZSBkYXRhIGZyb20gYSB2aWRlbyBtZW1vcnkKPiAtYnVm
ZmVyIHRvIGFuIGV4dGVybmFsIExDRCBpbnRlcmZhY2UuCj4gLQo+IC1SZXF1aXJlZCBwcm9wZXJ0
aWVzOgo+IC0tIGNvbXBhdGlibGU6IHZhbHVlIHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2lu
Zwo+IC0JCSJyb2NrY2hpcCxyazMwMzYtdm9wIjsKPiAtCQkicm9ja2NoaXAscmszMTI2LXZvcCI7
Cj4gLQkJInJvY2tjaGlwLHB4MzAtdm9wLWxpdCI7Cj4gLQkJInJvY2tjaGlwLHB4MzAtdm9wLWJp
ZyI7Cj4gLQkJInJvY2tjaGlwLHJrMzA2Ni12b3AiOwo+IC0JCSJyb2NrY2hpcCxyazMxODgtdm9w
IjsKPiAtCQkicm9ja2NoaXAscmszMjg4LXZvcCI7Cj4gLQkJInJvY2tjaGlwLHJrMzM2OC12b3Ai
Owo+IC0JCSJyb2NrY2hpcCxyazMzNjYtdm9wIjsKPiAtCQkicm9ja2NoaXAscmszMzk5LXZvcC1i
aWciOwo+IC0JCSJyb2NrY2hpcCxyazMzOTktdm9wLWxpdCI7Cj4gLQkJInJvY2tjaGlwLHJrMzIy
OC12b3AiOwo+IC0JCSJyb2NrY2hpcCxyazMzMjgtdm9wIjsKPiAtCj4gLS0gcmVnOiBNdXN0IGNv
bnRhaW4gb25lIGVudHJ5IGNvcnJlc3BvbmRpbmcgdG8gdGhlIGJhc2UgYWRkcmVzcyBhbmQgbGVu
Z3RoCj4gLQlvZiB0aGUgcmVnaXN0ZXIgc3BhY2UuIENhbiBvcHRpb25hbGx5IGNvbnRhaW4gYSBz
ZWNvbmQgZW50cnkKPiAtCWNvcnJlc3BvbmRpbmcgdG8gdGhlIENSVEMgZ2FtbWEgTFVUIGFkZHJl
c3MuCj4gLQo+IC0tIGludGVycnVwdHM6IHNob3VsZCBjb250YWluIGEgbGlzdCBvZiBhbGwgVk9Q
IElQIGJsb2NrIGludGVycnVwdHMgaW4gdGhlCj4gLQkJIG9yZGVyOiBWU1lOQywgTENEX1NZU1RF
TS4gVGhlIGludGVycnVwdCBzcGVjaWZpZXIKPiAtCQkgZm9ybWF0IGRlcGVuZHMgb24gdGhlIGlu
dGVycnVwdCBjb250cm9sbGVyIHVzZWQuCj4gLQo+IC0tIGNsb2NrczogbXVzdCBpbmNsdWRlIGNs
b2NrIHNwZWNpZmllcnMgY29ycmVzcG9uZGluZyB0byBlbnRyaWVzIGluIHRoZQo+IC0JCWNsb2Nr
LW5hbWVzIHByb3BlcnR5Lgo+IC0KPiAtLSBjbG9jay1uYW1lczogTXVzdCBjb250YWluCj4gLQkJ
YWNsa192b3A6IGZvciBkZHIgYnVmZmVyIHRyYW5zZmVyLgo+IC0JCWhjbGtfdm9wOiBmb3IgYWhi
IGJ1cyB0byBSL1cgdGhlIHBoeSByZWdzLgo+IC0JCWRjbGtfdm9wOiBwaXhlbCBjbG9jay4KPiAt
Cj4gLS0gcmVzZXRzOiBNdXN0IGNvbnRhaW4gYW4gZW50cnkgZm9yIGVhY2ggZW50cnkgaW4gcmVz
ZXQtbmFtZXMuCj4gLSAgU2VlIC4uL3Jlc2V0L3Jlc2V0LnR4dCBmb3IgZGV0YWlscy4KPiAtLSBy
ZXNldC1uYW1lczogTXVzdCBpbmNsdWRlIHRoZSBmb2xsb3dpbmcgZW50cmllczoKPiAtICAtIGF4
aQo+IC0gIC0gYWhiCj4gLSAgLSBkY2xrCj4gLQo+IC0tIGlvbW11czogcmVxdWlyZWQgYSBpb21t
dSBub2RlCj4gLQo+IC0tIHBvcnQ6IEEgcG9ydCBub2RlIHdpdGggZW5kcG9pbnQgZGVmaW5pdGlv
bnMgYXMgZGVmaW5lZCBpbgo+IC0gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS92aWRlby1pbnRlcmZhY2VzLnR4dC4KPiAtCj4gLUV4YW1wbGU6Cj4gLVNvQyBzcGVjaWZp
YyBEVCBlbnRyeToKPiAtCXZvcGI6IHZvcGJAZmY5MzAwMDAgewo+IC0JCWNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszMjg4LXZvcCI7Cj4gLQkJcmVnID0gPDB4MCAweGZmOTMwMDAwIDB4MCAweDE5
Yz4sIDwweDAgMHhmZjkzMTAwMCAweDAgMHgxMDAwPjsKPiAtCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gLQkJY2xvY2tzID0gPCZjcnUgQUNMS19WT1Aw
PiwgPCZjcnUgRENMS19WT1AwPiwgPCZjcnUgSENMS19WT1AwPjsKPiAtCQljbG9jay1uYW1lcyA9
ICJhY2xrX3ZvcCIsICJkY2xrX3ZvcCIsICJoY2xrX3ZvcCI7Cj4gLQkJcmVzZXRzID0gPCZjcnUg
U1JTVF9MQ0RDMV9BWEk+LCA8JmNydSBTUlNUX0xDREMxX0FIQj4sIDwmY3J1IFNSU1RfTENEQzFf
RENMSz47Cj4gLQkJcmVzZXQtbmFtZXMgPSAiYXhpIiwgImFoYiIsICJkY2xrIjsKPiAtCQlpb21t
dXMgPSA8JnZvcGJfbW11PjsKPiAtCQl2b3BiX291dDogcG9ydCB7Cj4gLQkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+Owo+IC0JCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiAtCQkJdm9wYl9vdXRfZWRwOiBl
bmRwb2ludEAwIHsKPiAtCQkJCXJlZyA9IDwwPjsKPiAtCQkJCXJlbW90ZS1lbmRwb2ludD08JmVk
cF9pbl92b3BiPjsKPiAtCQkJfTsKPiAtCQkJdm9wYl9vdXRfaGRtaTogZW5kcG9pbnRAMSB7Cj4g
LQkJCQlyZWcgPSA8MT47Cj4gLQkJCQlyZW1vdGUtZW5kcG9pbnQ9PCZoZG1pX2luX3ZvcGI+Owo+
IC0JCQl9Owo+IC0JCX07Cj4gLQl9Owo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZv
cC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAuLmNiODg4NDlm
Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AueWFtbAo+IEBAIC0wLDAgKzEsMTI2IEBA
Cj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArJVlBTUwgMS4yCj4gKy0t
LQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAtdm9wLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFJvY2tjaGlwIHNvYyBkaXNwbGF5IGNv
bnRyb2xsZXIgKFZPUCkKPiArCj4gK2Rlc2NyaXB0aW9uOgo+ICsgIFZPUCAoVmlzdWFsIE91dHB1
dCBQcm9jZXNzb3IpIGlzIHRoZSBEaXNwbGF5IENvbnRyb2xsZXIgZm9yIHRoZSBSb2NrY2hpcAo+
ICsgIHNlcmllcyBvZiBTb0NzIHdoaWNoIHRyYW5zZmVycyB0aGUgaW1hZ2UgZGF0YSBmcm9tIGEg
dmlkZW8gbWVtb3J5Cj4gKyAgYnVmZmVyIHRvIGFuIGV4dGVybmFsIExDRCBpbnRlcmZhY2UuCj4g
Kwo+ICttYWludGFpbmVyczoKPiArICAtIFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
Cj4gKyAgLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICsKPiArcHJvcGVydGll
czoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gY29uc3Q6IHJvY2tj
aGlwLHB4MzAtdm9wLWJpZwo+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxweDMwLXZvcC1saXQK
PiArICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMDM2LXZvcAo+ICsgICAgICAtIGNvbnN0OiBy
b2NrY2hpcCxyazMwNjYtdm9wCj4gKyAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzEyNi12b3AK
PiArICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMTg4LXZvcAo+ICsgICAgICAtIGNvbnN0OiBy
b2NrY2hpcCxyazMyMjgtdm9wCj4gKyAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzI4OC12b3AK
PiArICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzI4LXZvcAo+ICsgICAgICAtIGNvbnN0OiBy
b2NrY2hpcCxyazMzNjYtdm9wCj4gKyAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM2OC12b3AK
PiArICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5LXZvcC1iaWcKPiArICAgICAgLSBjb25z
dDogcm9ja2NoaXAscmszMzk5LXZvcC1saXQKPiArCj4gKyAgcmVnOgo+ICsgICAgbWluSXRlbXM6
IDEKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgTXVz
dCBjb250YWluIG9uZSBlbnRyeSBjb3JyZXNwb25kaW5nIHRvIHRoZSBiYXNlIGFkZHJlc3MgYW5k
IGxlbmd0aAo+ICsgICAgICAgICAgb2YgdGhlIHJlZ2lzdGVyIHNwYWNlLgo+ICsgICAgICAtIGRl
c2NyaXB0aW9uOgo+ICsgICAgICAgICAgQ2FuIG9wdGlvbmFsbHkgY29udGFpbiBhIHNlY29uZCBl
bnRyeSBjb3JyZXNwb25kaW5nIHRvCj4gKyAgICAgICAgICB0aGUgQ1JUQyBnYW1tYSBMVVQgYWRk
cmVzcy4KPiArCj4gKyAgaW50ZXJydXB0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAgICBkZXNj
cmlwdGlvbjoKPiArICAgICAgU2hvdWxkIGNvbnRhaW4gYSBsaXN0IG9mIGFsbCBWT1AgSVAgYmxv
Y2sgaW50ZXJydXB0cyBpbiB0aGUKPiArICAgICAgb3JkZXIgVlNZTkMsIExDRF9TWVNURU0uIFRo
ZSBpbnRlcnJ1cHQgc3BlY2lmaWVyCj4gKyAgICAgIGZvcm1hdCBkZXBlbmRzIG9uIHRoZSBpbnRl
cnJ1cHQgY29udHJvbGxlciB1c2VkLgo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoKPiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogQ2xvY2sgZm9yIGRkciBidWZmZXIgdHJhbnNmZXIuCj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IFBpeGVsIGNsb2NrLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBD
bG9jayBmb3IgdGhlIGFoYiBidXMgdG8gUi9XIHRoZSBwaHkgcmVncy4KPiArCj4gKyAgY2xvY2st
bmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogYWNsa192b3AKPiArICAgICAg
LSBjb25zdDogZGNsa192b3AKPiArICAgICAgLSBjb25zdDogaGNsa192b3AKPiArCj4gKyAgcmVz
ZXRzOgo+ICsgICAgbWluSXRlbXM6IDMKPiArICAgIG1heEl0ZW1zOiAzCj4gKwo+ICsgIHJlc2V0
LW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGF4aQo+ICsgICAgICAtIGNv
bnN0OiBhaGIKPiArICAgICAgLSBjb25zdDogZGNsawo+ICsKPiArICBwb3J0Ogo+ICsgICAgdHlw
ZTogb2JqZWN0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgQSBwb3J0IG5vZGUgd2l0aCBl
bmRwb2ludCBkZWZpbml0aW9ucyBhcyBkZWZpbmVkIGluCj4gKyAgICAgIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS92aWRlby1pbnRlcmZhY2VzLnR4dC4KPiArCj4gKyAg
aW9tbXVzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0
aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBpbnRlcnJ1cHRzCj4gKyAgLSBjbG9ja3MKPiArICAtIGNs
b2NrLW5hbWVzCj4gKyAgLSByZXNldHMKPiArICAtIHJlc2V0LW5hbWVzCj4gKyAgLSBwb3J0Cj4g
Kwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0g
fAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzI4OC1jcnUuaD4KPiArICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4g
KyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Cj4g
KyAgICB2b3BiOiB2b3BiQGZmOTMwMDAwIHsKPiArICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazMyODgtdm9wIjsKPiArICAgICAgcmVnID0gPDB4MCAweGZmOTMwMDAwIDB4MCAweDE5Yz4s
Cj4gKyAgICAgICAgICAgIDwweDAgMHhmZjkzMTAwMCAweDAgMHgxMDAwPjsKPiArICAgICAgaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDE1IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICBjbG9j
a3MgPSA8JmNydSBBQ0xLX1ZPUDA+LAo+ICsgICAgICAgICAgICAgICA8JmNydSBEQ0xLX1ZPUDA+
LAo+ICsgICAgICAgICAgICAgICA8JmNydSBIQ0xLX1ZPUDA+Owo+ICsgICAgICBjbG9jay1uYW1l
cyA9ICJhY2xrX3ZvcCIsICJkY2xrX3ZvcCIsICJoY2xrX3ZvcCI7Cj4gKyAgICAgIHJlc2V0cyA9
IDwmY3J1IFNSU1RfTENEQzFfQVhJPiwKPiArICAgICAgICAgICAgICAgPCZjcnUgU1JTVF9MQ0RD
MV9BSEI+LAo+ICsgICAgICAgICAgICAgICA8JmNydSBTUlNUX0xDREMxX0RDTEs+Owo+ICsgICAg
ICByZXNldC1uYW1lcyA9ICJheGkiLCAiYWhiIiwgImRjbGsiOwo+ICsgICAgICBpb21tdXMgPSA8
JnZvcGJfbW11PjsKPiArICAgICAgdm9wYl9vdXQ6IHBvcnQgewo+ICsgICAgICAgICNhZGRyZXNz
LWNlbGxzID0gPDE+Owo+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICsgICAgICAgIHZv
cGJfb3V0X2VkcDogZW5kcG9pbnRAMCB7Cj4gKyAgICAgICAgICByZWcgPSA8MD47Cj4gKyAgICAg
ICAgICByZW1vdGUtZW5kcG9pbnQ9PCZlZHBfaW5fdm9wYj47Cj4gKyAgICAgICAgfTsKPiArICAg
ICAgICB2b3BiX291dF9oZG1pOiBlbmRwb2ludEAxIHsKPiArICAgICAgICAgIHJlZyA9IDwxPjsK
PiArICAgICAgICAgIHJlbW90ZS1lbmRwb2ludD08JmhkbWlfaW5fdm9wYj47Cj4gKyAgICAgICAg
fTsKPiArICAgICAgfTsKPiArICAgIH07CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
