Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CDDA86D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AUY9FnavVzE3azystRuSWPYv8YDPf4sfUIFSgZI9P0=; b=eB06RhfWQwujT0
	rO6yiryjHrXjzON7HQ3IjWPocxjqgiL59vmfIFbx8vZVZTcB5A2MPuDSLGtMHwGv7Nw8LRffrpEX0
	DUshokr00CIT9YyPDDVJpubKfCbSubhnFXk13MLnv8v+Htw59jEDRmFcfG+rxcRzCIDXgO4eYu1k9
	zvoFMoeMjXGBQ0Y59QCtCks2nz9ZjQzj/zVouOqVqOkR14mM30NSpa7dLbM6Ybv21DtrjHZTsZ2r9
	gpn02oWAbAHVI1EnQk9MHIA3HnO4psokWDBoYwwKT6Ad8bOnl8YsepmqPjXj0LfAfGQ3B2Luszr5E
	mX5kgych6dzXmutuFAQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ykj-0007EQ-LQ; Wed, 04 Sep 2019 17:07:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YkL-00072w-0L
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:07:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id o184so4673708wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 10:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=OmbrMDzjBpiOxmAtJ5tpbDIpWnFC6mZzSWfiYEEna1k=;
 b=DT59i1R1IVCqVqjH/Pzz6nG1z04AT2jwcDTq/Hjuv5d79AwcEZu8Bm9ozefrl/gopQ
 SCFql3VM6ygPT0Y8fJZ5na+4iFOeAal7ie6ABTtEjeoRbpfTEh1arj3246ow5U+lHc7b
 U9FudxoN5QN7fNtoIOLXlqUaGJo3FvuTZ7WEcvVvliP5sA15eGmWBOxL5JbmJtk4L3KA
 hcgbAB8GV9LSqUj+z5G8iL0gThz8xJutMlKEE1aQj89RsleDV35ljWat1/g30Syt9567
 FEoJDA5Kdg6L72aGtyGGagxhsnvP/eusL1TnlQd78QrMGhYVNH33Ad7GQvoiqrj2+MXk
 svig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OmbrMDzjBpiOxmAtJ5tpbDIpWnFC6mZzSWfiYEEna1k=;
 b=HY6iBQAe4R9ZM+OCNYMZhXLrVW4HqpOdfyY3XbcET5ckeg9PvDAi602ynonYGbGqVO
 wH3y7KA3b+xCqFfGAWEbJSllVSq3ivrXEvKkncwajx0QWIGhpguS56o005kmtGKVALqQ
 feW+8UQKQuxs7I4EaZkimCFHtc3JkFeniy49LSFFFxnyztq3GCZf6OfAR3AWpkZ+5zjr
 hQ/6S7tMa4bMwLbI1K4yVTm5n8YtaySCiY2cvoLQpszOb5V7m8B2U1ou/ScTJwGnpCcD
 B1GrWx93y1NUDCOXKX/LpzK8DeoIBSw76iKYZgKFAjueeK+P6ock5VAWtC+P4RLlgaxk
 38Xw==
X-Gm-Message-State: APjAAAURbCd3m9l1w6V6zrDJ+73YGE2E1KGhiLKSi0TWI0us6dGTKzlb
 ADL2oeomHfoghV62nYCW94Cm1w==
X-Google-Smtp-Source: APXvYqw1tqP/h/YX6foxFEa/SPKEduE11Gj2PCn45FoInpy6jTOi7mrXrxeQ+Jh3ASfHe5VUL9HNFg==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr5138400wml.144.1567616823581; 
 Wed, 04 Sep 2019 10:07:03 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id j18sm17633627wrr.20.2019.09.04.10.07.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 10:07:02 -0700 (PDT)
Date: Wed, 4 Sep 2019 18:07:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904170701.GR26880@dell>
References: <20190904121606.17474-1-lee.jones@linaro.org>
 <20190904141257.GB6144@bogus> <20190904161247.GP26880@dell>
 <20190904165246.GA25356@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904165246.GA25356@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_100705_052004_0926973B 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgU3VkZWVwIEhvbGxhIHdyb3RlOgoKPiBPbiBXZWQsIFNlcCAw
NCwgMjAxOSBhdCAwNToxMjo0N1BNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQs
IDA0IFNlcCAyMDE5LCBTdWRlZXAgSG9sbGEgd3JvdGU6Cj4gPgo+ID4gPiBPbiBXZWQsIFNlcCAw
NCwgMjAxOSBhdCAwMToxNjowNlBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gRnJv
bTogQmpvcm4gQW5kZXJzc29uIDxiam9ybi5hbmRlcnNzb25AbGluYXJvLm9yZz4KPiA+ID4gPgo+
ID4gPiA+IFRoZSBMZW5vdm8gWW9nYSBDNjMwIGlzIGJ1aWx0IG9uIHRoZSBTRE04NTAgZnJvbSBR
dWFsY29tbSwgYnV0IHRoaXMgc2VlbQo+ID4gPiA+IHRvIGJlIHNpbWlsYXIgZW5vdWdoIHRvIHRo
ZSBTRE04NDUgdGhhdCB3ZSBjYW4gcmV1c2UgdGhlIHNkbTg0NS5kdHNpLgo+ID4gPiA+Cj4gPiA+
ID4gU3VwcG9ydGVkIGJ5IHRoaXMgcGF0Y2ggaXM6IGtleWJvYXJkLCBiYXR0ZXJ5IG1vbml0b3Jp
bmcsIFVGUyBzdG9yYWdlLAo+ID4gPiA+IFVTQiBob3N0IGFuZCBCbHVldG9vdGguCj4gPiA+ID4K
PiA+ID4KPiA+ID4gSnVzdCBjdXJpb3VzIHRvIGtub3cgaWYgdGhlIGlkZWEgb2YgYm9vdGluZyB1
c2luZyBBQ1BJIGlzIGNvbXBsZXRlbHkKPiA+ID4gZHJvcHBlZCBhcyBpdCdzIGV4dHJlbWVseSBk
aWZmaWN1bHQoYmVjYXVzZSB0aGUgZmlybXdhcmUgaXMgc28gaGFja2VkCj4gPiA+IHVwIGFuZCBt
YXkgdmlvbGF0ZSBzcGVjLCBqdXN0IG15IG9waW5pb24pIGZvciB3aGF0ZXZlciByZWFzb25zLgo+
ID4KPiA+IE9uY2UgWzBdIGlzIGFwcGxpZWQsIHdlIGNhbiBib290IE1haW5saW5lIHVzaW5nIEFD
UEkuCj4gPgo+IAo+IEdvb2QgdG8ga25vdy4KPiAKPiA+ID4gV2UganVzdCBtYWRlIEFDUEkgdGFi
bGUgdmVyc2lvbiBjaGVja2luZyBtb3JlIGxlbmllbnQgZm9yIHRoaXMgcGxhdGZvcm0KPiA+ID4g
YW5kIHdvdWxkIGJlIGdvb2QgdG8ga25vdyBpZiB3ZSBjb250aW51ZSB0byBydW4gQUNQSSBvbiB0
aGF0IG9yIHdpbGwKPiA+ID4gYWJhbmRvbiBhbmQganVzdCB1c2UgRFQuCj4gPgo+ID4gV2hpY2gg
cGF0Y2ggYXJlIHlvdSByZWZlcnJpbmcgdG8/ICBJZiB5b3UgbWVhbiB0aGUgQUNQSSB2NS4wIHZz
IHY1LjEKPiA+IHBhdGNoIGF1dGhvcmVkIGJ5IEFyZCwgdGhlbiB5ZXMgSSBrbm93LCBJIGluc3Rp
Z2F0ZWQgaXQncyBleGlzdGVuY2UKPiA+IGR1ZSB0byB0aGVzZSBkZXZpY2VzLgo+ID4KPiAKPiBZ
ZXMgZXhhY3RseSB0aGF0IG9uZS4KPiAKPiA+IERUIHdpbGwgKmFsd2F5cyogYmUgbW9yZSBlbmFi
bGVkIHRoYW4gQUNQSSwgc28gaXQncyBhZHZpc2VkIHRoYXQgeW91Cj4gPiB1c2UgRFQgZm9yIGFu
eXRoaW5nIHVzZWZ1bC4gIEFDUEkgYm9vdGluZyBpcyBpZGVhbCBmb3IgdGhpbmdzIGxpa2UKPiA+
IGluc3RhbGxpbmcgZGlzdHJvcyBob3dldmVyLCBzaW5jZSB0aGV5IGRvIG5vdCB0ZW5kIHRvIHBy
b3ZpZGUgRFRCcyBpbgo+ID4gdGhlaXIgaW5zdGFsbGVycy4KPiAKPiBPSywgYXMgYWxvbmcgYXMg
aXQgZ2V0cyB0ZXN0ZWQvdXNlZCBpbiBzb21lIGZvcm0sIHRoYXQncyBmaW5lLiBJIGRvIGFncmVl
Cj4gdGhhdCBEVCB3aWxsIGJlIG1vcmUgdXNlZnVsIG9uIHRoYXQgcGxhdGZvcm0gYXMgaXQgd2Fz
IGRlcml2ZWQgZnJvbSBtb2JpbGUKPiBiYXNlZCBTb0MgU0RNODQ1IHJhdGhlciB0aGFuIHNvbGVs
eSBkZXNpZ25lZCBmb3IgTGFwdG9wcyBhbmQgd2l0aCBtb3JlCj4gYWxpZ25tZW50IHdpdGggQUNQ
SSBzcGVjLiBUaGUgd2F5IHdob2xlIHBvd2VyL2Nsb2NrIG1hbmFnZW1lbnQgaXMgZG9uZQo+IHdp
dGggQUNQSSBvbiB0aGlzIHB1bGxzIG1lIHRvd2FyZHMgRFQgOykKCkV4YWN0bHkuICBGb3IgUG93
ZXIgTWFuYWdlbWVudCBvbiBBQ1BJLCB3ZSBuZWVkIHRvIHJlLWltcGxlbWVudCB0aGUKIldpbmRv
d3MtY29tcGF0aWJsZSBTeXN0ZW0gUG93ZXIgTWFuYWdlbWVudCBDb250cm9sbGVyIiAoUEVQKSwg
d2hpY2gKY29uc2lkZXJpbmcgdGhlcmUgaXNuJ3QgYW55IGRvY3VtZW50YXRpb24gYW5kL29yIHNv
dXJjZSwgd291bGQgYmUgYQptYW1tb3RoIGNoYWxsZW5nZSwgaWYgYXQgYWxsIHBvc3NpYmxlLgoK
RmVlbCBmcmVlIHRvIHByb3ZpZGUgeW91ciB7QWNrLFJldmlldyllZC1ieSBmb3IgdGhpcyBwYXRj
aC4gOikKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNh
bCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpG
b2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
