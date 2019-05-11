Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D304D1A87B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 18:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCI2uFE6Haj7FwH0Af63f1higJcR+q74GwmLhCA3EJs=; b=BSdPj6wmXPjLPS
	SJocgQAvhddpvJqaePTCawmNNT1pLdyuiVshTmWKlBPXZEufj6NOjRdlI/A4Yl408xv+Y5yLek13a
	gch/J2EC/bq3sRM/Zf68zZ1qo9RHFz2Y3HrwhjE2HUFTOjuRvh5Bl71AdJ1zCE+6Gkf2tZdaBhqgz
	IQws5INRjAouof4z4COeQp2+nho5AXYrS/wWQCu3XGaKe2eEQSWCGWChTXyNEOQmNAU+bgJCubamu
	37c0AjnkcQj3ybvIgVlExBEwFIbfryqysZ/Og0/sLxWLdZ/k2V819cDkIGrqVaxBWDNDFa+9rUnHr
	1UeSdqD/nyTYw8qzR+1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPV2e-00058W-5y; Sat, 11 May 2019 16:40:08 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPV2S-00057n-Tz
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 16:39:58 +0000
Received: by mail-yw1-xc41.google.com with SMTP id w18so7323884ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 09:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cjY3Gi3PUp53aoD3Q4Ldyp9wbi6dZLozT0FvDch+7/I=;
 b=F21w5ckIZPkwVLLoInsNZ9dA+EtE3H0nvwGZWdrSk6cUqXpWBpFPnRtfy4HVcpVHSI
 VYSbgDV19avxyE+1HKdMq5CQpHN0frNrNtat+d5R3qTDyoei/cJJ3KXh2bdRqH4PyePL
 WtJjjsTpeFyn5i6jL9up2W0jnhwwIuI/DDi4extrCrsW2JCfPs45so0JJ80qjtQRJLfY
 rcQb2M9zy9iFECemeOXL+xRoyBI5HTt+7y3X1ed/Z7mMvNiQ4p8ZSluIJC9iTM3cFvKl
 bqg/2RaUqLtmTv25WlZbffbxxTGBldV5IOsPmi0FSshe8c4TBCd4BYrSnrmuDz0oVjqL
 mW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cjY3Gi3PUp53aoD3Q4Ldyp9wbi6dZLozT0FvDch+7/I=;
 b=CsbKahE4AcA/W+O+AvMer59o70dU+dRkXJognigUzl06yRyJPcKzGjdMLHOjmblBFm
 vAqdvoT6X0s5GplsW7IDIUH0KgYi/i2QqNGtUMaJLIez1tqnmCE2SzhyrqAq8lT//o+7
 gZpXUv6C+BcTVjukb//p+mY1qKAchn4YiXPGuGZV7yr94ObM339bCfjX7/SzSlJyN4TW
 J4qLWuFd26TQbt4Q5yPpsPiW8AtC7Loxr2kJ7J3p1BAYTekUwkDbhJ5tXeWkyAslbclj
 NGzY05T1AXf7u7rj34R2BzKNnoDAHtm/zyAA/shoyQ7fkPxBYtbWGEGM0h3sxnLt5GZk
 EiIQ==
X-Gm-Message-State: APjAAAVW61K5BeBXi5AsuHi5mPyXOd0v8yeLCxF/mJ7grAY05QAwp7du
 WIyG3mS7VCD2BJBO5kZ1fnfF1AjYQRqXywJy5yM=
X-Google-Smtp-Source: APXvYqxDFe1vJo1pQCJPxkbL9SV4OT2qMXaYt0E9Lp32loF8V0v7A6o769xLglSXr6GAMZE7lGYiUpsvSkyOpJEH6V0=
X-Received: by 2002:a81:4850:: with SMTP id v77mr9327334ywa.264.1557592790807; 
 Sat, 11 May 2019 09:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190417173031.9920-1-peron.clem@gmail.com>
In-Reply-To: <20190417173031.9920-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 11 May 2019 18:39:39 +0200
Message-ID: <CAJiuCccu_wfgio9wUcOCP0o4XPRgQOvTOZS8St7mV88TAdwaRg@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] Allwinner H6 Mali GPU support
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_093956_969013_B5619D0A 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

SGkgTWF4aW1lLAoKSXMgdGhpcyBzZXJpZXMgb2sgZm9yIHlvdSA/CgpUaGFua3MsCkNsZW1lbnQK
Ck9uIFdlZCwgMTcgQXByIDIwMTkgYXQgMTk6MzAsIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBUaGUgQWxsd2lubmVyIEg2IGhhcyBhIE1h
bGktVDcyMCBNUDIuIFRoZSBkcml2ZXJzIGFyZQo+IG91dC1vZi10cmVlIHNvIHRoaXMgc2VyaWVz
IG9ubHkgaW50cm9kdWNlIHRoZSBkdC1iaW5kaW5ncy4KPgo+IFRoZSBmaXJzdCBwYXRjaCBpcyBm
cm9tIE5laWwgQW1zdHJvbmcgYW5kIGhhcyBiZWVuIGFscmVhZHkKPiBtZXJnZWQgaW4gbGludXgt
YW1sb2dpYy4gSXQgaXMgcmVxdWlyZWQgZm9yIHRoaXMgc2VyaWVzLgo+Cj4gVGhlIHNlY29uZCBw
YXRjaCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZQo+IG9yZGVyIGhh
cyByZXF1aXJlZCBieSBSb2IgSGVycmluZy4KPiBTZWU6IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTA2OTk4MjkvCj4KPiBUaGFua3MsCj4gQ2xlbWVudAo+Cj4gQ2hhbmdlcyBp
biB2MyAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgo+ICAtIFJlYXV0aG9yIEljZW5vd3kgZm9y
IGhlciBwYXRoCj4KPiBDaGFuZ2VzIGluIHYyIChUaGFua3MgdG8gTWF4aW1lIFJpcGFyZCk6Cj4g
IC0gRHJvcCBHUFUgT1BQIFRhYmxlCj4gIC0gQWRkIGNsb2NrcyBhbmQgY2xvY2stbmFtZXMgaW4g
cmVxdWlyZWQKPgo+IENsw6ltZW50IFDDqXJvbiAoNik6Cj4gICBkdC1iaW5kaW5nczogZ3B1OiBt
YWxpLW1pZGdhcmQ6IEFkZCBoNiBtYWxpIGdwdSBjb21wYXRpYmxlCj4gICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IEFkZCBBUk0gTWFsaSBHUFUgbm9kZSBmb3IgSDYKPiAgIGFybTY0OiBkdHM6IGFs
bHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgUGluZSBINjQKPiAgIGFybTY0OiBkdHM6
IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgQmVlbGluayBHUzEKPiAgIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBseSBmb3IgT3JhbmdlUGkgQm9hcmRz
Cj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IEFkZCBtYWxpIEdQVSBzdXBwbHkgZm9yIE9yYW5n
ZVBpIDMKPgo+IEljZW5vd3kgWmhlbmcgKDEpOgo+ICAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1t
aWRnYXJkOiBBZGQgYnVzIGNsb2NrIGJpbmRpbmdzCj4KPiBOZWlsIEFybXN0cm9uZyAoMSk6Cj4g
ICBkdC1iaW5kaW5nczogZ3B1OiBtYWxpLW1pZGdhcmQ6IEFkZCByZXNldHMgcHJvcGVydHkKPgo+
ICAuLi4vYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQudHh0ICAgICAgICAgfCAyNyArKysr
KysrKysrKysrKysrKysrCj4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgICB8ICA1ICsrKysKPiAgLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBp
LTMuZHRzICAgIHwgIDUgKysrKwo+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3Jhbmdl
cGkuZHRzaSAgICAgfCAgNSArKysrCj4gIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LXBpbmUtaDY0LmR0cyB8ICA1ICsrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LmR0c2kgIHwgMTQgKysrKysrKysrKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDYxIGlu
c2VydGlvbnMoKykKPgo+IC0tCj4gMi4xNy4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
