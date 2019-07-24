Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E440728D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Q/Elqb2Nz896lkhOhy56vWYvpDTwuX9v/J3/ECP2Ds=; b=RzGpf4DQn2ByouHbZgwFR6vRo
	MoSzEfswGZue9K4hfhP1dryncRR4NkLKe43GqIGnfYG669KGGv8M4XhPa98OJFGnEQOmJJ9kITcBl
	2edv9KlazcZHjZMT95/oJ9TXG+UNbwqsYXu6mhctL6JG8B5jaurps6FMagerbnsx8/7c3OBbMmtYn
	cnlDjYw031DrS6slTCYBTAk//gcVRjLSTWzoTDl7uLML2ZMh1yB2CQ9aOok1zXha6ta5/t7vE0l0P
	0uAvxF5+OMADv9aeJ39Gkae35cas+7HHjq6aTWN1akhuoP8grIVtR8ThDIQXhraTB6majV6gKSrNj
	BbA6lVHoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBOl-00021w-2o; Wed, 24 Jul 2019 07:09:15 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBMp-0001lI-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:07:20 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8A41A3179174;
 Wed, 24 Jul 2019 07:07:12 +0000 (UTC)
Received: from [10.72.12.106] (ovpn-12-106.pek2.redhat.com [10.72.12.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC5A260148;
 Wed, 24 Jul 2019 07:06:59 +0000 (UTC)
Subject: Re: KASAN: use-after-free Read in finish_task_switch (2)
To: syzbot <syzbot+7f067c796eee2acbc57a@syzkaller.appspotmail.com>,
 aarcange@redhat.com, akpm@linux-foundation.org, christian@brauner.io,
 davem@davemloft.net, ebiederm@xmission.com, elena.reshetova@intel.com,
 guro@fb.com, hch@infradead.org, james.bottomley@hansenpartnership.com,
 jglisse@redhat.com, keescook@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-parisc@vger.kernel.org, luto@amacapital.net,
 mhocko@suse.com, mingo@kernel.org, mst@redhat.com, namit@vmware.com,
 peterz@infradead.org, syzkaller-bugs@googlegroups.com, wad@chromium.org,
 yuehaibing@huawei.com
References: <00000000000027494e058e0b4b3f@google.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <fc935344-4f35-3f05-dc33-398655b38330@redhat.com>
Date: Wed, 24 Jul 2019 15:06:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <00000000000027494e058e0b4b3f@google.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 24 Jul 2019 07:07:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_000716_870326_335B8088 
X-CRM114-Status: GOOD (  11.42  )
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

Ck9uIDIwMTkvNy8yMCDkuIrljYgxMjozNCwgc3l6Ym90IHdyb3RlOgo+IHN5emJvdCBoYXMgYmlz
ZWN0ZWQgdGhpcyBidWcgdG86Cj4KPiBjb21taXQgN2Y0NjYwMzJkYzllNWE2MTIxN2YyMmVhMzRi
MmRmOTMyNzg2YmJmYwo+IEF1dGhvcjogSmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4K
PiBEYXRlOsKgwqAgRnJpIE1heSAyNCAwODoxMjoxOCAyMDE5ICswMDAwCj4KPiDCoMKgwqAgdmhv
c3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5lbCB2aXJ0dWFsIGFkZHJlc3MKPgo+
IGJpc2VjdGlvbiBsb2c6IAo+IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0
LnR4dD94PTEyM2ZhZjcwNjAwMDAwCj4gc3RhcnQgY29tbWl0OsKgwqAgMjIwNTFkOWMgTWVyZ2Ug
dGFnICdwbGF0Zm9ybS1kcml2ZXJzLXg4Ni12NS4zLTInIG9mIAo+IGdpdDovLy4uCj4gZ2l0IHRy
ZWU6wqDCoMKgwqDCoMKgIHVwc3RyZWFtCj4gZmluYWwgY3Jhc2g6IGh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL3gvcmVwb3J0LnR4dD94PTExM2ZhZjcwNjAwMDAwCj4gY29uc29sZSBvdXRw
dXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTE2M2ZhZjcwNjAw
MDAwCj4ga2VybmVsIGNvbmZpZzogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29u
ZmlnP3g9MTM1Y2I4MjZhYzU5ZDdmYwo+IGRhc2hib2FyZCBsaW5rOiAKPiBodHRwczovL3N5emth
bGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9N2YwNjdjNzk2ZWVlMmFjYmM1N2EKPiBzeXogcmVw
cm86IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTJjMTg5OGZh
MDAwMDAKPgo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrN2YwNjdjNzk2ZWVlMmFjYmM1N2FAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQo+IEZpeGVzOiA3ZjQ2NjAzMmRjOWUgKCJ2aG9zdDogYWNjZXNz
IHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwgCj4gYWRkcmVzcyIpCj4KPiBGb3Ig
aW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOiAKPiBodHRwczovL2dvby5n
bC90cHNtRUojYmlzZWN0aW9uCgoKI3N5eiBkdXA6IFdBUk5JTkcgaW4gX19tbWRyb3AKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
