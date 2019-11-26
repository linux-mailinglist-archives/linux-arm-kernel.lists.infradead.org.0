Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14B210A624
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 22:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmFggHvue1UBeyCWU9ghpYl835OERydCoKamWI3v1zA=; b=chiajK0D+hBPPa
	yL7X3Gm0mJ0oCu+GpQzcNLGcv9eb2KYdTAqvW9PcKmrO21VSxxJ4HWZ/g4agxxz8q5BvxHLjkEfl6
	6XehWpbNqtwRSG3wtc/251yqo8JQT6Voro6vAzVpO2wzvmIxy9j95PzT7drAklymQ2LKD6Mvxvl9d
	xmSSx1+2vWE/e6gtHWAORib0rnz4StGM+EAwCrmC3s3dfP3e52RNpp6heQH4xwf3M6EXu9TlCx9uR
	Oyb9p665h8gU+MvH7sPKQ+sX/X01Too+ihd3SzyN5gxVgvwb1xVtG+nnz9ywY0zYsx9aI37BaeA4V
	CQxps84ZmO/QEug6/d3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZiew-0002Zf-Bg; Tue, 26 Nov 2019 21:46:10 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZien-0002Z5-KX
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 21:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574804757; bh=ayuTHAY+hrJkpnkLRJINl7ENLTS1Zur7p3Jq1ISHp2Q=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=Z3qXzv/O3SYbEixrKlvHyyL09gNT5vLKKJjl/vq4otAMu+mlquQJ8a5wAj/cJVsWm
 ETm6Op5i2/z21fDH0kyV3qIJebXojimVr9xu4wTr5oKJdVdBFNHgZTERYd1M92RN11
 1nuZ4j/aPHycRyuJDFoiPjjx1Xv2F3TK/cjuRU+U=
Date: Tue, 26 Nov 2019 22:45:57 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] arm: Fix topology setup in case of CPU hotplug for
 CONFIG_SCHED_MC
Message-ID: <20191126214557.53afmorihwqimq2n@core.my.home>
Mail-Followup-To: Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Atish Patra <atish.patra@wdc.com>,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20191120104212.14791-1-dietmar.eggemann@arm.com>
 <20191124214753.m6lwcdemnddltctw@core.my.home>
 <50dfafee-55c3-767c-55f4-7d263feafe87@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50dfafee-55c3-767c-55f4-7d263feafe87@arm.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_134602_021873_62C275C0 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTE6NDI6MDJBTSArMDEwMCwgRGlldG1hciBFZ2dlbWFu
biB3cm90ZToKPiBPbiAyNC8xMS8yMDE5IDIyOjQ3LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+
IEhlbGxvLAo+ID4gCj4gPiBPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCAxMDo0MjoxMkFNICswMDAw
LCBEaWV0bWFyIEVnZ2VtYW5uIHdyb3RlOgo+IAo+IFsuLi5dCj4gCj4gPj4gRml4ZXM6IGNhNzRi
MzE2ZGY5NiAoImFybTogVXNlIGNvbW1vbiBjcHVfdG9wb2xvZ3kgc3RydWN0dXJlIGFuZCBmdW5j
dGlvbnMiKQo+ID4+IFNpZ25lZC1vZmYtYnk6IERpZXRtYXIgRWdnZW1hbm4gPGRpZXRtYXIuZWdn
ZW1hbm5AYXJtLmNvbT4KPiA+IAo+ID4gVGhpcyBmaXhlcyBDUFUgaG90cGx1ZyBhbmQgY29ycmVz
cG9uZGVudCBzdXNwZW5kIHRvIHJhbS9yZXN1bWUgZmFpbHVyZXMgKHRoYXQKPiA+IGRpc2FibGVz
IGFuZCByZS1lbmFibGVzIG5vbi1ib290IENQVXMpIG9uIEE4M1QgU29DLCB0aGF0IEkndmUgc2Vl
biBzaW5jZQo+ID4gNS40LXJjMS4KPiA+IAo+ID4gVGVzdGVkLWJ5OiBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KPiAKPiBUaGFua3MgZm9yIHRlc3RpbmchIFdoaWNoIENwdWZyZXEg
ZHJpdmVyIGlzIHlvdXIgc3lzdGVtIHVzaW5nPwoKSGVsbG8sCgppdCdzIHVzaW5nIGNwdWZyZXEt
ZHQuCgpyZWdhcmRzLAoJby4KCj4gWy4uLl0KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
