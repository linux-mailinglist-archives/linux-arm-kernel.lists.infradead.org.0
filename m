Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF441167CE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:56:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWKXoyQ8q3sd97GT4pnakZdZdd0kOWEZG5qlp2d2muA=; b=Gr+Y18gOEK1xke
	FvutN1EPzZEFeN480BLh9weh9ejpLHR7ysf4vFLQRGv4/9IcJzaGJH00ZeNZNJr1S6aqewmY9KB0q
	+f54FxnRaJR4tc+PTuIO9/fbbOwnKxc9rCLhJKcucfPP6EqkdUYdoBXxCxEdF55/K6O3Oy1QggQEQ
	DPurCVAWbfbGhGOXcoXUNHpQZGwP7DZ3+5TpX6CHWWxnJm+9cKE2puOlDDFN3Q41y69p7KZgn/2Bu
	dXFLomyEWfdkQ+7jppusjS4pnW2kGMrJG+j5CB7I915ww8g4Z50Chtx4KtY51nrIvjYIfNEb1ErBU
	NZByS7LMilG3yCtH6Ubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56vP-0006Fb-QP; Fri, 21 Feb 2020 11:56:55 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56vG-0006EN-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:56:47 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200221115644euoutp016330884537f0e71bd30ca3f5e42bf049~1aOtUxzAi1698516985euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 11:56:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200221115644euoutp016330884537f0e71bd30ca3f5e42bf049~1aOtUxzAi1698516985euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582286204;
 bh=ttOHqZyVhN2Ha6AWi1sTsR5rhszW5WEHAUFOhdn9x+Q=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=qNCVJD4+/KbTgr88jeFxvt6oQ2Lk/db2jITJZP1m9WxB3K2nQS9AZP/pzf/aqkCgd
 spwqCLpFvEOSJDSEKDvI7lDcKqJCu9qq0wKpLzUcnTEeNk8lwMxHWF2lvioUyZYBad
 662EGDvAtXn9zIfAikisl1Xsura+iONXhpm32JiI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200221115643eucas1p12981681eb2cda488400f2e4bb58f629b~1aOsz36tK1507415074eucas1p1b;
 Fri, 21 Feb 2020 11:56:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2A.A5.60698.B75CF4E5; Fri, 21
 Feb 2020 11:56:43 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200221115643eucas1p12ecb95c6161853a0e7dfe9207db079be~1aOsfjy121401914019eucas1p1x;
 Fri, 21 Feb 2020 11:56:43 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200221115643eusmtrp28eb23b4d75089b6224cabe59b5709188~1aOsermH62880428804eusmtrp2S;
 Fri, 21 Feb 2020 11:56:43 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-28-5e4fc57b7f8d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CA.AA.07950.B75CF4E5; Fri, 21
 Feb 2020 11:56:43 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200221115642eusmtip2cfdd6a1fd4e334856d6328370dcdefb9~1aOrrQXfl2493724937eusmtip2D;
 Fri, 21 Feb 2020 11:56:42 +0000 (GMT)
Subject: Re: [patch V2 11/17] ARM/arm64: vdso: Use common vdso clock mode
 storage
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <c86bbd4e-5992-c1c9-ed31-9ea04d392588@samsung.com>
Date: Fri, 21 Feb 2020 12:56:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200207124403.363235229@linutronix.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHffZe9jqcPK2Wp4yKYUEXM83qwSQKJN9PFRaE3Ve+mKQzNi0t
 quW6LJFMS7N5KbKLlmZMGypTa2XTtFlas8Q+hNKN1MhLdlFze7P89jvP//zP/xx4OEpxgZ3J
 xWgSBK1GHatiZbTlyQ+H/5H6DTuX5jp9SfPYZ4r03UxDxGiQkLw3QSSj4RtNmn/5E3OXkyFt
 1XkssWXVINJSXcqQG+0vJKQqr5EhN984aGIcyqdJnWWUIa1WP2IucbKk3JxFkZrRHzQ52bmc
 DN/rYtYo+ZKCEsS3OV9Q/Kn0YZavMr2V8ubbZ1m+02ll+V6HQ8rXF5dK+PLrx/lTlSNSvq/2
 FcuXVbyi+X7z7I3yrbLQKCE25qCgDVi9W7av1XiVPmDwSsrsMEv1KFeWijw5wMFQ8XKATkUy
 ToGLEOR/GWLFYgBB1yPrX6Ufwbfuc9SE5cxwoVQUbiGwnctnXYIC9yAoP+Fumoo3gf2ik3Hx
 NLwB3hvS3ZMo/JEB84nv7iYWB0JqT6rbLMer4XxKn8TFNJ4HTZXZ7h4l3gG5xY9osWcKNF7u
 drMnXg4tKR/cXgrPAcP9XEpkH+joviJxhQFu4ODh6Gkkrh0GOZYrjMhT4bO9QiryLBirmjAY
 ELxzlErFIg1BW0rOX/cq6HT8HI/jxiMWQFl1gAsBr4U7hVhEb3jdM0XcwRsyLZco8VkOxtMK
 ccZ8MNnv/kt9+LyVOo9UpkmXmSZdY5p0jel/7FVE30Y+QqIuLlrQLdMIh5bo1HG6RE30kr3x
 cWY0/lWbRu2Dlaj29x4bwhxSecmT9Ot3Khj1QV1ynA0BR6mmyed7jT/Jo9TJhwVt/C5tYqyg
 syFfjlb5yJdd+7RDgaPVCcJ+QTggaCdUCec5U4+UEUO7sh4sCjiabG83Jh3P917HpgUHHdNE
 Ej8l8bKGNOeMwP7Mx08f6AsCZdaE5g5NWINHcWf/oCdRzkhZOUZ9eO8XsWWxJuJr751GhY9l
 cACrjoZnzA2vY4qmP0Whz7aH8NkehZv7qugVR/RoZF1DUcfmMkWbrzayLjRkm1ZF6/apAxdS
 Wp36D6Lx7lemAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTURjHOXsvm+LqdWqerDTWDQqnm06PYiJE9EJpgfql8jL0RSXnZO8U
 NSJxmmt00VDBeUnwAppSzbt5a+C9NBVnmpmiYGhqFyktszZX4Lff+Z//74EHHh4mqCCceHEJ
 KkaZIIsXktb40E7frOvNnsvh7nP9OHr1ZxlD61X3ANKoOah4SoJy+7+a4l+uSL9gJNB4WzGJ
 DPkdAI201RGocnKUg1qLBwhUNTWMI833Ehx1Ne0QaKz9ONLXGklUr8/HUMfOFo4yZ6Ro89kC
 EeBA15bWAnrcOIrRWQ83SbpV955L62vukvSMsZ2k14aHuXRPdR2Hrq+4TWe1/ObS650TJP20
 YQKnv+mdr/CvivyUiiQVczRWwarOCq+JkUQk9kEiiaePSOzhHeYrkQrd/P2imfi4ZEbp5h8p
 ih3TlOGJapuUR9N6bjoostYCKx6kPGH2ZjlXC6x5AqoSwN7VbNLycRgOFKQTFraD20btbi6g
 VgB8/iXQzHZUMOzLM+527KlAmHG/jDAPwqhlAn6uqzA9eCYhAub32Jo7JCWG2lXLHD7lD3My
 1jlmxqkTcKilADOzAxUG3xZqOJaOLRwoXMTNbEVJ4UjG0q6LUV6wtH4es7ALVDcW/WNHOL34
 mJMDBLo9um6Potuj6PYoZQCvAfZMEiuPkbMSESuTs0kJMaIohVwPTBfS1LvV0AK0a8EGQPGA
 0Iafkh4ULiBkyWyq3AAgDxPa80/amCJ+tCw1jVEqIpRJ8QxrAFLTcrmYk0OUwnRvCaoIsVTs
 jXzE3h7eHl5I6MjXUC+vC6gYmYq5wTCJjPK/x+FZOaWDVOX5zRfc7gusZq6z+UN3ZEXoQZfB
 n55dUfUXY8cKCsuIgFvyQ7MD2LuGkZUHmfuOhEr9G/frnam0M5OXfEOmsja289TDn8bPHUsx
 qDJdPEK6kg8sFZ9qpktGg18HSlXhHzumPK0L1e5bP2rL31SHDergfGNlXFDviO7J9B0UtSHE
 2ViZ+DSmZGV/ASza5qQ3AwAA
X-CMS-MailID: 20200221115643eucas1p12ecb95c6161853a0e7dfe9207db079be
X-Msg-Generator: CA
X-RootMTR: 20200221115643eucas1p12ecb95c6161853a0e7dfe9207db079be
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200221115643eucas1p12ecb95c6161853a0e7dfe9207db079be
References: <20200207123847.339896630@linutronix.de>
 <20200207124403.363235229@linutronix.de>
 <CGME20200221115643eucas1p12ecb95c6161853a0e7dfe9207db079be@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_035646_619860_E34814E0 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Juergen Gross <jgross@suse.com>,
 Marc Zyngier <maz@kernel.org>, Paul Burton <paulburton@kernel.org>,
 Sasha Levin <sashal@kernel.org>, James Hogan <jhogan@kernel.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, Michael Kelley <mikelley@microsoft.com>,
 Andrei Vagin <avagin@gmail.com>, John Stultz <john.stultz@linaro.org>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKT24gMDcuMDIuMjAyMCAxMzozOCwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+
IEZyb206IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+Cj4gQ29udmVydCBB
Uk0vQVJNNjQgdG8gdGhlIGdlbmVyaWMgVkRTTyBjbG9jayBtb2RlIHN0b3JhZ2UuIFRoaXMgbmVl
ZHMgdG8KPiBoYXBwZW4gaW4gb25lIGdvIGFzIHRoZXkgc2hhcmUgdGhlIGNsb2Nrc291cmNlIGRy
aXZlci4KPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4
LmRlPgo+IFJldmlld2VkLWJ5OiBWaW5jZW56byBGcmFzY2lubyA8dmluY2Vuem8uZnJhc2Npbm9A
YXJtLmNvbT4KPiBUZXN0ZWQtYnk6IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lu
b0Bhcm0uY29tPgoKVGhpcyBwYXRjaCBsYW5kZWQgaW4gdG9kYXkncyBsaW51eC1uZXh0IChuZXh0
LTIwMjAwMjIxKSBhcyBjb21taXQgCjVlM2M2YTMxMmEwOS4gSXQgYnJlYWtzIEFSTSAzMmJpdCBi
dWlsZCB3aXRob3V0IFZEU08gZW5hYmxlZCBpbiAuY29uZmlnOgoKJCBtYWtlIEFSQ0g9YXJtIG11
bHRpX3Y3X2RlZmNvbmZpZwoKJCAuL3NjcmlwdHMvY29uZmlnIC1lIEFSTV9MUEFFIC1lIFZJUlRV
QUxJWkFUSU9OIC1lIEtWTSAtZCBWRFNPCgokIG1ha2UgQVJDSD1hcm0gb2xkZGVmY29uZmlnCgok
IG1ha2UKCi4uLgoKZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jOjczOjQ0OiBl
cnJvcjogCuKAmFZEU09fQ0xPQ0tNT0RFX0FSQ0hUSU1FUuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5v
dCBpbiBhIGZ1bmN0aW9uKQogwqBzdGF0aWMgZW51bSB2ZHNvX2Nsb2NrX21vZGUgdmRzb19kZWZh
dWx0ID0gVkRTT19DTE9DS01PREVfQVJDSFRJTUVSOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgXgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NzogcmVjaXBlIGZvciB0YXJnZXQgCidk
cml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLm8nIGZhaWxlZAptYWtlWzJdOiAqKiog
W2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIub10gRXJyb3IgMQptYWtlWzJdOiAq
KiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjUwNTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvY2xvY2tzb3VyY2UnIGZhaWxlZAptYWtl
WzFdOiAqKiogW2RyaXZlcnMvY2xvY2tzb3VyY2VdIEVycm9yIDIKbWFrZVsxXTogKioqIFdhaXRp
bmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KTWFrZWZpbGU6MTY4MzogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCj4gLi4uCgpC
ZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1
dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
