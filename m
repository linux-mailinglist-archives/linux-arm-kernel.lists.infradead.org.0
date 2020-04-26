Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F31B8F29
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oF0GgEGjy3IV89U6yc8Stoci6zn2EAFFCH9MU/6RXYA=; b=rGpTTpcSiquq/hVwTu1S2ouw7
	TGEhIVnZe93wunZDIT53gnjzuAnbjq97Gy1B18ZA8LEbkaM8vHIK4vIh9kmV4bNi279LKAa+WLKNu
	UvigBCu0sWyTIlTg8MEey8p7ADtQBVy33c8ww/nlYUNejzNdVkywhKUetIFN9JUa9LvFFb+e/ufdY
	1+dnjOu9e6D6VqrJTfHcTHejKgW1oWyNuLS7EPk24VHopjxxf7XbvctOHbjRFD3Q7xV83ME0/wGXE
	YXHpDb3nXG/Lah0j75KMlGLYFliUoL9BWAgob58k6w5N7keugcC71h661nESx/KUgf5Lembwp9Ryj
	oh/6/EYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSev6-0003tM-VN; Sun, 26 Apr 2020 10:53:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeuq-0003hl-9P; Sun, 26 Apr 2020 10:53:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id ED4C7AD71;
 Sun, 26 Apr 2020 10:53:34 +0000 (UTC)
Subject: Re: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
To: Matheus Castello <matheus@castello.eng.br>,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-2-matheus@castello.eng.br>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c805072b-17ec-d02b-20ad-548a372341f9@suse.de>
Date: Sun, 26 Apr 2020 12:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200320035104.26139-2-matheus@castello.eng.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_035340_485831_DB5DA36F 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAuMDMuMjAgdW0gMDQ6NTEgc2NocmllYiBNYXRoZXVzIENhc3RlbGxvOgo+IFRoZSBDYW5p
bm9zIExvdWNvcyBQcm9ncmFtIGRldmVsb3BzIFNpbmdsZSBCb2FyZCBDb21wdXRlcnMgd2l0aCBh
biBvcGVuCj4gc3RydWN0dXJlLiBUaGUgUHJvZ3JhbSB3YW50cyB0byBmb3JtIGEgY29tbXVuaXR5
IG9mIGRldmVsb3BlcnMgdG8gdXNlCj4gSW9UIHRlY2hub2xvZ2llcyBhbmQgZGlzc2VtaW5hdGUg
dGhlIGxlYXJuaW5nIG9mIGVtYmVkZGVkIHN5c3RlbXMgaW4KPiBCcmF6aWwuCj4gCj4gSXQgaXMg
YW4gaW5pdGlhdGl2ZSBvZiB0aGUgVGVjaG5vbG9naWNhbCBJbnRlZ3JhdGVkIFN5c3RlbXMgTGFi
b3JhdG9yeQo+IChMU0ktVEVDKSB3aXRoIHRoZSBzdXBwb3J0IG9mIFBvbHl0ZWNobmljIFNjaG9v
bCBvZiB0aGUgVW5pdmVyc2l0eSBvZgo+IFPDo28gUGF1bG8gKFBvbGktVVNQKSBhbmQgSm9uICJN
YWRkb2ciIEhhbGwuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0aGV1cyBDYXN0ZWxsbyA8bWF0aGV1
c0BjYXN0ZWxsby5lbmcuYnI+Cj4gLS0tCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAo+IGluZGV4IDllNjc5NDRiZWM5Yy4uMTZlZTM4
MmRjNmIyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92
ZW5kb3ItcHJlZml4ZXMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAo+IEBAIC0xNjUsNiArMTY1LDggQEAgcGF0dGVyblBy
b3BlcnRpZXM6Cj4gICAgICAgZGVzY3JpcHRpb246IENBTEFPIFN5c3RlbXMgU0FTCj4gICAgICJe
Y2FseGVkYSwuKiI6Cj4gICAgICAgZGVzY3JpcHRpb246IENhbHhlZGEKPiArICAiXmNhbmlub3Ms
LioiOgo+ICsgICAgZGVzY3JpcHRpb246IENhbmlub3MgTG91Y29zIFByb2dyYW0KPiAgICAgIl5j
YXBlbGxhLC4qIjoKPiAgICAgICBkZXNjcmlwdGlvbjogQ2FwZWxsYSBNaWNyb3N5c3RlbXMsIElu
Ywo+ICAgICAiXmNhc2NvZGEsLioiOgoKUmV2aWV3ZWQtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4KClRoYW5rcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRp
b25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkK
R0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
