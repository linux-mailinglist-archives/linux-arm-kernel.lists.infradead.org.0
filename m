Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853CC142249
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 05:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fHZ5qIddbLQ/uSlSoFZsKnfVFU0f+QG90F2Jxf5qp0=; b=VAtww59NQkznIN
	EvjUZmCHKClIsMMF0bp4w2t3mvIWSzA/5Z2IxC9Glr3rpV9+rV1qufb33IrTTVpGfPAfGfsiriMQR
	iP8KTHdIrzxnzb3PIjfryQidmkuTj/G/QNrI8v+g2IvnOGqlTYS2CGOyrWqsElJbqVhh4ObMcuklU
	MAxYbLRR5EETnPArGl9UnQq01L9xuxTAQ3Wi5SlOhXnV1JZkH1bSpb/2NsczMrbhKfeRnRaZusi40
	WPnk0KQdds5cSnkn7ZwoIRvwMFc9kp7btWh6FshsDqtdemjyCWeZGbHK8vFPqhMYC0Gu4Y7k/LtDx
	xTuNqLpsNLmq4pjpxuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itOIe-0003VZ-DH; Mon, 20 Jan 2020 04:04:28 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itOIV-0003Uv-5H
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 04:04:20 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 481J2T5VvKz9sRQ; Mon, 20 Jan 2020 15:04:17 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1579493057; bh=GlIncoWYmOYv5Dni23RSwo6uZojZl918YWnmGeGzyJI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V/Pa+sHEae+jG71OR9r2A404DaS5UBDnEl6W5GR08hXip3iEYMnPJKOgSS38mznMS
 QFzFYRElYmpf39vGFlmcBXqAVGdMsLFjm/U25lpx6q0fNhotMfBPwIAqSNRKv/jocP
 A5kGrOXz8juIsyZkgL8m65HZO5Fh3mx4+Y9Ux1ecPuIMT+sYjoMy+YSKDxMsJPTVPp
 HQfIaljJGxLrxk3xUQeJAE38M8fGC3e1O4wLIfYvDRR2aZSLUNac6unBI8qCtwWfOb
 HgwP/Q9WG5+8ApO9XCFy1bxiLQ13UNNmnGOK8PeEgB/i16xsXwKAaVRbebZ2djABCZ
 zP8/aQGwqo1nw==
Date: Mon, 20 Jan 2020 15:04:12 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 12/45] KVM: PPC: Allocate vcpu struct in common PPC code
Message-ID: <20200120040412.GF14307@blackberry>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-13-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218215530.2280-13-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_200419_362504_C87BDD11 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
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

T24gV2VkLCBEZWMgMTgsIDIwMTkgYXQgMDE6NTQ6NTdQTSAtMDgwMCwgU2VhbiBDaHJpc3RvcGhl
cnNvbiB3cm90ZToKPiBNb3ZlIGFsbG9jYXRpb24gb2YgYWxsIGZsYXZvcnMgb2YgUFBDIHZDUFVz
IHRvIGNvbW1vbiBQUEMgY29kZS4gIEFsbAo+IHZhcmlhbnRzIGVpdGhlciBhbGxvY2F0ZSAnc3Ry
dWN0IGt2bV92Y3B1JyBkaXJlY3RseSwgb3IgcmVxdWlyZSB0aGF0Cj4gdGhlIGVtYmVkZGVkICdz
dHJ1Y3Qga3ZtX3ZjcHUnIG1lbWJlciBiZSBsb2NhdGVkIGF0IG9mZnNldCAwLCBpLmUuCj4gZ3Vh
cmFudGVlIHRoYXQgdGhlIGFsbG9jYXRpb24gY2FuIGJlIGRpcmVjdGx5IGludGVycHJldGVkIGFz
IGEgJ3N0cnVjdAo+IGt2bV92Y3B1JyBvYmplY3QuCj4gCj4gUmVtb3ZlIHRoZSBtZXNzYWdlIGZy
b20gdGhlIGJ1aWxkLXRpbWUgYXNzZXJ0aW9uIHJlZ2FyZGluZyBwbGFjZW1lbnQgb2YKPiB0aGUg
c3RydWN0LCBhcyBjb21wYXRpYmlsaXR5IHdpdGggdGhlIGFyY2ggdXNlcmNvcHkgcmVnaW9uIGlz
IG5vIGxvbmdlcgo+IHRoZSBzb2xlIGRlcGVuZGVudCBvbiAnc3RydWN0IGt2bV92Y3B1JyBiZWlu
ZyBhdCBvZmZzZXQgemVyby4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIENocmlzdG9waGVyc29u
IDxzZWFuLmouY2hyaXN0b3BoZXJzb25AaW50ZWwuY29tPgoKVGhpcyBmYWlscyB0byBjb21waWxl
IGZvciBCb29rIEUgY29uZmlnczoKCiAgQ0MgICAgICBhcmNoL3Bvd2VycGMva3ZtL2U1MDAubwov
aG9tZS9wYXVsdXMva2VybmVsL2t2bS9hcmNoL3Bvd2VycGMva3ZtL2U1MDAuYzogSW4gZnVuY3Rp
b24g4oCYa3ZtcHBjX2NvcmVfdmNwdV9jcmVhdGVfZTUwMOKAmToKL2hvbWUvcGF1bHVzL2tlcm5l
bC9rdm0vYXJjaC9wb3dlcnBjL2t2bS9lNTAwLmM6NDY0Ojk6IGVycm9yOiByZXR1cm4gbWFrZXMg
aW50ZWdlciBmcm9tIHBvaW50ZXIgd2l0aG91dCBhIGNhc3QgWy1XZXJyb3I9aW50LWNvbnZlcnNp
b25dCiAgcmV0dXJuIHZjcHU7CiAgICAgICAgIF4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJl
YXRlZCBhcyBlcnJvcnMKbWFrZVszXTogKioqIFsvaG9tZS9wYXVsdXMva2VybmVsL2t2bS9zY3Jp
cHRzL01ha2VmaWxlLmJ1aWxkOjI2NjogYXJjaC9wb3dlcnBjL2t2bS9lNTAwLm9dIEVycm9yIDEK
ClRoZXJlIGlzIGEgInJldHVybiB2Y3B1IiBzdGF0ZW1lbnQgaW4ga3ZtcHBjX2NvcmVfdmNwdV9j
cmVhdGVfZTUwMCgpLAphbmQgYW5vdGhlciBpbiBrdm1wcGNfY29yZV92Y3B1X2NyZWF0ZV9lNTAw
bWMoKSwgd2hpY2ggYm90aCBuZWVkIHRvIGJlCmNoYW5nZWQgdG8gInJldHVybiAwIi4KCihCeSB0
aGUgd2F5LCBJIGRvIGFwcHJlY2lhdGUgeW91IGZpeGluZyB0aGUgUFBDIGNvZGUsIGV2ZW4gaWYg
dGhlcmUKYXJlIHNvbWUgZXJyb3JzLikKClBhdWwuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
