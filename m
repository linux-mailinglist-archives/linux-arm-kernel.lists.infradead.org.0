Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040B71E7158
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lGZ3jzTKVLz8oEl+RJrdFyhHK5/+W3Tdm6pVdCu/xIs=; b=VzJcPRe9HE8bJy
	qSJdUvaZ7f0ANNK8mcTsV6ElOAboAPnp1MKNnGpBwJG1OjzTkTf/E7LuSgGXs9DfLCg87Vs9bEm9N
	ObKb767rcx076KbbDL0vryKZiMehlXSqiaJ3EfPDy3xtIHWil00FdhO/ooFMijRT3YT22Y9FnzoYm
	zdXRFVAtfD8cKpIaReJz5XSMpP6dPCrmzyp/xKG62e3TeL95wwId+nO69sIcWZiBf8BW5OwnBD1H5
	b5z3D11qD8+vIDMGFknmTVO+Zc53OlvYG5TpABu6WlVr2OUs9cQzHAMSmswib3n0kqRmjqJ1/nhwQ
	Lz5ph5RHhl45c4FYZybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSqJ-0005z6-Jw; Fri, 29 May 2020 00:25:47 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSpw-0005xu-GL; Fri, 29 May 2020 00:25:27 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 60654200002;
 Fri, 29 May 2020 00:25:18 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v7 00/20] Introduce the generic ECC engine abstraction
Date: Fri, 29 May 2020 02:24:57 +0200
Message-Id: <20200529002517.3546-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172524_821884_3DD5747E 
X-CRM114-Status: GOOD (  27.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Su <juliensu@mxic.com.tw>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXMgb2YgdG9kYXksIG9ubHkgcmF3IE5BTkQgY29udHJvbGxlcnMgdXNlZCB0byBmZWF0dXJlIGFu
IGludGVncmF0ZWQKRUNDIGVuZ2luZSBhbmQgc28gY29udHJvbGxlciBkcml2ZXJzIGFsd2F5cyBl
bWJlZGRlZCBzb21lIGNvZGUgdG8KZW5hYmxlL2Rpc2FibGUgdGhlIGNvcnJlY3Rpb24uCgpUaGlz
IHN0YXRlbWVudCBpcyBubyBsb25nZXIgY29ycmVjdCBhcyBTUEktTkFORCBkZXZpY2VzIG1pZ2h0
IG5vdAplbWJlZCBhbiBvbi1kaWUgRUNDIGVuZ2luZSBhbmQgbXVzdCBtYWtlIHVzZSBvZiBhbiBl
eHRlcm5hbCBFQ0MKZW5naW5lLiBXZSBmaWd1cmVkIHRoZXJlIGFyZSB0aHJlZSBwb3NzaWJsZSBz
aXR1YXRpb25zIGZvciAoZ2VuZXJpYykKTkFORCBkZXZpY2VzOiBlaXRoZXIgdGhlIGVuZ2luZSBp
cyAnb24tZGllJyAobW9zdCBvZiB0aGUgU1BJLU5BTkRzLCBhCmZldyByYXcgTkFORHMpLCBvciB0
aGUgZW5naW5lIGlzIHBhcnQgb2YgdGhlIGhvc3QgY29udHJvbGxlciAobW9zdCByYXcKTkFORHMp
LCBvciB0aGUgZW5naW5lIG1heSBiZSBleHRlcm5hbCAoU1BJIGNvbnRyb2xsZXJzIG1pZ2h0IGZl
YXR1cmUKYW4gaGFyZHdhcmUgRUNDIGVuZ2luZSwgb3RoZXJ3aXNlIHNvZnR3YXJlIGNvcnJlY3Rp
b24gY2FuIGFsc28gYmUKdXNlZCkuCgpUbyBzb2x2ZSB0aGlzIHNpdHVhdGlvbiwgSSBhbHJlYWR5
IHByb3Bvc2VkIHRoZSBjcmVhdGlvbiBvZiBhbiBFQ0MKZW5naW5lIGFic3RyYWN0aW9uIChzdGls
bCB3b3JrIGluIHByb2dyZXNzKSBhbmQgdGhpcyBpcyB0aGUgZmlyc3Qgc3RlcApmb3IgdGhhdC4K
ClRoZSBsb2dpYyBpbiB0aGlzIHNlcmllcyBpczoKMS8gVXNlIHRoZSBnZW5lcmljIE5BTkQgY29y
ZSBmb3IgYWxsIE5BTkQgZGV2aWNlcyAocmF3IGFuZCBTUEkpLgoyLyBDcmVhdGUgdGhlIEVDQyBl
bmdpbmUgaW50ZXJmYWNlIGluIGRyaXZlcnMvbXRkL25hbmQvZWNjLmMKMy8gTW92ZSBjb2RlIGlu
IGRyaXZlci9tdGQvbmFuZC9lY2MuYwoKTGF0ZXIsIEkgd2lsbCByZXBvc3Q6CjQvIE1ha2UgYm90
aCBzb2Z0d2FyZSBlbmdpbmVzIChIYW1taW5nIGFuZCBCQ0gpIGdlbmVyaWMsIG1vdmUgdGhlbSBp
bgogICB0aGUgZWNjLyBkaXJlY3RvcnksIGNsZWFuIHRoZW0gYSBiaXQgYW5kIGluc3RhbnRpYXRl
IEVDQwogICBlbmdpbmVzLiBXcml0ZSByYXcgTkFORCBoZWxwZXJzIHRvIHVzZSB0aGVzZSB0d28g
bmV3IGVuZ2luZXMuCjUvIElzb2xhdGUgU1BJLU5BTkQgb24tZGllIEVDQyBlbmdpbmUgaW4gaXRz
IG93biBkcml2ZXIuCjYvIE1ha2UgdXNlIGZyb20gdGhlIFNQSS1OQU5EIGxheWVyIG9mIGFsbCB0
aGUgRUNDIGVuZ2luZXMgbGlzdGVkCiAgIGFib3ZlIChvbiB1c2VyIHJlcXVlc3QsIHBlb3BsZSBj
YW4gbm93IG1ha2UgdXNlIG9mIHNvZnQgQkNIIGlmIHRoZXkKICAgZG9uJ3QgaGF2ZSBhbiBFQ0Mt
ZW5naW5lKS4KNy8gRXh0ZW5kIHRoZSBsb2dpYyB0byBoYXJkd2FyZSBleHRlcm5hbCBlbmdpbmVz
LiBBIHByb3Bvc2FsIG9mIGEKICAgZHJpdmVyIGZvciBNYWNyb25peCBleHRlcm5hbCBFQ0MgZW5n
aW5lIHdpbGwgZm9sbG93IGluIGFub3RoZXIKICAgc2VyaWVzLgoKVGhpcyB3b3JrIGlzIG5vdyBh
bG1vc3QgcmVhZHksIHRoZSBuZXh0IHN0ZXBzIHdpbGwgYmU6CjEvIE1pZ3JhdGUgdGhlIHJhdyBO
QU5EIGNvcmUgdG8gbWFrZSBhIHByb3BlciB1c2Ugb2YgdGhlc2UgRUNDCiAgIGVuZ2luZXMuCjIv
IERlcHJlY2F0ZSBpbiB0aGUgcmF3IE5BTkQgc3Vic3lzdGVtIHRoZSBpbnRlcmZhY2VzIHVzZWQg
dW50aWwgbm93CiAgIChJIGV4cGVjdCB3ZSBzaG91bGQgZ2V0IHJpZCBvZiBhIGxvdCBvZiBib2ls
ZXJwbGF0ZSkuCgpUaGFua3MsCk1pcXXDqGwKCkNoYW5nZXMgaW4gdjcKPT09PT09PT09PT09PQoq
IENvbGxlY3RlZCB0YWdzLgoqIEZpeGVkIHN1YmplY3RzIHMvT09CIHBsYWNlbWVudC9FQ0MgYnl0
ZXMgcGxhY2VtZW50Ly4KKiBNb3ZlZCBhIHRhYiBjaGFuZ2UgaW50byBzcGFjZSB0byB0aGUgYXBw
cm9wcmlhdGUgcGF0Y2guCiogTW92ZWQgdGhlIHJlbW92YWwgb2YgdGhlIG5hbmRfZWNjX21vZGUg
cHVibGljIGVudW11bWVyYXRpb24gdG8gdGhlCiAgcmlnaHQgcGF0Y2guCiogQ3JlYXRlZCBoZWxw
ZXJzIHRvIHJldHJpZXZlIHRoZSBPT0IgbGF5b3V0cy4KKiBNb3ZlZCB0aGUgImZsYWdzIiBlbnRy
eSBvZiBuYW5kX2VjY19wcm9wcyB0byB0aGUgY29tbWl0IHVzaW5nIGl0LgoqIENoYW5nZWQgdGhl
IHNlbGVjdCBNVERfTkFORF9DT1JFIGludG8gYSBkZXBlbmRzIG9uIGFuZCBtb3ZlZCBpdCB0bwog
IHRoZSByaWdodCBwYXRjaCB0b28uCiogU3BsaXQgdGhlIHBhdGNoIG1vdmluZyByYXcgTkFORCBi
aXRzIGludG8gdGhlIEVDQyBmcmFtZXdvcmsuCiogRHJvcHBlZCBhbiBleHRyYSBoZWxwZXI6IG5h
bmRkZXZfZ2V0X2ZsYXNoX25vZGUoKS4KKiBVcGRhdGVkIGFsbCB0aGUgRUNDIGZyYW1ld29yayBp
bnRyb2R1Y3RvcnkgY29tbWVudCwgZm9sbG93aW5nIEJvcmlzJwogIHN1Z2dlc3Rpb25zLgoKQ2hh
bmdlcyBpbiB2Ngo9PT09PT09PT09PT09CiogUmViYXNlZCBvbiB0b3Agb2YgbmFuZC9uZXh0Lgoq
IERyb3BwZWQgdGhlIG5ldyBuYW5kLWVjYy1wcm92aWRlciBwcm9wZXJ0eS4gSW5zdGVhZCwgd2Ug
d2lsbCB1c2UKICBuYW5kLWVjYy1lbmdpbmUgYW5kIGJvb2xlYW4gcHJvcGVydGllcyBsaWtlIG5h
bmQtbm8tZWNjLWVuZ2luZSAvCiAgbmFuZC11c2Utc29mdC1lY2MtZW5naW5lICh3aWxsIGJlIGFk
ZGVkIGluIGFub3RoZXIgc2VyaWVzKS4KKiBNb3ZlZCBtb3N0IG9mIHRoZSBiaW5kaW5ncyB0byB0
aGUgbmV4dCBzZXJpZXMuCiogVXNlZCBwbGF0Zm9ybV9kZXZfcHV0KCkgaW5zdGVhZCBvZiBvZl9k
ZXZfcHV0KCkgb24gUm9iJ3MgYWR2aWNlLgoqIFJlbmFtZWQgb2JqZWN0czogb25kaWUgLT4gb25f
ZGllX2h3LgoqIFJlbmFtZWQgb2JqZWN0czogaHcgLT4gb25faG9zdF9ody4KKiBVc2VkIGVuZ2lu
ZV90eXBlIGV2ZXJ5d2hlcmUgaW5zdGVhZCBvZiBwcm92aWRlci4KKiBDcmVhdGVkIGEgcmF3bmFu
ZCBjb21wYXRpYmlsaXR5IGxheWVyIHRvIGF2b2lkIG1vdmluZyBkZXByZWNhdGVkCiAgY29kZSBk
dWUgdG8gdGhlIHJhd25hbmQgY29yZSBoaXN0b3J5IGluIHRoZSBnZW5lcmljIChhbmQgY2xlYW4p
IE5BTkQKICBsYXllci4KKiBFbmhhbmNlZCB0aGUgbmFuZF9lY2NfYWxnbyBlbnVtZXJhdGlvbi4K
CkNoYW5nZXMgaW4gdjUKPT09PT09PT09PT09PQoqIFJlYmFzZWQgb24gdG9wIG9mIG5hbmQvbmV4
dAoqIEF2b2lkZWQgYSBmYWxsdGhyb3VnaCBzaXR1YXRpb24gaW4gY29tbWl0OgogIG10ZDogcmF3
bmFuZDogU2VwYXJhdGUgdGhlIEVDQyBlbmdpbmUgdHlwZSBhbmQgdGhlIE9PQiBwbGFjZW1lbnQK
KiBGaXhlZCBhbiBvZl9kZXZfcHV0KCkgYnVpbGQgaXNzdWUgZHVlIHRvIGEgbWlzc2luZyBkdW1t
eSBoZWxwZXIuCiogRXh0cmFjdGVkIGEgcGF0Y2ggdGhhdCBkZXNlcnZlZCB0byBiZSBtZXJnZWQg
cXVpY2tseS4KKiBGaXhlZCBhIGZldyBpc3N1ZXMgcmVwb3J0ZWQgYnkgcm9ib3RzLgoKQ2hhbmdl
cyBpbiB2NAo9PT09PT09PT09PT09CiogUmViYXNlZCBvbiB0b3Agb2YgYSByZWNlbnQga2VybmVs
IHZlcnNpb24uCiogQWRkZWQgQm9yaXMnIHJldmlld2VkLWJ5LgoqIEFkZGVkIE1heGltZSdzIEFj
a2VkLWJ5IHRhZy4KKiBBZGRlZCB0aGUgbWlzc2luZyBvZl9kZXZpY2UuaCBoZWFkZXIgdG8gZWNj
LmMuCiogQ29ycmVjdGVkIGEgJ21pbmltdW0nIGNvbXBhcmlzb24gYnkgdXNpbmcgbWluX3QuCiAq
IFVwZGF0ZWQgdGhlIG5ldyBNYWNyb25peCByYXcgTkFORCBjb250cm9sbGVyIGRyaXZlciBieSB1
c2luZyB0aGUgbmV3CiAgKEVDQyByZWxhdGVkKSBmdW5jdGlvbiBuYW1lcy4KKiBGaXhlZCBhIGZ1
bmN0aW9uIGNhbGwgaW4gbmRmYy5jLgoqIFVwZGF0ZSBicmNtbmFuZC5jIGZpbGUgdG8gZml0IG5l
dyBlbnVtZXJhdGlvbnMgYW5kIHN0cnVjdHVyZXMgKGR1ZQogIHRvIHJlY2VudCBLYW1hbCdzIGNo
YW5nZXMpLgoqIEZvcmNlIHNtX2Z0bCB0byBkZXBlbmRzIG9uIHRoZSBIYW1taW5nIGVuZ2luZSwg
YmVjYXVzZSBieSBqdXN0CiAgc2VsZWN0aW5nIGl0IHRoZSBFQ0MgY29kZSB3b3VsZCBiZSBlbWJl
ZGRlZCBpbiB0aGUgTkFORCBjb3JlIGFuZCB0aGUKICBOQU5EIGNvcmUgbWlnaHQgbm90IGJlIGNv
bXBpbGVkIGluIHdpdGggc21fZnRsLgoqIEZpeGVkIGEgc3RydWN0dXJlIGZpZWxkIG5hbWUgdGhh
dCBJIHByZXZpb3VzbHkgYWRkZWQgaW4gZGF2aW5jaQogIHBsYXRmb3JtIGRhdGEuCiogTW92ZWQg
dGhlIG9vYl9maXJzdCBwbGFjZW1lbnQgc2NoZW1lIHRvIERhdmluY2kgZHJpdmVyLiBSZW1vdmVk
IGFueQogIG9jY3VyZW5jZSBvZiBpdCBvdXQgb2YgdGhlIGRyaXZlciAodW51c2VkKS4KKiBTaW1w
bGlmeSBzdHJ1Y3R1cmUgbmFtZXMgYXMgcHJvcG9zZWQgYnkgQm9yaXMuCiogQ2hhbmdlIGVudW1l
cmF0aW9uL3N0cmluZyBuYW1lcyBhYm91dCBFQ0MgZW5naW5lCiAgcHJvdmlkZXJzL3BsYWNlbWVu
dHMuCiogQ2hhbmdlIHRoZSBsb2dpYyBpbiB0aGUgb2ZfZ2V0X25hbmRfZWNjXyogaGVscGVycyB0
byBlbnN1cmUgYmFja3dhcmQKICBjb21wYXRpYmlsaXR5LgoqIFVzZSBlbnVtcyBpbnRlYWQgb2Yg
dW5zaWduZWQgaW50ZWdlcnMgaW4gdGhlIGNvcmUgd2hlbiByZWZlcnJpbmcgdG8KICBFQ0MgZW5n
aW5lIHR5cGUsIHBsYWNlbWVudCBhbmQgYWxnb3JpdGhtLgoqIEFkZCBuYW5kLWVjYy1wbGFjZW1l
bnQgRFQgcHJvcGVydHkuCiogRGVwcmVjYXRlIGh3X3N5bmRyb21lLgoqIERlcHJlY2F0ZSBuYW5k
LWVjYy1tb2RlIGluIGZhdm9yIG9mIG5hbmQtZWNjLXByb3ZpZGVyLgoKKiBGaXhlZCBhIHR5cG8g
aW4gdGhlIE1hY3Jvbml4IEVDQyBkcml2ZXIsIHdoZXJlIEkgbWFkZSBhIGNvcHkvcGFzdGUKICBl
cnJvciB3aGljaCBJIGhhdmVuJ3Qgc3BvdHRlZCBiZWNhdXNlIGl0IGlzIGxvY2F0ZWQgaW4gYSBt
YWNybyBvbmx5CiAgY29tcGlsZWQgd2hlbiBidWlsZGluZyB0aGUgZHJpdmVyIGFzIGEgbW9kdWxl
IChuYW1lIG9mIHRoZSBvZl9pZHMKICB3YXMgcHJlZml4ZWQgbWFydmVsbF9uZmMgaW5zdGVhZCBv
ZiBteGljX2VjYykuCiogU2ltcGxpZmllZCB0aGUgRUNDIGVuZ2luZSBBUEkgYnkgZHJvcHBpbmcg
dGhlIHVzZWxlc3Mgb29iYnVmCiAgcGFyYW1ldGVyLiBJbnN0ZWFkLCBFQ0MgZW5naW5lIGRyaXZl
cnMgYXJlIHN1cHBvc2VkIHRvIHByb3ZpZGUgYQogIHNwYXJlIE9PQiBidWZmZXIgaWYgbm9uZSBp
cyBwcm92aWRlZC4gVXBkYXRlZCB0aGUgdGhyZWUgZXhpc3RpbmcKICBlbmdpbmVzLgoqIEZpeGVk
IEJDSCBzb2Z0d2FyZSBlbmdpbmUgd2l0aCB0aGUgaGVscCBvZiBNYXNvbiBmcm9tIE1hY3Jvbml4
LgoqIEFkZGVkIGEgbWVjaGFuaXNtIGNhbGxlZCAidHdlYWtpbmcgcmVxIiB0byBjaGFuZ2UgdGhl
IFNQSS1OQU5ECiAgcmVxdWVzdHMgYW5kIGVuc3VyZSB0aGV5IGFsd2F5cyBjb250YWluIHRoZSBy
aWdodCBhbW91bnQgb2YgZGF0YS9PT0IKICBuZWVkZWQgZm9yIHRoZSBFQ0MgZW5naW5lIHRvIHdv
cmsgcHJvcGVybHkuCgpDaGFuZ2VzIGluIHYzCj09PT09PT09PT09PT0KKiBBZGRlZCBCb3Jpcycg
UmV2aWV3ZWQtYnkgdGFncy4KKiBBZGRlZCBhIGtlcm5lbCBkb2MgaGVhZGVyIG9uIHRoZSBuYW5k
X3BhZ2VfaW9fcmVxIGVudW1lcmF0aW9uLgoqIEFkZGVkIHN1cHBvcnQgZm9yIEhXIGVuZ2luZXMu
CiogRHJvcGVkIHRoZSBwYXRjaCBjbGFyaWZ5aW5nIHRoZSB2YWx1ZSBvZiB0aGUgZmlyc3QgZW50
cnkgaW4KICBlbnVtZXJhdGlvbnMgKHdoaWNoIGlzIGFsd2F5cyAwKS4KKiBSZW5hbWUgdGhlIG5h
bmRfZWNjX2NvbmYgc3RydWN0dXJlIGFzIG5hbmRfZWNjX3Byb3BzIGJlY2F1c2UgdGhlCiAgX2Nv
bmYgc3VmZml4IGltcGxpZXMgdGhhdCBpdCBpcyBwb3NzaWJsZSB0byBlZGl0IGl0LCB3aGlsZSBp
biBzb21lCiAgY2FzZXMgKGVnLiBvbi1kaWUgRUNDKSB0aGVyZSBpcyBub3RoaW5nIHRvIHR3ZWFr
LgoqIFNtb290aGVyIGludHJvZHVjdGlvbiBvZiB0aGUgRUNDIGVuZ2luZSBhYnN0cmFjdGlvbi4K
KiBSZW5hbWVkIHRoZSBFQ0MgZW5naW5lIG1vZHVsZSBuYW5kX2VjY19lbmdpbmUua28uCiogTW92
ZWQgYWxsIHRoZSBFQ0MgZmlsZXMgaW50byBkcml2ZXJzL210ZC9uYW5kLy4gRm9yZ290IHRoZSBl
Y2MvCiAgc3ViZGlyZWN0b3J5LgoqIEFkZGVkIGEgbmV3IHNlcmllcyB0byBkcm9wIHRoZSBFQ0Mg
bW9kZSBlbnVtZXJhdGlvbiB3aWNoIG1peGVzIHRoZQogIHByb3ZpZGVyIChub25lLCBodywgc3cs
IG9uLWRpZSkgYW5kIHRoZSBPT0IgcGxhY2VtZW50IChmaXJzdCwKICBzeW5kcm9tZSkuCiogVmFy
aW91cyB0eXBvcyBmaXhlZC4KKiBBZGRlZCBhIGZldyBwYXRjaGVzIHRvIGZpeCBidWdzIGZvdW5k
IGluIFNQSS1OQU5EL210ZGNoYXIuYy4KKiBJbnRyb2R1Y2VkIHRoZSBleHRlcm5hbCBoYXJkd2Fy
ZSBFQ0MgZW5naW5lIGJvaWxlcnBsYXRlLgoKQ2hhbmdlcyBpbiB2Mgo9PT09PT09PT09PT09Ciog
U1BEWCBsaWNlbnNlIGlkZW50aWZpZXJzIGZvciBzb2Z0IEJDSCBhbmQgSGFtbWluZzogdGhlIGxp
Y2Vuc2UgbWFjcm8KICB3YXMgcmlnaHQsICJHUEwiIG1lYW5zICJHUEx2MiBvciBoaWdoZXIiLCBz
byBkbyBub3QgY2hhbmdlIHRoaXMKICBwb3J0aW9uLiBBbHNvIHVwZGF0ZSB0aGUgY29tbWl0IG1l
c3NhZ2VzIHRvIGZpdCB0aGUgYWN0dWFsIGNoYW5nZS4KKiBEbyBub3QgY29tcGlsZS1pbiB0aGUg
TkFORCBjb3JlIGJ5IGRlZmF1bHQsIGRvIGl0IG9ubHkgZm9yIHJhdwogIE5BTkQuIFJlbW92ZSB0
aGUgZGVwZW5kZW5jaWVzIG9uIENPTkZJR19NVEQgaW4gYSBkaWZmZXJlbnQKICBwYXRjaC4gQWxz
bywga2VlcCBhbiBleHRyYSBsZXZlbCBvZiBoaWVyYXJjaHkgaW4gS2NvbmZpZyBmb3IgdGhlCiAg
TkFORCBiaXRzIGJ5IGFkZGluZyBhIG1lbnUgaW5zdGVhZCBvZiBhIGNvbmZpZy4KKiBNb3ZlZCB0
aGUgc3RhbmRhcmQgT09CIGxheW91dHMgaW4gdGhlIGVjYy9lbmdpbmUuYyBkcml2ZXIgaW5zdGVh
ZCBvZgogIGluIHRoZSBOQU5EIGNvcmUuCiogVXNlZCB0aGUgbmFuZF9lY2NfIHByZWZpeCBpbiBt
b3N0IG9mIHRoZSBlbmdpbmVzIGZ1bmN0aW9ucyBpbnN0ZWFkCiAgb2YganVzdCBlY2NfLCB3aGlj
aCBpcyBub3cgcmVzZXJ2ZWQgZm9yIGJhcmUgaGVscGVycy4gR2V0IHJpZCBvZiB0aGUKICBfX2Vj
YyBwcmVmaXguCiogSW4gdGhlIHN1bnhpIE5BTkQgY29udHJvbGxlciBkcml2ZXI6IG1vdmVkIHRo
ZSBFQ0Mgc3RydWN0dXJlIGZyb20KICBzdW54aV9uZmMgdG8gc3VueGlfbmFuZF9jaGlwIGFzIHRo
ZSBFQ0MgZW5naW5lIGlzIHBlci1jaGlwIGFuZCBub3QKICBwZXIgY29udHJvbGxlci4KKiBTb2Z0
d2FyZSBIYW1taW5nIEVDQyBlbmdpbmUgaXMgb25seSBlbmFibGVkIGJ5IGRlZmF1bHQgaWYgcmF3
IE5BTkQKICBpcyBhbHNvIGVuYWJsZWQuIE5ERkMgbm93IHNlbGVjdHMgdGhlIHNvZnR3YXJlIEhh
bW1pbmcgRUNDIGVuZ2luZQogIChpbnN0ZWFkIG9mIGRlcGVuZGluZyBvbiBpdCkuCiogTWVudGlv
biBpbiBzb2Z0d2FyZSBCQ0ggYW5kIEhhbW1pbmcgS2NvbmZpZyBlbnRyaWVzIHRoYXQgYm9vdGlu
ZwogIGZyb20gTkFORCBpcyB2ZXJ5IGxpa2VseSB0byBmYWlsIGlmIHRoZSB1c2VyIHNlbGVjdHMg
dGhlc2Ugc3ltYm9scwogIGFzIG1vZHVsZXMuCiogQWRkZWQgQm9yaXMgUmV2aWV3ZWQtYnkgdGFn
IG9uIHRoZSBTUEktTkFORCB0eXBvIGZpeGluZyBwYXRjaC4KKiBSZW5hbWVkIHRoZSAibW9kZSIg
aW50byBhICJwcm92aWRlciIgZW50cnkgaW4gdGhlIEVDQyBjb25maWd1cmF0aW9uCiAgc3RydWN0
dXJlcy4KKiBNb3ZlZCB0aGUgInRvdGFsIiBlbnRyeSBvZiB0aGUgRUNDIGNvbmZpZ3VyYXRpb24g
ZGlyZWN0bHkgaW4gdGhlCiAgY29udGV4dCBzdHJ1Y3R1cmUgKHNob3VsZCBwcm9iYWJseSBub3Qg
YmUgcHVibGljIGJ1dCBsZXQncyBrZWVwIGl0CiAgYXMgaXMgZm9yIG5vdykuCiogU3BsaXQgdGhl
IGdlbmVyaWMgRUNDIGVuZ2luZSBpbnRyb2R1Y3Rpb24gaW50byBzbWFsbGVyIHBhdGNoZXMgdG8g
ZG8KICBzb21lIHJlbmFtaW5nIGFzaWRlLgoqIERyb3AgdGhlICJtYXhpbWl6ZSIgZW50cnkgaW4g
dGhlIEVDQyBlbmdpbmUgY29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUsCiAga2VlcCB1c2luZyBhIGZs
YWcgbGlrZSBiZWZvcmUuCiogQ2FuY2VsZWQgdGhlIG1vdmUgb2YgdGhlIFNQSS1OQU5EIHNwZWNp
ZmljIEVDQyBlbmdpbmUgb3V0IG9mIHRoZQogIGNvcmUgZmlsZS4KKiBBbWVuZGVkIHRoZSByb290
IEVDQyBzdHJ1Y3R1cmVzIHRvIGhhdmUgdGhyZWUgbmFuZF9lY2NfY29uZgogIHN0cnVjdHVyZXM6
IG9uZSBmb3IgdGhlIGRlZmF1bHRzLCBvbmUgZm9yIHRoZSBjaGlwIHJlcXVpcmVtZW50cywgb25l
CiAgZm9yIHRoZSB1c2VyIGRlc2lyZXMuCiogQ3JlYXRlZCBhICpvbmRpZV9lbmdpbmUgcG9pbnRl
ciBpbiB0aGUgbmFuZF9lY2Mgc3RydWN0dXJlIHRvIHNhdmUKICB0aGUgb24tZGllIEVDQyBlbmdp
bmUsIGlmIGFueS4gRm9yIGluc3RhbmNlLCBzYXZpbmcgYSByZWZlcmVuY2UgdG8KICB0aGlzIGVu
Z2luZSBpcyBkb25lIGJ5IHRoZSBTUEktTkFORCBjb3JlLgoqIERyb3BwZWQgdGhlIFNQSS1OQU5E
IGZsYWcgdGhhdCB3YXMgdXNlZCB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIE5BTkQKICBmbGF2b3Jz
IGZyb20gdGhlIE5BTkQgY29yZSwgaXQgc2hvdWxkIG5vdCBiZSBuZWVkZWQgYW55bW9yZS4KKiBB
ZGRlZCBhbiBoZWxwZXIgaW4gdGhlIE5BTkQgY29yZSB0byBwdXQgYSByZWZlcmVuY2Ugb24gYW4g
RUNDCiAgZW5naW5lLiBUaGlzIHdpbGwgYmUgdXNlZCBieSB0aGUgaGFyZHdhcmUgZW5naW5lcyBv
bmx5LgoqIFJlbmFtZWQgdGhlIGZpbGVzIGVjYy9zdy17YmNoLGhhbW1pbmd9LmMgYW5kIHRoZWly
IGhlYWRlcnMKICBpbmNsdWRlL2xpbnV4L210ZC9uYW5kLWVjYy1zdy17YmNoLGhhbW1pbmd9LWVu
Z2luZS5oLgoqIENyZWF0ZWQgYSBNVERfTkFORF9FQ0MgaW52aXNpYmxlIEtjb25maWcgc3ltYm9s
LgoqIEFkZGVkIHBsZW50eSBvZiBtaXNzaW5nIEVYUE9SVF9TWU1CT0x7LF9HUEx9KCkuCiogTWlu
b3IgbW9kaWZpY2F0aW9ucyBzbyB0aGF0IGV2ZXJ5dGhpbmcgc3RpbGwgY29tcGlsZXMgZXZlbiB3
aGVuCiAgbW9kdWxlcyBhbmQgYnVpbHQtaW4gZHJpdmVycyBhcmUgbWl4ZWQgaW4gS2NvbmZpZyBp
biB0aGUgd2hvbGUgTkFORAogIGRpcmVjdG9yeS4KCgpNaXF1ZWwgUmF5bmFsICgyMCk6CiAgZHQt
YmluZGluZ3M6IG10ZDogRG9jdW1lbnQgbmFuZC1lY2MtcGxhY2VtZW50CiAgbXRkOiByYXduYW5k
OiBDcmVhdGUgYSBuZXcgZW51bWVyYXRpb24gdG8gZGVzY3JpYmUgRUNDIGJ5dGVzIHBsYWNlbWVu
dAogIG10ZDogcmF3bmFuZDogU2VwYXJhdGUgdGhlIEVDQyBlbmdpbmUgdHlwZSBhbmQgdGhlIEVD
QyBieXRlIHBsYWNlbWVudAogIG10ZDogcmF3bmFuZDogQ3JlYXRlIGEgaGVscGVyIHRvIHJldHJp
ZXZlIHRoZSBFQ0MgcGxhY2VtZW50CiAgbXRkOiByYXduYW5kOiBBZGQgYSBrZXJuZWwgZG9jIHRv
IHRoZSBFQ0MgYWxnb3JpdGhtIGVudW1lcmF0aW9uCiAgbXRkOiByYXduYW5kOiBSZW5hbWUgdGhl
IEVDQyBhbGdvcml0aG0gZW51bWVyYXRpb24gaXRlbXMKICBtdGQ6IHJhd25hbmQ6IENyZWF0ZSBh
IG5ldyBlbnVtZXJhdGlvbiB0byBkZXNjcmliZSBwcm9wZXJseSBFQ0MgdHlwZXMKICBtdGQ6IHJh
d25hbmQ6IFVzZSB0aGUgbmV3IEVDQyBlbmdpbmUgdHlwZSBlbnVtZXJhdGlvbgogIG10ZDogbmFu
ZDogTW92ZSBuYW5kX2RldmljZSBmb3J3YXJkIGRlY2xhcmF0aW9uIHRvIHRoZSB0b3AKICBtdGQ6
IG5hbmQ6IEFkZCBhbiBleHRyYSBsZXZlbCBpbiB0aGUgS2NvbmZpZyBoaWVyYXJjaHkKICBtdGQ6
IG5hbmQ6IERyb3AgdXNlbGVzcyAnZGVwZW5kcyBvbicgaW4gS2NvbmZpZwogIG10ZDogbmFuZDog
QWRkIGEgTkFORCBwYWdlIEkvTyByZXF1ZXN0IHR5cGUKICBtdGQ6IG5hbmQ6IFJlbmFtZSBhIGNv
cmUgc3RydWN0dXJlCiAgbXRkOiBuYW5kOiBBZGQgbW9yZSBwYXJhbWV0ZXJzIHRvIHRoZSBuYW5k
X2VjY19wcm9wcyBzdHJ1Y3R1cmUKICBtdGQ6IG5hbmQ6IEludHJvZHVjZSB0aGUgRUNDIGVuZ2lu
ZSBhYnN0cmFjdGlvbgogIG10ZDogbmFuZDogQ29udmVydCBnZW5lcmljIE5BTkQgYml0cyB0byB1
c2UgdGhlIEVDQyBmcmFtZXdvcmsKICBtdGQ6IHJhd25hbmQ6IEhpZGUgdGhlIGdlbmVyaWMgT09C
IGxheW91dCBvYmplY3RzIGJlaGluZCBoZWxwZXJzCiAgbXRkOiByYXduYW5kOiBXcml0ZSBhIGNv
bXBhdGliaWxpdHkgbGF5ZXIKICBtdGQ6IHJhd25hbmQ6IE1vdmUgZ2VuZXJpYyBPT0IgbGF5b3V0
cyB0byB0aGUgRUNDIGZyYW1ld29yawogIG10ZDogcmF3bmFuZDogTW92ZSB0aGUgdXNlciBpbnB1
dCBwYXJzaW5nIGJpdHMgdG8gdGhlIEVDQyBmcmFtZXdvcmsKCiAuLi4vYmluZGluZ3MvbXRkL25h
bmQtY29udHJvbGxlci55YW1sICAgICAgICAgfCAgMTAgKwogYXJjaC9hcm0vbWFjaC1kYXZpbmNp
L2JvYXJkLWRhODMwLWV2bS5jICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kv
Ym9hcmQtZGE4NTAtZXZtLmMgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9i
b2FyZC1kbTM1NS1ldm0uYyAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2Jv
YXJkLWRtMzU1LWxlb3BhcmQuYyAgIHwgICAzICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9h
cmQtZG0zNjUtZXZtLmMgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2Fy
ZC1kbTY0NHgtZXZtLmMgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJk
LWRtNjQ2eC1ldm0uYyAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQt
bWl0eW9tYXBsMTM4LmMgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9ib2FyZC1u
ZXVyb3Mtb3NkMi5jICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJkLW9t
YXBsMTM4LWhhd2suYyAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvY29tbW9uLXNt
ZGsuYyAgICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLWFudWJp
cy5jICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtYXQyNDQw
ZXZiLmMgICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1iYXN0LmMg
ICAgICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLWd0YTAyLmMg
ICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtaml2ZS5jICAg
ICAgICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1taW5pMjQ0MC5j
ICAgICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLW9zaXJpcy5jICAg
ICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtcXQyNDEwLmMgICAg
ICAgICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzI0eHgvbWFjaC1yeDE5NTAuYyAgICAg
ICAgICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjMjR4eC9tYWNoLXJ4MzcxNS5jICAgICAg
ICAgICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2MyNHh4L21hY2gtdnN0bXMuYyAgICAgICAg
ICAgIHwgICAyICstCiBhcmNoL2FybS9tYWNoLXMzYzY0eHgvbWFjaC1obXQuYyAgICAgICAgICAg
ICAgfCAgIDIgKy0KIGFyY2gvYXJtL21hY2gtczNjNjR4eC9tYWNoLW1pbmk2NDEwLmMgICAgICAg
ICB8ICAgMiArLQogYXJjaC9hcm0vbWFjaC1zM2M2NHh4L21hY2gtcmVhbDY0MTAuYyAgICAgICAg
IHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5kL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAg
fCAgMTMgKwogZHJpdmVycy9tdGQvbmFuZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgIHwg
ICAyICsKIGRyaXZlcnMvbXRkL25hbmQvZWNjLmMgICAgICAgICAgICAgICAgICAgICAgICB8IDQ3
MSArKysrKysrKysrKysrKysKIGRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9LY29uZmlnICAgICAg
ICAgICAgICB8ICAgMSAtCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9LY29uZmlnICAgICAgICAgICAg
ICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2Ftcy1kZWx0YS5jICAgICAgICAg
ICAgICB8ICAgNCArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvYXJhc2FuLW5hbmQtY29udHJvbGxl
ci5jIHwgIDE2ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9hdG1lbC9uYW5kLWNvbnRyb2xsZXIu
YyAgfCAgMzAgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2F1MTU1MG5kLmMgICAgICAgICAgICAg
ICB8ICAgNCArLQogLi4uL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL29wc19iY200NzA2LmMg
IHwgICAzICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jICAgICAg
fCAgMjcgKy0KIC4uLi9tdGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIuYyAgICB8
ICAgNCArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMgICAgICAgICAgICAgIHwg
ICAzICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jczU1M3hfbmFuZC5jICAgICAgICAgICAgfCAg
IDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2RhdmluY2lfbmFuZC5jICAgICAgICAgICB8ICAz
OCArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvZGVuYWxpLmMgICAgICAgICAgICAgICAgIHwgICA2
ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9kaXNrb25jaGlwLmMgICAgICAgICAgICAgfCAgIDMg
Ky0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2ZzbF9lbGJjX25hbmQuYyAgICAgICAgICB8ICAyMCAr
LQogZHJpdmVycy9tdGQvbmFuZC9yYXcvZnNsX2lmY19uYW5kLmMgICAgICAgICAgIHwgIDEyICst
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9mc2xfdXBtLmMgICAgICAgICAgICAgICAgfCAgIDQgKy0K
IGRyaXZlcnMvbXRkL25hbmQvcmF3L2ZzbWNfbmFuZC5jICAgICAgICAgICAgICB8ICAxNCArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvZ3Bpby5jICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMgICAgfCAgMTQgKy0KIGRy
aXZlcnMvbXRkL25hbmQvcmF3L2hpc2k1MDRfbmFuZC5jICAgICAgICAgICB8ICAgNiArLQogLi4u
L210ZC9uYW5kL3Jhdy9pbmdlbmljL2luZ2VuaWNfbmFuZF9kcnYuYyAgIHwgIDIwICstCiBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9scGMzMnh4X21sYy5jICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L2xwYzMyeHhfc2xjLmMgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVy
cy9tdGQvbmFuZC9yYXcvbWFydmVsbF9uYW5kLmMgICAgICAgICAgIHwgIDM0ICstCiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9tZXNvbl9uYW5kLmMgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L21wYzUxMjFfbmZjLmMgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvbXRrX25hbmQuYyAgICAgICAgICAgICAgIHwgIDEwICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9teGNfbmFuZC5jICAgICAgICAgICAgICAgfCAgMjUgKy0KIGRyaXZlcnMvbXRk
L25hbmQvcmF3L25hbmRfYmFzZS5jICAgICAgICAgICAgICB8IDU2NSArKysrKysrLS0tLS0tLS0t
LS0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfZXNtdC5jICAgICAgICAgICAgICB8ICAxMSAr
LQogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9oeW5peC5jICAgICAgICAgICAgIHwgIDQxICst
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2plZGVjLmMgICAgICAgICAgICAgfCAgIDQgKy0K
IGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbWljcm9uLmMgICAgICAgICAgICB8ICAyMCArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9vbmZpLmMgICAgICAgICAgICAgIHwgICA4ICstCiBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX3NhbXN1bmcuYyAgICAgICAgICAgfCAgMTkgKy0KIGRy
aXZlcnMvbXRkL25hbmQvcmF3L25hbmRfdG9zaGliYS5jICAgICAgICAgICB8ICAxNiArLQogZHJp
dmVycy9tdGQvbmFuZC9yYXcvbmFuZHNpbS5jICAgICAgICAgICAgICAgIHwgICA4ICstCiBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9uZGZjLmMgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L29tYXAyLmMgICAgICAgICAgICAgICAgICB8ICAyMiArLQogZHJpdmVy
cy9tdGQvbmFuZC9yYXcvb3Jpb25fbmFuZC5jICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9wYXNlbWlfbmFuZC5jICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L3BsYXRfbmFuZC5jICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvcWNvbV9uYW5kYy5jICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9yODUyLmMgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvbXRk
L25hbmQvcmF3L3MzYzI0MTAuYyAgICAgICAgICAgICAgICB8ICAyMCArLQogZHJpdmVycy9tdGQv
bmFuZC9yYXcvc2hfZmxjdGwuYyAgICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9zaGFycHNsLmMgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25h
bmQvcmF3L3NvY3JhdGVzX25hbmQuYyAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9tdGQvbmFu
ZC9yYXcvc3RtMzJfZm1jMl9uYW5kLmMgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9zdW54aV9uYW5kLmMgICAgICAgICAgICAgfCAgMjYgKy0KIGRyaXZlcnMvbXRkL25hbmQv
cmF3L3RhbmdvX25hbmQuYyAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9tdGQvbmFuZC9y
YXcvdGVncmFfbmFuZC5jICAgICAgICAgICAgIHwgIDM0ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy90bWlvX25hbmQuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L3R4eDluZGZtYy5jICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcv
dmY2MTBfbmZjLmMgICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy94
d2F5X25hbmQuYyAgICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvbXRkL25hbmQvc3BpL2Nv
cmUuYyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQogZHJpdmVycy9tdGQvbmFuZC9zcGkvbWFj
cm9uaXguYyAgICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL210ZC9uYW5kL3NwaS90b3No
aWJhLmMgICAgICAgICAgICAgICAgfCAgIDYgKy0KIGluY2x1ZGUvbGludXgvbXRkL25hbmQuaCAg
ICAgICAgICAgICAgICAgICAgICB8IDE2NCArKysrLQogaW5jbHVkZS9saW51eC9tdGQvcmF3bmFu
ZC5oICAgICAgICAgICAgICAgICAgIHwgIDM0ICstCiBpbmNsdWRlL2xpbnV4L210ZC9zcGluYW5k
LmggICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGluY2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0
YS9tdGQtZGF2aW5jaS5oICAgICB8ICAgOSArLQogLi4uL2xpbnV4L3BsYXRmb3JtX2RhdGEvbXRk
LW5hbmQtczNjMjQxMC5oICAgIHwgICAyICstCiA5NCBmaWxlcyBjaGFuZ2VkLCAxMjIxIGluc2Vy
dGlvbnMoKyksIDczMSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210
ZC9uYW5kL2VjYy5jCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
