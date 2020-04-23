Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427EA1B565C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myztsm4mRnzDI+jFqIsa4gXg+rDmSkpUbhCqNb54aP0=; b=nMGo1Cp6IW8jDi
	OqXu2J+Om5vXtSPRBx30jHU/V2PqRXcoYcLTsZ+dOQZrMruoFgkl2Es+ZFcoHg0+EvC/98QBDlAuh
	dDR6RMR90IL5k9UDuryOd+oFNmVWfwjoLWkVoZs/Q1sNoNPPSXOr5BCugo8ei9NV/MhegBILPb7VW
	CN2jKUdaDpwB8DnQuP1oiFqAjpPvhbMpewZd3enicE4Rv4Zklsh1+0RJDBJDHRRCeyWbs0KfGEzXn
	oWsV3btYPjGx5AySCP8ZvIhHeqUpWvEH6OAgynXdoPmcYWRizuv9ffsWN1Chu+3jwni8Bx3QXfNj1
	c3Dle38zy8yjI1ktEmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWaz-0005IY-Lo; Thu, 23 Apr 2020 07:48:29 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWaq-0005Gw-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:48:22 +0000
Received: by mail-io1-xd43.google.com with SMTP id 19so5386203ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 00:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k3ka4IDV0cfMC6JOHC5pyroHAb+x5SRkSxbfLcsX5AI=;
 b=KDJ/IO44uPtjl2XWhzmum5A4fMJBp7vQqZwQzQ+US4SAkUCIirgn/jct+7xssD9zOp
 vT2pT9hRxu30Wumt3Hww6OyljA9oitrYq0PpUhha16y8Y6Q694+KAuseOLarKP14AAsT
 1oUukmeBzmLwXcTaiLVXBTjLIWff9ezBiBv4IFc6Ez8360JCCtbb8wmVQu0LhdO/zGjB
 e3TleiTgZ9sCrcf1U0JWtCsEfhS3zoCPlgCqmOZwt2wWCNar75PxNIMh2Vg5W2WArbkW
 3SQRoIu2On3JnM/sRhDnvpNk4DvqeceJB7N20Zh7k6DwEJ1NzldKFDY1RTwJ9qpEWt2+
 F3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k3ka4IDV0cfMC6JOHC5pyroHAb+x5SRkSxbfLcsX5AI=;
 b=E3PcaO2pTom2strb7sRc8xetfPrERuFjmSIZ9GxUAJkp9gWmUBXjW+lO0k/g/z2N3F
 J6EZ2+HBUVkSE0/Lnpq+wfkyLAkEx7GpnWQjIQrVrTeKGvD9LIClU7jeYVRp8gFQ8UOE
 jtL5LLRqYuN/yBVCKUbuft4DiPB+WWVzbdmU7dC3P51yFsMAMClXRPdmXLpVXsBfa2VR
 9saiWWwVkbM+Hvpix1gyoY8ZjoITbp6I5MJIapDFUIcja+5ud+LqaWdCT3r19nS1W3J+
 o4UYampc2kKruR6p1EAWb0AnKCzjw3SDHB588aGr3S6ayNPfXAmDmtHwiX6kXP9s68cH
 6O8A==
X-Gm-Message-State: AGi0PuZahtwDOd620yOrrAZyddVo/0flA4rKG5eO0w0LTETmGqE+qRwf
 Xe4j3qHe/9ZD4EeEBwOvT1IZi2HWHoOeeDT8V0k=
X-Google-Smtp-Source: APiQypK3bXLrqegiRC0mn5WNVpUFxtcYS22c8Po7fiuvhC6lKHUZty/5o7tA7EcbYgzAbCA0UpccFg8ENAtlzxNrMwQ=
X-Received: by 2002:a02:3b4b:: with SMTP id i11mr2162238jaf.16.1587628098711; 
 Thu, 23 Apr 2020 00:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200420143016.16835-1-peron.clem@gmail.com>
In-Reply-To: <20200420143016.16835-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 23 Apr 2020 09:48:07 +0200
Message-ID: <CAJiuCccZ6OJXYBZiCnO4VmOQ2WB0CwOsVe6oaU-t5_iiovLzWw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: fix cooling-cell property
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_004820_961477_5BFC689E 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCAyMCBBcHIgMjAyMCBhdCAxNjozMCwgQ2zDqW1lbnQgUMOpcm9u
IDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBXZSBkZWZpbmUgY29vbGluZy1jZWxs
cyBwcm9wZXJ0eSBmb3IgQ1BVcyBvbmx5IGZvciBib2FyZCBpbmNsdWRpbmcKPiB0aGUgc3VuNTBp
LWg2LWNwdS1vcHAuZHRzaS4gQXMgbm90IGFsbCBib2FyZHMgaGF2ZSB0aGUgQ1BVIE9QUAo+IGR0
c2kgZmlsZSBpbmNsdWRlZCB0aGlzIGNyZWF0ZSBhIHdhcm5pbmcgYmVjYXVzZSB0aGUgY29vbGlu
Zy1tYXBzCj4gaXMgZGVmaW5lZCBidXQgbm90IHRoZSBjb29saW5nLWNlbGxzIHByb3BlcnR5IGlu
IENQVSBub2Rlcy4KClRoaXMgZml4IHNvbWUgd2FybmluZ3MgaW50cm9kdWNlZCBieSB0aGUgSDYg
RFZGUyBzZXJpZSB0aGF0IEkgc2VudCBsYXN0IHdlZWsuLi4KClRoZSBjb29saW5nLWNlbGxzIGhh
cyBiZWVuIGludHJvZHVjZWQgaW4KN2U0YmJmM2ZlNjdjICgiYXJtNjQ6IGR0czogYWxsd2lubmVy
OiBoNjogQWRkIENQVSBPcGVyYXRpbmcKUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlIikKCmluc3Rl
YWQgb2YKNWZjMDkyODc4MmU5ICgiYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIHRoZXJt
YWwgdHJpcCBwb2ludHMvY29vbGluZyBtYXAiKQoKRG8geW91IHBsYW4gdG8gc3F1YXNoIGl0PyBJ
ZiB5ZXMgZG8geW91IHdhbnQgbWUgdG8gc2VudCB0d28gcGF0Y2hlcwpzZXBhcmF0ZWx5IChpdCB3
aWxsIGJlIGEgYml0IGVhc2llciB0byBzcXVhc2ggdGhlbSk/CgpSZWdhcmRzLApDbGVtZW50Cgo+
Cj4gTW92ZSB0aGUgY29vbGluZy1jZWxscyB0byB0aGUgc3VuNTBpLWg2LmR0c2kgaW5zdGVhZCBv
ZiB0aGUKPiBzdW41MGktaDYtY3B1LW9wcC5kdHNpCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVu
dCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpIHwgNCAtLS0tCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpICAgICAgICAgfCA0ICsrKysKPiAg
MiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0
c2kKPiBpbmRleCA5ZWJkOTdiMDRiMWEuLmRjYjc4OTUxOTc5NyAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaQo+IEBA
IC0xMDIsMjAgKzEwMiwxNiBAQAo+Cj4gICZjcHUwIHsKPiAgICAgICAgIG9wZXJhdGluZy1wb2lu
dHMtdjIgPSA8JmNwdV9vcHBfdGFibGU+Owo+IC0gICAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47
Cj4gIH07Cj4KPiAgJmNwdTEgewo+ICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1
X29wcF90YWJsZT47Cj4gLSAgICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsKPiAgfTsKPgo+ICAm
Y3B1MiB7Cj4gICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsK
PiAtICAgICAgICNjb29saW5nLWNlbGxzID0gPDI+Owo+ICB9Owo+Cj4gICZjcHUzIHsKPiAgICAg
ICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdV9vcHBfdGFibGU+Owo+IC0gICAgICAgI2Nv
b2xpbmctY2VsbHMgPSA8Mj47Cj4gIH07Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kKPiBpbmRleCA4M2UzMmY5YzQ5NzcuLjJlMzE2MzJjNmNhOCAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gQEAg
LTI3LDYgKzI3LDcgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICBlbmFibGUtbWV0aG9kID0g
InBzY2kiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19DUFVY
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47
IC8qIDggMzJrIHBlcmlvZHMgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICAjY29vbGluZy1j
ZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgfTsKPgo+ICAgICAgICAgICAgICAgICBjcHUx
OiBjcHVAMSB7Cj4gQEAgLTM2LDYgKzM3LDcgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICBl
bmFibGUtbWV0aG9kID0gInBzY2kiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY2N1IENMS19DUFVYPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5
LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KPiArICAgICAgICAgICAgICAgICAg
ICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgfTsKPgo+ICAgICAg
ICAgICAgICAgICBjcHUyOiBjcHVAMiB7Cj4gQEAgLTQ1LDYgKzQ3LDcgQEAKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBlbmFibGUtbWV0aG9kID0gInBzY2kiOwo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19DUFVYPjsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KPiArICAg
ICAgICAgICAgICAgICAgICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAg
ICAgfTsKPgo+ICAgICAgICAgICAgICAgICBjcHUzOiBjcHVAMyB7Cj4gQEAgLTU0LDYgKzU3LDcg
QEAKPiAgICAgICAgICAgICAgICAgICAgICAgICBlbmFibGUtbWV0aG9kID0gInBzY2kiOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19DUFVYPjsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBl
cmlvZHMgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsK
PiAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgIH07Cj4KPiAtLQo+IDIuMjAuMQo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
