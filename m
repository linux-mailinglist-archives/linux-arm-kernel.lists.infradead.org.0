Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8071AD5B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 07:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=my2oklsvo+XJ1UMhrSEXqNXS1APG58ogiXUHHob619g=; b=pX62+k9W30Yat2
	Xn3vcRY0L3WR9xRCC0PerBwKWQfLFUYyt3y+858ERru5NVqTY87vmO5C7QybwIN92DLpKxs8jUinO
	N36ESXWUIiSK35vlAFuwJziUey+IGpfCl2YxRkeE7ytCMi0oNw98oADWFFc2w61JtxhvepMhwtjcA
	UvuUBf6V4/BCsat4x6NW0b/1O7MpG4855XLDHcErUzxAE19mvR3+jrHBgXbEAOqcF+jIEV3UQfbFc
	X8j7912G1fPxbKBJHK9B3UoFbtkbeczmOKssnrjxXT0Ok/a//KDlm7L7R1ZttLAJ8B1BlI0vE9xnD
	8SAKqXTlBCtM9m+DfIOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPJbU-0000TV-HI; Fri, 17 Apr 2020 05:31:52 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPJbM-0000T3-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 05:31:46 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i16so423729ybq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 22:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0c8CU6UtpIsumixgH+9DRIIViSBvNa3IxwwnOZGcCmw=;
 b=AQ/GVbGNHAYyBWRynOxtQpPmnLcJ4m7oVq7VKtLqWIHzQhRk9K9VNNGYZgR6y7hmjT
 M45dhSwYIeSdCAO2w3tgdgdH2LqrFH08AcNpXtwLp7uJxCg8vV5i5qjd/PvsHjwFFA82
 umsF8jdUh5v77q5OpLgbRlHuHY98q4v0T28O6e+HWV8b1imx5N0Vi5t/49HR3gQOrYWS
 334IZvkq9V5k8SxtDD1kH2+47g2GNk1yBgXc9nV5bziL7mVTIzfQi/m7d1WUvmucltNM
 EMjLdS1IIL1XYUZZ7MHrDKGMh/Pws0NMYwBk+tIepzcf1BG5wOoW9SGSnV+deD5T05dS
 0/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0c8CU6UtpIsumixgH+9DRIIViSBvNa3IxwwnOZGcCmw=;
 b=i32JlNJ0ErvTqEtXSwT9b8ckP3LUhiv9SS918vBgOwTxyoBdQJ5LiO3n4iTCXeedng
 iPpGFRm0ypCcKg37nVQI+jGiWvXhvrvAiQUEEFl9GfRr/jJ3QT9h3QC5S0CFsNkg73H+
 38G/btHBldqj5lML3PBecBNu5TqWY02wzUq8SXTNibJmiEw9kmb3D2IDa+vYLqwC4+xg
 8jX5rnVAi3iqPArp6N5nF9D11EBMRKLWn3Dj5AU65bNgPP9pJY6gIPOX1g2LLYwz1AgS
 4yr7iwu3PRocehonQgqPVX684shc0Ly0WMiafETwjLdri3F1aL3mjom6RjeQc0AOv/DE
 1Ckg==
X-Gm-Message-State: AGi0PuZqrS5f5wqFqTSQCpBO6knVMASXCg76Sd7ru/uKXjv0eyQ4FsT/
 0gAhPGpewCwbHqiV+p5IRkzdWy3MK5Z4WhCZDa/b8Q==
X-Google-Smtp-Source: APiQypKVUFJl3i6hUC9fHF/BYwWjbOVWRL+Iwke1m9Z28VscxwNwjqfki0hg8NR7UST1ZPct2R+6OMV4z7i4usyW4X8=
X-Received: by 2002:a25:9cc3:: with SMTP id z3mr3266192ybo.234.1587101502803; 
 Thu, 16 Apr 2020 22:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <158614147708.29424.2884940487411120526.stgit@localhost>
In-Reply-To: <158614147708.29424.2884940487411120526.stgit@localhost>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Fri, 17 Apr 2020 14:31:31 +0900
Message-ID: <CAA93ih2ineuFYzA_uhGwmzsznDKacEG=7rK1beWsCkrnR0opuA@mail.gmail.com>
Subject: Re: [PATCH 0/2] dts: uniphier: Add Akebi96 Board support
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_223145_184949_C62F0063 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gWWFtYWRhLXNhbiwKCkNvdWxkIHlvdSByZXZpZXcgdGhpcyBzZXJpZXM/CgpUaGFuayB5
b3UsCgoyMDIw5bm0NOaciDbml6Uo5pyIKSAxMTo1MiBNYXNhbWkgSGlyYW1hdHN1IDxtYXNhbWku
aGlyYW1hdHN1QGxpbmFyby5vcmc+Ogo+Cj4gSGVsbG8sCj4KPiBIZXJlIGlzIGEgY291cGxlIG9m
IHBhdGNoZXMgdG8gYWRkIGEgZGV2aWNldHJlZSBmb3IgQWtlYmk5NiBib2FyZC4KPiBUaGUgQWtl
Ymk5NiBpcyBhIGNlcnRpZmllZCA5NmJvYXJkcyB3aGljaCBpcyBiYXNlZCBvbiBTb2Npb25leHQK
PiBVbmlQaGllciBMRDIwIFNvQy4gTW9zdCBvZiB0aGUgcGFydCBpcyBzaW1pbGFyIHRvIExEMjAg
cmVmZXJlbmNlCj4gYm9hcmQsIGJ1dCB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzLgo+Cj4gICAtIE1B
WDM0MjEgVVNCLVNQSSBjaGlwIG9uIFNQSSBwb3J0MyAoZm9yIFVTQiBnYWRnZXQgcG9ydC4pCj4g
ICAtIFNpbXBsZSBmcmFtZSBidWZmZXIgd2l0aCAxMDgwcCBmaXhlZCByZXNvbHV0aW9uLgo+ICAg
LSBJMlMgcG9ydCB3aGljaCBpcyBjb25uZWN0ZWQgdG8gYW91dDFiIGluc3RlYWQgb2YgYW91dDEu
Cj4gICAtIDMgc2VyaWFsIHBvcnRzLCBvbmx5IHNlcmlhbDMgaGFzIENUUy9SVFMuCj4gICAtIE5v
IE5BTkQsIG9ubHkgZU1NQyBvbiB0aGUgYm9hcmQuCj4gICAtIE9QLVRFRSBzdXBwb3J0Lgo+Cj4g
U2VlIGh0dHBzOi8vd3d3Ljk2Ym9hcmRzLm9yZy9wcm9kdWN0L2FrZWJpOTYvIGZvciBkZXRhaWxz
Lgo+Cj4gVGhhbmsgeW91LAo+Cj4gLS0tCj4KPiBNYXNhbWkgSGlyYW1hdHN1ICgyKToKPiAgICAg
ICBkdC1iaW5kaW5nczogYXJtOiBBZGQgQWtlYmk5NiBib2FyZCBzdXBwb3J0Cj4gICAgICAgYXJt
NjQ6IGR0czogdW5pcGhpZXI6IEFkZCBzdXBwb3J0IGZvciBBa2ViaTk2Cj4KPgo+ICAuLi4vYmlu
ZGluZ3MvYXJtL3NvY2lvbmV4dC91bmlwaGllci55YW1sICAgICAgICAgICB8ICAgIDEKPiAgYXJj
aC9hcm02NC9ib290L2R0cy9zb2Npb25leHQvTWFrZWZpbGUgICAgICAgICAgICAgfCAgICAxCj4g
IC4uLi9ib290L2R0cy9zb2Npb25leHQvdW5pcGhpZXItbGQyMC1ha2ViaTk2LmR0cyAgIHwgIDIw
MCArKysrKysrKysrKysrKysrKysrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3NvY2lvbmV4dC91
bmlwaGllci1sZDIwLmR0c2kgICB8ICAgIDIKPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9zb2Npb25leHQvdW5pcGhpZXItbGQyMC1ha2ViaTk2LmR0cwo+Cj4gLS0KPiBNYXNh
bWkgSGlyYW1hdHN1IDxtYXNhbWkuaGlyYW1hdHN1QGxpbmFyby5vcmc+Cj4KCgotLSAKTWFzYW1p
IEhpcmFtYXRzdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
