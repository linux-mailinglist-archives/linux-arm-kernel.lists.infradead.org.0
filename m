Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3917D728D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jcOZHIzpzUL+eq/QhDitniMx9I17RuzSEFMM68J5eR0=; b=Yqk+Lc3nw8zG9dt55MzF9SK7s
	qq+9UYGl0sc6Uu9ZIaWITVAQjgPK+owMyuIShgOusSiOmBtJVxeBXuKIYmfkqsgSXv2zEWciIrhHm
	6YGc+wGMc+CBjdSxOrd9cLNP7JWStvvjzusIWBBgmfCCbQvY+u/SK00ZLk1pVJnxJTmq3f00qDXhn
	rZUbOAy8zAVmAZFyt0sabhvi/WcGbbywtBpfJxxedzQHcbSW6/MMeclBQA1X1A/QTRROjgnf6ksZf
	MjjAXCtYceKdvAZYceTYPIZHaDw0c744hf50Z/rQ1opg6kRc1DbjOYh9/jJD+RJpTxARQhhmIcnV3
	MEQwy8mjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBPG-0002GQ-Ia; Wed, 24 Jul 2019 07:09:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBNI-0001s4-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:07:48 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7E16030832EA;
 Wed, 24 Jul 2019 07:07:44 +0000 (UTC)
Received: from [10.72.12.106] (ovpn-12-106.pek2.redhat.com [10.72.12.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59983608A5;
 Wed, 24 Jul 2019 07:07:38 +0000 (UTC)
Subject: Re: KASAN: use-after-free Write in tlb_finish_mmu
To: syzbot <syzbot+8267e9af795434ffadad@syzkaller.appspotmail.com>,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 james.bottomley@hansenpartnership.com, jglisse@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-parisc@vger.kernel.org, mst@redhat.com,
 syzkaller-bugs@googlegroups.com
References: <0000000000002c183d058e0e3abd@google.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <e003d427-36ef-a6bc-e433-36d90080e3cb@redhat.com>
Date: Wed, 24 Jul 2019 15:07:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0000000000002c183d058e0e3abd@google.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 24 Jul 2019 07:07:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_000746_208792_A25BF556 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yMCDkuIrljYg0OjA0LCBzeXpib3Qgd3JvdGU6Cj4gc3l6Ym90IGhhcyBiaXNl
Y3RlZCB0aGlzIGJ1ZyB0bzoKPgo+IGNvbW1pdCA3ZjQ2NjAzMmRjOWU1YTYxMjE3ZjIyZWEzNGIy
ZGY5MzI3ODZiYmZjCj4gQXV0aG9yOiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+
IERhdGU6wqDCoCBGcmkgTWF5IDI0IDA4OjEyOjE4IDIwMTkgKzAwMDAKPgo+IMKgwqDCoCB2aG9z
dDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+Cj4g
YmlzZWN0aW9uIGxvZzogCj4gaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3Qu
dHh0P3g9MTE2NDJhNTg2MDAwMDAKPiBzdGFydCBjb21taXQ6wqDCoCAyMjA1MWQ5YyBNZXJnZSB0
YWcgJ3BsYXRmb3JtLWRyaXZlcnMteDg2LXY1LjMtMicgb2YgCj4gZ2l0Oi8vLi4KPiBnaXQgdHJl
ZTrCoMKgwqDCoMKgwqAgdXBzdHJlYW0KPiBmaW5hbCBjcmFzaDogaHR0cHM6Ly9zeXprYWxsZXIu
YXBwc3BvdC5jb20veC9yZXBvcnQudHh0P3g9MTM2NDJhNTg2MDAwMDAKPiBjb25zb2xlIG91dHB1
dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTU2NDJhNTg2MDAw
MDAKPiBrZXJuZWwgY29uZmlnOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25m
aWc/eD1kODMxYjljYmU4MmU3OWU0Cj4gZGFzaGJvYXJkIGxpbms6IAo+IGh0dHBzOi8vc3l6a2Fs
bGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD04MjY3ZTlhZjc5NTQzNGZmYWRhZAo+IHVzZXJzcGFj
ZSBhcmNoOiBpMzg2Cj4gc3l6IHJlcHJvOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94
L3JlcHJvLnN5ej94PTEwZDU4Nzg0NjAwMDAwCj4KPiBSZXBvcnRlZC1ieTogc3l6Ym90KzgyNjdl
OWFmNzk1NDM0ZmZhZGFkQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiBGaXhlczogN2Y0NjYw
MzJkYzllICgidmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFs
IAo+IGFkZHJlc3MiKQo+Cj4gRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9jZXNz
IHNlZTogCj4gaHR0cHM6Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgoKCiNzeXogZHVwOiBXQVJO
SU5HIGluIF9fbW1kcm9wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
