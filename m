Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380C29E947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+Iu3Gq7hFN3uHWntmV1AMGj7FlSTPYTOBoo3vvRJz4=; b=dgksVQq2+DU96p
	8qJNVCsQB4x2KAjME5rkO3CjwOcwYAuInpz6PFCIJc2Am1U4RBRw5b+kJal3mXlMe34TOtI7PUl3H
	Tsa3+8Dbl+PQDAtWZ4TJbuyySLCue2Bcl/+FoCyIBfCEwLJjeT4GJZjH6m2YuMem5Az4zkficlP1s
	ZvY8PUN7swnnHYw4+Mlj1AqWkCWjkC/rfEAetGdGhGa9ItJxQFg8M4Ve8w6GGqLVl2GmX5Ff5+If1
	K7cEJDYttCRqHAxfdbFjGxjJTwTxPfd/9+HXAGv6U+XpOmkdDV8HhprQWpv+yv0/G1XfWMkIKG8MZ
	0pPraAiTh4eZ8WCudByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bTp-0002WS-R9; Tue, 27 Aug 2019 13:25:50 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bT7-0000yp-A5
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:25:06 +0000
Received: by mail-vk1-xa44.google.com with SMTP id r13so4763799vke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UcidXSfl4Z3vHSHUGEtHekVKS8cSrikyMMH4+bTgZ4M=;
 b=RVu3MC11jWStUaJWi98HfO3dbKm9C5Co8wjxsZWOo/mNHQ+5mqEUp10/RpXdwCuczF
 k8/z8CMpLF76qiJoqdzys/nxDLQCGi8UvOtNQts1UmBii+EppSvoXLAJJH2NV0LGoCd7
 4nRrgjlHGyuMTENDRa8GF3RcqJ6kG7Ef2T8xE8nRQkROzDX/NxN5XuVzVklBA2Jh4m3b
 Rpvog8ZOLY5lJ9MbqUEnRlQdXAW0lZ/0dQN4ccIdrwR8ne5YPmGGy7c5kOr1AzFQk9fD
 3Cn1hMyu83oC77lxGU0Gs/eraAg/vf6fpzOEoGZoO4STbJ0ClR14j6Y5Ux6x5/FENXAZ
 1z4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UcidXSfl4Z3vHSHUGEtHekVKS8cSrikyMMH4+bTgZ4M=;
 b=b5bI22HY9RBt2t1nYUbfG2ncItwFUpC2FhScgqdaYY/PZy+NxEa2uHbAD5XTOmQMg/
 LcImKl3GV3Pu+vhCMKjfOQ/stUy2zov6Voyi6fAnU/lV2x4e5RtueSIkGFBBvBvFI4qc
 VJZHZg+udQbTamcSTUJY00iMSyEOl8W7+Shnz/WD+RsnVzjtCV793MnTzyF16PWDFVZq
 DlEFpBaiq/nGXdGqasUKbaZE8h4S4vawNaF6h3aCUVsPhFSapNjQGnU6uyTEcp5L0HVp
 eiIY/l0DLyoAiRp0iM1KItMeThbGwGANSheToeSeT3t9hRusCMdJnpdcFa18Ct5ICj9j
 PncQ==
X-Gm-Message-State: APjAAAVysZQ0IlPa3hoEiJ3JglXPJDz65Ygs6p+VGVLDJLWhxMAPWK8B
 7TRq000pvXjJbR+5mU6tY//I4hJ6TSylfJjQKabUuQ==
X-Google-Smtp-Source: APXvYqw4rRg5A1BUZRNkhA0iBmBLWQcJBY43NvkoqQo3uQzksvmf6IWqHjVjTq74W1HznjN4U6L+Pcy1Ay77XLTU/Qg=
X-Received: by 2002:a1f:5185:: with SMTP id f127mr10726260vkb.52.1566912302772; 
 Tue, 27 Aug 2019 06:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
In-Reply-To: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:24:26 +0200
Message-ID: <CAPDyKFr5opD2yBXmFRBY-9oA_3ShVv0GPFRO8Q_8TEiT+z2pQA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by
 disabling DDR
To: =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_062505_446266_6C704DA5 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNSBBdWcgMjAxOSBhdCAxNzowNiwgQWxlamFuZHJvIEdvbnrDoWxlego8YWxlamFu
ZHJvLmdvbnphbGV6LmNvcnJlb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gU29tZSBBbGx3aW5uZXIg
SDYgYm9hcmRzIGhhdmUgdGltaW5nIHByb2JsZW1zIHdoZW4gZGVhbGluZyB3aXRoCj4gRERSLWNh
cGFibGUgZU1NQyBjYXJkcy4gVGhlc2UgYm9hcmRzIGluY2x1ZGUgdGhlIFBpbmUgSDY0IGFuZCBU
YW5peCBUWDYuCj4KPiBUaGVzZSB0aW1pbmcgcHJvYmxlbXMgcmVzdWx0IGluIG91dCBvZiBzeW5j
IGNvbW11bmljYXRpb24gYmV0d2VlbiB0aGUKPiBkcml2ZXIgYW5kIHRoZSBlTU1DLCB3aGljaCBy
ZW5kZXJzIHRoZSBtZW1vcnkgdW5zdWFibGUgZm9yIGV2ZXJ5Cj4gb3BlcmF0aW9uIGJ1dCBzb21l
IGJhc2ljIGNvbW1tYW5kcywgbGlrZSByZWFkaW5nIHRoZSBzdGF0dXMgcmVnaXN0ZXIuCj4KPiBU
aGUgY2F1c2Ugb2YgdGhlc2UgdGltaW5nIHByb2JsZW1zIGlzIG5vdCB5ZXQgd2VsbCBrbm93biwg
YnV0IHRoZXkgZ28KPiBhd2F5IGJ5IGRpc2FibGluZyBERFIgbW9kZSBvcGVyYXRpb24gaW4gdGhl
IGRyaXZlci4gTGlrZSBvbiBzb21lIEg1Cj4gYm9hcmRzLCBpdCBtaWdodCBiZSB0aGF0IHRoZSB0
cmFjZXMgYXJlIG5vdCBwcmVjaXNlIGVub3VnaCB0byBzdXBwb3J0Cj4gdGhlc2Ugc3BlZWRzLiBI
b3dldmVyLCBKZXJuZWogU2tyYWJlYyBjb21wYXJlZCB0aGUgQlNQIGRyaXZlciB3aXRoIHRoaXMK
PiBkcml2ZXIsIGFuZCBmb3VuZCB0aGF0IHRoZSBCU1AgZHJpdmVyIGNvbmZpZ3VyZXMgcGluY3Ry
bCB0byBvcGVyYXRlIGF0Cj4gMS44IFYgd2hlbiBlbnRlcmluZyBERFIgbW9kZSAoYWx0aG91Z2gg
My4zIFYgb3BlcmF0aW9uIGlzIHN1cHBvcnRlZCksIHdoaWxlCj4gdGhlIG1haW5saW5lIGtlcm5l
bCBsYWNrcyBhbnkgbWVjaGFuaXNtIHRvIHN3aXRjaCB2b2x0YWdlcyBkeW5hbWljYWxseS4KPiBG
aW5hbGx5LCBvdGhlciBwb3NzaWJsZSBjYXVzZSBtaWdodCBiZSBzb21lIHRpbWluZyBwYXJhbWV0
ZXIgdGhhdCBpcwo+IGRpZmZlcmVudCBvbiB0aGUgSDYgd2l0aCByZXNwZWN0IHRvIG90aGVyIFNv
Q3MuCj4KPiBUaGVyZWZvcmUsIGFzIHRoaXMgZml4IHdvcmtzIHJlbGlhYmx5LCB0aGUga2VybmVs
IGxhY2tzIHRoZSByZXF1aXJlZAo+IGR5bmFtaWMgcGluY3RybCBjb250cm9sIGZvciBub3cgYW5k
IGEgc2xvdyBlTU1DIGlzIGJldHRlciB0aGFuIGEgbm90Cj4gd29ya2luZyBlTU1DLCBqdXN0IGRp
c2FibGUgRERSIG9wZXJhdGlvbiBmb3Igbm93IG9uIEg2LWNvbXBhdGlibGUKPiBkZXZpY2VzLgo+
Cj4gU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIEdvbnrDoWxleiA8YWxlamFuZHJvLmdvbnphbGV6
LmNvcnJlb0BnbWFpbC5jb20+CgpBc3N1bWluZyB0aGlzIHNob3VsZCBnbyBzdGFibGUgYXMgd2Vs
bD8gUGVyaGFwcyB5b3UgY2FuIGZpbmQgYQpyZWxldmFudCBjb21taXQgdGhhdCB3ZSBjYW4gcHV0
IGFzIGEgZml4ZXMgdGFnIGFzIHdlbGw/CgpLaW5kIHJlZ2FyZHMKVWZmZQoKPiAtLS0KPiAgZHJp
dmVycy9tbWMvaG9zdC9zdW54aS1tbWMuYyB8IDkgKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tbWMvaG9zdC9zdW54aS1tbWMuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc3VueGktbW1jLmMKPiBp
bmRleCBkNTc3YTZiMGNlYWUuLmRhYzU3ZDc2ZDAwOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L3N1bnhpLW1tYy5jCj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9zdW54aS1tbWMuYwo+
IEBAIC0xMzk1LDE0ICsxMzk1LDE3IEBAIHN0YXRpYyBpbnQgc3VueGlfbW1jX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4KPiAgICAgICAgIC8qCj4gICAgICAgICAgKiBTb21l
IEg1IGRldmljZXMgZG8gbm90IGhhdmUgc2lnbmFsIHRyYWNlcyBwcmVjaXNlIGVub3VnaCB0bwo+
IC0gICAgICAgICogdXNlIEhTIEREUiBtb2RlIGZvciB0aGVpciBlTU1DIGNoaXBzLgo+ICsgICAg
ICAgICogdXNlIEhTIEREUiBtb2RlIGZvciB0aGVpciBlTU1DIGNoaXBzLiBPdGhlciBINiBkZXZp
Y2VzIG9wZXJhdGUKPiArICAgICAgICAqIHVucmVsaWFibHkgb24gSFMgRERSIG1vZGUsIHRvby4K
PiAgICAgICAgICAqCj4gICAgICAgICAgKiBXZSBzdGlsbCBlbmFibGUgSFMgRERSIG1vZGVzIGZv
ciBhbGwgdGhlIG90aGVyIGNvbnRyb2xsZXIKPiAtICAgICAgICAqIHZhcmlhbnRzIHRoYXQgc3Vw
cG9ydCB0aGVtLgo+ICsgICAgICAgICogdmFyaWFudHMgdGhhdCBzdXBwb3J0IHRoZW0gcHJvcGVy
bHkuCj4gICAgICAgICAgKi8KPiAgICAgICAgIGlmICgoaG9zdC0+Y2ZnLT5jbGtfZGVsYXlzIHx8
IGhvc3QtPnVzZV9uZXdfdGltaW5ncykgJiYKPiAgICAgICAgICAgICAhb2ZfZGV2aWNlX2lzX2Nv
bXBhdGlibGUocGRldi0+ZGV2Lm9mX25vZGUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICJhbGx3aW5uZXIsc3VuNTBpLWg1LWVtbWMiKSkKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgImFsbHdpbm5lcixzdW41MGktaDUtZW1tYyIpICYmCj4gKyAg
ICAgICAgICAgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKHBkZXYtPmRldi5vZl9ub2RlLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiYWxsd2lubmVyLHN1bjUwaS1oNi1l
bW1jIikpCj4gICAgICAgICAgICAgICAgIG1tYy0+Y2FwcyAgICAgIHw9IE1NQ19DQVBfMV84Vl9E
RFIgfCBNTUNfQ0FQXzNfM1ZfRERSOwo+Cj4gICAgICAgICByZXQgPSBtbWNfb2ZfcGFyc2UobW1j
KTsKPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
