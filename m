Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EA6A9AF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94raH4dYTG3MXHOlM+C1IF4RIbguAU0Rfc/r5Uee2nk=; b=cehz1V2viju8by
	HqVcc2eneCODYX5uL3q8mKga19gV3earuvAPi1/Z/QsAUcbLmyu9XEl3j80+/BgY+t7Y1EBwP+gAf
	jXE7gNWzSFA15JICY3oO6OLg6rtsUJvFXUaP/Lim6poZXtCPF3r5gevNvb1UFVzPBmqMJmvC6cvVv
	aq2Y8c4GxgdSiELkxmgTuCWCEY6H2/xqFnD1bfNGnfJaX96Nz/Wn8nbv4VP/JhVErmoBGP3847LGT
	UtqxnAsOlsCZU/cEQpA+FSVmojT0/7FyQiuulYiohlCqlyZZmant72DyFczN7ZfiNxcV69aR3LWAn
	Ipmkzh27/oYxB0Yx/otA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lfA-000647-Uy; Thu, 05 Sep 2019 06:54:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lf0-00063e-18
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:54:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id t9so1391884wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 23:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0vLES3KcXlbini5YZPkYzSNWuB2HCug+phEKjv2g50I=;
 b=aVMxM2zIRwBMfDICMK4DSKmd5ISvZcUcq13BUth0B8nv9QwXj8Dv9SgnF+Jdd0XlgY
 f79rQFvgQaAk81r/iFiByGiYD56Ah97+/qyesL/qzg0TwKgikG5qWH51yY59V45sAjpH
 om2JGIZ83c2Stmlon5oaht20cUk9luPtN/hzNcK2sZZENLT2Jd3jmWIb0BpKeNgjgSr0
 zxOhZAEVXkC7aI4cNLZzRGOL3+r8FEvgjvgYuOClhgNo/a7rE8hrqGVOejsnk5WKL+U+
 NXHYPf+rqjdKAzPOEsrrkPAT18hwij2RtHuYF44Y+zDAp7YRCCQGb0q6uBQODPqwcMPv
 /PSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0vLES3KcXlbini5YZPkYzSNWuB2HCug+phEKjv2g50I=;
 b=VAftKWtIQMGgcssNvA3NsJAziBXvLQelcjgA2ug8xRiBzDhgbehixic1+gJU6G72kv
 CR3TZCwhD1yqDJB3N383zpzg6Z6QIQwCiV/fzXjT+mR6dgDJC34UfVa2Z2719PrM0zkA
 NR4SfDyy0C47McwIRbqS009nQjhI6/d3CsC+3xHTYA0CEFta6VfwT0PJe72R6YpNyBF7
 J6RobeviNiUAhlWIv0rhBo/cUzFXk58yTuG9S40X3H3QwdU101vZismba2XUBaf6oyuF
 ojCeHMGqN13qZvp5KkiZsvjEISrSZnJb7BQcGDZZqSARU58llw4Jo3RcotIlP5wfjrZX
 VazA==
X-Gm-Message-State: APjAAAWelaFlQKG0Cd1dbQ/YoMf49owUC4UokZL+lvLicEFqKFvIjaZk
 I0L0JY5yko8XUIp8hHJbkP8jQw==
X-Google-Smtp-Source: APXvYqybtPbpgaySYMeYrQmaZI0zhXnSJyRoe+if2iMchmxVY7RVAH8EwyN919lmLDwHmgEQic9NmA==
X-Received: by 2002:a1c:c5cb:: with SMTP id v194mr1518468wmf.108.1567666464468; 
 Wed, 04 Sep 2019 23:54:24 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id v2sm3538896wmf.18.2019.09.04.23.54.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 23:54:24 -0700 (PDT)
Date: Thu, 5 Sep 2019 07:54:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190905065423.GV26880@dell>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro> <20190904200130.GT26880@dell>
 <20190904202656.GB580@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904202656.GB580@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_235426_087449_4DBACD1D 
X-CRM114-Status: GOOD (  29.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBXZWQgMDQg
U2VwIDEzOjAxIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBPbiBXZWQsIDA0IFNl
cCAyMDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiAKPiA+ID4gT24gV2VkIDA0IFNlcCAw
MTo0NSBQRFQgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBPbiBUdWUsIDAz
IFNlcCAyMDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gPiBPbiBU
dWUgMDMgU2VwIDA2OjUwIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gWy4uXQo+ID4gPiA+
IFdpdGggdGhpcyBzaW1wbGUgcGFyYW1ldGVyIGNoZWNraW5nIHBhdGNoLCB0aGUgU0UgZmFsbHMg
YmFjayB0byB1c2luZwo+ID4gPiA+IEZJRk8gbW9kZSB0byB0cmFuc21pdCBkYXRhIGFuZCBjb250
aW51ZXMgdG8gd29yayBmbGF3bGVzc2x5LiAgSU1ITwo+ID4gPiA+IHRoaXMgc2hvdWxkIGJlIGFw
cGxpZWQgaW4gdGhlIGZpcnN0IGluc3RhbmNlLCBhcyBpdCBmaXhlcyBhIHJlYWwgKG51bGwKPiA+
ID4gPiBkZXJlZmVyZW5jZSkgYnVnIHdoaWNoIGN1cnJlbnRseSByZXNpZGVzIGluIHRoZSBNYWlu
bGluZSBrZXJuZWwuCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBQZXIgdGhlIGN1cnJlbnQgZHJpdmVy
IGRlc2lnbiB0aGUgd3JhcHBlciBkZXZpY2UgaXMgdGhlIHBhcmVudCBvZiB0aGUKPiA+ID4gU0Us
IEkgc2hvdWxkIGhhdmUgc2VlbiB0aGF0IDhiYzUyOWIyNTM1NCB3YXMgdGhlIGJlZ2lubmluZyBv
ZiBhIGdhbWUgb2YKPiA+ID4gd2hhYy1hLW1vbGUgY2lyY3VtdmVudGluZyB0aGlzIGRlc2lnbi4g
U29ycnkgZm9yIG5vdCBzcG90dGluZyB0aGlzCj4gPiA+IGVhcmxpZXIuCj4gPiAKPiA+IFJpZ2h0
LCBidXQgdGhhdCBkb2Vzbid0IG1lYW4gdGhhdCB0aGUgY3VycmVudCBkcml2ZXIgZGVzaWduIGlz
Cj4gPiBjb3JyZWN0LiAgQUNQSSwgd2hpY2ggaXMgaW4gdGhlb3J5IGEgZGVzY3JpcHRpb24gb2Yg
dGhlIGhhcmR3YXJlCj4gPiBkb2Vzbid0IHNlZW0gdG8gdGhpbmsgc28uICBJdCBsb29rcyBtb3Jl
IGxpa2Ugd2UgZG8gdGhpcyBpbiBMaW51eCBhcyBhCj4gPiBjb252ZW5pZW5jZSBmdW5jdGlvbiB0
byBsaW5rIHRoZSBkZXZpY2VzLiAgSW5zdGVhZCB0aGlzICdwYXJlbnQnIHNlZW1zCj4gPiB0byBi
ZSByZXByZXNlbnRlZCBhcyBhIHZlcnkgc21hbGwgcmVnaXN0ZXIgc3BhY2UgYXQgdGhlIGVuZCBv
ZiB0aGUgU0UKPiA+IGJhbmtzLgo+IAo+IFRoZXJlJ3MgYSBsYXJnZXIgcmVnaXN0ZXIgd2luZG93
IGNvbnRhaW5pbmcgb25lIGJsb2NrIG9mIGNvbW1vbgo+IHJlZ2lzdGVycyBmb2xsb3dlZCBieSBy
ZWdpc3RlciBibG9ja3MgZm9yIGVhY2ggc2VyaWFsIGVuZ2luZS4KPiAKPiBJIGRvbid0IGtub3cg
aWYgd2Ugd2lsbCBuZWVkIG1vcmUgb2YgdGhlIGNvbW1vbiByZWdpc3RlcnMgaW4gdGhlIGZ1dHVy
ZSwKPiBidXQgZm9yIG5vdyB5b3UgYXQgbGVhc3QgaGF2ZSB0aGUgcmVxdWlyZW1lbnQgdGhhdCBp
biBvcmRlciB0byBvcGVyYXRlCj4gdGhlIFNFcyB5b3UgbmVlZCB0byBjbG9jayB0aGUgd3JhcHBl
ci4gU28gdGhlIGN1cnJlbnQgRFQgbW9kZWwKPiByZXByZXNlbnRzIHRoZSBoYXJkd2FyZSBhbmQg
dGhlIHBvd2VyL2Nsb2NraW5nIHRvcG9sb2d5Lgo+IAo+IFRoZSBmYWN0IHRoYXQgeW91IG1hbmFn
ZWQgdG8gYm9vdCB0aGUgc3lzdGVtIHdpdGgganVzdCBpZ25vcmluZyBhbGwKPiBjbG9ja3MgaXMg
YSBzdXJwcmlzZSB0byBtZS4KClRoYXQgaXMgYSBwcmVyZXF1aXNpdGUgb2YgVUVGSS9BQ1BJLiAg
QWxsIGNsb2NrcywgcmVnaXN0ZXJzLCBwaHlzLApyZXNldHMsIGV0YyBtdXN0IGJlIGNvbmZpZ3Vy
ZWQgYnkgdGhlIGZpcm13YXJlLiAgV2Ugc2hvdWxkIG9ubHkgbmVlZAp0byBwbGF5IHdpdGggdGhl
bSBmb3IgUG93ZXIgTWFuYWdlbWVudCBwdXJwb3NlcyAod2hpY2ggcmVxdWlyZXMgdGhlClBFUCB0
byBiZSBlbmFibGVkKS4KCj4gPiA+IEJ1dCBpZiB0aGlzIGlzIHRoZSBvbmUgd2hhY2sgbGVmdCB0
byBnZXQgdGhlIHRoaW5nIHRvIGJvb3QgdGhlbiBJIHRoaW5rCj4gPiA+IHdlIHNob3VsZCBtZXJn
ZSBpdC4KPiA+IAo+ID4gQW1hemluZywgdGhhbmsgeW91IQo+ID4gCj4gPiBEbyB5b3Uga25vdyBo
b3cgd2UgZ28gYWJvdXQgZ2V0dGluZyB0aGlzIG1lcmdlZD8gIFdlIG9ubHkgcG90ZW50aWFsbHkK
PiA+IGhhdmUgMC41IHdlZWtzICgxLjUgd2Vla3MgaWYgdGhlcmUgaXMgYW4gLXJjOCBbZG91YnRm
dWxdKSwgc28gd2UgbmVlZAo+ID4gdG8gbW92ZSBmYXN0LiAgV291bGQgeW91IGJlIHByZXBhcmVk
IHRvIHNlbmQgaXQgdG8gTGludXMgZm9yIC1maXhlcz8KPiA+IEknZCBkbyBpdCBteXNlbGYsIGJ1
dCB0aGlzIGlzIGEgbGl0dGxlIG91dCBvZiBteSByZW1pdC4KPiA+IAo+IAo+IFRoZSAib2ZmZW5k
aW5nIiBjb21taXQgd2FzIHBpY2tlZCB1cCBtaWQgSnVuZSBhbmQgbm8gb25lIG5vdGljZWQgdGhh
dCBpdAo+IGRvZXNuJ3Qgd29yayB1bnRpbCB0aGlzIHdlZWs/CgpJIHRoaW5rIHlvdSdyZSB2aWV3
aW5nIHRoaXMgZnJvbSB0aGUgd3JvbmcgYW5nbGUuICBUaGUgIkFDUEkKZW5hYmxlbWVudCIgY29t
bWl0KHMpIG1lcmVseSBwcmV2ZW50ZWQgdGhlIHVzZSBvZiB0aGUgQ2xvY2sgYW5kClJlZ3VsYXRv
ciBBUElzLCBhcyBwZXIgdGhlIEFDUEkgZ3VpZGVsaW5lcy4gIFNlZSBbMF0uCgpSaWdodC4gIFVu
Zm9ydHVuYXRlbHksIEkgZGV2ZWxvcGVkIHRoaXMgb24gdG9wIG9mIG91ciBEVCBlbmFibGVtZW50
CnBhdGNoZXMsIHdoaWNoIGFsc28gaW5jbHVkZWQgeW91ciBHZW5pIFNFIERNQSBhbmQgUmVndWxh
dG9yIHN0YXR1cwpoYWNrcywgd2hpY2ggbWVhbnQgSSBtaXNzZWQgdGhpcyBhbmQgdGhlIGFib3Zl
IHVudGlsIG5vdy4KCkl0J3Mgb25seSBub3cgSSd2ZSBoYWQgdGhlIGNoYW5jZSB0byBhdHRlbXB0
IHRvIGJvb3QgcmF3IE1haW5saW5lIHRoYXQKdGhlc2UgY2FtZSB0byBsaWdodCwgaGVuY2UgdGhl
IGxhc3QgbWludXRlIHBhbmljIHRvIHRyeSBhbmQgZml4IHRoZW0uCgo+IExldCdzIHNsYXAgYSBD
Yzogc3RhYmxlQCBvbiBpdCBhbmQgZ2V0IGl0IGludG8gdjUuNC1yYzEgYW5kIGl0IHdpbGwgc2hv
dwo+IHVwIGluIHY1LjMuMS4KCldlICpjYW4qIGRvIHRoYXQsIGhvd2V2ZXIgbXkgZmVhciBpcyB0
aGF0IHRoZSBkaXN0cm9zIGFyZSBnb2luZyB0byBiZQpyZWxlYXNpbmcgdGhlaXIgbmV3IHZlcnNp
b25zIChuZXh0IG1vbnRoKSBiYXNlZCBvbiB2NS4zLiAgV2hpY2ggd291bGQKbWVhbiB0aGV5IHdp
bGwgbm90IGJvb3Qgb24gdGhlc2UgcGxhdGZvcm1zIHVudGlsIHRoZXkgYmFja3BvcnQgdGhlc2UK
cGF0Y2hlcywgd2hpY2ggbWlnaHQgYmUgc29tZSBtb250aHMgbGF0ZXIuCgpUaGlzIGlzIHRoZSBv
bmx5IGlzc3VlIHRoYXQgcHJldmVudHMgQUNQSSBmcm9tIGJvb3RpbmcsIG1lYW5pbmcgd2UgY2Fu
CmF0IGxlYXN0IG1ha2UgdXNlIG9mIHRoZSBkaXN0cm8gaW5zdGFsbGVycyB3aGVuIHRoZXkgYXJl
IHJlbGVhc2VkLgpUaGUgcGF0Y2ggaXMgdmVyeSBzaW1wbGUgYW5kIGxvdy1yaXNrLCBzbyBpZGVh
bGx5IGl0IHdvdWxkIGdvIGludG8KLXJjNy4KClswXSBEb2N1bWVudGF0aW9uL2FybTY0L2FybS1h
Y3BpLnJzdAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
