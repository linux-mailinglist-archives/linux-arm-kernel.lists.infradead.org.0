Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F06AAD97
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 23:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHCktRSHFKMalfdyfz4s0+AkWmIrc7uVjcIjiFzB+c0=; b=dbcsYSOcRnIyUr
	t2yvLCchWV59/6fBDNL8MhhJyUkQrpdlrF7vCI3kqIrfop06AAhnTE6Z+Iakliyfw6smq4x9eztnc
	S2kIG8BRPDvtz8zZicTxVKeDtzQvprvbSwsAU8ChX/AEPVjOu9ONu0TUsewlLpFzrlQtSpm5J3hur
	hWeq03pYwpzL5YBRH0/XRBy2knn2Z91dAQyB8hLvbfAhKf6Hr05mtd+WPpWE9z5KFGHHnT9NOkMt+
	nZcqHO2ap37a9COT4R9YZMxmHuhFLFlwRzFi08AoRyfS5ZFX8rULS+O5cN7MGjHS6/DBkCk66vBGb
	8nFjiSde1WOrPaCMBy4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yzG-0001VC-SL; Thu, 05 Sep 2019 21:08:14 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yz8-0001Tp-Vq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 21:08:08 +0000
Received: by mail-qt1-x844.google.com with SMTP id j10so4582657qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 14:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HvoJM9sMGq5xI3RwMvugcMXuusxVFzNWPQZRfU0rEf8=;
 b=RE1kQcFxWLO+aub3BJU/i/hazoxxbNU/KRFZj4Yf4mDb4K8zmul3vWp/RDVVFMnCaV
 QX7/TnC7DuZWGLudP8Vwi+KwuJBCSIwq9urMjeXsLuP8SZWja6CfE7N8GK2kQx7f/BCu
 iAVspylz/WJ1PGnD/M1oDkyUKErs8+PtG8mdpd0mxQefo3dPEcIgsnJvD3ryXtj/LB9r
 IN0zb+7LzqSvm9a2uSNuUnZ932xeKnGAccrllI9cX+YSR+nlBkR5aQMj6lO2Pa6n9n51
 /AUIzWhaVCT5TeZcRUkT7uLoxe9JASdBGMnKn3LJ6O9CSsJvlEywBPIqtAoEGHRFAz69
 TiIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HvoJM9sMGq5xI3RwMvugcMXuusxVFzNWPQZRfU0rEf8=;
 b=Bmik3I9I5PMynyWgyomU26N77qQUR7K6Ol46Oi2q9GeiijA2UOVwI4fainlkkJA9jP
 tr4ZMkN29gNYPUa0LR306TVEsw+qUAU2oREnRJ/77Q32ztT/sQrR10DbttGyJwsmkomq
 q/7nl2VG6B3nGomxyseCRWpoOik9wiavvCWk3RhHwjfFOtQgq91tFfEndW7DbWnXD0Ej
 l1Y7p3t1/wNZb/jOH555gy9z+Ki6/WwEJHxkezk1AFebDd6sm/E1uNwkDkk4iOLug0G2
 xvGXYkEXGmEtFNtLsiNy6zzwS5A2dKWQE5EjwGjM53vxN10cbvwgDvnf7djCH0yb0Q2R
 idow==
X-Gm-Message-State: APjAAAVUMukCZKitFNSo2SLp07/1m55V3zD5wmvZRXmITdBTocdPNDFh
 dkqd9Og5Yx935wfOi16Bx9j7Pg==
X-Google-Smtp-Source: APXvYqxY2ypIf1XfIoVNJF4qwIapFtfKnB7Ak69TdLWw2rUBh9E7c/fsOawf0Iylhmq8cCiBqn8CyA==
X-Received: by 2002:a05:6214:16cb:: with SMTP id
 d11mr3355475qvz.241.1567717682191; 
 Thu, 05 Sep 2019 14:08:02 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k11sm1510843qtp.26.2019.09.05.14.08.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 14:08:01 -0700 (PDT)
Message-ID: <1567717680.5576.104.camel@lca.pw>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
From: Qian Cai <cai@lca.pw>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Thu, 05 Sep 2019 17:08:00 -0400
In-Reply-To: <1566509603.5576.10.camel@lca.pw>
References: <1566509603.5576.10.camel@lca.pw>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_140807_029539_1198A448 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Waiman Long <longman@redhat.com>,
 Dan Williams <dan.j.williams@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW5vdGhlciBkYXRhIHBvaW50IGlzIGlmIGNoYW5nZSBDT05GSUdfREVCVUdfT0JKRUNUU19USU1F
UlMgZnJvbSA9eSB0byA9biwgaXQKd2lsbCBhbHNvIGZpeCBpdC4KCk9uIFRodSwgMjAxOS0wOC0y
MiBhdCAxNzozMyAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6Cj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNl
cmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIvYXJtNjQuY29uZmlnCj4gCj4gQm9v
dGluZyBhbiBhcm02NCBUaHVuZGVyWDIgc2VydmVyIHdpdGggcGFnZV9hbGxvYy5zaHVmZmxlPTEg
WzFdICsKPiBDT05GSUdfUFJPVkVfTE9DS0lORz15wqByZXN1bHRzIGluIGhhbmdpbmcuCj4gCj4g
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzE1NDg5OTgxMTIwOC4zMTY1MjMz
LjE3NjIzMjA5MDMxMDY1MTIxODg2LnMKPiB0Z2l0QGR3aWxsaWEyLWRlc2szLmFtci5jb3JwLmlu
dGVsLmNvbS8KPiAKPiAuLi4KPiBbwqDCoDEyNS4xNDI2ODldW8KgwqDCoMKgVDFdIGFybS1zbW11
LXYzIGFybS1zbW11LXYzLjIuYXV0bzogb3B0aW9uIG1hc2sgMHgyCj4gW8KgwqAxMjUuMTQ5Njg3
XVvCoMKgwqDCoFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My4yLmF1dG86IGlhcyA0NC1iaXQs
IG9hcyA0NC1iaXQKPiAoZmVhdHVyZXMgMHgwMDAwMTcwZCkKPiBbwqDCoDEyNS4xNjUxOThdW8Kg
wqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjIuYXV0bzogYWxsb2NhdGVkIDUyNDI4
OCBlbnRyaWVzCj4gZm9yIGNtZHEKPiBbwqDCoDEyNS4yMzk0MjVdWyBbwqDCoDEyNS4yNTE0ODRd
W8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjMuYXV0bzogb3B0aW9uCj4gbWFz
ayAweDIKPiBbwqDCoDEyNS4yNTgyMzNdW8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11
LXYzLjMuYXV0bzogaWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdAo+IChmZWF0dXJlcyAweDAwMDAxNzBk
KQo+IFvCoMKgMTI1LjI4Mjc1MF1bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMu
My5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMKPiBmb3IgY21kcQo+IFvCoMKgMTI1LjMy
MDA5N11bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuMy5hdXRvOiBhbGxvY2F0
ZWQgNTI0Mjg4IGVudHJpZXMKPiBmb3IgZXZ0cQo+IFvCoMKgMTI1LjMzMjY2N11bwqDCoMKgwqBU
MV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBvcHRpb24gbWFzayAweDIKPiBbwqDC
oDEyNS4zMzk0MjddW8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjQuYXV0bzog
aWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdAo+IChmZWF0dXJlcyAweDAwMDAxNzBkKQo+IFvCoMKgMTI1
LjM1NDg0Nl1bwqDCoMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBhbGxv
Y2F0ZWQgNTI0Mjg4IGVudHJpZXMKPiBmb3IgY21kcQo+IFvCoMKgMTI1LjM3NTI5NV1bwqDCoMKg
wqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNC5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVu
dHJpZXMKPiBmb3IgZXZ0cQo+IFvCoMKgMTI1LjM4NzM3MV1bwqDCoMKgwqBUMV0gYXJtLXNtbXUt
djMgYXJtLXNtbXUtdjMuNS5hdXRvOiBvcHRpb24gbWFzayAweDIKPiBbwqDCoDEyNS4zOTM5NTVd
W8KgwqDCoMKgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogaWFzIDQ0LWJpdCwg
b2FzIDQ0LWJpdAo+IChmZWF0dXJlcyAweDAwMDAxNzBkKQo+IFvCoMKgMTI1LjUyMjYwNV1bwqDC
oMKgwqBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuNS5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4
IGVudHJpZXMKPiBmb3IgY21kcQo+IFvCoMKgMTI1LjU0MzMzOF1bwqDCoMKgwqBUMV0gYXJtLXNt
bXUtdjMgYXJtLXNtbXUtdjMuNS5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMKPiBmb3Ig
ZXZ0cQo+IFvCoMKgMTI2LjY5NDc0Ml1bwqDCoMKgwqBUMV0gRUZJIFZhcmlhYmxlcyBGYWNpbGl0
eSB2MC4wOCAyMDA0LU1heS0xNwo+IFvCoMKgMTI2Ljc5OTI5MV1bwqDCoMKgwqBUMV0gTkVUOiBS
ZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAxNwo+IFvCoMKgMTI2Ljk3ODYzMl1bwqDCoMKgwqBU
MV0genN3YXA6IGxvYWRlZCB1c2luZyBwb29sIGx6by96YnVkCj4gW8KgwqAxMjYuOTg5MTY4XVvC
oMKgwqDCoFQxXSBrbWVtbGVhazogS2VybmVsIG1lbW9yeSBsZWFrIGRldGVjdG9yIGluaXRpYWxp
emVkCj4gW8KgwqAxMjYuOTg5MTkxXVsgVDE1NzddIGttZW1sZWFrOiBBdXRvbWF0aWMgbWVtb3J5
IHNjYW5uaW5nIHRocmVhZCBzdGFydGVkCj4gW8KgwqAxMjcuMDQ0MDc5XVsgVDEzMzVdIHBjaWVw
b3J0IDAwMDA6MGY6MDAuMDogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDAKPiBbwqDCoDEyNy4zODgw
NzRdW8KgwqDCoMKgVDFdIEZyZWVpbmcgdW51c2VkIGtlcm5lbCBtZW1vcnk6IDIyNTI4Swo+IFvC
oMKgMTMzLjUyNzAwNV1bwqDCoMKgwqBUMV0gQ2hlY2tlZCBXK1ggbWFwcGluZ3M6IHBhc3NlZCwg
bm8gVytYIHBhZ2VzIGZvdW5kCj4gW8KgwqAxMzMuNTMzNDc0XVvCoMKgwqDCoFQxXSBSdW4gL2lu
aXQgYXMgaW5pdCBwcm9jZXNzCj4gW8KgwqAxMzMuNzI3MTk2XVvCoMKgwqDCoFQxXSBzeXN0ZW1k
WzFdOiBTeXN0ZW0gdGltZSBiZWZvcmUgYnVpbGQgdGltZSwgYWR2YW5jaW5nCj4gY2xvY2suCj4g
W8KgwqAxMzQuNTc2MDIxXVsgVDE1ODddIG1vZHByb2JlICgxNTg3KSB1c2VkIGdyZWF0ZXN0IHN0
YWNrIGRlcHRoOiAyNzA1NiBieXRlcwo+IGxlZnQKPiBbwqDCoDEzNC43NjQwMjZdW8KgwqDCoMKg
VDFdIHN5c3RlbWRbMV06IHN5c3RlbWQgMjM5IHJ1bm5pbmcgaW4gc3lzdGVtIG1vZGUuICgrUEFN
Cj4gK0FVRElUICtTRUxJTlVYICtJTUEgLUFQUEFSTU9SICtTTUFDSyArU1lTVklOSVQgK1VUTVAg
K0xJQkNSWVBUU0VUVVAgK0dDUllQVAo+ICtHTlVUTFMgK0FDTCArWFogK0xaNCArU0VDQ09NUCAr
QkxLSUQgK0VMRlVUSUxTICtLTU9EICtJRE4yIC1JRE4gK1BDUkUyIGRlZmF1bHQtCj4gaGllcmFy
Y2h5PWxlZ2FjeSkKPiBbwqDCoDEzNC43OTkwNDRdW8KgwqDCoMKgVDFdIHN5c3RlbWRbMV06IERl
dGVjdGVkIGFyY2hpdGVjdHVyZSBhcm02NC4KPiBbwqDCoDEzNC44MDQ4MThdW8KgwqDCoMKgVDFd
IHN5c3RlbWRbMV06IFJ1bm5pbmcgaW4gaW5pdGlhbCBSQU0gZGlzay4KPiA8Li4uaGFuZy4uLj4K
PiAKPiBGaXggaXQgYnkgZWl0aGVyIHNldCBwYWdlX2FsbG9jLnNodWZmbGU9MCBvciBDT05GSUdf
UFJPVkVfTE9DS0lORz1uIHdoaWNoIGFsbG93Cj4gaXQgdG8gY29udGludWUgc3VjY2Vzc2Z1bGx5
Lgo+IAo+IAo+IFvCoMKgMTIxLjA5Mzg0Nl1bwqDCoMKgwqBUMV0gc3lzdGVtZFsxXTogU2V0IGhv
c3RuYW1lIHRvIDxocGUtYXBvbGxvLWNuOTl4eD4uCj4gW8KgwqAxMjMuMTU3NTI0XVvCoMKgwqDC
oFQxXSByYW5kb206IHN5c3RlbWQ6IHVuaW5pdGlhbGl6ZWQgdXJhbmRvbSByZWFkICgxNiBieXRl
cwo+IHJlYWQpCj4gW8KgwqAxMjMuMTY4NTYyXVvCoMKgwqDCoFQxXSBzeXN0ZW1kWzFdOiBMaXN0
ZW5pbmcgb24gSm91cm5hbCBTb2NrZXQuCj4gW8KgwqBPS8KgwqBdIExpc3RlbmluZyBvbiBKb3Vy
bmFsIFNvY2tldC4KPiBbwqDCoDEyMy4yMDM5MzJdW8KgwqDCoMKgVDFdIHJhbmRvbTogc3lzdGVt
ZDogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQgKDE2IGJ5dGVzCj4gcmVhZCkKPiBbwqDCoDEy
My4yMTI4MTNdW8KgwqDCoMKgVDFdIHN5c3RlbWRbMV06IExpc3RlbmluZyBvbiB1ZGV2IEtlcm5l
bCBTb2NrZXQuCj4gW8KgwqBPS8KgwqBdIExpc3RlbmluZyBvbiB1ZGV2IEtlcm5lbCBTb2NrZXQu
Cj4gLi4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
