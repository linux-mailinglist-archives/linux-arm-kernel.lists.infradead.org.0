Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70C9E9A4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe02MOhAAq4XjL5JkAAtD2HHglz7zEDLyeLUCVYi0u0=; b=KaHyfQ7YpbN8aS
	MbaxDFM/4G/B7NmFz0uMojpDLNBCmhTBLrsTYuDyQQAZF9KvIV9JuzOS+kIltbm/ECcEWktNNX+SM
	hmTaZfv+1SYZR7mJC5x1tNuw7+01I+NWWpj4n33rCI3wikNEeeF7DhbMQWaoTil5FFBa7PyyobcwL
	AstQL62/jyVqAxvrmXaHblZ12qO9xjRzSkyWPY3dwMaFMmBWPu5i6+6+UIg5W+CxYbHdBW/ILPdy4
	bply27Yq3qfqipVwZsmanlikRIPicEQva3sjNpppYtRpgab4CLb0t1MkYJMbza1XjjBKs0hOY6Ry7
	HANdbgGBcz4caJ3ZoxPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlTt-0001Tv-S0; Wed, 30 Oct 2019 10:45:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlTi-0001TQ-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:45:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B31BF20862;
 Wed, 30 Oct 2019 10:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572432325;
 bh=kgnsRfBMHxl9tRdO6A15/fiZAzpzYexCj1TGgOx/Fb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E0kQ54glsMHpTGIbmZBmJRg6pmeuffua90i2RDGObP8LDMJEdkvzBVedf6hYcfnDK
 t6Goyr+XBgMTpV6gxhiKe5cHFg4ozUwB8fCtbX9RNzMDyf07oDPqKcp3Y2cpehI1Ug
 /lMBkQypT7jsw4+OLuCOcM0dcKYCtqQgwkt1DwN4=
Date: Wed, 30 Oct 2019 10:45:21 +0000
From: Will Deacon <will@kernel.org>
To: Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Message-ID: <20191030104520.GC17773@willie-the-truck>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
 <20191030100747.GB17773@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030100747.GB17773@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_034526_324452_C3857EE5 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, robin.murphy@arm.com,
 CKI Project <cki-project@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WytSb2JpbiBhcyBGWUldCgpPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDowNzo0N0FNICswMDAw
LCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAwNjowMzo1NkFN
IC0wNDAwLCBKYW4gU3RhbmNlayB3cm90ZToKPiA+ID4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBv
biBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtlcm5lbCB0cmVlOgo+ID4gPiAKPiA+ID4gICAg
ICAgIEtlcm5lbCByZXBvOgo+ID4gPiAgICAgICAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+ID4gPiAgICAgICAgICAgICBDb21t
aXQ6IDM0MDcyZTUyYTNmYyAtIE1lcmdlIHJlbW90ZS10cmFja2luZyBicmFuY2gKPiA+ID4gICAg
ICAgICAgICAgJ2FybTY0L2Zvci1uZXh0L21lbW9yeS1ob3RyZW1vdmUnIGludG8gZm9yLWtlcm5l
bGNpCj4gPiA+IAo+ID4gPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJl
IHByb3ZpZGVkIGJlbG93Lgo+ID4gPiAKPiA+ID4gICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQg
KHNlZSBkZXRhaWxzIGJlbG93KQo+ID4gPiAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4gPiA+ICAg
ICAgICAgICAgQ29tcGlsZTogT0sKPiA+ID4gICAgICAgICAgICAgIFRlc3RzOiBGQUlMRUQKPiA+
ID4gCj4gPiA+IEFsbCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJl
IGF2YWlsYWJsZSBmb3IgZG93bmxvYWQgaGVyZToKPiA+ID4gCj4gPiA+ICAgaHR0cHM6Ly9hcnRp
ZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8yNTUzNjIKPiA+ID4gCj4gPiA+IE9uZSBv
ciBtb3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6Cj4gPiA+IAo+ID4gPiAgICAgYWFyY2g2NDoKPiA+
ID4gICAgICDinYwgTFRQIGxpdGUKPiA+IAo+ID4gV2hhdCdzIGZhaWxpbmcgaXMgcHJlYWR2Mi9y
ZWFkdiBvdmVyIFBST1RfTk9ORSBtYXBwaW5nOgo+ID4gCj4gPiBbcGlkICAyNDI0XSBtbWFwKE5V
TEwsIDEsIFBST1RfTk9ORSwgTUFQX1BSSVZBVEV8TUFQX0FOT05ZTU9VUywgMCwgMCkgPSAweDNm
ZjdmOGIwMDAwCj4gPiBbcGlkICAyNDI0XSBwcmVhZHYyKDMsIFt7aW92X2Jhc2U9MHgzZmY3Zjhi
MDAwMCwgaW92X2xlbj02NH1dLCAxLCAwLCAwKSA9IDE2Cj4gPiAKPiA+IFRlc3QgZXhwZWN0cyBF
RkFVTFQuCj4gPiAKPiA+IEl0IHNlZW1zIHNwZWNpZmljIHRvIGFybTY0L2xpbnV4LmdpdCBhcyBJ
IGRvIG5vdCBzZWUgaXQgZmFpbCBvbgo+ID4gTGludXMnIG1hc3RlciAodjUuNC1yYzUtMzQtZzIz
ZmRiMTk4YWU4MSkuCj4gCj4gQWhhLCBvdXIgZW1haWxzIGNyb3NzZWQgcGF0aHMuIFRoYW5rcywg
SSdsbCB0cnkgdG8gcmVwcm9kdWNlIHRoZSBmYWlsdXJlCj4gbG9jYWxseS4KCkxvb2tzIGxpa2Ug
dGhlIHJld3JpdGUgb2Ygb3VyIHN0cmluZyByb3V0aW5lcyBoYXMgYnJva2VuIHRoZSByZXR1cm4g
dmFsdWUKZm9yIHNvbWUgc3lzY2FsbHM6CgpyZWFkdjAyICAgICAyICBURkFJTCAgOiAgcmVhZHYw
Mi5jOjE0NTogRXJyb3I6IHJlYWR2IHJldHVybmVkIGEgcG9zaXRpdmUgdmFsdWUKcHJlYWR2MjAy
LmM6ODc6IEZBSUw6IHByZWFkdjIoKSBmYWlsZWQgdW5leHBlY3RlZGx5LCBleHBlY3RlZCBFRkFV
TFQ6IFNVQ0NFU1MgKDApCnByZWFkdjIwMi5jOjg3OiBGQUlMOiBwcmVhZHYyKCkgZmFpbGVkIHVu
ZXhwZWN0ZWRseSwgZXhwZWN0ZWQgRUZBVUxUOiBTVUNDRVNTICgwKQoKV2UnbGwgZHJvcCB0aGUg
Zm9yLW5leHQvY29ydGV4LXN0cmluZ3MgYnJhbmNoIGZvciBub3cuCgpUaGFua3MsCgpXaWxsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
