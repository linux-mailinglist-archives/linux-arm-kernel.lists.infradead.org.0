Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B237CB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zee999G+bL6KBFk1GFhKmaA2+KcJQlt1N8gqsZj2OIY=; b=DL3EBbCZCojuSR
	2DxTkrPtQP+/xIlNrNMr/T/KEa+wELcVKq+Hgw4HvrDAN43yQFcv4GCnerOZ34Ch+qAVlAjNMXbx8
	GChoD69/41jlDSmF398Z/nXmv/WxyV63H3IjoC02fsll6OFEKzainVVStD5+8ocCYZ+bfbwvlzaAM
	Dnr6fHCCanALEdNPXnnpULRrGDis7ePLspwSKYlj2248397kZHucP9EPa42TzqNueUBV9bjoYKirS
	X6TW6syJZoSq3VRq31RQV0IcyPPiZ8ujTFEAGMHFSkeFiz+A+Kbd8uIKLJmlsELn/l7dDBL7dUwCR
	9k9+9F56IaxaYm+jPH6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxUu-00089P-7B; Thu, 06 Jun 2019 18:52:24 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxUj-0007vG-RY
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:52:15 +0000
Received: by mail-lf1-x143.google.com with SMTP id u10so904715lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 11:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z8PImz1JnXXd1v4BcQs+3ZR23KtQ/hYSfKKCTbjF08k=;
 b=Gi1S5xuA9UKUXrvG2FT1MwkkKaTR0i1eD3WmDI6wbKZZsVDt7wMDxd72zaTkdnKcTG
 Bn/cGIABocmR+X5UgVfWdv+hxjxhU6/ByO7aUMXfVhxQ5oiwn8yvDq7kUF65GyvIUmq4
 g8m9xV6nI9EbXIu8r3KfRA7pOMED3btCKcnFZlYLSATI3AZ45udPRmRfC8IfKEckjw4C
 F7xE/RkDaHHINLTxsvgMMSAJMXVXxW/6SeLs0nqSF5G4OVt9/j7GGEe4C80aQNaq6WQY
 01PdG8TyUKhW2xBEAWrDBQGjFkgULhEa/Q0W27hd3NS30uxsFqlXZBZ7PgtzgQNxyarY
 nIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z8PImz1JnXXd1v4BcQs+3ZR23KtQ/hYSfKKCTbjF08k=;
 b=GsKcwF7wpnvtFXUyRIoGzD36GIQ9y9gVvqNN6D5Gb2v3SBgLniablbjh/BCPW645SD
 Oi+DY8sZVCiAe5CnUlgWQ15SYEkayrGLbK6SCeFoYeiqqM9W8NFY2ltsiEKI8HROmMxU
 PBmAG94yaETGY2NQa8lQkQnAQR6UMFN7fUSQWwyRNKCUQxkwQjlXR+c/l8bTz3cK34i+
 D9hrEeApI/pjRVkcOuwJ77XDLLUwpDPZ4VFUpWx6+UedjV1ohCy1lwb1dLZnFFGU2Kks
 EUqn7etf59QB5bPBYjvtiX6p5eQkqwTpWVWrzXItnglDBKeueQ/UEgiGLi+RavnZMmug
 g3BA==
X-Gm-Message-State: APjAAAVoZgGOles3F2anRPPONXeEzlpUs0YyZSA/F6+8+G/Bf+f02n27
 115oQDHwpo5rJp2CULOo1fY=
X-Google-Smtp-Source: APXvYqzLnK2RafyIHBSWtv6ZOXHpj5VhTRezZqTHfceHH/SQk4Rswzzj0YbDWDlkp0qD8FdDqgDPJQ==
X-Received: by 2002:a19:e05c:: with SMTP id g28mr10039317lfj.167.1559847131867; 
 Thu, 06 Jun 2019 11:52:11 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id p27sm413726lfh.8.2019.06.06.11.52.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 11:52:10 -0700 (PDT)
Subject: Re: [PATCH V8 14/15] PCI: tegra: Add Tegra194 PCIe support
From: Dmitry Osipenko <digetx@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-15-vidyas@nvidia.com>
 <f30e7fc6-3f64-d321-c32c-5e273115a869@gmail.com>
Message-ID: <cbdac43f-32f7-c992-832b-ed40bef2375b@gmail.com>
Date: Thu, 6 Jun 2019 21:52:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f30e7fc6-3f64-d321-c32c-5e273115a869@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_115213_901712_D09C8BB4 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDYuMDYuMjAxOSAxOTozNSwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMjYuMDUuMjAx
OSA3OjM3LCBWaWR5YSBTYWdhciDQv9C40YjQtdGCOgo+PiBBZGQgc3VwcG9ydCBmb3IgU3lub3Bz
eXMgRGVzaWduV2FyZSBjb3JlIElQIGJhc2VkIFBDSWUgaG9zdCBjb250cm9sbGVyCj4+IHByZXNl
bnQgaW4gVGVncmExOTQgU29DLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTYWdhciA8dmlk
eWFzQG52aWRpYS5jb20+Cj4+IC0tLQo+PiBDaGFuZ2VzIHNpbmNlIFt2N106Cj4+ICogQWRkcmVz
c2VkIHJldmlldyBjb21tZW50cyBmcm9tIFRoaWVycnkKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjZd
Ogo+PiAqIFJlbW92ZWQgY29kZSBhcm91bmQgIm52aWRpYSxkaXNhYmxlLWFzcG0tc3RhdGVzIiBE
VCBwcm9wZXJ0eQo+PiAqIFJlZmFjdG9yZWQgY29kZSB0byByZW1vdmUgY29kZSBkdXBsaWNhdGlv
bgo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2NV06Cj4+ICogQWRkcmVzc2VkIHJldmlldyBjb21tZW50
cyBmcm9tIFRoaWVycnkKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+PiAqIE5vbmUKPj4KPj4g
Q2hhbmdlcyBzaW5jZSBbdjNdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjJdOgo+
PiAqIENoYW5nZWQgJ252aWRpYSxpbml0LXNwZWVkJyB0byAnbnZpZGlhLGluaXQtbGluay1zcGVl
ZCcKPj4gKiBDaGFuZ2VkICdudmlkaWEscGV4LXdha2UnIHRvICdudmlkaWEsd2FrZS1ncGlvcycK
Pj4gKiBSZW1vdmVkIC5ydW50aW1lX3N1c3BlbmQoKSAmIC5ydW50aW1lX3Jlc3VtZSgpIGltcGxl
bWVudGF0aW9ucwo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2MV06Cj4+ICogTWFkZSBDT05GSUdfUENJ
RV9URUdSQTE5NCBhcyAnbScgYnkgZGVmYXVsdCBmcm9tIGl0cyBwcmV2aW91cyAneScgc3RhdGUK
Pj4gKiBNb2RpZmllZCBjb2RlIGFzIHBlciBjaGFuZ2VzIG1hZGUgdG8gRFQgZG9jdW1lbnRhdGlv
bgo+PiAqIFJlZmFjdG9yZWQgY29kZSB0byBhZGRyZXNzIEJqb3JuICYgVGhpZXJyeSdzIHJldmll
dyBjb21tZW50cwo+PiAqIEFkZGVkIGdvdG8gdG8gYXZvaWQgcmVjdXJzaW9uIGluIHRlZ3JhX3Bj
aWVfZHdfaG9zdF9pbml0KCkgQVBJCj4+ICogTWVyZ2VkIC5zY2FuX2J1cygpIG9mIGR3X3BjaWVf
aG9zdF9vcHMgaW1wbGVtZW50YXRpb24gdG8gdGVncmFfcGNpZV9kd19ob3N0X2luaXQoKSBBUEkK
Pj4KPj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcgICAgICAgICB8ICAgMTAg
Kwo+PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZpbGUgICAgICAgIHwgICAgMSAr
Cj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMgfCAxNjIxICsr
KysrKysrKysrKysrKysrKysrCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDE2MzIgaW5zZXJ0aW9ucygr
KQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
dGVncmExOTQuYwo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
S2NvbmZpZyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPj4gaW5kZXggYTZj
ZTFlZTUxYjRjLi44ODQxMTJhZmMxMWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2Nv
bmZpZwo+PiBAQCAtMjIwLDYgKzIyMCwxNiBAQCBjb25maWcgUENJX01FU09OCj4+ICAJICBhbmQg
dGhlcmVmb3JlIHRoZSBkcml2ZXIgcmUtdXNlcyB0aGUgRGVzaWduV2FyZSBjb3JlIGZ1bmN0aW9u
cyB0bwo+PiAgCSAgaW1wbGVtZW50IHRoZSBkcml2ZXIuCj4+ICAKPj4gK2NvbmZpZyBQQ0lFX1RF
R1JBMTk0Cj4+ICsJdHJpc3RhdGUgIk5WSURJQSBUZWdyYTE5NCAoYW5kIGxhdGVyKSBQQ0llIGNv
bnRyb2xsZXIiCj4+ICsJZGVwZW5kcyBvbiAoVEVHUkFfQlBNUCAmJiBBUkNIX1RFR1JBKSB8fCBD
T01QSUxFX1RFU1QKPiAKPiBURUdSQV9CUE1QIHdpbGwgYmUgZW5vdWdoIGhlcmUgYXMgaXQgZGVw
ZW5kcyBvbiBvdGhlciByZWxldmFudCBvcHRpb25zLgo+IAo+IEhlbmNlIEkgbWVhbjoKPiAKPiAJ
ZGVwZW5kcyBvbiBURUdSQV9CUE1QIHx8IENPTVBJTEVfVEVTVAoKTWF5YmUgaXQncyB3b3J0aCB0
byBldmVuIGNoYW5nZSBURUdSQV9CUE1QIHRvIEFSQ0hfVEVHUkFfMTk0X1NPQy4KQWx0aG91Z2gg
dGhlbiB5b3UnbGwgaGF2ZSB0byBleHRlbmQgaXQgd2l0aCBvdGhlciBwbGF0Zm9ybXMgbGF0ZXIg
b24sCmJ1dCBwcm9iYWJseSB0aGF0J3MgZmluZS4KCj4gCj4+ICsJZGVwZW5kcyBvbiBQQ0lfTVNJ
X0lSUV9ET01BSU4KPiAKPiBZb3UgcHJvYmFibHkgd2FudCB0byBzL2RlcGVuZHMgb24vc2VsZWN0
LyBQQ0lfTVNJX0lSUV9ET01BSU4sIGRvbid0IHlvdT8KPiAKCkkgYWN0dWFsbHkgbG9va2VkIHVw
IHRoZSBQQ0lfTVNJX0lSUV9ET01BSU4gYW5kIGl0IGlzIGNvcnJlY3QgaW4geW91cgpjYXNlLCBt
eSBiYWQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
