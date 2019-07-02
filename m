Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133AD5D695
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 21:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoqFaAjn0chwS69B6GwMrZf90NqXSBYaR0+kzXgNTgc=; b=fNfnBbzCJFfp+1
	72nmysn1j12YTA7GS/OyZpPWuBv1S5JDL185m7zdbBxStoXAUurK0sOi4C3NxbdILP6k1sV5ANQ9G
	etmObgUjLKGKaxlIRwrs/zRlUky01xnTJ6aUYZbNZcMRcbJpus5Lz+LxL8StvCFRmdXF4RNxGVbue
	86a6En+R5JU5eq77rBbtOEJhadaX2g2bipQXgxXYu00I9Z6xb628F/K0fMxCXW5SkYBXewJnjEA7D
	wSa5qijP7VxpSJXRswW9RsE1HhX6aIm9tzL5U1b6cej5fUeTMQdFIBFNk60NsV4f9FjLsHptUbkW/
	taCKLn9+X3Pu9nJnvfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiO7x-00053g-48; Tue, 02 Jul 2019 19:07:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiO7m-00053X-JP
 for linux-arm-kernel@bombadil.infradead.org; Tue, 02 Jul 2019 19:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wQ2eWjX8ogKBuOp00qcklecjDoXf2f54BF8WB0/TWII=; b=MTC07qsmWuhkvUtxvwQmc5AHnD
 NXnCRd9XSaJgQh/sELDpYy2ix/lyRR+9jcqCnWsbsUHbTX8MOViJEPvD94r97ULu1saYaV9J58rQu
 kfgs7vwILDpxXNShd1UreSLiXK08oJ02EQXKfy6VNFpZ8qf4cCJOe+glKQ1t2A14UO3xsfQL+zs6t
 3dKEXrKwxBq5k+JkGSdCTy8zn6Aw242cMmI1RVkExyUF6ox6zS/q8xQ74pQQRo73EYGnlfo6VGk7Q
 /XQP/cAa8febaJ1dNWFB1xzpfnQaXxl/ndxAA8uIGCmjURHI/X/MCxXWXwSuN9flBGpFNu3NiXOgS
 M3MxnU5g==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hiO7j-0000Zf-7D; Tue, 02 Jul 2019 19:07:27 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 80F8741153; Tue,  2 Jul 2019 16:07:24 -0300 (-03)
Date: Tue, 2 Jul 2019 16:07:24 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 1/4] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190702190724.GM15462@kernel.org>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
 <1561732552-143038-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561732552-143038-2-git-send-email-john.garry@huawei.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, ak@linux.intel.com,
 mathieu.poirier@linaro.org, peterz@infradead.org, ben@decadent.org.uk,
 tmricht@linux.ibm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW0gRnJpLCBKdW4gMjgsIDIwMTkgYXQgMTA6MzU6NDlQTSArMDgwMCwgSm9obiBHYXJyeSBlc2Ny
ZXZldToKPiBUaGUgamV2ZW50ICJVbml0IiBmaWVsZCBpcyB1c2VkIGZvciB1bmNvcmUgUE1VIGFs
aWFzIGRlZmluaXRpb24uCj4gCj4gVGhlIGZvcm0gdW5jb3JlX3BtdV9leGFtcGxlX1ggaXMgc3Vw
cG9ydGVkLCB3aGVyZSAiWCIgaXMgYSB3aWxkY2FyZCwKPiB0byBzdXBwb3J0IG11bHRpcGxlIGlu
c3RhbmNlcyBvZiB0aGUgc2FtZSBQTVUgaW4gYSBzeXN0ZW0uCj4gCj4gVW5mb3J0dW5hdGVseSB0
aGlzIGZvcm1hdCBub3Qgc3VpdGFibGUgZm9yIGFsbCB1bmNvcmUgUE1VczsgdGFrZSB0aGUgSGlz
aQo+IEREUkMgdW5jb3JlIFBNVSBmb3IgZXhhbXBsZSwgd2hlcmUgdGhlIG5hbWUgaXMgaW4gdGhl
IGZvcm0KPiBoaXNpX3NjY2xYX2RkcmNZLgo+IAo+IEZvciBmb3IgY3VycmVudCBqZXZlbnQgcGFy
c2luZywgd2Ugd291bGQgYmUgcmVxdWlyZWQgdG8gaGFyZGNvZGUgYW4gdW5jb3JlCj4gYWxpYXMg
dHJhbnNsYXRpb24gZm9yIGVhY2ggcG9zc2libGUgdmFsdWUgb2YgWC4gVGhpcyBpcyBub3Qgc2Nh
bGFibGUuCj4gCj4gSW5zdGVhZCwgYWRkIHN1cHBvcnQgZm9yICJVbml0IiBmaWVsZCBpbiB0aGUg
Zm9ybSAiaGlzaV9zY2NsLGRkcmMiLCB3aGVyZQo+IHdlIGNhbiBtYXRjaCBieSBoaXNpX3NjY2xY
IGFuZCBkZHJjWS4gVG9rZW5zICBpbiBVbml0IGZpZWxkCj4gYXJlIGRlbGltaXRlZCBieSAnLCcu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogSm9obiBHYXJyeSA8am9obi5nYXJyeUBodWF3ZWkuY29tPgo+
IC0tLQo+ICB0b29scy9wZXJmL3V0aWwvcG11LmMgfCA0NiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90b29scy9wZXJmL3V0aWwvcG11LmMg
Yi90b29scy9wZXJmL3V0aWwvcG11LmMKPiBpbmRleCA3ZTcyOTlmZWU1NTAuLmNmYzkxNjgxOWM1
OSAxMDA2NDQKPiAtLS0gYS90b29scy9wZXJmL3V0aWwvcG11LmMKPiArKysgYi90b29scy9wZXJm
L3V0aWwvcG11LmMKPiBAQCAtNzAwLDYgKzcwMCw0NiBAQCBzdHJ1Y3QgcG11X2V2ZW50c19tYXAg
KnBlcmZfcG11X19maW5kX21hcChzdHJ1Y3QgcGVyZl9wbXUgKnBtdSkKPiAgCXJldHVybiBtYXA7
Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIHBtdV91bmNvcmVfYWxpYXNfbWF0Y2goY29uc3QgY2hh
ciAqcG11X25hbWUsIGNvbnN0IGNoYXIgKm5hbWUpCj4gK3sKPiArCWNoYXIgKnRtcCwgKnRvaywg
KnN0cjsKPiArCWJvb2wgcmVzOwo+ICsKPiArCXN0ciA9IHN0cmR1cChwbXVfbmFtZSk7Cj4gKwlp
ZiAoIXN0cikKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJLyoKPiArCSAqIHVuY29yZSBhbGlh
cyBtYXkgYmUgZnJvbSBkaWZmZXJlbnQgUE1VIHdpdGggY29tbW9uIHByZWZpeAo+ICsJICovCj4g
Kwl0b2sgPSBzdHJ0b2tfcihzdHIsICIsIiwgJnRtcCk7CgpJbiBzb21lIHBsYWNlcywgZS5nLiBn
Y2MgdmVyc2lvbiA0LjEuMjoKCiAgQ0MgICAgICAgL3RtcC9idWlsZC9wZXJmL3V0aWwvcG11Lm8K
Y2MxOiB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwp1dGlsL3BtdS5jOiBJbiBmdW5j
dGlvbiDigJhwbXVfbG9va3Vw4oCZOgp1dGlsL3BtdS5jOjcwNjogd2FybmluZzog4oCYdG1w4oCZ
IG1heSBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gdGhpcyBmdW5jdGlvbgptdjogY2Fubm90IHN0
YXQgYC90bXAvYnVpbGQvcGVyZi91dGlsLy5wbXUuby50bXAnOiBObyBzdWNoIGZpbGUgb3IgZGly
ZWN0b3J5CgpUaGlzIHNpbGVuY2VzIGl0LCBhZGRpbmcuCgpkaWZmIC0tZ2l0IGEvdG9vbHMvcGVy
Zi91dGlsL3BtdS5jIGIvdG9vbHMvcGVyZi91dGlsL3BtdS5jCmluZGV4IDkxMzYzM2FlMGJmOC4u
NTVmNGRlNjQ0MmUzIDEwMDY0NAotLS0gYS90b29scy9wZXJmL3V0aWwvcG11LmMKKysrIGIvdG9v
bHMvcGVyZi91dGlsL3BtdS5jCkBAIC03MDMsNyArNzAzLDcgQEAgc3RydWN0IHBtdV9ldmVudHNf
bWFwICpwZXJmX3BtdV9fZmluZF9tYXAoc3RydWN0IHBlcmZfcG11ICpwbXUpCiAKIHN0YXRpYyBi
b29sIHBtdV91bmNvcmVfYWxpYXNfbWF0Y2goY29uc3QgY2hhciAqcG11X25hbWUsIGNvbnN0IGNo
YXIgKm5hbWUpCiB7Ci0JY2hhciAqdG1wLCAqdG9rLCAqc3RyOworCWNoYXIgKnRtcCA9IE5VTEws
ICp0b2ssICpzdHI7CiAJYm9vbCByZXM7CiAKIAlzdHIgPSBzdHJkdXAocG11X25hbWUpOwoKCj4g
KwlpZiAoc3RybmNtcChwbXVfbmFtZSwgdG9rLCBzdHJsZW4odG9rKSkpIHsKPiArCQlyZXMgPSBm
YWxzZTsKPiArCQlnb3RvIG91dDsKPiArCX0KPiArCj4gKwkvKgo+ICsJICogTWF0Y2ggbW9yZSBj
b21wbGV4IGFsaWFzZXMgd2hlcmUgdGhlIGFsaWFzIG5hbWUgaXMgYSBjb21tYS1kZWxpbWl0ZWQK
PiArCSAqIGxpc3Qgb2YgdG9rZW5zLCBvcmRlcmx5IGNvbnRhaW5lZCBpbiB0aGUgbWF0Y2hpbmcg
UE1VIG5hbWUuCj4gKwkgKgo+ICsJICogRXhhbXBsZTogRm9yIGFsaWFzICJzb2NrZXQscG11bmFt
ZSIgYW5kIFBNVSAic29ja2V0WF9wbXVuYW1lWSIsIHdlCj4gKwkgKgkgICAgbWF0Y2ggInNvY2tl
dCIgaW4gInNvY2tldFhfcG11bmFtZVkiIGFuZCB0aGVuICJwbXVuYW1lIiBpbgo+ICsJICoJICAg
ICJwbXVuYW1lWSIuCj4gKwkgKi8KPiArCWZvciAoOyB0b2s7IG5hbWUgKz0gc3RybGVuKHRvayks
IHRvayA9IHN0cnRva19yKE5VTEwsICIsIiwgJnRtcCkpIHsKPiArCQluYW1lID0gc3Ryc3RyKG5h
bWUsIHRvayk7Cj4gKwkJaWYgKCFuYW1lKSB7Cj4gKwkJCXJlcyA9IGZhbHNlOwo+ICsJCQlnb3Rv
IG91dDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJcmVzID0gdHJ1ZTsKPiArb3V0Ogo+ICsJZnJlZShz
dHIpOwo+ICsJcmV0dXJuIHJlczsKPiArfQo+ICsKPiAgLyoKPiAgICogRnJvbSB0aGUgcG11X2V2
ZW50c19tYXAsIGZpbmQgdGhlIHRhYmxlIG9mIFBNVSBldmVudHMgdGhhdCBjb3JyZXNwb25kcwo+
ICAgKiB0byB0aGUgY3VycmVudCBydW5uaW5nIENQVS4gVGhlbiwgYWRkIGFsbCBQTVUgZXZlbnRz
IGZyb20gdGhhdCB0YWJsZQo+IEBAIC03MzAsMTIgKzc3MCw4IEBAIHN0YXRpYyB2b2lkIHBtdV9h
ZGRfY3B1X2FsaWFzZXMoc3RydWN0IGxpc3RfaGVhZCAqaGVhZCwgc3RydWN0IHBlcmZfcG11ICpw
bXUpCj4gIAkJCWJyZWFrOwo+ICAJCX0KPiAgCj4gLQkJLyoKPiAtCQkgKiB1bmNvcmUgYWxpYXMg
bWF5IGJlIGZyb20gZGlmZmVyZW50IFBNVQo+IC0JCSAqIHdpdGggY29tbW9uIHByZWZpeAo+IC0J
CSAqLwo+ICAJCWlmIChwbXVfaXNfdW5jb3JlKG5hbWUpICYmCj4gLQkJICAgICFzdHJuY21wKHBu
YW1lLCBuYW1lLCBzdHJsZW4ocG5hbWUpKSkKPiArCQkgICAgcG11X3VuY29yZV9hbGlhc19tYXRj
aChwbmFtZSwgbmFtZSkpCj4gIAkJCWdvdG8gbmV3X2FsaWFzOwo+ICAKPiAgCQlpZiAoc3RyY21w
KHBuYW1lLCBuYW1lKSkKPiAtLSAKPiAyLjE3LjEKCi0tIAoKLSBBcm5hbGRvCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
