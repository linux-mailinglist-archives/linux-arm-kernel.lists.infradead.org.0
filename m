Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A462C1B0C7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myyQWCuVvguwsBciirTDAh/eljmf2AcFPmaJ5a45cJk=; b=ACkwr+YxPgitzh
	+EvwPZ3h557vn0durHf4sw61NKbwqNWJ+n5yK899Adj2oTNS0UHQDhkzEDg2t5H1g+bM0VQnHOLjw
	C/Y3vCYN1W8OyRN73cEBCtJJuwuyouxFM6YeCZ/k+ygnXi2bFWqmiC296MUT9OELTdzJGTfQMU87J
	WZLKTyTTXEtBHwhaN0PnKR8kvFB1ltfGXI2sCKuPguAkclsZA6tya0TtJZIPTfw6p2sg4TWq+EitF
	WykyJeljDNgl8kBuWr+wt2DOXv7EMwR4a4JS7Q477xAqsLLPhI3a+cCbIATFEG2TXT+8tVChRjuNe
	Af0nZ+Zg6s4uRTQhccfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWMY-0005T2-RD; Mon, 20 Apr 2020 13:21:26 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWMN-0005RL-Uv
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:21:18 +0000
Received: by mail-yb1-xb44.google.com with SMTP id h205so5373895ybg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hz6KYcGv84bJO1Ds+5TVr6YXgSzuJd4prz26JPnnKhQ=;
 b=ChSBQwr+bOBQ/GPOYYPDg4iIBzOcH4FV0Bt6oV2T/ngBEjkIDiRdlq6UQt6iImxB8F
 ezTX/pTCArISETN1m00aks/kHs+eCuoJau0vEETcKpK73TYW/ksk86XpUOZDyWRhVUpi
 ph7qnjT5x7BTRUD/JH1y4bcyGReyOCkdSfxpu+UrPMlNDPnOX4DgBqSKLWAmh9E4wVUd
 eyGBfOrJEa+vw3N9Y9QdLnpjC0H1NGjjJ5YqYBa4HC1ZTxMI/1IODykcbg0fR8KWJDbY
 BkUWOHG0VIOf5Vq3DjXHPhNTrP6cpKbXCqeiuQyeMr0phM3rEihuem/ZAa9EO1A2wpyW
 q5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hz6KYcGv84bJO1Ds+5TVr6YXgSzuJd4prz26JPnnKhQ=;
 b=a4Foj2Gr/0/Rp0B1vcQ6KzFIM+yZ2AbnLmGP221Bu8MhMcfTvCVgS4uHPSvVn0cpBk
 ml8m6uXge39+sxazAEb8kb/Idag5mjCvH8KbK5KuwBifEVnk6/Fx0H42reVHZuFlR5DX
 GuhpbzR0bdD2BmcoH3T+IWAyLUOMVBp+AskjUNYcqcP2U+YT6mSGE6gIOWXgbgmwHfqE
 xptOIVG+lRjC0wU8SMOX2e97J++4zytZ/4Dcp1FsN8OnHr9aoDD3HPH72DBFF07oCBKl
 Qbp/aY5wPGt1zm/KY/alkucarAiGZypv76WhDbXD+XfwIYUSpucuqCs7VVyBrHRLatQQ
 JBQQ==
X-Gm-Message-State: AGi0PubbKZTDS4Rmpqi0NbRi/eidQtvrN+Thql9QUakr2pJq/AfCAhlK
 yPAeeS3q71XiBqm7guqvlfF8YjGQEqILa6rN+nyuKw==
X-Google-Smtp-Source: APiQypKxJq0iDW27LTTAcdqxVKFrgf93YIPI4opqqPbgfS1b/8SB27Nw3gHoBP7ip6K2GBPkzf+747+XMJa33CoAhfs=
X-Received: by 2002:a25:504f:: with SMTP id e76mr20132091ybb.207.1587388874395; 
 Mon, 20 Apr 2020 06:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <158737719165.27947.6617937231903079086.stgit@localhost>
 <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
 <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
In-Reply-To: <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Mon, 20 Apr 2020 22:21:03 +0900
Message-ID: <CAA93ih0TNEfU_fiS_43+H6+UWrP2b8zh+PxMiiKBg3pZW8Jo8g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_062116_517964_2309A197 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFtYWRhLXNhbiwKClRoYW5rIHlvdSBmb3IgeW91ciByZXZpZXcuCgoyMDIw5bm0NOaciDIw
5pelKOaciCkgMjA6MTYgTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lAa2VybmVsLm9yZz46Cj4K
PiBPbiBNb24sIEFwciAyMCwgMjAyMCBhdCA3OjA4IFBNIE1hc2FtaSBIaXJhbWF0c3UKPiA8bWFz
YW1pLmhpcmFtYXRzdUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBBZGQgdGhlIGRldmljZSB0
cmVlIGZvciBBa2ViaTk2LiBBa2ViaTk2IGlzIGEgOTZib2FyZHMgY2VydGlmaWVkCj4gPiBkZXZl
bG9wbWVudCBib2FyZCBiYXNlZCBvbiBVbmlQaGlyIExEMjAuCj4gPiAoIGh0dHBzOi8vd3d3Ljk2
Ym9hcmRzLm9yZy9wcm9kdWN0L2FrZWJpOTYvICkKPiA+Cj4gPiBUaGlzIGJvYXJkIGhhczsKPiA+
IC0gTUFYMzQyMSBVU0ItU1BJIGNoaXAgb24gU1BJIHBvcnQzIChmb3IgVVNCIGdhZGdldCBwb3J0
KQo+ID4gLSBTaW1wbGUgZnJhbWUgYnVmZmVyIHdpdGggMTA4MHAgZml4ZWQgcmVzb2x1dGlvbi4K
PiA+IC0gSTJTIHBvcnQgd2hpY2ggaXMgY29ubmVjdGVkIHRvIGFvdXQxYiBpbnN0ZWFkIG9mIGFv
dXQxLgo+ID4gLSAzIHNlcmlhbCBwb3J0cywgb25seSBzZXJpYWwzIGhhcyBDVFMvUlRTLgo+ID4g
LSBObyBOQU5ELCBvbmx5IGVNTUMgb24gdGhlIGJvYXJkLgo+ID4gLSBPUC1URUUgc3VwcG9ydC4K
Pgo+Cj4gSSBkaWQgbm90IGtub3cgIk9QLVRFRSBzdXBwb3J0IiB3YXMgYm9hcmQgc3BlYy4KCklu
ZGVlZCwgdGhhdCBpcyBhIGZlYXR1cmUgaW4gdGhlIGZpcm13YXJlIG9uIHRoZSBib2FyZC4gQWN0
dWFsbHkgSSB3YXMKd29uZGVyaW5nIHRvbywgYnV0IGFzIG90aGVyIGJvYXJkcyBhbHJlYWR5IGhh
dmUgT1AtVEVFIGZpcm13YXJlIGVudHJ5LApJIGRlY2lkZWQgdG8gYWRkIGl0LgoKPgo+IEFueXdh
eSwgSSBkZWNpZGVkIHRvIG5vdCB3b3JyeSBhYm91dCB0aGF0LgoKVGhhbmtzIDopCgo+Cj4KPiBZ
b3UgYXJlIGFkZGluZyBsb3RzIG9mIHJlZHVuZGFudCBjb2RlLgo+Cj4gRGVsZXRlIGFzIGZvbGxv
d3MuCgpUaGFua3MgZm9yIHRoZSBjb21tZW50LiBPSywgSSdsbCB1cGRhdGUgaXQuCgo+Cj4KPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9zb2Npb25leHQvdW5pcGhpZXItbGQyMC1h
a2ViaTk2LmR0cwo+IGIvYXJjaC9hcm02NC9ib290L2R0cy9zb2Npb25leHQvdW5pcGhpZXItbGQy
MC1ha2ViaTk2LmR0cwo+IGluZGV4IDg0ZmY5OGQ5Njc1MS4uYWFmODYxNjJkYTg0IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3VuaXBoaWVyLWxkMjAtYWtlYmk5
Ni5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3NvY2lvbmV4dC91bmlwaGllci1sZDIw
LWFrZWJpOTYuZHRzCj4gQEAgLTExMyw3ICsxMTMsNiBAQCAmc2VyaWFsMiB7Cj4gICZzZXJpYWwz
IHsKPiAgICAgICAgIC8qIExTIGNvbm5lY3RvciBVQVJUMCAqLwo+ICAgICAgICAgc3RhdHVzID0g
Im9rYXkiOwo+IC0gICAgICAgcGluY3RybC0wID0gPCZwaW5jdHJsX3VhcnQzX2N0c3J0cz47Cj4g
IH07Cj4KPiAgJnNwZGlmX2hpZWNvdXQxIHsKPiBAQCAtMTU1LDExICsxNTQsNiBAQCAmaTJjMSB7
Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4KPiAtJmF1ZGlvIHsKPiAtICAgICAg
IHBpbmN0cmwtMCA9IDwmcGluY3RybF9hb3V0MWI+LAo+IC0gICAgICAgICAgICAgICAgICAgPCZw
aW5jdHJsX2FvdXRpZWMxPjsKPiAtfTsKPiAtCj4gICZzcGkzIHsKPiAgICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+IEBAIC0xODcsMTQgKzE4
MSwxMCBAQCB4aXJxMTAgewo+ICAgICAgICAgfTsKPiAgfTsKPgo+IC0mcGluY3RybCB7Cj4gLSAg
ICAgICBwaW5jdHJsX2FvdXQxYjogYW91dDFiIHsKPiAtICAgICAgICAgICAgICAgZ3JvdXBzID0g
ImFvdXQxIiwgImFvdXQxYiI7Cj4gLSAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gImFvdXQxIjsK
PiAtICAgICAgIH07Cj4gKyZwaW5jdHJsX2FvdXQxIHsKPiArICAgICAgIGdyb3VwcyA9ICJhb3V0
MSIsICJhb3V0MWIiOwo+ICt9Owo+Cj4gLSAgICAgICBwaW5jdHJsX3VhcnQzX2N0c3J0czogdWFy
dDMtY3RzcnRzIHsKPiAtICAgICAgICAgICAgICAgZ3JvdXBzID0gInVhcnQzIiwgInVhcnQzX2N0
c3J0cyI7Cj4gLSAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gInVhcnQzIjsKPiAtICAgICAgIH07
Cj4gKyZwaW5jdHJsX3VhcnQzIHsKPiArICAgICAgIGdyb3VwcyA9ICJ1YXJ0MyIsICJ1YXJ0M19j
dHNydHMiOwo+ICB9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3NvY2lvbmV4
dC91bmlwaGllci1sZDIwLmR0c2kKPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3Vu
aXBoaWVyLWxkMjAuZHRzaQo+IGluZGV4IGY5MzUxOTc5M2JmYi4uYWZhOTBiNzYyZWE5IDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3VuaXBoaWVyLWxkMjAuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3VuaXBoaWVyLWxkMjAuZHRz
aQo+IEBAIC0zMzcsNyArMzM3LDcgQEAgZ3BpbzogZ3Bpb0A1NTAwMDAwMCB7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MjEgMjE3IDM+Owo+
ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIGF1ZGlvOiBhdWRpb0A1NjAw
MDAwMCB7Cj4gKyAgICAgICAgICAgICAgIGF1ZGlvQDU2MDAwMDAwIHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gInNvY2lvbmV4dCx1bmlwaGllci1sZDIwLWFpbyI7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4NTYwMDAwMDAgMHg4MDAwMD47Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwwIDE0NCA0PjsKPgo+Cj4gTGFzdGx5
LCBpcyB0aGUgcGluLXNldHRpbmcgImFvdXQxIiwgImFvdXQxYiIgY29ycmVjdCA/CgpZZXMsIGFj
Y29yZGluZyB0byB0aGUgc2NoZW1hdGljcyBvZiBBa2ViaTk2KCopLCBpdCBpcyBjb25uZWN0ZWQg
dG8KYW91dDFiKFhJUlEqKSBpbnN0ZWFkIG9mIGFvdXQxKEFPMSopLgoKKCopIGh0dHBzOi8vd3d3
Ljk2Ym9hcmRzLm9yZy9kb2N1bWVudGF0aW9uL2VudGVycHJpc2UvYWtlYmk5Ni9oYXJkd2FyZS1k
b2NzL2FrZWJpOTYtc2NoZW1hdGljcy5wZGYKCkJlc3QgcmVnYXJkcywKCgoKPgo+Cj4KPiAtLQo+
IEJlc3QgUmVnYXJkcwo+IE1hc2FoaXJvIFlhbWFkYQoKCgotLQpNYXNhbWkgSGlyYW1hdHN1Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
