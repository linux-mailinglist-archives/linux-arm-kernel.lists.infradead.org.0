Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A95542753
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x6Ci4C07fgeyFpoG3DnGD8fMM3lQ4Rh/P8OqwffPSAM=; b=BHesl/V6M/c6ibX/MdcR1eJkw3
	jQMiNsC1A1WfvGM1+Hx8pOkO9asoY2HnOHcKyYGtmYgwFnFuHARSKWHjxA9dKWf+gdf9E6TZ90CcN
	g/ijXfr3Yz3Nc0ArZ+q0zaloWFc5bM6PfCvHmrW6Hgeb24+SIZ98ynMLgHB07KA0JbA8Se92WaPF5
	ZTzAMeCgRtH+6xoDwLFYmToAnh90Kd63azmBsH3W0CcK0Ojsmcxjner+39Pw1sBA9QAmAsMmBGglI
	nRQP+7zs+Qgo+LaSW8IsnGQpZFEcrPw/MQUmVPLHZfYmcqEWFWJyplVqNxhRaIfRuuZ4ZBGXriquS
	2verkHTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb39G-00010v-2w; Wed, 12 Jun 2019 13:18:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb396-00010S-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:18:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so1598686wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=1fX4EtJtvN4zU4wq5BVv4qlv5K+6diDbCy8hF8AgIZE=;
 b=HQUQbZAFv8L8V+qh817uj8P7sjG5MrjyhVL6L3Glgc2NWMxo7h3cXWj/kykhA44P2W
 6Z9akG4az+F0zxzveJGXwLqRqdjoFHZk5efmr6ZOpybhUvAUR8zVZQDJMpWrWYhwwL+p
 G5/4h8h4rIUHApMQgb9V3VhPp+AkesvZz8kQC6tB5Ezq5Esx/ujJqSpBLTmEQcNvOcjo
 LhpGbChOScDg0XryNdKs/o1WmO9UU5FP/oBXlnfep+nH4vXGpypf8l56GYbSJjNBi2vL
 98wXiuu+JYk5R2gt2x42ZFDSYJOLxnopvCgw+6hR1Ffz3hZ63P1BeZeRMWduVGVvzWTW
 iKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=1fX4EtJtvN4zU4wq5BVv4qlv5K+6diDbCy8hF8AgIZE=;
 b=jUDQbeS0/4KpkrPBPSFPxK6Jfr6uGmOtlzH8eO6y31vN2iyzGP2RtZAiezAJznreeT
 5nSMG6VC7vusakZzUAUGwwIK3cr4/kK1f0L1u8K40LBZD1UWhWkyzgkVAhuvcYoMWPBy
 JiOrv5kX9pwMiSmo6i7rqz2X8/0v87Hm/m8qRqebO7nxVXs+NPqE4yqLYBjG1rM9Spof
 8QnBn2RPU7DybslVpzwP3LVXn6oLNg4qbJHo6+EUu9C5feND/JI0NwGZc7PC4OUYdnqh
 WW9KPq7NH+aTKYQ+FJdTzJp0hIepyJHIloQte98p3A130g7E4VZYA3qDhLg4RxHRBeBD
 qbMg==
X-Gm-Message-State: APjAAAUdz7nwbGwK6LSG9snmagFet9NgoQnjS4tI1tND5vS3tKYmSh4a
 qIk4KmEA9OZkyygBpmfbxx1pGqqDLYs=
X-Google-Smtp-Source: APXvYqzgYkm1fDFOst46uhoCAgIxFgode8AWEa7hhoVUC866ybvSTS6Fy5u9DtEYJatFYJpSpAtNAw==
X-Received: by 2002:adf:9dcc:: with SMTP id q12mr4613615wre.93.1560345510744; 
 Wed, 12 Jun 2019 06:18:30 -0700 (PDT)
Received: from zen.linaroharston ([81.128.185.34])
 by smtp.gmail.com with ESMTPSA id t14sm15474792wrr.33.2019.06.12.06.18.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 06:18:30 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id C2AAA1FF87;
 Wed, 12 Jun 2019 14:18:29 +0100 (BST)
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
 <87v9xbdr3o.fsf@zen.linaroharston>
 <20190612124712.GR28398@e103592.cambridge.arm.com>
User-agent: mu4e 1.3.2; emacs 26.1
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
In-reply-to: <20190612124712.GR28398@e103592.cambridge.arm.com>
Date: Wed, 12 Jun 2019 14:18:29 +0100
Message-ID: <87sgsfdjru.fsf@zen.linaroharston>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_061832_999017_9DF757B7 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 "gdb@sourceware.org" <gdb@sourceware.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 Alan Hayward <Alan.Hayward@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkRhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPiB3cml0ZXM6Cgo+IE9uIFdlZCwgSnVu
IDEyLCAyMDE5IGF0IDExOjQwOjExQU0gKzAxMDAsIEFsZXggQmVubsOpZSB3cm90ZToKPj4KPj4g
QWxhbiBIYXl3YXJkIDxBbGFuLkhheXdhcmRAYXJtLmNvbT4gd3JpdGVzOgo+Pgo+PiA+PiBPbiA3
IEp1biAyMDE5LCBhdCAxNjo0OCwgRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+IHdy
b3RlOgo+PiA+Pgo+PiA+PiBPbiBGcmksIEp1biAwNywgMjAxOSBhdCAxMDozODo1OEFNICswMTAw
LCBXaWxsIERlYWNvbiB3cm90ZToKPj4gPj4+IE9uIFRodSwgSnVuIDA2LCAyMDE5IGF0IDA1OjQ0
OjUzUE0gKzAxMDAsIERhdmUgTWFydGluIHdyb3RlOgo+PiA+Pj4+IEJ5IGluc3BlY3Rpb24gd2hp
bGUgZGVidWdnaW5nIHNvbWV0aGluZyBlbHNlLCBJIG5vdGljZWQgdGhhdCB0aGUgYnl0ZQo+PiA+
Pj4+IG9yZGVyIG9mIEZQU0lNRCBWLXJlZ2lzdGVyIHN0b3JlcyBhbmQgU1ZFIFotcmVnaXN0ZXIg
c3RvcmVzIGlzIG5vdCB0aGUKPj4gPj4+PiBzYW1lIHdoZW4gcnVubmluZyBvbiBiaWctZW5kaWFu
Lgo+PiA+Pj4+Cj4+ID4+Pj4gVGhpcyBpcyBub3QgcHJvcGVybHkgdGFrZW4gaW50byBhY2NvdW50
IHdoZW4gbW92aW5nIGJldHdlZW4gdGhlIEZQU0lNRAo+PiA+Pj4+IGFuZCBTVkUgcmVnaXN0ZXIg
dmlld3MgaW5zaWRlIHRoZSBrZXJuZWwsIHJlc3VsdGluZyBpbiB0aGUgYnl0ZXMgb2YgYQo+PiA+
Pj4+IFYtcmVnaXN0ZXIgZ2V0dGluZyBzcG9udGFuZW91c2x5IHJldmVyc2VkIGluIHNvbWUgc2l0
dWF0aW9ucywgZnJvbQo+PiA+Pj4+IHVzZXJzcGFjZSdzIHBvaW50IG9mIHZpZXcuICBUaGUgc2ln
bmFsIGZyYW1lIGFuZCBwdHJhY2UgaW50ZXJmYWNlIGFyZQo+PiA+Pj4+IGFsc28gYWZmZWN0ZWQu
ICBUaGUgS1ZNIEFCSSBmb3JiaWRzIG1peGluZyB0aGUgdHdvIHZpZXdzIGFuZCBzbyBzaG91bGQK
Pj4gPj4+PiBub3QgYmUgYWZmZWN0ZWQuCjxzbmlwPgo+PiA+Pj4KPj4gPj4+IFdvdWxkbid0IHRo
aXMgYmUgZWFzeSBlbm91Z2ggdG8gdGVzdD8KPj4gPj4KPj4gPj4gU28sIGdkYiB3b3JrcyBPSyBv
biBiaWctZW5kaWFuIGJ1dCB3ZWlyZCBzdHVmZiBoYXBwZW5pbmcgb24gYm90aCB3aXRoCj4+ID4+
IGFuZCB3aXRob3V0IHRoZSBmaXguCj4+ID4+Cj4+ID4+IFRoZXJlIGFyZSBwbGFjZXMgaW4gdGhl
IGdkYiBjb2RlIGl0c2VsZiB3aGVyZSBpdCBpcyBsaWtlbHkgbWlzc2luZwo+PiA+PiBlbmRpYW5u
ZXNzIGNvbnZlcnNpb25zLCBidXQgSSBuZWVkIHRvIGZvbGxvdyB1cCB3aXRoIHRoZSBnZGIgZm9s
a3MgdG8KPj4gPj4gY2xhcmlmeSB3aGV0aGVyIG15IHBhdGNoIGlzIG1pc3Npbmcgc29tZXRoaW5n
4oCmCj4+ID4KPj4gPiAoSSBhZGRlZCB0aGUgU1ZFIHN1cHBvcnQgZm9yIEdEQikuCj4+ID4KPj4g
PiBJ4oCZdmUgdHJpZWQgdGhlc2UgY2hhbmdlcyBvdXQgbXlzZWxmIHVzaW5nIEdEQi4KPj4gPiBX
aXRoIHlvdXIgY2hhbmdlcyBldmVyeXRoaW5nIGxvb2tzIGdvb2QsIGFwYXJ0IGZyb206Cj4+ID4g
KiBHREIgZ2V0cyBpdCB3cm9uZyB3aGVuIHRoZSBwdHJhY2Ugc3ZlIHN0cnVjdHVyZSBjb250YWlu
cyBhIGZwc2ltZC4KPj4gPiAqIEkgbmVlZCB0byBkbyBzb21lIHRlc3RpbmcgYXJvdW5kIHNpZ2Nv
bnRleHRzLCBidXQgYWdhaW4gSSB0aGluayBHREIKPj4gPiAgIHdpbGwgbmVlZCBhIHNsaWdodCBj
aGFuZ2UuCj4+ID4gSeKAmWxsIGdldCBzb21lIHBhdGNoZXMgdG9nZXRoZXIgZm9yIEdEQi4KPj4K
Pj4gV2hlcmUgaXMgdGhlIGxhdGVzdCBzdGF0ZSBvZiBTVkUgc3VwcG9ydCBmb3IgR0RCPyBJIHJl
YWxseSBzaG91bGQgY2hlY2sKPj4gdGhlIFFFTVUgZ2Ric3R1YiBkb2VzIHRoZSBjb3JyZWN0IHRo
aW5ncyBmb3IgU1ZFIHJlZ2lzdGVycyBidXQgSSB3YXMKPj4gd2FpdGluZyBmb3IgdXBzdHJlYW0g
Z2RiIHN1cHBvcnQuCj4KPiBEb2VzIHRoaXMgaXNzdWUgbmVlZCBsb29raW5nIGF0IGZvciB0aGUg
UUVNVSB1c2Vyc3BhY2UgZW11bGF0aW9uIHRvbz8KCkhtbSBJIHRoaW5rIHdlIGFyZSBPSy4gRm9y
IHRoZSBTVkUgZnJhbWUgaXRzZWxmIHdlIGV4cGxpY2l0bHkgc3RvcmUgaW4KTEUgb3JkZXI6Cgog
IHN0YXRpYyB2b2lkIHRhcmdldF9zZXR1cF9zdmVfcmVjb3JkKHN0cnVjdCB0YXJnZXRfc3ZlX2Nv
bnRleHQgKnN2ZSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDUFVBUk1T
dGF0ZSAqZW52LCBpbnQgdnEsIGludCBzaXplKQogIHsKICAgICAgaW50IGksIGo7CgogICAgICBf
X3B1dF91c2VyKFRBUkdFVF9TVkVfTUFHSUMsICZzdmUtPmhlYWQubWFnaWMpOwogICAgICBfX3B1
dF91c2VyKHNpemUsICZzdmUtPmhlYWQuc2l6ZSk7CiAgICAgIF9fcHV0X3VzZXIodnEgKiBUQVJH
RVRfU1ZFX1ZRX0JZVEVTLCAmc3ZlLT52bCk7CgogICAgICAvKiBOb3RlIHRoYXQgU1ZFIHJlZ3Mg
YXJlIHN0b3JlZCBhcyBhIGJ5dGUgc3RyZWFtLCB3aXRoIGVhY2ggYnl0ZSBlbGVtZW50CiAgICAg
ICAqIGF0IGEgc3Vic2VxdWVudCBhZGRyZXNzLiAgVGhpcyBjb3JyZXNwb25kcyB0byBhIGxpdHRs
ZS1lbmRpYW4gc3RvcmUKICAgICAgICogb2Ygb3VyIDY0LWJpdCBodW5rcy4KICAgICAgICovCiAg
ICAgIGZvciAoaSA9IDA7IGkgPCAzMjsgKytpKSB7CiAgICAgICAgICB1aW50NjRfdCAqeiA9ICh2
b2lkICopc3ZlICsgVEFSR0VUX1NWRV9TSUdfWlJFR19PRkZTRVQodnEsIGkpOwogICAgICAgICAg
Zm9yIChqID0gMDsgaiA8IHZxICogMjsgKytqKSB7CiAgICAgICAgICAgICAgX19wdXRfdXNlcl9l
KGVudi0+dmZwLnpyZWdzW2ldLmRbal0sIHogKyBqLCBsZSk7CiAgICAgICAgICB9CiAgICAgIH0K
ICAgICAgZm9yIChpID0gMDsgaSA8PSAxNjsgKytpKSB7CiAgICAgICAgICB1aW50MTZfdCAqcCA9
ICh2b2lkICopc3ZlICsgVEFSR0VUX1NWRV9TSUdfUFJFR19PRkZTRVQodnEsIGkpOwogICAgICAg
ICAgZm9yIChqID0gMDsgaiA8IHZxOyArK2opIHsKICAgICAgICAgICAgICB1aW50NjRfdCByID0g
ZW52LT52ZnAucHJlZ3NbaV0ucFtqID4+IDJdOwogICAgICAgICAgICAgIF9fcHV0X3VzZXJfZShy
ID4+ICgoaiAmIDMpICogMTYpLCBwICsgaiwgbGUpOwogICAgICAgICAgfQogICAgICB9CiAgfQoK
Rm9yIHRoZSBhbGlhc2VkIGZwc2ltZCByZWdpc3RlcnMgd2Ugc3RvcmUgaW4gdGhlIHRhcmdldCBl
bmRpYW4gZm9ybWF0OgoKICBzdGF0aWMgdm9pZCB0YXJnZXRfc2V0dXBfZnBzaW1kX3JlY29yZChz
dHJ1Y3QgdGFyZ2V0X2Zwc2ltZF9jb250ZXh0ICpmcHNpbWQsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgQ1BVQVJNU3RhdGUgKmVudikKICB7CiAgICAgIGludCBpOwoK
ICAgICAgX19wdXRfdXNlcihUQVJHRVRfRlBTSU1EX01BR0lDLCAmZnBzaW1kLT5oZWFkLm1hZ2lj
KTsKICAgICAgX19wdXRfdXNlcihzaXplb2Yoc3RydWN0IHRhcmdldF9mcHNpbWRfY29udGV4dCks
ICZmcHNpbWQtPmhlYWQuc2l6ZSk7CiAgICAgIF9fcHV0X3VzZXIodmZwX2dldF9mcHNyKGVudiks
ICZmcHNpbWQtPmZwc3IpOwogICAgICBfX3B1dF91c2VyKHZmcF9nZXRfZnBjcihlbnYpLCAmZnBz
aW1kLT5mcGNyKTsKCiAgICAgIGZvciAoaSA9IDA7IGkgPCAzMjsgaSsrKSB7CiAgICAgICAgICB1
aW50NjRfdCAqcSA9IGFhNjRfdmZwX3FyZWcoZW52LCBpKTsKICAjaWZkZWYgVEFSR0VUX1dPUkRT
X0JJR0VORElBTgogICAgICAgICAgX19wdXRfdXNlcihxWzBdLCAmZnBzaW1kLT52cmVnc1tpICog
MiArIDFdKTsKICAgICAgICAgIF9fcHV0X3VzZXIocVsxXSwgJmZwc2ltZC0+dnJlZ3NbaSAqIDJd
KTsKICAjZWxzZQogICAgICAgICAgX19wdXRfdXNlcihxWzBdLCAmZnBzaW1kLT52cmVnc1tpICog
Ml0pOwogICAgICAgICAgX19wdXRfdXNlcihxWzFdLCAmZnBzaW1kLT52cmVnc1tpICogMiArIDFd
KTsKICAjZW5kaWYKICAgICAgfQogIH0KCldoZXJlIG91ciBsYXlvdXQgZm9yIHRoZSBxdWFkcyBp
cyBhbHdheXM6CgogIFFuID0gcmVnc1tuXS5kWzFdOnJlZ3Nbbl0uZFswXQoKCgotLQpBbGV4IEJl
bm7DqWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
