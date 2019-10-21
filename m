Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AECDE779
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XQLTweIgXd0dLA8DdisL4L2bFpCph+OVn4aAK1iXTcg=; b=TmcwsKCRGk4lT2bE+Xa0EHPO8
	psU2G6UkwincMEQMn1BPq9u1p9jiLZLf3Rx033EajEh6GN7UXiKGApnJgkD5a/+qGKReCSthQ/okP
	XhmYujbprHHpYxMmdOhu7bqNbA2TohHS+qqYq+viiGPu8BlLmTkiUdQOaSutB1/QEQnbfr6+6cL/7
	ZgZrDmfz9xbR4MHb6QkIW+yivRGqvDeUITuzKayrseUDQu3pxEZBPLADL3+Noo0OHexzPMvjrt899
	V12yGFWp++MA3s+Lq5UMWnyVurRduP1sb5onRejLM6ShH7KrcE9EIgAbdTdDoSfiTq8NoxYgWPL2b
	MNuu62s7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTjV-00081X-Im; Mon, 21 Oct 2019 09:12:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTjI-00080g-Gk; Mon, 21 Oct 2019 09:11:59 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2C41047C0C;
 Mon, 21 Oct 2019 17:09:27 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.67] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14676T139991093077760S1571648966711348_; 
 Mon, 21 Oct 2019 17:09:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dcec87c863f149527207a6b7e5b402df>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add core dts for RK3308 SOC
To: Heiko Stuebner <heiko@sntech.de>
References: <20191017030242.32219-1-andy.yan@rock-chips.com>
 <20191017030449.32289-1-andy.yan@rock-chips.com> <5242916.cCMrPAA6xQ@phil>
From: Andy Yan <andy.yan@rock-chips.com>
Message-ID: <35a37c31-0e28-1900-1e50-d6b7dc78266b@rock-chips.com>
Date: Mon, 21 Oct 2019 17:09:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5242916.cCMrPAA6xQ@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021157_504969_C74E6BFE 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org,
 tony.xie@rock-chips.com, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa286CgpUaGFua3MgZm9yIHlvdXIga2luZGx5IHJldmlldy4KCk9uIDEwLzE4LzE5IDc6
MzAgQU0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhpIEFuZHksCj4KPiBBbSBEb25uZXJzdGFn
LCAxNy4gT2t0b2JlciAyMDE5LCAwNTowNDo0OSBDRVNUIHNjaHJpZWIgQW5keSBZYW46Cj4KPj4g
Kwlwc2NpIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJhcm0scHNjaS0xLjAiOwo+PiArCQltZXRob2Qg
PSAic21jIjsKPj4gKwl9Owo+IFBsZWFzZSBhbHNvIHByb3ZpZGUgYSBBVEYgaW1wbGVtZW50YXRp
b24gZm9yIHRoZSByazMzMDggOi0pCj4gW05vdCBhIHJlcXVpcmVtZW50IGZvciBnZXR0aW5nIHRo
aXMgbWVyZ2VkLCBidXQgaXQgd291bGQgYmUKPiByZWFsbHkgY29vbCB0byBoYXZlIHNvdXJjZXMg
Zm9yIHRoZSBmdWxsIHN0YWNrXQoKClRvbnkncyB0ZWFtIGhhcyB0aGUgcGxhbiB0byBkbyBpdC4K
Cj4+ICsKPj4gKwlyYW1vb3BzX21lbTogcmFtb29wc19tZW0gewo+PiArCQlyZWcgPSA8MHgwIDB4
MTEwMDAwIDB4MCAweGYwMDAwPjsKPj4gKwkJcmVnLW5hbWVzID0gInJhbW9vcHNfbWVtIjsKPj4g
Kwl9Owo+PiArCj4+ICsJcmFtb29wczogcmFtb29wcyB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicmFt
b29wcyI7Cj4+ICsJCXJlY29yZC1zaXplID0gPDB4MCAweDMwMDAwPjsKPj4gKwkJY29uc29sZS1z
aXplID0gPDB4MCAweGMwMDAwPjsKPj4gKwkJZnRyYWNlLXNpemUgPSA8MHgwIDB4MDAwMDA+Owo+
PiArCQlwbXNnLXNpemUgPSA8MHgwIDB4MDAwMDA+Owo+PiArCQltZW1vcnktcmVnaW9uID0gPCZy
YW1vb3BzX21lbT47Cj4+ICsJfTsKPiBJIHRoaW5rIHJhbW9vcHMgYXJlIG1vcmUgYSBwZXItYm9h
cmQgdGhpbmcsIGxpa2UgZm9yIHRoZSBldmIuCj4gQXMgdGhleSdsbCByZXF1aXJlIGNvb3BlcmF0
aW9uIHdpdGggYm9vdGxvYWRlcnMgdG8gbm90IG1hbmdsZSB0aGF0Cj4gbWVtb3J5IGFyZWEuIEZv
ciB0aGlzIHBsZWFzZSBhbHNvIGNvb3JkaW5hdGUgd2l0aCBLZXZlciBiZWNhdXNlCj4gSSBzb21l
aG93IHJlbWVtYmVyIHdlIGhhdmUgdS1ib290IHNvbWV0aW1lcyBhdCAweDEwMDAwMC4KPgpJIHJl
bW92ZWQgaXQgaW4gVjIuCj4+ICsJZ3JmOiBncmZAZmYwMDAwMDAgewo+PiArCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzMwOC1ncmYiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+IFBsZWFz
ZSBhZGQgYSBwYXRjaCBhZGRpbmcgdGhlIHJvY2tjaGlwLHJrMzMwOC1ncmYgY29tcGF0aWJsZSB0
bwo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnR4
dAoKCkRvbmUKCj4KPj4gKwkJcmVnID0gPDB4MCAweGZmMDAwMDAwIDB4MCAweDEwMDAwPjsKPj4g
Kwo+PiArCQlyZWJvb3QtbW9kZSB7Cj4+ICsJCQljb21wYXRpYmxlID0gInN5c2Nvbi1yZWJvb3Qt
bW9kZSI7Cj4+ICsJCQlvZmZzZXQgPSA8MHg1MDA+Owo+PiArCQkJbW9kZS1ib290bG9hZGVyID0g
PEJPT1RfQkxfRE9XTkxPQUQ+Owo+PiArCQkJbW9kZS1sb2FkZXIgPSA8Qk9PVF9CTF9ET1dOTE9B
RD47Cj4+ICsJCQltb2RlLW5vcm1hbCA9IDxCT09UX05PUk1BTD47Cj4+ICsJCQltb2RlLXJlY292
ZXJ5ID0gPEJPT1RfUkVDT1ZFUlk+Owo+PiArCQkJbW9kZS1mYXN0Ym9vdCA9IDxCT09UX0ZBU1RC
T09UPjsKPj4gKwkJfTsKPj4gKwl9Owo+PiArCj4+ICsJZGV0ZWN0X2dyZjogc3lzY29uQGZmMDBi
MDAwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4gCWNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszMzA4LWRldGVjdC1ncmYiLCAic3lzY29uIgo+ICsgYWRkIHRo
ZSByazMzMDgtZGV0ZWN0LWdyZiB0byB0aGUgYmluZGluZwpEb25lCj4+ICsJCXJlZyA9IDwweDAg
MHhmZjAwYjAwMCAweDAgMHgxMDAwPjsKPj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJ
CSNzaXplLWNlbGxzID0gPDE+Owo+PiArCX07Cj4+ICsKPj4gKwljb3JlX2dyZjogc3lzY29uQGZm
MDBjMDAwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4gc2Ft
ZSBhcyBkZXRlY3RfZ3JmCkRvbmUKPgo+PiArCQlyZWcgPSA8MHgwIDB4ZmYwMGMwMDAgMHgwIDB4
MTAwMD47Cj4+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkjc2l6ZS1jZWxscyA9IDwx
PjsKPj4gKwo+PiArCX07Cj4+ICsKPj4gKwlpMmMwOiBpMmNAZmYwNDAwMDAgewo+PiArCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1pMmMiOwo+IAljb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzMwOC1pMmMiLCAicm9ja2NoaXAscmszMzk5LWkyYyI7Cj4gU2FtZSBmb3IgYWxsIGkyYyBj
b250cm9sbGVycy4KRG9uZQo+Cj4+ICsJCXJlZyA9IDwweDAgMHhmZjA0MDAwMCAweDAgMHgxMDAw
PjsKPj4gKwkJY2xvY2tzID0gPCZjcnUgU0NMS19JMkMwPiwgPCZjcnUgUENMS19JMkMwPjsKPj4g
KwkJY2xvY2stbmFtZXMgPSAiaTJjIiwgInBjbGsiOwo+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTEgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4+ICsJCXBpbmN0cmwtMCA9IDwmaTJjMF94ZmVyPjsKPj4gKwkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+PiArCX07Cj4KPj4gKwlzcGkwOiBzcGlAZmYxMjAwMDAgewo+PiArCQljb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzMwOC1zcGkiLCAicm9ja2NoaXAscmszMDY2LXNwaSI7Cj4+ICsJCXJlZyA9
IDwweDAgMHhmZjEyMDAwMCAweDAgMHgxMDAwPjsKPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDE1IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4g
KwkJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsJCWNsb2NrcyA9IDwmY3J1IFNDTEtfU1BJMD4sIDwm
Y3J1IFBDTEtfU1BJMD47Cj4+ICsJCWNsb2NrLW5hbWVzID0gInNwaWNsayIsICJhcGJfcGNsayI7
Cj4+ICsJCWRtYXMgPSA8JmRtYWMwIDA+LCA8JmRtYWMwIDE+Owo+PiArCQlkbWEtbmFtZXMgPSAi
dHgiLCAicngiOwo+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAiaGlnaF9zcGVlZCI7
Cj4gdGhlcmUgaXMgbm8gaGlnaF9zcGVlZCBwaW5jdHJsIGRlZmluZWQgZm9yIHRoZSBSb2NrY2hp
cCBzcGkgZHJpdmVyCj4gaW4gbWFpbmxpbmUsIHNvIHRoaXMgcGFydCBzaG91bGQgZ28gYXdheSBp
biBhIGZpcnN0IHN0ZXAuCj4gU2FtZSBmb3IgdGhlIG90aGVyIHNwaSBjb250cm9sbGVycy4KPgpS
ZW1vdmVkCj4+ICsJCXBpbmN0cmwtMCA9IDwmc3BpMF9jbGsgJnNwaTBfY3NuMCAmc3BpMF9taXNv
ICZzcGkwX21vc2k+Owo+PiArCQlwaW5jdHJsLTEgPSA8JnNwaTBfY2xrX2hzICZzcGkwX2NzbjAg
JnNwaTBfbWlzb19ocyAmc3BpMF9tb3NpX2hzPjsKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsK
Pj4gKwl9Owo+Cj4+ICsJcmt0aW1lcjogcmt0aW1lckBmZjFhMDAwMCB7Cj4+ICsJCWNvbXBhdGli
bGUgPSAicm9ja2NoaXAscmszMjg4LXRpbWVyIjsKPiAJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azMzMDgtdGltZXIiLCAicm9ja2NoaXAscmszMjg4LXRpbWVyIjsKRG9uZQo+Cj4+ICsJCXJlZyA9
IDwweDAgMHhmZjFhMDAwMCAweDAgMHgyMD47Cj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAy
NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJY2xvY2tzID0gPCZjcnUgUENMS19USU1FUj4s
IDwmY3J1IFNDTEtfVElNRVIwPjsKPj4gKwkJY2xvY2stbmFtZXMgPSAicGNsayIsICJ0aW1lciI7
Cj4+ICsJfTsKPgo+Cj4+ICsJYW1iYSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAiYXJtLGFtYmEtYnVz
IjsKPiBjb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwoKRG9uZQo+PiArCQkjYWRkcmVzcy1jZWxs
cyA9IDwyPjsKPj4gKwkJI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICsJCXJhbmdlczsKPj4gKwo+PiAr
CQlkbWFjMDogZG1hLWNvbnRyb2xsZXJAZmYyYzAwMDAgewo+PiArCQkJY29tcGF0aWJsZSA9ICJh
cm0scGwzMzAiLCAiYXJtLHByaW1lY2VsbCI7Cj4+ICsJCQlyZWcgPSA8MHgwIDB4ZmYyYzAwMDAg
MHgwIDB4NDAwMD47Cj4+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKPj4gKwkJCQkgICAgIDxHSUNfU1BJIDEgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ICsJCQkjZG1hLWNlbGxzID0gPDE+Owo+PiArCQkJY2xvY2tzID0gPCZjcnUgQUNMS19ETUFDMD47
Cj4+ICsJCQljbG9jay1uYW1lcyA9ICJhcGJfcGNsayI7Cj4+ICsJCQlwZXJpcGhlcmFscy1yZXEt
dHlwZS1idXJzdDsKPiBwZXJpcGhlcmFscy1yZXEtdHlwZS1idXJzdCBpcyB1bmRvY3VtZW50ZWQg
c28gbGlrZWx5IHNvbWUgY2hhbmdlIHRvIHRoZQo+IGRtYSBkcml2ZXIgbm90IHlldCB1cHN0cmVh
bT8KCgogwqBub3QgdXBzdHJlYW3vvIwgc28gaSByZW1vdmUgaXQuCgo+PiArCQl9Owo+PiArCj4+
ICsJCWRtYWMxOiBkbWEtY29udHJvbGxlckBmZjJkMDAwMCB7Cj4+ICsJCQljb21wYXRpYmxlID0g
ImFybSxwbDMzMCIsICJhcm0scHJpbWVjZWxsIjsKPj4gKwkJCXJlZyA9IDwweDAgMHhmZjJkMDAw
MCAweDAgMHg0MDAwPjsKPj4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyIElSUV9UWVBFX0xF
VkVMX0hJR0g+LAo+PiArCQkJCSAgICAgPEdJQ19TUEkgMyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsK
Pj4gKwkJCSNkbWEtY2VsbHMgPSA8MT47Cj4+ICsJCQljbG9ja3MgPSA8JmNydSBBQ0xLX0RNQUMx
PjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImFwYl9wY2xrIjsKPj4gKwkJCXBlcmlwaGVyYWxzLXJl
cS10eXBlLWJ1cnN0Owo+PiArCQl9Owo+PiArCX07Cj4+ICsKPj4gKwlpMnNfMmNoXzA6IGkyc0Bm
ZjM1MDAwMCB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzA4LWkycyIsICJyb2Nr
Y2hpcCxyazMwNjYtaTJzIjsKPj4gKwkJcmVnID0gPDB4MCAweGZmMzUwMDAwIDB4MCAweDEwMDA+
Owo+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNTIgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ICsJCWNsb2NrcyA9IDwmY3J1IFNDTEtfSTJTMF8yQ0g+LCA8JmNydSBIQ0xLX0kyUzBfMkNIPjsK
Pj4gKwkJY2xvY2stbmFtZXMgPSAiaTJzX2NsayIsICJpMnNfaGNsayI7Cj4+ICsJCWRtYXMgPSA8
JmRtYWMxIDg+LCA8JmRtYWMxIDk+Owo+PiArCQlkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+PiAr
CQlyZXNldHMgPSA8JmNydSBTUlNUX0kyUzBfMkNIX00+LCA8JmNydSBTUlNUX0kyUzBfMkNIX0g+
Owo+PiArCQlyZXNldC1uYW1lcyA9ICJyZXNldC1tIiwgInJlc2V0LWgiOwo+IFRoZXNlIHJlc2V0
cyBkb24ndCBzZWVtIHRvIGJlIGRlZmluZWQgaW4gZHJpdmVyIG9yIGJpbmRpbmc/Cj4gU2FtZSBm
b3Igb3RoZXIgaTJzCgoKUmVtb3ZlIGluIHYyCgo+Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4+ICsJCXBpbmN0cmwtMCA9IDwmaTJzXzJjaF8wX3NjbGsKPj4gKwkJCSAgICAgJmky
c18yY2hfMF9scmNrCj4+ICsJCQkgICAgICZpMnNfMmNoXzBfc2RpCj4+ICsJCQkgICAgICZpMnNf
MmNoXzBfc2RvPjsKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwl9Owo+Cj4+ICsKPj4g
KwltYWM6IGV0aGVybmV0QGZmNGUwMDAwIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azMzMDgtbWFjIjsKPiBXYXMgdGhpcyBzdXBwb3J0IHRvIHRoZSBuZXR3b3JrIGRyaXZlciBhbHJl
YWR5IHN1Ym1pdHRlZD8KPiBCZWNhdXNlIEkgd2Fzbid0IGFibGUgdG8gZmluZCBpdCBpbiB0aGUg
Z21hYyBkcml2ZXIuCgoKSSByZW1vdmUgbWFjIGluIHYyLgoKPgo+PiArCQlyZWcgPSA8MHgwIDB4
ZmY0ZTAwMDAgMHgwIDB4MTAwMDA+Owo+PiArCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4+ICsJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSA2NCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJaW50
ZXJydXB0LW5hbWVzID0gIm1hY2lycSI7Cj4+ICsJCWNsb2NrcyA9IDwmY3J1IFNDTEtfTUFDPiwg
PCZjcnUgU0NMS19NQUNfUlhfVFg+LAo+PiArCQkJIDwmY3J1IFNDTEtfTUFDX1JYX1RYPiwgPCZj
cnUgU0NMS19NQUNfUkVGPiwKPj4gKwkJCSA8JmNydSBTQ0xLX01BQz4sIDwmY3J1IEFDTEtfTUFD
PiwKPj4gKwkJCSA8JmNydSBQQ0xLX01BQz4sIDwmY3J1IFNDTEtfTUFDX1JNSUk+Owo+PiArCQlj
bG9jay1uYW1lcyA9ICJzdG1tYWNldGgiLCAibWFjX2Nsa19yeCIsCj4+ICsJCQkgICAgICAibWFj
X2Nsa190eCIsICJjbGtfbWFjX3JlZiIsCj4+ICsJCQkgICAgICAiY2xrX21hY19yZWZvdXQiLCAi
YWNsa19tYWMiLAo+PiArCQkJICAgICAgInBjbGtfbWFjIiwgImNsa19tYWNfc3BlZWQiOwo+PiAr
CQlwaHktbW9kZSA9ICJybWlpIjsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4g
KwkJcGluY3RybC0wID0gPCZybWlpX3BpbnMgJm1hY19yZWZjbGtfMTJtYT47Cj4+ICsJCXJlc2V0
cyA9IDwmY3J1IFNSU1RfTUFDX0E+Owo+PiArCQlyZXNldC1uYW1lcyA9ICJzdG1tYWNldGgiOwo+
PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCX07Cj4KPiBIZWlrbwo+Cj4KPgo+CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
