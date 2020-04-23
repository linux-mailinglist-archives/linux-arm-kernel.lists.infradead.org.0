Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905F21B5EFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dhACfGpkjCiacxYgYh5fHrFSubuyzVEWZ2d73hthJ38=; b=bhkNJxbQeZTKwzfOAVeNZHAk9
	p17qb9fgoppWN9CuUVHFzzlW1HERkoVzeC3EM/3Njfpt65WdO+SFBKsBGsSgmskPWtlh2SjQoLDig
	CYVS9aRQF4ytUfDKoMvHuXM5bYr8wBWdN8j+vaeXtqpeD/gRPQpPpuObw7/st0XBKfSoKUKnvnBw5
	dTtaKzax+DWwMPUk4Km/eBF0wtTBUYvgemgrW3BCPLHhBm2s1ZHQ8vlpZJi7LOYFj0is5imxiZB4l
	WK0kE26rMGNYcwrELqO2APghK6I1ttpVur3HqUL0EXnKkJWZOPFf3GAsV6Ol/CIGks68VZoNIGHwL
	9inmARUDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdf0-0006qJ-8j; Thu, 23 Apr 2020 15:21:06 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRder-0006km-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:20:59 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 4166C2CFA
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 10:20:44 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id RdeejvMNxEfyqRdeejmPuB; Thu, 23 Apr 2020 10:20:44 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lVr7d+CAP5nOq9QPmRmWkdHKDvdbA359gdwduj7bBvE=; b=eNDACs8MYJ6ttfA8OGNvduU9Ou
 0Cc3NDeYo3BG1LAi5SJ4V0GvVE4Fdw3xAzkGWMumjpwSSf53SjVL4pV+hKQXaStcLe/5LOXlUHgu0
 I7Mc1wSKfy3GJbmlo98jro3UKy+BD3wca9xLh3I+38LiQHiYmRZ3ZphMP46heRkxt+nmeSHvIuxTj
 bT4H0zxs9L6FO9rzIesmA5WaWhhs2g+yhdEUPt5IHi0W3mf+9acIa8Ky+XjrUBcVHyhjl1Wyxo+VN
 NpCCbw7KtqaFvf7P/eaT1wku2PFqzhG9RVfv7Hecz4iVgJDmW4NxHSVSITYi9PhEaugyXwU1vGYRE
 L3Y6C2EQ==;
Received: from [191.31.203.120] (port=55674 helo=[192.168.15.3])
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jRded-000yw3-SL; Thu, 23 Apr 2020 12:20:44 -0300
Subject: Re: [PATCH v3 3/3] ARM: dts: Add Caninos Loucos Labrador
To: afaerber@suse.de
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-4-matheus@castello.eng.br>
 <20200405065137.GC8912@Mani-XPS-13-9360>
From: Matheus Castello <matheus@castello.eng.br>
Message-ID: <df32c750-a097-9210-6e13-db7db49836b5@castello.eng.br>
Date: Thu, 23 Apr 2020 12:20:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200405065137.GC8912@Mani-XPS-13-9360>
Content-Language: pt-BR
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.203.120
X-Source-L: No
X-Exim-ID: 1jRded-000yw3-SL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.3]) [191.31.203.120]:55674
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 7
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082058_075679_C5DF5682 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.228 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.47.228 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCkVtIDQvNS8yMCAzOjUxIEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gZXNj
cmV2ZXU6Cj4gT24gRnJpLCBNYXIgMjAsIDIwMjAgYXQgMTI6NTE6MDRBTSAtMDMwMCwgTWF0aGV1
cyBDYXN0ZWxsbyB3cm90ZToKPj4gQWRkIERldmljZSBUcmVlcyBmb3IgQ2FuaW5vcyBMb3Vjb3Mg
TGFicmFkb3IgQ29NIGFuZCBiYXNlIGJvYXJkLgo+PiBCYXNlZCBvbiB0aGUgd29yayBvZiBBbmRy
ZWFzIEbDpHJiZXIgb24gTGVtYWtlciBHdWl0YXIgZGV2aWNlIHRyZWUuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IE1hdGhldXMgQ2FzdGVsbG8gPG1hdGhldXNAY2FzdGVsbG8uZW5nLmJyPgo+IAo+IFJl
dmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBs
aW5hcm8ub3JnPgo+IAo+IFdpbGwgcXVldWUgdGhlIHNlcmllcyBmb3IgdjUuOCBvbmNlIEFuZHJl
YXMgaXMgaGFwcHkgd2l0aCBpdC4KPiAKCmRvIHlvdSBoYXZlIGFueSBtb3JlIGNvbmNlcm5zIGFi
b3V0IHRoZXNlIHBhdGNoZXM/IExldCBtZSBrbm93LgoKQlIsCk1hdGhldXMgQ2FzdGVsbG8KCj4g
Tml0OiBQbGVhc2Uga2VlcCBsaW51eC1hY3Rpb25zQGxpc3RzLmluZnJhZGVhZC5vcmcgaW4gQ0Mg
Zm9yIGFsbCBmdXR1cmUKPiBwYXRjaGVzL3JlcGxpZXMuCj4gCj4gVGhhbmtzLAo+IE1hbmkKPiAK
Pj4gLS0tCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8
ICAxICsKPj4gICBhcmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMgIHwg
MzQgKysrKysrKysrKysrKysrKysrKysrCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAt
bGFicmFkb3ItdjIuZHRzaSB8IDIxICsrKysrKysrKysrKysKPj4gICAzIGZpbGVzIGNoYW5nZWQs
IDU2IGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9k
dHMvb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRzCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKPj4KPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUK
Pj4gaW5kZXggZDY1NDZkMjY3NmI5Li45OWY2MzM0NjA4MzMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL01ha2VmaWxlCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxl
Cj4+IEBAIC04NDIsNiArODQyLDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfT1JJT041WCkgKz0gXAo+
PiAgIGR0Yi0kKENPTkZJR19BUkNIX0FDVElPTlMpICs9IFwKPj4gICAJb3dsLXM1MDAtY3ViaWVi
b2FyZDYuZHRiIFwKPj4gICAJb3dsLXM1MDAtZ3VpdGFyLWJiLXJldi1iLmR0YiBcCj4+ICsJb3ds
LXM1MDAtbGFicmFkb3ItYmIuZHRiIFwKPj4gICAJb3dsLXM1MDAtc3Bhcmt5LmR0Ygo+PiAgIGR0
Yi0kKENPTkZJR19BUkNIX1BSSU1BMikgKz0gXAo+PiAgIAlwcmltYTItZXZiLmR0Ygo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRzCj4+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uOTEwMTJiNGE0YzMwCj4+IC0tLSAvZGV2L251
bGwKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRzCj4+
IEBAIC0wLDAgKzEsMzQgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCsgT1IgTUlUKQo+PiArLyoKPj4gKyAqIENhbmlub3MgTGFicmFkb3IgQmFzZSBCb2FyZAo+PiAr
ICoKPj4gKyAqIENvcHlyaWdodCAoYykgMjAxOS0yMDIwIE1hdGhldXMgQ2FzdGVsbG8KPj4gKyAq
Lwo+PiArCj4+ICsvZHRzLXYxLzsKPj4gKwo+PiArI2luY2x1ZGUgIm93bC1zNTAwLWxhYnJhZG9y
LXYyLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCWNvbXBhdGlibGUgPSAiY2FuaW5vcyxsYWJyYWRv
ci1iYiIsICJjYW5pbm9zLGxhYnJhZG9yIiwgImFjdGlvbnMsczUwMCI7Cj4+ICsJbW9kZWwgPSAi
Q2FuaW5vcyBMYWJyYWRvciBCYXNlIEJvYXJkIE0gdjEuMCI7Cj4+ICsKPj4gKwlhbGlhc2VzIHsK
Pj4gKwkJc2VyaWFsMyA9ICZ1YXJ0MzsKPj4gKwl9Owo+PiArCj4+ICsJY2hvc2VuIHsKPj4gKwkJ
c3Rkb3V0LXBhdGggPSAic2VyaWFsMzoxMTUyMDBuOCI7Cj4+ICsJfTsKPj4gKwo+PiArCXVhcnQz
X2NsazogdWFydDMtY2xrIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4+ICsJ
CWNsb2NrLWZyZXF1ZW5jeSA9IDw5MjE2MDA+Owo+PiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4+
ICsJfTsKPj4gK307Cj4+ICsKPj4gKyZ1YXJ0MyB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiAr
CWNsb2NrcyA9IDwmdWFydDNfY2xrPjsKPj4gK307Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvb3ds
LXM1MDAtbGFicmFkb3ItdjIuZHRzaQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAw
MDAwMDAwMDAwMDAuLjBiNTRmMWVmM2VjMAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKPj4gQEAgLTAsMCArMSwyMSBA
QAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+ICsv
Kgo+PiArICogQ2FuaW5vcyBMYWJyYWRvciBDb00gVjIKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMTktMjAyMCBNYXRoZXVzIENhc3RlbGxvCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUg
Im93bC1zNTAwLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCWNvbXBhdGlibGUgPSAiY2FuaW5vcyxs
YWJyYWRvciIsICJhY3Rpb25zLHM1MDAiOwo+PiArCj4+ICsJbWVtb3J5QDAgewo+PiArCQlkZXZp
Y2VfdHlwZSA9ICJtZW1vcnkiOwo+PiArCQlyZWcgPSA8MHgwIDB4ODAwMDAwMDA+Owo+PiArCX07
Cj4+ICt9Owo+PiArCj4+ICsmdGltZXIgewo+PiArCWNsb2NrcyA9IDwmaG9zYz47Cj4+ICt9Owo+
PiAtLQo+PiAyLjI1LjAKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
