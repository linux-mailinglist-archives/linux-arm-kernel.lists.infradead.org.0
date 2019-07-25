Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EF274863
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nQot0XFQxxq3yjymhkDO0y9pYw+Ks0hMXKpLegHTfw4=; b=kqE3U97W7ow8jXQ28Lxiz9Ce9
	myQBfVhdhPK7AUomrkJOgAm19lHvgh3zc9XXYLWDvkfZlg+9XLJTBwEUQHkPTFZj4SiEn4xugMH/d
	Kl3de0tstgIllWstpFeoVoMH/7zgBM2dxgtN2W+5X/GXX1omeE4mLgDZMIIXelFeMTFMoWnrUR6D7
	E9GReNwbbiPdLP5bBvet8Qo1m9Z5Db2dPxozaolPnrflDl99dIp5CHggaZO2PZnaogQ9Tua6ag93i
	yI61uWycZXn78fQG04uq7/m35QQCSq/cIVFdjRiiiL20X3PwBCJCQhCaeQqqrjnVHCLuRqv6tWbMs
	MNbbn1AYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYRv-0000as-0q; Thu, 25 Jul 2019 07:46:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYRd-0000aE-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 07:45:46 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 356623084246;
 Thu, 25 Jul 2019 07:45:44 +0000 (UTC)
Received: from [10.72.12.18] (ovpn-12-18.pek2.redhat.com [10.72.12.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2591B5C6D2;
 Thu, 25 Jul 2019 07:45:16 +0000 (UTC)
Subject: Re: WARNING in __mmdrop
To: "Michael S. Tsirkin" <mst@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190722141152.GA13711@ziepe.ca>
 <20190725015402-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <6389178e-35f2-28a1-4d36-3696bcde6af0@redhat.com>
Date: Thu, 25 Jul 2019 15:44:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725015402-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 25 Jul 2019 07:45:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_004545_304363_19B9AEB6 
X-CRM114-Status: GOOD (  15.02  )
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

Ck9uIDIwMTkvNy8yNSDkuIvljYgyOjAyLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gT24g
TW9uLCBKdWwgMjIsIDIwMTkgYXQgMTE6MTE6NTJBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdy
b3RlOgo+PiBPbiBTdW4sIEp1bCAyMSwgMjAxOSBhdCAwNjowMjo1MkFNIC0wNDAwLCBNaWNoYWVs
IFMuIFRzaXJraW4gd3JvdGU6Cj4+PiBPbiBTYXQsIEp1bCAyMCwgMjAxOSBhdCAwMzowODowMEFN
IC0wNzAwLCBzeXpib3Qgd3JvdGU6Cj4+Pj4gc3l6Ym90IGhhcyBiaXNlY3RlZCB0aGlzIGJ1ZyB0
bzoKPj4+Pgo+Pj4+IGNvbW1pdCA3ZjQ2NjAzMmRjOWU1YTYxMjE3ZjIyZWEzNGIyZGY5MzI3ODZi
YmZjCj4+Pj4gQXV0aG9yOiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+Pj4+IERh
dGU6ICAgRnJpIE1heSAyNCAwODoxMjoxOCAyMDE5ICswMDAwCj4+Pj4KPj4+PiAgICAgIHZob3N0
OiBhY2Nlc3MgdnEgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwgdmlydHVhbCBhZGRyZXNzCj4+Pj4K
Pj4+PiBiaXNlY3Rpb24gbG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNl
Y3QudHh0P3g9MTQ5YThhMjA2MDAwMDAKPj4+PiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRk
IGxpbnV4LW5leHQgc3BlY2lmaWMgZmlsZXMgZm9yIDIwMTkwNzE4Cj4+Pj4gZ2l0IHRyZWU6ICAg
ICAgIGxpbnV4LW5leHQKPj4+PiBmaW5hbCBjcmFzaDogICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20veC9yZXBvcnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPj4+PiBjb25zb2xlIG91dHB1
dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9sb2cudHh0P3g9MTI5YThhMjA2MDAw
MDAKPj4+PiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8u
Y29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+Pj4+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5
emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ZTU4MTEyZDcxZjc3MTEzZGRiN2IKPj4+PiBz
eXogcmVwcm86ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5zeXo/
eD0xMDEzOWU2ODYwMDAwMAo+Pj4+Cj4+Pj4gUmVwb3J0ZWQtYnk6IHN5emJvdCtlNTgxMTJkNzFm
NzcxMTNkZGI3YkBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4+Pj4gRml4ZXM6IDdmNDY2MDMy
ZGM5ZSAoInZob3N0OiBhY2Nlc3MgdnEgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwgdmlydHVhbAo+
Pj4+IGFkZHJlc3MiKQo+Pj4+Cj4+Pj4gRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBw
cm9jZXNzIHNlZTogaHR0cHM6Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgo+Pj4KPj4+IE9LIEkg
cG9rZWQgYXQgdGhpcyBmb3IgYSBiaXQsIEkgc2VlIHNldmVyYWwgdGhpbmdzIHRoYXQKPj4+IHdl
IG5lZWQgdG8gZml4LCB0aG91Z2ggSSdtIG5vdCB5ZXQgc3VyZSBpdCdzIHRoZSByZWFzb24gZm9y
Cj4+PiB0aGUgZmFpbHVyZXM6Cj4+IFRoaXMgc3R1ZmYgbG9va3MgcXVpdGUgc2ltaWxhciB0byB0
aGUgaG1tX21pcnJvciB1c2UgbW9kZWwgYW5kIG90aGVyCj4+IHBsYWNlcyBpbiB0aGUga2VybmVs
LiBJJ20gc3RpbGwgaG9waW5nIHdlIGNhbiBzaGFyZSB0aGlzIGNvZGUgYSBiaXQgbW9yZS4KPiBS
aWdodC4gSSB0aGluayBobW0gaXMgc29tZXRoaW5nIHdlIHNob3VsZCBsb29rIGF0LgoKCkV4YWN0
bHkuIEkgcGxhbiB0byBkbyB0aGF0LgoKVGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
