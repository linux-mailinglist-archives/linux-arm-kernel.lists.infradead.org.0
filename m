Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDDE118D6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npt+PoidFfyx0OMnIg5DFA/x9P2aGDMG6GGVZs1AGHI=; b=Cj+nokxoqhvjJI
	l/shDEDs3OCyoJ0kvDKWC/2rEODLPgNcLae3h4Trw3ro7OM/b0RIdkd6HtuTpxWpz9GGj6evPYziN
	98SGTvEZh6or6Ok1VSO991+O5qZaFE7GA4RWQUg0cJncvOrlz/alYU0/IU/9zD3zeSeM5tK76t7wQ
	m86HadNLpkSo8kgspUo1dYlgpOo80rycFnTTWfNLQpJEZ7hIQesnFaKwie/RGrPmc7olw0Fsieump
	nVpmHCcPPV10Ea75Jw8Ax0J07s3SRw2RQi5XpGOrYcgl8VSGyLtUxlWkvZ2wxQm1C3QaNERftxXVO
	j/prRvp/QbaJ5brC3WSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiG1-0004Zf-9t; Tue, 10 Dec 2019 16:21:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiFt-0004Z9-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:20:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so3882098wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 08:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mI1znLjNU4IPVSpE0h3peu58igHUNYUE7LxrnCjFdsE=;
 b=WT1zcIaiZzrTXVEnCE3ER9BnHNUmxch2HFP6Yt3IQfrRcnIeLEbSXiansdzPy3E5W5
 flXbDhLNXS7ZAizeal3ecCYc3X0pTI3f72d/rQB0qv7OELf7agrVLILGjpB4NlOY0ryT
 XWRpWAe5IbZ28YdcV9CKWmlAw/lGzsJVdKvAkaDBrtMBXkTwfC3mMhr33QMcU4Imnk+X
 wjpa5UK7VXtnER2EGnUVpqUsJPMmg3ZVWwS0IKVjpnWu+6QmuOp62hAFjIdIjSBzTi1q
 lOcWsmqlcirsxwjeNjX5CW9e2nSr5SYcQHRWI66YyajmkDARGwtX84/XHLwW9ULpVfLX
 /aMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mI1znLjNU4IPVSpE0h3peu58igHUNYUE7LxrnCjFdsE=;
 b=XPhuPmWy2E86QyPoXHAqsYugMqoxg7pfLnIkyx3+cl5WX2TWQWpoFZPdfJ9EILUulk
 Yq8fqH7zmqggWt+7WhXNmXfWAvRjuddDVWl3DZpfTuYc0HAqiJRuUPZZmw01WOoO4RqK
 WNHHQuMLvij3k4nzDlm0TeOHOmAZ7SlbioweDMxb0IUz12Kz7AJ6YdDjq3cbdBUrKKEt
 5PURPodl+vBagqTRo9jI3Ms01K9qV3euPIrRZfmUSY6jz48ru80yagoK/imxrx61HkFa
 8+xIdBt0BtSG+fMOF4lF1Pyp/duzB8ahORiVSWd+qgBFiYdgnKAs998PPXGvBHxwiHAR
 Nn5w==
X-Gm-Message-State: APjAAAXGOwUNApn785h60HPTo9SuACqtcu/0376X3RtK3+kwgjl2swxV
 6z67CxomhGYwnrv+ogzvWJiqlA==
X-Google-Smtp-Source: APXvYqyayz8PPz5jcFO+tfzHyyjQR53V94l1wUswElZCwadkTMo9QDvsiMiZoxBrNG2XxNgz0zlq4Q==
X-Received: by 2002:a05:600c:24d1:: with SMTP id
 17mr6211331wmu.151.1575994855262; 
 Tue, 10 Dec 2019 08:20:55 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id g17sm3461799wmc.37.2019.12.10.08.20.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 08:20:54 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Will Deacon <will@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
 <20191205085709.GB8606@willie-the-truck>
 <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
 <20191206160955.GA27982@willie-the-truck>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <740865eb-a993-d1dd-ad2e-84529e2012ee@forissier.org>
Date: Tue, 10 Dec 2019 17:20:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191206160955.GA27982@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_082057_412354_43B19169 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi82LzE5IDU6MDkgUE0sIFdpbGwgRGVhY29uIHdyb3RlOgo+IE9uIFRodSwgRGVjIDA1
LCAyMDE5IGF0IDAzOjU0OjEwUE0gKzAxMDAsIEplcm9tZSBGb3Jpc3NpZXIgd3JvdGU6Cj4+IE9u
IDEyLzUvMTkgOTo1NyBBTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBPbiBUaHUsIERlYyAwNSwg
MjAxOSBhdCAwODoyNjo0OEFNICswMTAwLCBKZXJvbWUgRm9yaXNzaWVyIHdyb3RlOgo+Pj4+IE9u
IDEyLzQvMTkgNjo1NyBQTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgRGVjIDA0
LCAyMDE5IGF0IDAzOjU4OjU3UE0gKzAxMDAsIEplcm9tZSBGb3Jpc3NpZXIgd3JvdGU6Cj4+Pj4+
PiBGYWlscyBpbmRlZWQgKHBhbmljKTogaHR0cHM6Ly9wYXN0ZWJpbi5jb20vRjBqcGt0aWkKPj4+
Pj4KPj4+Pj4gSW50ZXJlc3RpbmcuIEkgZm9sbG93ZWQgeW91ciBpbnN0cnVjdGlvbnMgYW5kIG15
IGJvYXJkIGJvb3RzIGZpbmUgZXZlbgo+Pj4+PiBhZnRlciBhcHBseWluZyB0aGF0IHBhdGNoLCBi
dXQgdGhlbiBJIHNlZSB0aGUgZm9sbG93aW5nIG9uIHNodXRkb3duOgo+Pj4+Pgo+Pj4+PiBbICAg
ODMuMDIyOTU1XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxOTk1IGF0IGtlcm5lbC90aW1lL3RpY2st
YnJvYWRjYXN0LmM6NjQ3IHRpY2tfaGFuZGxlX29uZXNob3RfYnJvYWRjYXN0KzB4MWM4LzB4MWU4
Cj4+Pj4+IFsgICA4My4wMzMzOTJdIE1vZHVsZXMgbGlua2VkIGluOgo+Pj4+PiBbICAgODMuMDM2
NDQ3XSBDUFU6IDAgUElEOiAxOTk1IENvbW06IGluaXQgVGFpbnRlZDogRyBTICAgICAgICAgICAg
ICAgIDUuMS4wLTI1MzEwNS1nMmI0MWY2NTg0ZDU5ICMzCj4+Pj4KPj4+PiBUaGF0IGlzIG5vdCB2
NS4xIHBsdXMgb25lIGNvbW1pdCwgaXMgaXQ/Cj4+Pgo+Pj4gTm8sIGFuZCBJIHdhc24ndCBjbGFp
bWluZyB0aGF0IGl0IHdhcy4gCj4+Cj4+IDstKSBNeSBhcG9sb2dpZXMsIEkgd2FzIGNvbmZ1c2Vk
Lgo+Pgo+Pj4gSSBmb2xsb3dlZCB0aGUgaW5zdHJ1Y3Rpb25zIHlvdSBwb2ludGVkIHVzIHRvIFsx
XSBhbmQgY2hlcnJ5LXBpY2tlZCA3NWExOWEwMjAyZGI+IG9uIHRvcC4gSWYgdGhlcmUncyBzb21l
dGhpbmcgZGlmZmVyZW50IHRoYXQgSSBuZWVkIHRvIGRvIGluIG9yZGVyIHRvCj4+IHJlcHJvZHVj
ZT4gdGhlIHByb2JsZW0sIHRoZW4gcGxlYXNlIGhvbGxlci4KPj4+IE15IGV4cGVyaWVuY2Ugd2l0
aCBIaWtleTk2MCBoYXMgYmVlbiAxMDAlICJibG9vZHkgYXdmdWwiCj4+PiBzbyBJIGRvbid0IGhh
dmUgYSBnb29kIHNldHVwIGZvciBzaW1wbHkgYnVpbGRpbmcgYW5kIHJ1bm5pbmcgYSBrZXJuZWwg
b24gaXQuCj4+Pgo+Pj4gSSBhbHNvIGhhZCB0byBoYWNrIHNvbWUgb2YgdGhlIEVESzIgY29kZSBp
biB0aGVyZSB0byBnZXQgaXQgdG8gY29tcGlsZSwgc28KPj4+IGl0IGNvbnRpbnVlcyB0byBsaXZl
IHVwIHRvIGV4cGVjdGF0aW9ucy4KPj4KPj4gV2hhdCBlcnJvciBkaWQgeW91IGVuY291bnRlcj8g
SXMgaXQgdGhpcyBvbmUgYnkgY2hhbmNlPwo+Pgo+PiAgZXJyb3I6IOKAmF9fYnVpbHRpbl9zdHJu
Y3B54oCZIG91dHB1dCB0cnVuY2F0ZWQgWy4uLl0KPj4KPj4gSSBqdXN0IG5vdGljZWQgR0NDIDku
eCBzaG93cyB0aGlzLCB3aGlsZSBHQ0MgOC54IGRvZXNuJ3QuIFNvIGl0IGRlcGVuZHMKPj4gb24g
d2hhdCBkaXN0cmlidXRpb24geW91IGFyZSB1c2luZy4gSSB3aWxsIG5lZWQgdG8gZG8gc29tZXRo
aW5nIHRvCj4+IGFkZHJlc3MgdGhpcyBwcm9ibGVtLgo+IAo+IEkganVzdCBib2RnZWQgaXQgd2l0
aCBhIHN0cmNweSgpLCBidXQgdGhhdCdzIHByb2JhYmx5IG5vdCB0aGUgcmlnaHQgZml4Lgo+IAo+
IFRoYXQgYXNpZGUsIEknbSBwZXJwbGV4ZWQgdGhhdCBJIGNhbid0IHJlcHJvZHVjZSB0aGUgZXhh
Y3QgcHJvYmxlbSB5b3UncmUKPiBzZWVpbmcuIEFyZSB5b3UgZG9pbmcgYW55dGhpbmcgb3RoZXIg
dGhhbiB0aG9zIGluc3RydWN0aW9ucyB5b3UgcHJvdmlkZWQ/Cj4gKGUuZy4gZGlmZmVyZW50IC5j
b25maWcsIGNvbW1hbmQgbGluZSwgdXNlcnNwYWNlKQoKQXMgSSByZXBsaWVkIHRvIFZpbmNlbnpv
LCBpdCBpcyBub3QgYSBrZXJuZWwgaXNzdWUsIHRoZSBjdWxwcml0IGlzCmNjYWNoZS4gVG8gcmVw
cm9kdWNlLCB5b3UgY2FuIGRvIHRoZSBmb2xsb3dpbmc6CgoxLiBDbGVhciB0aGUgY2FjaGU6IGNj
YWNoZSAtQwoyLiBCdWlsZCBrZXJuZWwgdjUuMSB3aXRoIGNjYWNoZSBlbmFibGVkLCB0aGVuIGNs
ZWFuIHRoZSBidWlsZCB0cmVlCjMuIENoZWNrb3V0IGFuZCBidWlsZCB2NS40LCBzdGlsbCB3aXRo
IGNjYWNoZSBlbmFibGVkCjQuIEJvb3QgdGhpcyBrZXJuZWw6IGl0IHdpbGwgaGFuZy4KCk5vdyBp
ZiB5b3UgY2hlY2sgdGhlIFNIQTEgaGFzaGVzIG9mIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRz
by5vIGluCnZhcmlvdXMgc2NlbmFyaW9zOgoKLSB2NS40LCBubyBjY2FjaGU6CmI4MjgxMGY2ZTk0
OTVlYjhlNzg3ZTgyYjQwODA2NTRjZTRhZmMzMGEKLSB2NS40LCB3aXRoIGNjYWNoZSwgYnVpbHQg
ZnJvbSBhIGNsZWFuIGNhY2hlOgpiODI4MTBmNmU5NDk1ZWI4ZTc4N2U4MmI0MDgwNjU0Y2U0YWZj
MzBhCi0gdjUuMSwgbm8gY2NhY2hlOgo4YzA5YTJmMjU5NjllMmJmNzQ3OTlkNmIzZmI1MmQwZmJj
M2Q1OGE4Ci0gdjUuNCwgd2l0aCBjY2FjaGUsIGFmdGVyIGJ1aWxkaW5nIHY1LjEgKHN0ZXAgMyBh
Ym92ZSk6CjhjMDlhMmYyNTk2OWUyYmY3NDc5OWQ2YjNmYjUyZDBmYmMzZDU4YTgKCkFzIHlvdSBj
YW4gc2VlLCBjY2FjaGUgaW50cm9kdWNlcyB0aGUgdmRzby5vIGZpbGUgZnJvbSBhbiBvbGRlciB2
NS4xCmJ1aWxkIGludG8gYSB2NS40IGtlcm5lbC4gTm8gc3VycHJpc2UgaXQgd29uJ3QgYmVoYXZl
IGFzIGV4cGVjdGVkIDotLwoKVGhlIHByb2JsZW1hdGljIHRoaW5nIHNlZW1zIHRvIGJlIHRoZSAu
aW5jYmluIGRpcmVjdGl2ZSBpbiB2ZHNvLlMsIGJ1dApUQkggSSBzdGlsbCBkb24ndCB1bmRlcnN0
YW5kIHdoeSBzaW5jZSBJIGFtIHVzaW5nIGNjYWNoZSB2My43LjYgd2hpY2ggaXMKc3VwcG9zZWQg
dG8gaGF2ZSBmaXhlZCB0aGlzIGJ1Zy4uLiBbMV0KClsxXQpodHRwczovL2dpdGh1Yi5jb20vY2Nh
Y2hlL2NjYWNoZS9ibG9iL21hc3Rlci9kb2MvTkVXUy5hZG9jI2NjYWNoZS0zMzMKCi0tIApKZXJv
bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
