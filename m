Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D76ABDF08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYwCZTJ1qobmNMBIOGw67b8Teh90+7advh0weHGVzGs=; b=KPpxY+56MHMbrs
	cwB+FR7HaXlbf52+h2k8dpoQ3w3vbcYKSyDDXtJm2j25ODnzIai4TUjVhk0cPCRcMSZnjkpGnf2Lr
	a2zJNSwSpZ0bltZ6F3idV0STV39ay88O37uBiHF3k3ooALJ2BlFR9qdG0CvTcfKz9cnezqdk71XFS
	6Fl0nnhyuSA6MndJ6EXoqyxeIcM96Ukd0nrKdS9yRzkf7kprv6+pwDqMDbvCoe2aDqQ6KxtMWXI8P
	/eSGIR6RObVo5Ob1ovhngGeHrorP5NHpcsX7z5ZEaWOby4NLqCqIu5nfOzoeue16XsPJFaIu4+OPr
	5irwRZd5gjXZUk5gbSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7P0-0002Z7-KI; Wed, 25 Sep 2019 13:32:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7No-0002Y5-I5; Wed, 25 Sep 2019 13:31:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0E98BAC4D;
 Wed, 25 Sep 2019 13:31:00 +0000 (UTC)
Message-ID: <4f5c99ddfbe0abadccf754e9ff282c39d8849b3f.camel@suse.de>
Subject: Re: [PATCH v1] ARM: Add support for Realtek SOC
From: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>
To: James Tai <james.tai@realtek.com>, 'Masahiro Yamada'
 <yamada.masahiro@socionext.com>, 'Arnd Bergmann' <arnd@arndb.de>
Date: Wed, 25 Sep 2019 15:30:58 +0200
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF8EA2B1@RTITMBSVM04.realtek.com.tw>
References: <43B123F21A8CFE44A9641C099E4196FFCF8EA2B1@RTITMBSVM04.realtek.com.tw>
Organization: SUSE Linux GmbH
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_063104_935359_FF291EBA 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "'Jason A
 . Donenfeld'" <Jason@zx2c4.com>, linux-realtek-soc@lists.infradead.org,
 =?UTF-8?Q?CY=5FHuang=5B=E9=BB=83=E9=89=A6=E6=99=8F=5D?= <cy.huang@realtek.com>,
 'Linus Walleij' <linus.walleij@linaro.org>, 'Stefan Agner' <stefan@agner.ch>,
 'Benjamin Gaignard' <benjamin.gaignard@linaro.org>,
 Simon =?UTF-8?Q?Hsu=5B=E5=BE=90=E6=96=87=E7=BF=B0=5D?= <simon_hsu@realtek.com>,
 'Mauro Carvalho Chehab' <mchehab+samsung@kernel.org>,
 Tom =?UTF-8?Q?Ting=5B=E4=B8=81=E9=83=81=E5=BA=AD=5D?= <tom_ting@realtek.com>,
 Jim Tsai =?UTF-8?Q?=5B=E8=94=A1=E7=B6=AD=E6=99=89=5D?= <tsaijim10@realtek.com>,
 Phinex Hung <phinex@realtek.com>,
 Edward =?UTF-8?Q?Wu=5B=E5=90=B3=E5=A5=95=E5=AF=AC=5D?= <edwardwu@realtek.com>,
 'Rob Herring' <robh@kernel.org>,
 'Lorenzo Pieralisi' <Lorenzo.Pieralisi@arm.com>,
 'Russell King' <linux@armlinux.org.uk>, 'Mike Rapoport' <rppt@linux.ibm.com>,
 =?UTF-8?Q?YH=5FHsieh=5B=E8=AC=9D=E5=AE=87=E5=8B=B3=5D?= <yh_hsieh@realtek.com>,
 =?UTF-8?Q?TY=5FChang=5B=E5=BC=B5=E5=AD=90=E9=80=B8=5D?= <tychang@realtek.com>,
 'Thierry Reding' <treding@nvidia.com>,
 "'jamestai.sky@gmail.com'" <jamestai.sky@gmail.com>,
 =?UTF-8?Q?ZR=5FChen=5B=E9=99=B3=E6=8C=AF=E6=A6=AE=5D?=
 <zhenrcaaron@realtek.com>, Hau <hau@realtek.com>, Yukuen <yukuen@realtek.com>,
 =?UTF-8?Q?Jinn=2ECheng=5B=E9=84=AD=E6=89=8D=E9=80=B2=5D?=
 <jinn.cheng@realtek.com>,
 Chase Yen =?UTF-8?Q?=5B=E9=A1=8F=E5=91=88=E8=82=B2=5D?=
 <chase.yen@realtek.com>,
 Stanley =?UTF-8?Q?Chang=5B=E6=98=8C=E8=82=B2=E5=BE=B7=5D?=
 <stanley_chang@realtek.com>, 'Doug Anderson' <armlinux@m.disordat.com>,
 'Linux ARM' <linux-arm-kernel@lists.infradead.org>,
 Eric =?UTF-8?Q?Wang=5B=E7=8E=8B=E5=81=89=E5=85=A8=5D?= <ericwang@realtek.com>,
 Adklei <adklei@realtek.com>,
 Edgar Lee =?UTF-8?Q?=5B=E6=9D=8E=E6=89=BF=E8=AB=AD=5D?= <cylee12@realtek.com>,
 'Ard Biesheuvel' <ard.biesheuvel@linaro.org>,
 "PK.Chuang =?UTF-8?Q?=5B=E8=8E=8A=E5=8D=9A=E5=87=B1=5D?="
 <pk.chuang@realtek.com>, 'Nicolas Pitre' <nico@fluxnic.net>,
 'Nick Desaulniers' <ndesaulniers@google.com>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 'Paul Burton' <paul.burton@mips.com>, phelic <phelic@realtek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSBNaXR0d29jaCwgZGVuIDI1LjA5LjIwMTksIDA2OjQzICswMDAwIHNjaHJp
ZWIgSmFtZXMgVGFpOgo+IEZyb206ICJqYW1lcy50YWkiIDxqYW1lcy50YWlAcmVhbHRlay5jb20+
Cj4gCj4gVGhpcyBwYXRjaCBhZGRzIHRoZSBiYXNpYyBtYWNoaW5lIGZpbGUgZm9yCj4gdGhlIFJl
YWx0ZWsgUlREMTZYWCBhbmQgUlREMTNYWCBwbGF0Zm9ybS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBq
YW1lcy50YWkgPGphbWVzLnRhaUByZWFsdGVrLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIGxh
c3QgdmVyc2lvbjoKPiAJLSBBZGQgUlREMTNYWCBwbGF0Zm9ybS4KPiAJLSBBZGQgUFNDSSBzdXBw
b3J0Lgo+IAktIEFkZCBBUkNIX01VTFRJX1Y3IGNvbmZpZy4KPiAJLSByZW1vdmUgJ3RleHRvZnMt
JChDT05GSUdfQVJDSF9SRUFMVEVLKSA6PSAweDAwMjA4MDAwJyBmcm9tIAo+IAkgICdhcmNoL2Fy
bS9NYWtlZmlsZScuCj4gCS0gcmVtb3ZlIG1hcF9pbyxpbml0X3RpbWUsaW5pdF9tYWNoaW5lIGFu
ZCBzbXBfaW5pdCBmcm9tCj4gbWFjaGluZQo+IAkgIGRlc2NyaXB0b3IuCgpUaGFua3MgZm9yIHlv
dXIgcGF0Y2guIFBsZWFzZSBzdWJzY3JpYmUgeW91cnNlbGYgYW5kIGNvbGxlYWd1ZXMgdG8gdGhl
CmV4aXN0aW5nIGxpbnV4LXJlYWx0ZWstc29jQGxpc3RzLmluZnJhZGVhZC5vcmcgbWFpbGluZyBs
aXN0IGFuZCBtYWtlCnN1cmUgaXQgaXMgaW4gQ0MgZm9yIHlvdXIgcGF0Y2hlczoKCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmVhbHRlay1zb2MKCkZ1
cnRoZXIgY29tbWVudHMgaW5saW5lOgoKPiAtLS0KPiAgYXJjaC9hcm0vS2NvbmZpZyAgICAgICAg
ICAgICAgICB8ICAyICsrCj4gIGFyY2gvYXJtL01ha2VmaWxlICAgICAgICAgICAgICAgfCAgMSAr
Cj4gIGFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnICAgfCAyMCArKysrKysrKysrKysrCj4g
IGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZSAgfCAgMyArKwo+ICBhcmNoL2FybS9tYWNo
LXJlYWx0ZWsvcGxhdHNtcC5jIHwgNTEKPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3BsYXRzbXAuaCB8ICA2ICsrKysKPiAgYXJjaC9h
cm0vbWFjaC1yZWFsdGVrL3JlYWx0ZWsuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICA3IGZpbGVzIGNoYW5nZWQsIDEyNiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybS9tYWNoLXJlYWx0ZWsvcGxhdHNtcC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9tYWNoLXJlYWx0ZWsvcGxhdHNtcC5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9t
YWNoLXJlYWx0ZWsvcmVhbHRlay5jCgpBcyBBcm5kIGhhcyBhbHJlYWR5IGV4cHJlc3NlZCwgYXQg
bGVhc3QgUlREMTN4eCAoaWYgbm90IGFsc28gUlREMTZ4eD8pCmlzIGEgNjQtYml0IFNvQywgYW5k
IHdlIGFscmVhZHkgaGF2ZSBjb2RlIC0gY29udHJpYnV0ZWQgYW5kIG1haW50YWluZWQKYnkgbWUg
LSBmb3IgYXJjaC9hcm02NC8uIFBsZWFzZSBjb250cmlidXRlIHRvIHRob3NlIGVmZm9ydHMgaW5z
dGVhZCBvZgpidWlsZGluZyB5b3VyIG93biBzYW5kY2FzdGxlIGluIGFyY2gvYXJtLy4gSW4gZmFj
dCwgeW91ciB3b3JrIGNvbGxpZGVzCndpdGggcGF0Y2hlcyBxdWV1ZWQgaW4gbXkgcnRkMTI5eC1u
ZXh0IGJyYW5jaCBmb3IgUlREMTE5NSwgYW4gYWN0dWFsCjMyLWJpdCBwbGF0Zm9ybS4gQW1vbmcg
b3RoZXIgY29tbWl0czoKCmh0dHBzOi8vZ2l0aHViLmNvbS9hZmFlcmJlci9saW51eC9jb21taXQv
YjQzZmE0Zjc5MDE4M2Q0NmUyYjJjN2Y1YWYzNGYzMDEwZDMxNTA3MwoKVGhvc2UgcHJldmlvdXMg
YXJtNjQgUlREMTI5eCBhbmQgYXJtIFJURDExOTUgZWZmb3J0cyB3ZXJlIGFuZCBhcmUKYmxvY2tl
ZCBieSBpcnFjaGlwLCB3aGljaCBJIGRvbid0IHNlZSBhZGRyZXNzZWQgaW4gdGhpcyBzaW5nbGUg
cGF0Y2guCgpodHRwczovL2dpdGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1
LW5leHQKCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tjb25maWcgYi9hcmNoL2FybS9LY29u
ZmlnCj4gaW5kZXggMzNiMDA1NzliZWZmLi4xZjc5NjdjOTcyNjcgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm0vS2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL0tjb25maWcKPiBAQCAtNzkzLDYgKzc5Myw4
IEBAIHNvdXJjZSAiYXJjaC9hcm0vbWFjaC1yZWFsdmlldy9LY29uZmlnIgo+ICAKPiAgc291cmNl
ICJhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWciCj4gIAo+ICtzb3VyY2UgImFyY2gvYXJt
L21hY2gtcmVhbHRlay9LY29uZmlnIgoKT3JkZXJpbmcgd3JvbmcuCgo+ICsKPiAgc291cmNlICJh
cmNoL2FybS9tYWNoLXMzYzI0eHgvS2NvbmZpZyIKPiAgCj4gIHNvdXJjZSAiYXJjaC9hcm0vbWFj
aC1zM2M2NHh4L0tjb25maWciCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL01ha2VmaWxlIGIvYXJj
aC9hcm0vTWFrZWZpbGUKPiBpbmRleCBjMzYyNGNhNmMwYmMuLjU2MGFlN2Q3MmFhYiAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybS9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtL01ha2VmaWxlCj4gQEAg
LTIwNSw2ICsyMDUsNyBAQCBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUkRBKQkJKz0gcmRhCj4gIG1h
Y2hpbmUtJChDT05GSUdfQVJDSF9SRUFMVklFVykJCSs9IHJlYWx2aWV3Cj4gIG1hY2hpbmUtJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkJCSs9IHJvY2tjaGlwCj4gIG1hY2hpbmUtJChDT05GSUdfQVJD
SF9SUEMpCQkrPSBycGMKPiArbWFjaGluZS0kKENPTkZJR19BUkNIX1JFQUxURUspCQkrPSByZWFs
dGVrCgpEaXR0by4KCj4gIG1hY2hpbmUtJChDT05GSUdfQVJDSF9TM0MyNFhYKQkJKz0gczNjMjR4
eAo+ICBtYWNoaW5lLSQoQ09ORklHX0FSQ0hfUzNDNjRYWCkJCSs9IHMzYzY0eHgKPiAgbWFjaGlu
ZS0kKENPTkZJR19BUkNIX1M1UFYyMTApCQkrPSBzNXB2MjEwCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL21hY2gtcmVhbHRlay9LY29uZmlnIGIvYXJjaC9hcm0vbWFjaC0KPiByZWFsdGVrL0tjb25m
aWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYTYzOGY0MzIy
YmIyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmln
Cj4gQEAgLTAsMCArMSwyMCBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9ubHkKPiArbWVudWNvbmZpZyBBUkNIX1JFQUxURUsKPiArCWJvb2wgIlJlYWx0ZWsgU29DIFN1
cHBvcnQiCj4gKwlkZXBlbmRzIG9uIEFSQ0hfTVVMVElfVjcKPiArCWhlbHAKPiArCSAgU3VwcG9y
dCBmb3IgUmVhbHRlayBydGQxNnh4ICYgcnRkMTN4eCBTb0NzLgo+ICsKPiAraWYgQVJDSF9SRUFM
VEVLCj4gKwo+ICtjb25maWcgQVJDSF9SVEQxM1hYCj4gKwlib29sICJFbmFibGUgc3VwcG9ydCBm
b3IgUlREMTMxOSIKPiArCXNlbGVjdCBBUk1fR0lDX1YzCj4gKwlzZWxlY3QgQVJNX1BTQ0kKPiAr
Cj4gK2NvbmZpZyBBUkNIX1JURDE2WFgKPiArCWJvb2wgIkVuYWJsZSBzdXBwb3J0IGZvciBSVEQx
NjE5Igo+ICsJc2VsZWN0IEFSTV9HSUNfVjMKPiArCXNlbGVjdCBBUk1fUFNDSQo+ICsKPiArZW5k
aWYKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2VmaWxlIGIvYXJjaC9h
cm0vbWFjaC0KPiByZWFsdGVrL01ha2VmaWxlCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjljZGMxZjFmMjkxNwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNo
L2FybS9tYWNoLXJlYWx0ZWsvTWFrZWZpbGUKPiBAQCAtMCwwICsxLDMgQEAKPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gK29iai0kKENPTkZJR19BUkNIX1JFQUxU
RUspICs9IHJlYWx0ZWsubwo+ICtvYmotJChDT05GSUdfU01QKSArPSBwbGF0c21wLm8KPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3BsYXRzbXAuYyBiL2FyY2gvYXJtL21hY2gt
Cj4gcmVhbHRlay9wbGF0c21wLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMC4uYjNmYzk5NDQ3YWQ0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL21h
Y2gtcmVhbHRlay9wbGF0c21wLmMKPiBAQCAtMCwwICsxLDUxIEBACj4gKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAyMDE5
IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51
eC9pbml0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
amlmZmllcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4L21l
bW9yeS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc21wLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvYXJtLXNtY2NjLmg+Cj4gKyNpbmNsdWRlIDxhc20vc21wX3Bs
YXQuaD4KPiArI2luY2x1ZGUgPGFzbS9jYWNoZWZsdXNoLmg+Cj4gKyNpbmNsdWRlIDxhc20vY3Ax
NS5oPgo+ICsjaW5jbHVkZSA8YXNtL2JhcnJpZXIuaD4KPiArCj4gKyNkZWZpbmUgQkwzMV9DTUQg
MHg4NDAwZmYwNAo+ICsjZGVmaW5lIEJMMzFfREFUIDB4MDAwMDE2MTkKPiArI2RlZmluZSBDT1JF
X1BXUkROX0VOIDB4MQo+ICsKPiArI2RlZmluZSBDUFVQV1JDVExSIF9fQUNDRVNTX0NQMTUoYzE1
LCAwLCBjMiwgNykKPiArCj4gKyNpZmRlZiBDT05GSUdfSE9UUExVR19DUFUKPiArCj4gK3N0YXRp
YyB2b2lkIHJ0a19jcHVfZGllKHVuc2lnbmVkIGludCBjcHUpCj4gK3sKPiArCXN0cnVjdCBhcm1f
c21jY2NfcmVzIHJlczsKPiArCXVuc2lnbmVkIGludCBjcHVfcHdyX2N0cmw7Cj4gKwo+ICsJLyog
bm90aWZ5IEJMMzEgY3B1IGhvdHBsdWcgKi8KPiArCWFybV9zbWNjY19zbWMoQkwzMV9DTUQsIEJM
MzFfREFULCAwLCAwLCAwLCAwLCAwLCAwLCAmcmVzKTsKCkJMMzEgaXMgY2xlYXJseSBmb3IgNjQt
Yml0IG9ubHkgYW5kIHdpbGwgbm90IHdvcmsgZm9yIFJURDExOTUsIHNvIHRoZQpuYW1pbmcgaXMg
bXVjaCB0b28gZ2VuZXJpYy4KCj4gKwl2N19leGl0X2NvaGVyZW5jeV9mbHVzaChsb3Vpcyk7Cj4g
Kwo+ICsJY3B1X3B3cl9jdHJsID0gcmVhZF9zeXNyZWcoQ1BVUFdSQ1RMUik7Cj4gKwljcHVfcHdy
X2N0cmwgfD0gQ09SRV9QV1JETl9FTjsKPiArCXdyaXRlX3N5c3JlZyhjcHVfcHdyX2N0cmwsIENQ
VVBXUkNUTFIpOwo+ICsKPiArCWRzYihzeSk7Cj4gKwo+ICsJZm9yICg7OykKPiArCQl3ZmkoKTsK
PiArfQo+ICsjZW5kaWYKPiArCj4gK3N0cnVjdCBzbXBfb3BlcmF0aW9ucyBydGtfc21wX29wcyBf
X2luaXRkYXRhID0gewo+ICsjaWZkZWYgQ09ORklHX0hPVFBMVUdfQ1BVCj4gKwkuY3B1X2RpZSA9
IHJ0a19jcHVfZGllLAo+ICsjZW5kaWYKPiArfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFj
aC1yZWFsdGVrL3BsYXRzbXAuaCBiL2FyY2gvYXJtL21hY2gtCj4gcmVhbHRlay9wbGF0c21wLmgK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYzljNGQ3MTIzNjlj
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9wbGF0c21wLmgK
PiBAQCAtMCwwICsxLDYgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seSAqLwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgUmVhbHRlayBTZW1pY29uZHVj
dG9yIENvcnAuCj4gKyAqLwo+ICsKPiArZXh0ZXJuIHN0cnVjdCBzbXBfb3BlcmF0aW9ucyBydGtf
c21wX29wczsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3JlYWx0ZWsuYyBi
L2FyY2gvYXJtL21hY2gtCj4gcmVhbHRlay9yZWFsdGVrLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjY5MmFjNTNmNTliCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2FyY2gvYXJtL21hY2gtcmVhbHRlay9yZWFsdGVrLmMKPiBAQCAtMCwwICsxLDQzIEBACj4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArLyoKPiArICogQ29w
eXJpZ2h0IChjKSAyMDE5IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLgo+ICsgKi8KPiArCj4g
KyNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2Nsb2Nr
c291cmNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L2luaXQuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lycWNoaXAuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L29mX2FkZHJlc3MuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgo+ICsjaW5jbHVkZSA8
bGludXgvb2ZfcGxhdGZvcm0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC9tZW1ibG9jay5oPgo+ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L2Nsb2NrY2hpcHMuaD4KPiArI2luY2x1ZGUgPGFzbS9tYWNoL2FyY2guaD4KPiAr
I2luY2x1ZGUgPGFzbS9tYWNoL21hcC5oPgo+ICsjaW5jbHVkZSA8YXNtL3N5c3RlbV9taXNjLmg+
Cj4gKyNpbmNsdWRlIDxhc20vc3lzdGVtX2luZm8uaD4KPiArCj4gKyNpbmNsdWRlICJwbGF0c21w
LmgiCj4gKwo+ICtzdGF0aWMgY29uc3QgY2hhciAqY29uc3QgcnRkMTN4eF9ib2FyZF9kdF9jb21w
YXRbXSA9IHsKPiArCSJyZWFsdGVrLHJ0ZDEzMTkiLAo+ICsJTlVMTCwKPiArfTsKPiArCj4gK3N0
YXRpYyBjb25zdCBjaGFyICpjb25zdCBydGQxNnh4X2JvYXJkX2R0X2NvbXBhdFtdID0gewo+ICsJ
InJlYWx0ZWsscnRkMTYxOSIsCj4gKwlOVUxMLAo+ICt9Owo+ICsKPiArRFRfTUFDSElORV9TVEFS
VChSVEQxM1hYLCAiUmVhbHRlayBydGQxM3h4IHBsYXRmb3JtIikKPiArCS5kdF9jb21wYXQgPSBy
dGQxM3h4X2JvYXJkX2R0X2NvbXBhdCwKPiArCS5zbXAgPSBzbXBfb3BzKHJ0a19zbXBfb3BzKSwK
PiArTUFDSElORV9FTkQKPiArCj4gK0RUX01BQ0hJTkVfU1RBUlQoUlREMTZYWCwgIlJlYWx0ZWsg
cnRkMTZ4eCBwbGF0Zm9ybSIpCj4gKwkuZHRfY29tcGF0ID0gcnRkMTZ4eF9ib2FyZF9kdF9jb21w
YXQsCj4gKwkuc21wID0gc21wX29wcyhydGtfc21wX29wcyksCj4gK01BQ0hJTkVfRU5ECgpJIHJl
Y2FsbCB0aGF0IDMyLWJpdCBhcm0gU01QIGNhbiBiZSBzZWxlY3RlZCB2aWEgdGhlIERUIGFuZCB0
aGVuIGRvZXMKbm90IG5lZWQgbXVsdGlwbGUgc3VjaCBzdHJ1Y3RzIHBlciBTb0MsIGluIHBhcnRp
Y3VsYXIgdGhleSBkb24ndCBkaWZmZXIKYXQgYWxsIGFuZCBjb3VsZCB1c2UgdGhlIGRlZmF1bHQg
bWFjaGluZSB0YWtpbmcgdGhlIHRleHQgZnJvbSB0aGUgRFQuCgpBbHNvIG5vdGUgdGhhdCB3aGVu
ZXZlciBwb3NzaWJsZSBJIHBlcnNvbmFsbHkgaGF2ZSBhIHByZWZlcmVuY2UgZm9yCkdQTC0yLjAt
b3ItbGF0ZXIgYW5kIGxpY2Vuc2VkIG15IGNvZGUgdGhhdCB3YXkgd2hlbmV2ZXIgcG9zc2libGUu
CgpRdWVzdGlvbjogV2h5IGFyZSB5b3Ugbm90IGp1c3QgaW1wbGVtZW50aW5nIHRoZSBhYm92ZSBD
UFUgbG9naWMgaW4gVEYtQSAKQkwzMSBhbmQgbGV0IExpbnV4IHVzZSB0aGUgZXhpc3RpbmcgUFND
SSBjb2RlIHBhdGhzPyBUaGF0IHdpbGwgYmUgdGhlCm9ubHkgdXBzdHJlYW0tYWNjZXB0ZWQgc29s
dXRpb24gZm9yIGFybTY0LgoKVGhhbmtzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1
dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFu
eQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAyNDcxNjUgKEFHIE3DvG5jaGVuKQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
