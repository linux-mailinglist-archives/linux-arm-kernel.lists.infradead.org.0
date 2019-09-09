Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF84ADBC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qd2ITVVQFeNm67xuq4ewheRz+oIf2RlRSU9BdipQUlQ=; b=fAInfcA9JMsMiGzvEg6LsKsr3
	7yVNhYiXXiqfqbWJKrD4mUyLdf/dqsG1SN2hJVtWNBc49H3Is18d6S/wIiXDtiErVzhyfN/Ifpqxr
	YIh/IShkWDFsuHwfe3lOz6YSNvCB/JkW30EmIEaIdMBytHuXINXv17f1CY1o10gfWIcdcfcgM/9mY
	CB3kVnJYoyFfUZ+Y2keOrj5MNE1Xdtvk86dsj9U9cM+7qOErx0QCK51dEuPuw/aNMu3MmlIpwkBnq
	Z+wNSYBQI6h6rtlxctnmHJ2lGPlepf/o38/bSEx6GF9dvgZuEzSNuz9QGv474pn7dHWPygvhgiFJC
	w89USM2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LGW-0004Em-5u; Mon, 09 Sep 2019 15:07:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LGK-0004EQ-N5; Mon, 09 Sep 2019 15:07:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id t9so15114122wmi.5;
 Mon, 09 Sep 2019 08:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=8lNJiD/cdGLfa+TOe5mXLdKF5J81dh2AlIfmRLL9vdo=;
 b=aflVrGESjQUPFYiNO/GjC2PhcA+9Eh8MycvxVNAE01cTyYPHsZ5PSiRChlyoXn8Ypi
 Gl45yarFuOqiWBCqKXncrGvtng1bbUy2eJjsd9ncsau4e+OI6442hEY7qgWCcjF0Nq9V
 0HKitL/Gt4/H4RhkbDEaEkbhn8zAfzM4DhMAelCPpI5D7RearOHHAk/T3cUuh6rqpBly
 n0rpz7zsl9ADlwzu0eEojhjBRwl0TVbxlYNlw0gBsncKAUj6qhOgrGq1/jkNRMTAQ56H
 jcPF7lYk+LtHCDtvF5Qxhom+5Lb35VWOE67LPs1LdHoh6uDspbNHyXZ/sZkb8zw+P5tQ
 3u2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=8lNJiD/cdGLfa+TOe5mXLdKF5J81dh2AlIfmRLL9vdo=;
 b=c1fi5X4r1CSuQBMc/XfzRs4BEwG/0WoFFDEf31/5VTQiyDeT9LGJLhnNGXHCPtOOwg
 SpiJDpKFHjPkaSqLtvkvzkATr7Kumcx+rR/3y0BtVIjA+CN79o53hZgR6drW6MEJwdEv
 NuPAgAgoe9Y9fgLHKk2I9M+gd5d05+85hYjToAIDAGqWWKpLpPMU13RipjY8AEXvV4zz
 3l/BWOPwmjBg20boGXdoJskFTuvGoMzgMSF63Fa/C5LMRCPTK5qOF1oegk5TYVSwJslo
 4oNm16CjCMdHPN7v9t30b+aa+thEmG9RjwdZv6RirfRPf7eF/4VFFJ5SbB7U0awwfxgb
 H/KA==
X-Gm-Message-State: APjAAAWnekAl9TNODqTWTQaOFzWM81Qb9CEA5iwMbr60cCQT1vJpDiXm
 fdnBExXGSN1D6cD7Rh+1jpI=
X-Google-Smtp-Source: APXvYqzguRfbA18FewBNkcyW0CglXP4Km8nbjPwt7Ka17MXn0mq+V8NmdOZlWGOhktcTK/CGaJSRcQ==
X-Received: by 2002:a7b:cf25:: with SMTP id m5mr18942744wmg.25.1568041646877; 
 Mon, 09 Sep 2019 08:07:26 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id b194sm31472703wmg.46.2019.09.09.08.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 08:07:25 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Mon, 09 Sep 2019 17:07:24 +0200
MIME-Version: 1.0
Message-ID: <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com>
In-Reply-To: <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080728_756592_00B75708 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDI6MTY6MjAgUE0gQ0VTVCwgVmljZW50ZSBCZXJn
YXMgd3JvdGU6Cj4gT24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDE6NTM6MDQgUE0gQ0VTVCwg
RmVsaXBlIEJhbGJpIHdyb3RlOgo+PiBIaSwKPj4gCj4+IFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JpdGVzOgo+Pj4gT24gU2F0dXJkYXksIEF1Z3VzdCAxNywgMjAxOSA3OjQx
OjQwIFBNIENFU1QsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+Pj4+IE90aGVyd2lzZSB0aGUgZGV2
aWNlIGtlZXBzIHdyaXRpbmcgdG8gbWVtb3J5IGFmdGVyIGtleGVjIGFuZCBkaXN0dXJicwo+Pj4+
IHRoZSBuZXh0IGtlcm5lbC4KPiAuLi4KPj4gCj4+IHdoeSBkb24ndCB5b3UganVzdCBoYXZlIHNo
dXRkb3duIHVzZSB0aGUgc2FtZSBleGFjdCBmdW5jdGlvbiBhcyByZW1vdmU/Cj4+IEZyYW5rbHks
IHRob3VnaCwgSSBzdGlsbCBkb24ndCBmdWxseSB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyB3cm9u
Zwo+PiBoZXJlLiBXaHkgaXMgdGhlIGRldmljZSBzdGlsbCBhbGl2ZSBkdXJpbmcga2V4ZWM/Cj4+
IAo+PiBjaGVlcnMKPgo+IEhpIEZlbGlwZSwKPiB0aGUgcmVtb3ZlIGFuZCBzaHV0ZG93biBmdW5j
dGlvbnMgaGF2ZSBkaWZmZXJlbnQgcHJvdG90eXBlcywgc28KPiBzaHV0ZG93biBpcyB3cmFwcGlu
ZyByZW1vdmUuCj4gV291bGQgaXQgYmUgcHJlZmVyYWJsZSB0byBjYXN0IHJlbW92ZSBhcyBzaHV0
ZG93bj8KPgo+IFRoZSBpc3N1ZSB3aXRoIGtleGVjIGlzIHRoYXQgdGhlIGRldmljZSBpcyBiZWlu
ZyB1c2VkIGR1cmluZyB0aGUgbGl2ZXRpbWUKPiBvZiB0aGUgZmlyc3Qga2VybmVsLiBXaGVuIHRo
ZSBmaXJzdCBrZXJuZWwgZXhlY3V0ZXMga2V4ZWMgaXQgY2FsbHMgdGhlCj4gc2h1dGRvd24gZnVu
Y3Rpb24gb2YgZHJpdmVycyAoaW5zdGVhZCBvZiByZW1vdmUpLiBCZWNhdXNlIG9mIHRoaXMgdGhl
IGR3YzMKPiBkZXZpY2Uga2VlcHMgZG9pbmcgdGhpbmdzIGxpa2UgRE1BLgo+IFdoaWxlIHRoZSBz
ZWNvbmQga2VybmVsIGlzIHRha2luZyBvdmVyLCBpdCBnZXRzIGl0cyBtZW1vcnkgY29ycnVwdGVk
IHdpdGgKPiBzdWNoIERNQSBhY2Nlc3NlcyBmcm9tIHRoZSBkZXZpY2UuIFdoZW4gdGhlIHNlY29u
ZCBrZXJuZWwgcmVhY2hlcyB0aGUgcG9pbnQKPiBvZiB0YWtpbmcgb3ZlciB0aGUgZHdjMyBkZXZp
Y2UsIHJlLWluaXRpYWxpemVzIGl0LCBidXQgaXQgaXMgYWxyZWFkeSB0b28KPiBsYXRlLiBTdGls
bCB3b3JzZSwgaWYgdGhlIHNlY29uZCBrZXJuZWwgZGlkIG5vdCBoYXZlIHRoZSBkd2MzIGRyaXZl
ciwgaXQKPiB3b3VsZCBnZXQgZW5kbGVzcyBtZW1vcnkgY29ycnVwdGlvbnMuCj4gQWxsIGluIGFs
bCwgZGV2aWNlcyB0aGF0IGNhbiBkbyBETUEgbmVlZCB0byBzdG9wIGRvaW5nIGl0IG9uIHNodXRk
b3duLgo+Cj4gUmVnYXJkcywKPiAgVmljZW7Dpy4KCkhpLApwbGVhc2UsIGNhbiB5b3UgcHJvdmlk
ZSBzb21lIGZlZWRiYWNrIG9uIHRoaXM/CgpSZWdhcmRzLAogVmljZW7Dpy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
