Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED541BB910
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Bwuv9lL1Vh5cBA47GhLqWc0RtQzJ5HYtCCB5vuXXM0=; b=iWBSLG9++pCh49
	Vm0MFWSMISNI27uTHnUqkCAw3AMNwnC4oU8WKPPc4XUMhDfy5CcOUZaHj7v+RLuXuwHHgKqey0Tbx
	F5mb2aj6SP/AuhExWmfkuGsrTH6UPqzHoX5YHKiPTgPaHj1tyq1loJdyrOQUOhBVi6gGmhY5IMYZi
	pqmbFae9pOse21+xr2FXuXfQiMqVBmXcoGjK4kp3OL1z1oHjTh/K08N6p0DjaoBs7GePy7/sKqL3X
	GWN3ZK2Fhekm0izJBa1C7LGf7/FTx/e/6kkpcoXGicGHaFk4wmUeMjcAdMQUCrWdkcoLcMzU04Bsi
	cyYRp0hslJBuVGRMANJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLsE-0007uC-OT; Tue, 28 Apr 2020 08:45:50 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLs6-0007sK-0F
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:45:43 +0000
Received: by mail-il1-x141.google.com with SMTP id e8so19467919ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6kCsx7wAGrjx+68NCUXouJOmxNELyFgrhEYo7Fq+h8c=;
 b=C+tarnSyrkRFmLdjp00BVNxJrJ0ECb6qa8qLWQHwCmOTyQKvszlum4fa/JNc2wjjEQ
 +xod5yiVp1QO2KOfl2oB5irbr2SxB1lONwU9NFwP/GVoQK452rohz+Q27cDd51v5ESBr
 o5o0Pf89nKmNRXSF5FRg83HaXgylmKkDtxIE5JZBmF3ndhcgE2JUwhNuu4shMoirplEn
 th9NtWOdp9DrrexTI8ZYXwbrGtkpzqCV4p7DRs3dGB6awr7IqzUWq0bZzC76VzI+malR
 o2WLy2MsCHkCTERhB23oyWJRGOPYzFah7aFeoVR6Lefrng956pbiQ24iXrswaR1gJRvn
 xrgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6kCsx7wAGrjx+68NCUXouJOmxNELyFgrhEYo7Fq+h8c=;
 b=G5zC8SUz5J882m5nXrbboGc1hRgCTNO4AwgnRaiPxXwKU925eghaqpG9jkicABbS0D
 k6EhKc/Hm5qxlnyAKtIWy0ZkiXpCV9UCATa9AcdxNE8O7WdAst918zit1j1KGSTsi0m7
 ZM+xPYE17mVE43waCmyI0ioSsKudSSOhYOYQmpIe5NRxYiTFeb9vH0d7vpowUUcTNUVd
 yqLQiImUm3hME8Uq8LcorBi2lGUTFxBJBytQOW07hBBPHyomwU8ScbD/7VCeE6Jnk7sp
 y28K48saDpq2vjSHzSsd01IqDrraU1+STykknJ+0hFtVlx1sGMUxBkEN4qjydZPpGmec
 SZvg==
X-Gm-Message-State: AGi0PuYs3yJvot09TDLGja9KmjUQ64ps6kVpP3m+JCIFvnlWqOniFZC3
 kEOKcOVMHcjiOgMq4+1Yxis0jgVPBx7kUZYYkjE=
X-Google-Smtp-Source: APiQypIkK7jh6sesRljWxwYK1L0SgBoutO7PcaD6mBLQhY4xPsDiYxUKbG/slHl1xbUFXGsowlIYhRXsrV13Ijtvcss=
X-Received: by 2002:a05:6e02:111:: with SMTP id
 t17mr23744535ilm.59.1588063537068; 
 Tue, 28 Apr 2020 01:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200426121709.1216-1-peron.clem@gmail.com>
 <20200428075156.65okklrupingiza6@gilmour.lan>
In-Reply-To: <20200428075156.65okklrupingiza6@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 10:45:26 +0200
Message-ID: <CAJiuCcdnGW+jC8NQPWaE_fSEaNfrCcLhkmy3-L-ZXQmgQdsEKw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Use dedicated CPU OPP table
 for Tanix TX6
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_014542_049932_D48CDA61 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Piotr Oniszczuk <warpme@o2.pl>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAwOTo1MiwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMDI6
MTc6MDlQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gVGFuaXggVFg2IGhhcyBh
IGZpeGVkIHJlZ3VsYXRvci4gQXMgRFZGUyBpcyBpbnN0cnVjdGVkIHRvIGNoYW5nZQo+ID4gdm9s
dGFnZSB0byBtZWV0IE9QUCB0YWJsZS4gVGhlIERWRlMgaXMgbm90IHdvcmtpbmcgYXMgZXhwZWN0
ZWQuCj4gPgo+ID4gSW50cm9kdWNlIGEgZGVkaWNhdGVkIE9QUCBUYWJsZSB3aGVyZSB2b2x0YWdl
IGFyZSBlcXVhbHMgdG8KPiA+IHRoZSBmaXhlZCByZWd1bGF0b3IuCj4gPgo+ID4gUmVwb3J0ZWQt
Ynk6IFBpb3RyIE9uaXN6Y3p1ayA8d2FycG1lQG8yLnBsPgo+ID4gRml4ZXM6IGFkZDFlMjdmYjcw
MyAoImFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBDUFUgb3BwIHRhYmxlcyBmb3Ig
VGFuaXggVFg2IikKPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+Cj4KPiBJJ20gbm90IHJlYWxseSBhIGJpZyBmYW4gb2YgZHVwbGljYXRpbmcg
dGhlIE9QUHMsIHNpbmNlIHRoYXQgd291bGQgbWFrZSBhbgo+IHVwZGF0ZSBvZiB0aG9zZSB2ZXJ5
IGxpa2VseSB0byBiZSBvdmVybG9va2VkIGZvciB0aGF0IHBhcnRpY3VsYXIgYm9hcmQgKGFuZAo+
IHNpbmNlIGl0J3MgYSBib2FyZCB0aGF0IG5vdCBhIGxvdCBvZiBwZW9wbGUgaGF2ZSwgaXQgd291
bGQgYmUgaGFyZGVyIHRvIG5vdGljZQo+IHRvbykuCj4KPiBJSVJDLCByZW1vdmluZyB0aGUgY3B1
LXN1cHBseSBwcm9wZXJ0eSBzaG91bGQgd29yayBhcyB3ZWxsPwpZZXMgaXQgd291bGQgd29ya3Mg
YWxzbyB0aGUgT1BQIHdpbGwgcHJvdmlkZSBhIGR1bW15IHJlZ3VsYXRvci4KCkJ1dCBhcyBpdCBo
YXMgYmVlbiBpbnRyb2R1Y2VkIGFuZCB0aGVyZSBpcyBhIGNwdSByZWd1bGF0b3IgaW4gdGhlIHJl
YWwgbGlmZS4KSSB0aG91Z2h0IGl0IHdhcyBhIGJpdCBhIGhhY2sgdG8ganVzdCByZW1vdmUgaXQg
YnV0IGFzIHlvdSB3aXNoLgoKUmVnYXJkcywKQ2xlbWVudAoKCgo+Cj4gTWF4aW1lCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
