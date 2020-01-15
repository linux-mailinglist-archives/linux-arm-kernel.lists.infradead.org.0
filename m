Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E16213CBC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MV4+Q5XOv/8XsOpRdd9W9Rw0hJo7JF4glwUX2/vsDtM=; b=KNYjPB2SnVhP9dh5jwlZGXQQV
	DEuLwA+RpW4ZdnR8uk8Wk6Jy9R3Aw8+0C7FBiGROmMCmUFVVgU86BPPwcKviy0tAvNS/O2AK0+dHo
	GDsA7MS+i2WrsBqXocYPfmf/3sg4byq9SPAHBomzNB7ez1lNTbGv1Hh+RcyR43g6edFLiUP6qqMg5
	rZUKKjipE4gqnCY74NOs/k1ONJJBL75GnOZYwilNYi/EK8OHeBhYaKQVNM/V7xXxeROLhBl2EbJ04
	7r1XFv/b/BYP3FJ5OMKhPGSmgnLLuyV04LxcG1tdK5QISu7fbApOt5QpEfLd9jLWX2l/jxeJJEfcU
	KclpMQ3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnAI-00005W-Bg; Wed, 15 Jan 2020 18:13:14 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnA7-0008WH-IP
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579111981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sHDPRsAgKSFMODtH3BOJDkPbUo+RQoM1fZTq0zNz7pQ=;
 b=KvCgI8/EE/F6cx31LSvJ7QAOVJ4ZObqu3D8SEDGPN5e/Bm5S7sZp0QEWoTGDFWgyqp9yJv
 S0Yfcohgtyc4TSPRy+4AdfcvgdaK829OOIDHTwF1uSivwaLokHuiFbMHIxgkgLvWZG3RpX
 gpFTRYt1jXDw8KYI1JXB65pcDzDSWVI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-YnEgEZnTOJ6Kp3DRcRtWEQ-1; Wed, 15 Jan 2020 13:11:12 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06A751092463;
 Wed, 15 Jan 2020 18:11:11 +0000 (UTC)
Received: from localhost.localdomain (ovpn-120-211.rdu2.redhat.com
 [10.10.120.211])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC4B480F68;
 Wed, 15 Jan 2020 18:11:07 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e5=2e0-?=
 =?UTF-8?Q?rc6-e31626d=2ecki_=28arm-next=29?=
To: Will Deacon <will@kernel.org>, CKI Project <cki-project@redhat.com>
References: <cki.8C73ABC341.AD9Q7PNV7C@redhat.com>
 <20200115175414.GB31673@willie-the-truck>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <5d991a60-f98e-cc47-7188-d996d0832bb3@redhat.com>
Date: Wed, 15 Jan 2020 13:11:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115175414.GB31673@willie-the-truck>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: YnEgEZnTOJ6Kp3DRcRtWEQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_101303_676160_5BEFE4B7 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianlin Shi <jishi@redhat.com>, catalin.marinas@arm.com,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzE1LzIwIDEyOjU0IFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPiBIaSwKPiAKPiBPbiBX
ZWQsIEphbiAxNSwgMjAyMCBhdCAwNTozODoyNlBNIC0wMDAwLCBDS0kgUHJvamVjdCB3cm90ZToK
Pj4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtl
cm5lbCB0cmVlOgo+Pgo+PiAgICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4+ICAgICAgICAgICAg
ICBDb21taXQ6IGUzMTYyNmQ0NDNkYiAtIE1lcmdlIGJyYW5jaGVzICdmb3ItbmV4dC9hc20tYW5u
b3RhdGlvbnMnLCAnZm9yLW5leHQvY3B1ZmVhdHVyZXMnLCAnZm9yLW5leHQvZTBwZCcsICdmb3It
bmV4dC9rZXhlYy9jbGVhbnVwJywgJ2Zvci1uZXh0L2tleGVjL2ZpbGUta2R1bXAnLCAnZm9yLW5l
eHQvbWlzYycsICdmb3ItbmV4dC9ub2Zwc2ltZCcgYW5kICdmb3ItbmV4dC9wZXJmJyBpbnRvIGZv
ci1rZXJuZWxjaQo+Pgo+PiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJl
IHByb3ZpZGVkIGJlbG93Lgo+Pgo+PiAgICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBk
ZXRhaWxzIGJlbG93KQo+PiAgICAgICAgICAgICAgIE1lcmdlOiBPSwo+PiAgICAgICAgICAgICBD
b21waWxlOiBPSwo+PiAgICAgICAgICAgICAgIFRlc3RzOiBGQUlMRUQKPj4KPj4gQWxsIGtlcm5l
bCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3du
bG9hZCBoZXJlOgo+Pgo+PiAgICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlw
ZWxpbmVzLzM4Mzc4Nwo+Pgo+PiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+Pgo+
PiAgICAgIGFhcmNoNjQ6Cj4+ICAgICAgIOKdjCBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJh
c2ljIHRlc3QKPj4gICAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKPiAKPiAK
PiBIbW0uIElmIEkgbG9vayBhdCB0aGUgZmlsZXMgY29ycmVzcG9uZGluZyB0byB0aG9zZSB0ZXN0
cyBpbiB0aGUgbG9ncyBsaW5rZWQKPiB0byBhYm92ZSwgdGhleSBhbGwgc2VlbSB0byBoYXZlIHBh
c3NlZC4gRm9yIGV4YW1wbGU6Cj4gCj4gaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3Jn
L3BpcGVsaW5lcy8zODM3ODcvbG9ncy9hYXJjaDY0X2hvc3RfMV9OZXR3b3JraW5nX3R1bm5lbF9f
Z3JlX2Jhc2ljX3Jlc3VsdG91dHB1dGZpbGUubG9nCj4gCj4gQW0gSSBtaXNzaW5nIHNvbWV0aGlu
Zz8KCkhpIFdpbGwsCgpUaGlzIGlzIGFuIGluZnJhc3RydWN0dXJlIHByb2JsZW0gd2l0aCByZXN0
cmFpbnQgaGFybmVzcywgaXQncyB0YWtpbmcgdG9vIGxvbmcgZXh0cmFjdGluZyB0aGUgdGVzdHMt
YmVha2VyCnJlcG8gd2hlcmUgb3VyIHRlc3RzIGxpdmUgYW5kIHdhdGNoZG9nIGlzIGFib3J0aW5n
IHRoZSB0ZXN0cyBkdXJpbmcgc2V0dXAgcGhhc2UuIFdlIGFyZSBhY3RpdmVseSBkZWJ1Z2dpbmcK
dGhpcyBwcm9ibGVtLiBGZWVsIGZyZWUgdG8gaWdub3JlIHRoZXNlIGZhaWx1cmVzLCBzb3JyeSBm
b3IgdGhlIG5vaXNlIQoKLVJhY2hlbAoKPiAKPiBDaGVlcnMsCj4gCj4gV2lsbAo+IAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
