Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAE414221F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 04:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9m3V9+WE2J/2yAOX4bFxKqKMBi2OUI1MKBmGbdcb+E=; b=nXoDxyWofyQL5u
	rzLu1vpxdcaSgRncUN0p5z3IcL+qiyt7rok4X8P2DwmXlRPIes+/M3IJZ9KcUO2BfOT7AZKhlBb1X
	NAuOTIknq6BUunSt1PiRSDVTeY9bG11Yh/XASnfnVxkOxv6Jzf9D0UlzV/ShrAT9snA9NZeAXXgHW
	hZDLKWyBj9a91NQw0ngXb8RIHlRsU6S+yhRounMLsWZRITQRsoS1olmI3YIt1M0IC7uFAUP1iZyfZ
	1+JuftEWN55JDicWtnjHuIuBxIgjIaiLZXnimeyTHp8AnyaNDYrGqJK5rXB51uzhWC8fPb/6wEyKG
	HgUgrzpg2RXJA/I/tYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itO2A-0004l3-DP; Mon, 20 Jan 2020 03:47:26 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itO20-0004kD-CX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 03:47:17 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 481Hfj74CGz9sRK; Mon, 20 Jan 2020 14:47:09 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1579492030; bh=1dfZ9T6ilNfzX2EqbpEQ5eAKgIEJ6P5R1+t5DDy1LSA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JwTKZpUVsDbJ4TcBhEsofl/FKEJ5tQrZ9Aj0R5fO2fk6ipXMh/Ze+fuyk+OikxvSN
 67/wLRnHG2mDyEw8LSp8oRMr2p5aKIS1bUJ4t3GOuRZbsLyzpzHmOuZ2qTHBGOqfbF
 moZ/eN5AqS9TPo6UXaN5U6ooTa7+OmIYkvdmFYWqpFVxDhUrMzJ34X8IxIDq0Ms2f6
 wkQCV272ypuxGDczKD0+9/Hd5WXIkWzuKDoo+s7KsL/R/o3ah5CvtNtzTmgEF5QLDA
 JoX9Oljp4OG49H/vTZPOusq/ctGjNpNJBsOmEo+EUk8lzjUU+oofoyANvdWbPRrwrC
 HNXz1928tQDng==
Date: Mon, 20 Jan 2020 14:46:58 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 41/45] KVM: PPC: Move all vcpu init code into
 kvm_arch_vcpu_create()
Message-ID: <20200120034658.GD14307@blackberry>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-42-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-42-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_194716_585442_F17056F6 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Greg Kurz <groug@kaod.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, James Hogan <jhogan@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDE6NTU6MjZQTSAtMDgwMCwgU2VhbiBDaHJpc3RvcGhl
cnNvbiB3cm90ZToKPiBGb2xkIGluaXQoKSBpbnRvIGNyZWF0ZSgpIG5vdyB0aGF0IHRoZSB0d28g
YXJlIGNhbGxlZCBiYWNrLXRvLWJhY2sgYnkKPiBjb21tb24gS1ZNIGNvZGUgKGt2bV92Y3B1X2lu
aXQoKSBjYWxscyBrdm1fYXJjaF92Y3B1X2luaXQoKSBhcyBpdHMgbGFzdAo+IGFjdGlvbiwgYW5k
IGt2bV92bV9pb2N0bF9jcmVhdGVfdmNwdSgpIGNhbGxzIGt2bV9hcmNoX3ZjcHVfY3JlYXRlKCkK
PiBpbW1lZGlhdGVseSB0aGVyZWFmdGVyKS4gIFJpbnNlIGFuZCByZXBlYXQgZm9yIGt2bV9hcmNo
X3ZjcHVfdW5pbml0KCkKPiBhbmQga3ZtX2FyY2hfdmNwdV9kZXN0cm95KCkuICBUaGlzIHBhdmVz
IHRoZSB3YXkgZm9yIHJlbW92aW5nCj4ga3ZtX2FyY2hfdmNwdV97dW59aW5pdCgpIGVudGlyZWx5
Lgo+IAo+IE5vdGUsIGNhbGxpbmcga3ZtcHBjX21tdV9kZXN0cm95KCkgaWYga3ZtcHBjX2NvcmVf
dmNwdV9jcmVhdGUoKSBmYWlscwo+IG1heSBvciBtYXkgbm90IGJlIG5lY2Vzc2FyeS4gIE1vdmUg
aXQgYWxvbmcgd2l0aCB0aGUgbW9yZSBvYnZpb3VzIGNhbGwKPiB0byBrdm1wcGNfc3ViYXJjaF92
Y3B1X3VuaW5pdCgpIHNvIGFzIG5vdCB0byBpbmFkdmVydGFudGx5IGludHJvZHVjZSBhCj4gZnVu
Y3Rpb25hbCBjaGFuZ2UgYW5kL29yIGJ1Zy4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRl
bmRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIENocmlzdG9waGVyc29uIDxzZWFuLmouY2hy
aXN0b3BoZXJzb25AaW50ZWwuY29tPgoKVGhpcyBkb2Vzbid0IGNvbXBpbGUuICBJIGdldDoKCiAg
Q0MgW01dICBhcmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMubwovaG9tZS9wYXVsdXMva2VybmVsL2t2
bS9hcmNoL3Bvd2VycGMva3ZtL3Bvd2VycGMuYzogSW4gZnVuY3Rpb24g4oCYa3ZtX2FyY2hfdmNw
dV9jcmVhdGXigJk6Ci9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vcG93
ZXJwYy5jOjczMzozNDogZXJyb3I6IOKAmGt2bXBwY19kZWNyZW1lbnRlcl93YWtldXDigJkgdW5k
ZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pCiAgdmNwdS0+YXJjaC5kZWNfdGlt
ZXIuZnVuY3Rpb24gPSBrdm1wcGNfZGVjcmVtZW50ZXJfd2FrZXVwOwogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXgovaG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bvd2VycGMv
a3ZtL3Bvd2VycGMuYzo3MzM6MzQ6IG5vdGU6IGVhY2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlz
IHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlvbiBpdCBhcHBlYXJzIGluCi9ob21l
L3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vcG93ZXJwYy5jOiBBdCB0b3AgbGV2
ZWw6Ci9ob21lL3BhdWx1cy9rZXJuZWwva3ZtL2FyY2gvcG93ZXJwYy9rdm0vcG93ZXJwYy5jOjc5
NDoyOTogd2FybmluZzog4oCYa3ZtcHBjX2RlY3JlbWVudGVyX3dha2V1cOKAmSBkZWZpbmVkIGJ1
dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCiBzdGF0aWMgZW51bSBocnRpbWVyX3Jlc3Rh
cnQga3ZtcHBjX2RlY3JlbWVudGVyX3dha2V1cChzdHJ1Y3QgaHJ0aW1lciAqdGltZXIpCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXgptYWtlWzNdOiAqKiogWy9ob21lL3BhdWx1cy9rZXJu
ZWwva3ZtL3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY2OiBhcmNoL3Bvd2VycGMva3ZtL3Bvd2Vy
cGMub10gRXJyb3IgMQoKVGhlIHByb2JsZW0gaXMgdGhhdCBrdm1wcGNfZGVjcmVtZW50ZXJfd2Fr
ZXVwKCkgaXMgYSBzdGF0aWMgZnVuY3Rpb24KZGVmaW5lZCBpbiB0aGlzIGZpbGUgKGFyY2gvcG93
ZXJwYy9rdm0vcG93ZXJwYy5jKSBhZnRlcgprdm1fYXJjaF92Y3B1X2NyZWF0ZSgpIGJ1dCBiZWZv
cmUga3ZtX2FyY2hfdmNwdV9pbml0KCkuICBZb3UgbmVlZCBhCmZvcndhcmQgc3RhdGljIGRlY2xh
cmF0aW9uIG9mIGt2bXBwY19kZWNyZW1lbnRlcl93YWtldXAoKSBiZWZvcmUKa3ZtX2FyY2hfdmNw
dV9jcmVhdGUoKSwgb3IgZWxzZSBtb3ZlIG9uZSBvciBvdGhlciBmdW5jdGlvbi4KClBhdWwuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
