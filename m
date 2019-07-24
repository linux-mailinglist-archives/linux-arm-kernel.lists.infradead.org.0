Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0A72454
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 04:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bl09SUpQAXI3lgCOcoWmWvYbUAJeGwRn5Az73fVGWLE=; b=qw18n/4krZDBUWwn/l2oD8lTb
	IEsjjrHgJKKW05XaVlpVZYP3Nol1sPg0YQDix4ZRLHeHtl8mPn/T7RSoQRNnzgNQV9j4Pun33VIcf
	fZC25YoRDKHDTdjFq2tRIex5vQPxiqFGDolrqCRtOpB3ngV+6yx+G9lqc3+xFPZ2j2QS1XlexWu1f
	wNI+Ysa1V7GkUxt+pNnx49AR2/widYBWb95Ca6t6AzOXAV4Wccbh5xCRxLSgbCQMG3Vnzl+sql9qC
	W1fDJasqVDrhpaHqpmTlyAUnD9yYFGlQW+wSwy/SA2ZjPocw4PAPeA98nQKXAdYnuhgPMCANgk1SM
	e2QY6OEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6qc-0004FK-FD; Wed, 24 Jul 2019 02:17:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6qP-0004Ev-H7
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 02:17:30 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A97D381DF1;
 Wed, 24 Jul 2019 02:17:28 +0000 (UTC)
Received: from [10.72.12.167] (ovpn-12-167.pek2.redhat.com [10.72.12.167])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2233F60497;
 Wed, 24 Jul 2019 02:17:16 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
Date: Wed, 24 Jul 2019 10:17:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723110219-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 24 Jul 2019 02:17:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_191729_607512_63E2C642 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yMyDkuIvljYgxMTowMiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+IE9u
IFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDA5OjM0OjI5UE0gKzA4MDAsIEphc29uIFdhbmcgd3JvdGU6
Cj4+IE9uIDIwMTkvNy8yMyDkuIvljYg2OjI3LCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4+
Pj4gWWVzLCBzaW5jZSB0aGVyZSBjb3VsZCBiZSBtdWx0aXBsZSBjby1jdXJyZW50IGludmFsaWRh
dGlvbiByZXF1ZXN0cy4gV2UgbmVlZAo+Pj4+IGNvdW50IHRoZW0gdG8gbWFrZSBzdXJlIHdlIGRv
bid0IHBpbiB3cm9uZyBwYWdlcy4KPj4+Pgo+Pj4+Cj4+Pj4+IEkgYWxzbyB3b25kZXIgYWJvdXQg
b3JkZXJpbmcuIGt2bSBoYXMgdGhpczoKPj4+Pj4gICAgICAgICAgIC8qCj4+Pj4+ICAgICAgICAg
ICAgICogVXNlZCB0byBjaGVjayBmb3IgaW52YWxpZGF0aW9ucyBpbiBwcm9ncmVzcywgb2YgdGhl
IHBmbiB0aGF0IGlzCj4+Pj4+ICAgICAgICAgICAgICogcmV0dXJuZWQgYnkgcGZuX3RvX3Bmbl9w
cm90IGJlbG93Lgo+Pj4+PiAgICAgICAgICAgICAqLwo+Pj4+PiAgICAgICAgICAgIG1tdV9zZXEg
PSBrdm0tPm1tdV9ub3RpZmllcl9zZXE7Cj4+Pj4+ICAgICAgICAgICAgLyoKPj4+Pj4gICAgICAg
ICAgICAgKiBFbnN1cmUgdGhlIHJlYWQgb2YgbW11X25vdGlmaWVyX3NlcSBpc24ndCByZW9yZGVy
ZWQgd2l0aCBQVEUgcmVhZHMgaW4KPj4+Pj4gICAgICAgICAgICAgKiBnZm5fdG9fcGZuX3Byb3Qo
KSAod2hpY2ggY2FsbHMgZ2V0X3VzZXJfcGFnZXMoKSksIHNvIHRoYXQgd2UgZG9uJ3QKPj4+Pj4g
ICAgICAgICAgICAgKiByaXNrIHRoZSBwYWdlIHdlIGdldCBhIHJlZmVyZW5jZSB0byBnZXR0aW5n
IHVubWFwcGVkIGJlZm9yZSB3ZSBoYXZlIGEKPj4+Pj4gICAgICAgICAgICAgKiBjaGFuY2UgdG8g
Z3JhYiB0aGUgbW11X2xvY2sgd2l0aG91dCBtbXVfbm90aWZpZXJfcmV0cnkoKSBub3RpY2luZy4K
Pj4+Pj4gICAgICAgICAgICAgKgo+Pj4+PiAgICAgICAgICAgICAqIFRoaXMgc21wX3JtYigpIHBh
aXJzIHdpdGggdGhlIGVmZmVjdGl2ZSBzbXBfd21iKCkgb2YgdGhlIGNvbWJpbmF0aW9uCj4+Pj4+
ICAgICAgICAgICAgICogb2YgdGhlIHB0ZV91bm1hcF91bmxvY2soKSBhZnRlciB0aGUgUFRFIGlz
IHphcHBlZCwgYW5kIHRoZQo+Pj4+PiAgICAgICAgICAgICAqIHNwaW5fbG9jaygpIGluIGt2bV9t
bXVfbm90aWZpZXJfaW52YWxpZGF0ZV88cGFnZXxyYW5nZV9lbmQ+KCkgYmVmb3JlCj4+Pj4+ICAg
ICAgICAgICAgICogbW11X25vdGlmaWVyX3NlcSBpcyBpbmNyZW1lbnRlZC4KPj4+Pj4gICAgICAg
ICAgICAgKi8KPj4+Pj4gICAgICAgICAgICBzbXBfcm1iKCk7Cj4+Pj4+Cj4+Pj4+IGRvZXMgdGhp
cyBhcHBseSB0byB1cz8gQ2FuJ3Qgd2UgdXNlIGEgc2VxbG9jayBpbnN0ZWFkIHNvIHdlIGRvCj4+
Pj4+IG5vdCBuZWVkIHRvIHdvcnJ5Pwo+Pj4+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBrdm0gTU1V
IGludGVybmFscywgYnV0IHdlIGRvIGV2ZXJ5dGhpbmcgdW5kZXIgb2YKPj4+PiBtbXVfbG9jay4K
Pj4+Pgo+Pj4+IFRoYW5rcwo+Pj4gSSBkb24ndCB0aGluayB0aGlzIGhlbHBzIGF0IGFsbC4KPj4+
Cj4+PiBUaGVyZSdzIG5vIGxvY2sgYmV0d2VlbiBjaGVja2luZyB0aGUgaW52YWxpZGF0ZSBjb3Vu
dGVyIGFuZAo+Pj4gZ2V0IHVzZXIgcGFnZXMgZmFzdCB3aXRoaW4gdmhvc3RfbWFwX3ByZWZldGNo
LiBTbyBpdCdzIHBvc3NpYmxlCj4+PiB0aGF0IGdldCB1c2VyIHBhZ2VzIGZhc3QgcmVhZHMgUFRF
cyBzcGVjdWxhdGl2ZWx5IGJlZm9yZQo+Pj4gaW52YWxpZGF0ZSBpcyByZWFkLgo+Pj4KPj4+IC0t
IAo+Pgo+PiBJbiB2aG9zdF9tYXBfcHJlZmV0Y2goKSB3ZSBkbzoKPj4KPj4gIMKgwqDCoMKgwqDC
oMKgIHNwaW5fbG9jaygmdnEtPm1tdV9sb2NrKTsKPj4KPj4gIMKgIMKgIMKgIMKgIC4uLgo+Pgo+
PiAgwqDCoMKgwqDCoMKgwqAgZXJyID0gLUVGQVVMVDsKPj4gIMKgwqDCoMKgwqDCoMKgIGlmICh2
cS0+aW52YWxpZGF0ZV9jb3VudCkKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIGVycjsKPj4KPj4gIMKgwqDCoMKgwqDCoMKgIC4uLgo+Pgo+PiAgwqDCoMKgwqDCoMKgwqAg
bnBpbm5lZCA9IF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCh1YWRkci0+dWFkZHIsIG5wYWdlcywKPj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1YWRkci0+d3JpdGUsIHBhZ2VzKTsKPj4KPj4gIMKgwqDC
oMKgwqDCoMKgIC4uLgo+Pgo+PiAgwqDCoMKgIMKgwqDCoCBzcGluX3VubG9jaygmdnEtPm1tdV9s
b2NrKTsKPj4KPj4gSXMgdGhpcyBub3Qgc3VmZmljaWVudD8KPj4KPj4gVGhhbmtzCj4gU28gd2hh
dCBvcmRlcnMgX19nZXRfdXNlcl9wYWdlc19mYXN0IHdydCBpbnZhbGlkYXRlX2NvdW50IHJlYWQ/
CgoKU28gaW4gaW52YWxpZGF0ZV9lbmQoKSBjYWxsYmFjayB3ZSBoYXZlOgoKc3Bpbl9sb2NrKCZ2
cS0+bW11X2xvY2spOwotLXZxLT5pbnZhbGlkYXRlX2NvdW50OwogwqDCoMKgwqDCoMKgwqAgc3Bp
bl91bmxvY2soJnZxLT5tbXVfbG9jayk7CgoKU28gZXZlbiBQVEUgaXMgcmVhZCBzcGVjdWxhdGl2
ZWx5IGJlZm9yZSByZWFkaW5nIGludmFsaWRhdGVfY291bnQgKG9ubHkgCmluIHRoZSBjYXNlIG9m
IGludmFsaWRhdGVfY291bnQgaXMgemVybykuIFRoZSBzcGlubG9jayBoYXMgZ3VhcmFudGVlZCAK
dGhhdCB3ZSB3b24ndCByZWFkIGFueSBzdGFsZSBQVEVzLgoKVGhhbmtzCgoKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
