Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF91E9BA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dlsnpXEeLhDaph60ldwYXPduOHpkresX4AQde0gysOg=; b=QEkypjQygJHhEGmRqFK/fMQ96
	fCWL3DDchSaqIgIisbdOt0siDAUXwCy3rXnqIGaeUVK6IqM1B2hSt01fHw1Jx56XKTLA9+xBc9N0h
	HRhIsy/AQtrzgo+tnAy+lzBglyNGFpGlSkYC3gUCPrSv0Qvji9DOUfwj5af7kqvm+o/+aj44AZHjA
	L5u8C9HTkPAE+C+/9PYxNlSPOBh8C7NnsKMOBalnCrtKM3u4NwcTb+77/DUfEeu3pVYdqPEu/LwZe
	DnNgLU0sZOp/9kTG6iUUjQprugIW90QqeDk0t0CSXFjzh+p/Rl7U8CY68HOxH+4aq3ODJpXF/24ts
	KkuQkZFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnF4-0004Te-Lp; Wed, 30 Oct 2019 12:38:26 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnEt-0004SY-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572439091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6kXC/DdCrpdBKqMYmkHslPlgE2ofWEAqB7mMF3nBAk=;
 b=if0Klc2CcU1zNlopw3Nzdr8gKlI8D5YP4jbIA2xe4i+eN9rKEMFPmTrimfGsHQTuOINjVz
 yx5P4GPOM7trI/q0NZ/+MlE9Th0CWmgFeOSWAV2LCsfTynQskB4syelqDfp2mUP3JU+K+Q
 u2M8TG2eeMedszwNoK6zABdUgI/INS8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-97m4IQcrMGy0NJJmB8pIKA-1; Wed, 30 Oct 2019 08:37:16 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADBF51800D55;
 Wed, 30 Oct 2019 12:37:15 +0000 (UTC)
Received: from localhost.localdomain (ovpn-121-15.rdu2.redhat.com
 [10.10.121.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3493819486;
 Wed, 30 Oct 2019 12:37:09 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e4=2e0-?=
 =?UTF-8?Q?rc5-34072e5=2ecki_=28arm-next=29?=
To: Jan Stancek <jstancek@redhat.com>, CKI Project <cki-project@redhat.com>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <20191030100631.GA17773@willie-the-truck>
 <845770535.9696874.1572433354366.JavaMail.zimbra@redhat.com>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <03a9657f-c25b-8ad5-aadb-3d066c291751@redhat.com>
Date: Wed, 30 Oct 2019 08:37:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <845770535.9696874.1572433354366.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 97m4IQcrMGy0NJJmB8pIKA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_053815_850960_1B83F5A1 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC8zMC8xOSA3OjAyIEFNLCBKYW4gU3RhbmNlayB3cm90ZToKPgo+IC0tLS0tIE9yaWdp
bmFsIE1lc3NhZ2UgLS0tLS0KPj4gSGkgYWxsLAo+Pgo+PiBPbiBUdWUsIE9jdCAyOSwgMjAxOSBh
dCAxMTo0MzoxM1BNIC0wMDAwLCBDS0kgUHJvamVjdCB3cm90ZToKPj4+IFdlIHJhbiBhdXRvbWF0
ZWQgdGVzdHMgb24gYSByZWNlbnQgY29tbWl0IGZyb20gdGhpcyBrZXJuZWwgdHJlZToKPj4+Cj4+
PiAgICAgICAgIEtlcm5lbCByZXBvOgo+Pj4gICAgICAgICBnaXQ6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4+PiAgICAgICAgICAgICAg
Q29tbWl0OiAzNDA3MmU1MmEzZmMgLSBNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJhbmNoCj4+PiAg
ICAgICAgICAgICAgJ2FybTY0L2Zvci1uZXh0L21lbW9yeS1ob3RyZW1vdmUnIGludG8gZm9yLWtl
cm5lbGNpCj4+Pgo+Pj4gVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBw
cm92aWRlZCBiZWxvdy4KPj4+Cj4+PiAgICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBk
ZXRhaWxzIGJlbG93KQo+Pj4gICAgICAgICAgICAgICBNZXJnZTogT0sKPj4+ICAgICAgICAgICAg
IENvbXBpbGU6IE9LCj4+PiAgICAgICAgICAgICAgIFRlc3RzOiBGQUlMRUQKPj4+Cj4+PiBBbGwg
a2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9y
IGRvd25sb2FkCj4+PiBoZXJlOgo+Pj4KPj4+ICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9q
ZWN0Lm9yZy9waXBlbGluZXMvMjU1MzYyCj4+Pgo+Pj4gT25lIG9yIG1vcmUga2VybmVsIHRlc3Rz
IGZhaWxlZDoKPj4+Cj4+PiAgICAgIGFhcmNoNjQ6Cj4+PiAgICAgICDinYwgTFRQIGxpdGUKPj4g
QXMgZmFyIGFzIEkgY2FuIG1ha2Ugb3V0IGZyb20gdGhlIGxvZ3MsIHRoaXMgaXMgYmVjYXVzZSB0
aGUgZm9sbG93aW5nCj4+IHN5c2NhbGwgdGVzdHMgZmFpbGVkOgo+Pgo+PiAJcHJlYWR2MjAyCj4+
IAlwcmVhZHYyMDJfNjQKPj4gCXJlYWR2MDIKPiBAQ0tJOiBUaGVyZSBzZWVtIHRvIGJlIG9ubHkg
aGlnaCBsZXZlbCB0ZXN0IHN0YXR1cz8KPiAgICAgICAgQ2FuIHlvdSB1cGxvYWQgYWxzbyB2ZXJi
b3NlIHRlc3Qgb3V0cHV0IHRvIGFydGlmYWN0cz8KPgo+IFRoZSBmaWxlIGlzIHVzdWFsbHkgbmFt
ZWQgKi5ydW4ubG9nLiBJdCBnaXZlcyBtdWNoIGJldHRlciBkZXRhaWxzIGZvciBmYWlsdXJlczoK
Pgo+IHRzdF90ZXN0LmM6MTExNjogSU5GTzogVGltZW91dCBwZXIgcnVuIGlzIDBoIDA1bSAwMHMK
PiBwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBhcyBleHBlY3RlZDogRUlO
VkFMICgyMikKPiBwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBhcyBleHBl
Y3RlZDogRUlOVkFMICgyMikKPiBwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxl
ZCBhcyBleHBlY3RlZDogRU9QTk9UU1VQUCAoOTUpCj4gcHJlYWR2MjAyLmM6ODY6IEZBSUw6IHBy
ZWFkdjIoKSBmYWlsZWQgdW5leHBlY3RlZGx5LCBleHBlY3RlZCBFRkFVTFQ6IFNVQ0NFU1MgKDAp
Cj4gcHJlYWR2MjAyLmM6ODI6IFBBU1M6IHByZWFkdjIoKSBmYWlsZWQgYXMgZXhwZWN0ZWQ6IEVC
QURGICg5KQo+IHByZWFkdjIwMi5jOjgyOiBQQVNTOiBwcmVhZHYyKCkgZmFpbGVkIGFzIGV4cGVj
dGVkOiBFQkFERiAoOSkKPiBwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2MigpIGZhaWxlZCBh
cyBleHBlY3RlZDogRUlTRElSICgyMSkKPiBwcmVhZHYyMDIuYzo4MjogUEFTUzogcHJlYWR2Migp
IGZhaWxlZCBhcyBleHBlY3RlZDogRVNQSVBFICgyOSkKWWVzIHNvcnJ5IGFib3V0IHRoYXQsIHdl
J2xsIHdvcmsgb24gdXBsb2FkaW5nIHRoZSBtaXNzaW5nIGxvZ3MgZm9yIExUUC4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
