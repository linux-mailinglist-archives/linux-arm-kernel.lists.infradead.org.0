Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460F8422C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jUqt65zbC+JrwIWhFHTSr9uWEkhrfZvJ3v3Jgm0RSFQ=; b=utTNXjjcEY+1g75D/4E1MLn2O8
	yKTt1VUBx8+a3s815mCK9KEMhHwQkB0ffROO0nskOeUPQekICxn9ceUnMkeF5rT6FSztOSU0/6VWU
	mP3T9Kl7B0C15jfBoLXd7jr49HHQVRTEDagIt4Cp2+YOM0RbsvlKR/K2dkA4mcA34KlkBw2MfHdDw
	5ZER5PfCh+VPTAMwczLqaPMFvE+juF/vC2wUj73KZeaqWpJ2ARNY/wHRMlxF8LT56GDudLZ49aq4w
	nykNDmtmShts8/VDfBvCA4hvjN+JWHoMurdndIKUOOz1MC2UHQSacTt+Jp4P9XzXf/yR7C86ZxbhJ
	kyMuMVxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0ga-00058o-HU; Wed, 12 Jun 2019 10:40:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0fz-0004hG-71
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:40:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so16382794wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 03:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=XmccsWJR/T+DLcAFqKC/hfzAgkjoCq+zFw+LQmVavW0=;
 b=tB/ymDm6xCjEd6EdcVSeBIyWpqLZvr5OMN5CBA5vDv8F4EB6jWepFYmon9O0q4lFBp
 i4wH5KhJn8Aij4Zsv5Z947Kj6MGHj9MN5Ke6pbMocbvue61tt8xuoR8h663WD4FU/6y3
 NmPC+rpQG1bl4EKNoMG+6M2mOevf7dAQ0Vg9zX71oH+DU02H5zLykFC8o9tl2rZtdauN
 +f3gwXRuo9fsMRPW3mqEwli3uZ4dxUQZfLuNAXTzp87eXvFB/PWWM9WkHZC5v28/ITC4
 EhwezEmufesOiSJ2tTlQxpSH/NKAN8yPIt4GWbS+FbSc1pHAl8sek16tLL+kU4Emposl
 2Zmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=XmccsWJR/T+DLcAFqKC/hfzAgkjoCq+zFw+LQmVavW0=;
 b=JmURoN6NHJ5qfP/ngR321s4u5HN2XjjG4H/XHRYqo8JevrauZe/9tAtL3yc92nDVJ+
 5Fegn3tih3983RQTTyOucUobExJhf/QELLEfln0qSa9lV9f37rKMxdFWWlWasYrC7fAC
 OR5HEVzF/C9DQpOApiWrE2uTDgJjtZoy05D1h1EMWRD6FSbxm/GOxONRP50co3V07Zpg
 YW7nwrBsUR8T8Q9ctQT7/HbOiFrm0MXPj7rXq8eTha8bHUFnvPoArdCJGkm/P1nSCYvO
 6uB4tnLFu6g9dztjfgKFZomW+X4LX2XgxLfGyGXKZlK+d/DtXFApABjYwOGbJM8fRQWH
 r8jQ==
X-Gm-Message-State: APjAAAVOlWsGQkHxkyVa70dzgJ5sOUWwds8H8rnt36GCiwEzHzrrDmgt
 wHBiDKpIQZygGUhefyUL70HCZmFOPCU=
X-Google-Smtp-Source: APXvYqwrBVQi7KCEnp1y/rCzMm0uxCIDUgDnfAZpLVB6HuCDCpUqlbRSTq34ZZiEQFVdRBPu5T5Etg==
X-Received: by 2002:a5d:6b47:: with SMTP id x7mr2328362wrw.83.1560336014099;
 Wed, 12 Jun 2019 03:40:14 -0700 (PDT)
Received: from zen.linaroharston ([81.128.185.34])
 by smtp.gmail.com with ESMTPSA id g5sm20846550wrp.29.2019.06.12.03.40.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 03:40:12 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 040201FF87;
 Wed, 12 Jun 2019 11:40:12 +0100 (BST)
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
User-agent: mu4e 1.3.2; emacs 26.1
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Alan Hayward <Alan.Hayward@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
In-reply-to: <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
Date: Wed, 12 Jun 2019 11:40:11 +0100
Message-ID: <87v9xbdr3o.fsf@zen.linaroharston>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034019_259967_B9DD4B96 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 "gdb@sourceware.org" <gdb@sourceware.org>, nd <nd@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFsYW4gSGF5d2FyZCA8QWxhbi5IYXl3YXJkQGFybS5jb20+IHdyaXRlczoKCj4+IE9uIDcgSnVu
IDIwMTksIGF0IDE2OjQ4LCBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4gd3JvdGU6
Cj4+Cj4+IE9uIEZyaSwgSnVuIDA3LCAyMDE5IGF0IDEwOjM4OjU4QU0gKzAxMDAsIFdpbGwgRGVh
Y29uIHdyb3RlOgo+Pj4gT24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDU6NDQ6NTNQTSArMDEwMCwg
RGF2ZSBNYXJ0aW4gd3JvdGU6Cj4+Pj4gQnkgaW5zcGVjdGlvbiB3aGlsZSBkZWJ1Z2dpbmcgc29t
ZXRoaW5nIGVsc2UsIEkgbm90aWNlZCB0aGF0IHRoZSBieXRlCj4+Pj4gb3JkZXIgb2YgRlBTSU1E
IFYtcmVnaXN0ZXIgc3RvcmVzIGFuZCBTVkUgWi1yZWdpc3RlciBzdG9yZXMgaXMgbm90IHRoZQo+
Pj4+IHNhbWUgd2hlbiBydW5uaW5nIG9uIGJpZy1lbmRpYW4uCj4+Pj4KPj4+PiBUaGlzIGlzIG5v
dCBwcm9wZXJseSB0YWtlbiBpbnRvIGFjY291bnQgd2hlbiBtb3ZpbmcgYmV0d2VlbiB0aGUgRlBT
SU1ECj4+Pj4gYW5kIFNWRSByZWdpc3RlciB2aWV3cyBpbnNpZGUgdGhlIGtlcm5lbCwgcmVzdWx0
aW5nIGluIHRoZSBieXRlcyBvZiBhCj4+Pj4gVi1yZWdpc3RlciBnZXR0aW5nIHNwb250YW5lb3Vz
bHkgcmV2ZXJzZWQgaW4gc29tZSBzaXR1YXRpb25zLCBmcm9tCj4+Pj4gdXNlcnNwYWNlJ3MgcG9p
bnQgb2Ygdmlldy4gIFRoZSBzaWduYWwgZnJhbWUgYW5kIHB0cmFjZSBpbnRlcmZhY2UgYXJlCj4+
Pj4gYWxzbyBhZmZlY3RlZC4gIFRoZSBLVk0gQUJJIGZvcmJpZHMgbWl4aW5nIHRoZSB0d28gdmll
d3MgYW5kIHNvIHNob3VsZAo+Pj4+IG5vdCBiZSBhZmZlY3RlZC4KPj4+Pgo+Pj4+IFNlZSBwYXRj
aCAyIGZvciBkZXRhaWxzLgo+Pj4+Cj4+Pj4gUGF0Y2ggMSBkb2VzIHNvbWUgdHJpdmlhbCBwcmVw
YXJhdG9yeSByZWZhY3RvcmluZy4KPj4+Cj4+PiBTb3JyeSB0byBiZSBhIHBhaW4sIGJ1dCB3b3Vs
ZCB5b3UgYmUgYWJsZSB0byBmbGlwIHRoaXMgc2VyaWVzIHJvdW5kIHNvIHRoYXQKPj4+IHRoZSBm
aXggZG9lc24ndCBkZXBlbmQgb24gdGhlIHJlZmFjdG9yaW5nLCBwbGVhc2U/IFRoYXQgd2F5IHdl
IGNhbiBwdXQgaXQKPj4+IGludG8gc3RhYmxlIHdpdGhvdXQgdGhlIGRlcGVuZGVuY3kuCj4+Pgo+
Pj4+IGdkYiBtYXkgb3IgbWF5IG5vdCBiZSBhZmZlY3RlZCBieSB0aGlzLCBkZXBlbmRpbmcgb24g
aG93IGl0IHVzZXMgdGhlCj4+Pj4gTlRfUFJGUFJFRyBhbmQgTlRfQVJNX1NWRSByZWdzZXRzLiAg
SSdsbCBsZWF2ZSBpdCB0byB0aGUgZGV2ZWxvcGVycyB0bwo+Pj4+IGFzc2VzcyB0aGF0Lgo+Pj4K
Pj4+IFdvdWxkbid0IHRoaXMgYmUgZWFzeSBlbm91Z2ggdG8gdGVzdD8KPj4KPj4gU28sIGdkYiB3
b3JrcyBPSyBvbiBiaWctZW5kaWFuIGJ1dCB3ZWlyZCBzdHVmZiBoYXBwZW5pbmcgb24gYm90aCB3
aXRoCj4+IGFuZCB3aXRob3V0IHRoZSBmaXguCj4+Cj4+IFRoZXJlIGFyZSBwbGFjZXMgaW4gdGhl
IGdkYiBjb2RlIGl0c2VsZiB3aGVyZSBpdCBpcyBsaWtlbHkgbWlzc2luZwo+PiBlbmRpYW5uZXNz
IGNvbnZlcnNpb25zLCBidXQgSSBuZWVkIHRvIGZvbGxvdyB1cCB3aXRoIHRoZSBnZGIgZm9sa3Mg
dG8KPj4gY2xhcmlmeSB3aGV0aGVyIG15IHBhdGNoIGlzIG1pc3Npbmcgc29tZXRoaW5n4oCmCj4K
PiAoSSBhZGRlZCB0aGUgU1ZFIHN1cHBvcnQgZm9yIEdEQikuCj4KPiBJ4oCZdmUgdHJpZWQgdGhl
c2UgY2hhbmdlcyBvdXQgbXlzZWxmIHVzaW5nIEdEQi4KPiBXaXRoIHlvdXIgY2hhbmdlcyBldmVy
eXRoaW5nIGxvb2tzIGdvb2QsIGFwYXJ0IGZyb206Cj4gKiBHREIgZ2V0cyBpdCB3cm9uZyB3aGVu
IHRoZSBwdHJhY2Ugc3ZlIHN0cnVjdHVyZSBjb250YWlucyBhIGZwc2ltZC4KPiAqIEkgbmVlZCB0
byBkbyBzb21lIHRlc3RpbmcgYXJvdW5kIHNpZ2NvbnRleHRzLCBidXQgYWdhaW4gSSB0aGluayBH
REIKPiAgIHdpbGwgbmVlZCBhIHNsaWdodCBjaGFuZ2UuCj4gSeKAmWxsIGdldCBzb21lIHBhdGNo
ZXMgdG9nZXRoZXIgZm9yIEdEQi4KCldoZXJlIGlzIHRoZSBsYXRlc3Qgc3RhdGUgb2YgU1ZFIHN1
cHBvcnQgZm9yIEdEQj8gSSByZWFsbHkgc2hvdWxkIGNoZWNrCnRoZSBRRU1VIGdkYnN0dWIgZG9l
cyB0aGUgY29ycmVjdCB0aGluZ3MgZm9yIFNWRSByZWdpc3RlcnMgYnV0IEkgd2FzCndhaXRpbmcg
Zm9yIHVwc3RyZWFtIGdkYiBzdXBwb3J0LgoKLS0KQWxleCBCZW5uw6llCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
