Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCB2917A7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 18:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrVLWDu8oQv400Cq/2y5yasxQ3PlpMRcRijxrx5mu3U=; b=PkpbLalPb5QOz1
	mhxzq9ghwbWBB+exQzR7VwCkOuLRqg2caAwXjeJAbG7dj4JrVOZJc5OM8J5IIuH/69XTbtFD/PWO7
	wsli1b9DfK6HHkLDgs8TBTRSTpt0FhDsyW5khx4tUwhMxO+RnFONFztrZOa2LoLzhv1OS8o2GvcdW
	eeU9PPFIOYtISvlZw6K9jSpHXxHje17fUHusMSTP/bVkWCSFwJ50FQq+zAstm/UrGZnCwe1vop5ZT
	PPbj2goevnCT7rFhjmmz0H49OakhuSBSgDjWkPPSXMU9aZYIA66RuTjZmxq2pCLtboUe0eJVIemNp
	BWzN7+6Ypcs/JLsGMutw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzNjU-0006nt-Os; Sun, 18 Aug 2019 16:08:40 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzNj1-0006bQ-0A
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 16:08:13 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id D5A9296D9C;
 Sun, 18 Aug 2019 16:08:06 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id 3CEE640992;
 Sun, 18 Aug 2019 16:08:07 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.53.43.183.bambit.de
 [185.53.43.183])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id AD28D100B88;
 Sun, 18 Aug 2019 18:08:06 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 00/13] implement poweroff for mt6323 / bpi-r2
Date: Sun, 18 Aug 2019 18:07:44 +0200
Message-Id: <20190818160757.8206-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_090811_343943_D04B1195 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.129.51.220 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bWFpbmxpbmUtZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgbXQ2MzIzCgp0aGlzIHNlcmllcyBtYWtl
cyBzb21lIGNsZWFudXAgdG8gbXQ2Mzk3LXJ0Yy1kcml2ZXIsIGFkZHMgbXQ2MzIzIGFuZAppbXBs
ZW1lbnQgcG93ZXItY29udHJvbGxlciBvbiBpdC4KCnRlc3RlZCBvbiBiYW5hbmFwaS1yMgoKT3Jp
Z2luYWwgUGF0Y2ggZnJvbSBKb3NlZiBGcmllZGwKCm1pc3NlZCBsaW51eC1hcm0ta2VybmVsIGR1
ZSB0byBtaXNzaW5nIGNvbW1hLCBzbyBzZW5kaW5nIHRvIGl0IG5vdyBzZXBhcmF0ZWx5CgpjaGFu
Z2VzIHNpbmNlIHY1OgoJLSBzcGxpdHRlZCBwYXJ0IDEgdG8gc2VwYXJhdGUgY2hhbmdlcyBhbmQg
YWRkaXRpb25zIG5vdCByZWxhdGVkIHRvIHB3cmMKCS0gbW92ZSBtZmQvbXQ2Mzk3L2NvcmUuaCBm
cm9tIHY0LjggaW4gc2VwYXJhdGUgcGF0Y2ggImFkZCBtdXRleCBpbmNsdWRlIgoJLSBjaGFuZ2Vk
IHJlY2lwaWVudHMgKG1vdmVkIGZyb20gVG8gdG8gQ2MsIHJlbW92ZWQgY29tbWl0dGVycykKY2hh
bmdlcyBzaW5jZSB2NDoKCS0gcmVsYXRpdmUgcGF0aCBpbiBwYXJ0IDErMgoJLSBkcm9wIGNoYW5n
ZSBvZiBjb3B5cmlnaHQteWVhciBpbiBwYXJ0IDUKY2hhbmdlcyBzaW5jZSB2MzoKCS0gbW92ZWQg
U09CIGluIDIvMTAgYW5kIDkvMTAKCS0gbW92ZWQgcGFydCA1IHRvIDYgdG8gYmUgbmVhciBkcml2
ZXItY2hhbmdlCgktIGNoYW5nZWhpc3Rvcnkgb2YgcGF0Y2hlcyBiZWxvdyAtLS0KCmNoYW5nZXMg
c2luY2UgdjI6CgktIFNwbGl0dGVkIHNvbWUgcGFydHMgYW5kIHJlYmFzZWQgb24gNS4zLXJjMjoK
Cgl2Mi4xIGR0LWJpbmRpbmdzOiBhZGQgcG93ZXJjb250cm9sbGVyIOKAkyB0cnkgdG8gbWFrZSBi
ZXR0ZXIgc3ViamVjdAoJdjIuMiBzZXBhcmF0ZSBydGMtbXQ2Mzk3LnR4dCAoc3VnZ2VzdGVkIGJ5
IEFsZXhhbmRyZSBCZWxsb25pKQoJICAgICBhZGQgbWlzc2luZyBjb21taXQtbWVzc2FnZSAoc3Vn
Z2VzdGVkIGJ5IE1hdHRoaWFzIEJydWdnZXIpCgl2Mi4zIGZpeCBhbGxvYyBhZnRlciBJUlEgKHN1
Z2dlc3RlZCBieSBBbGV4YW5kcmUgQmVsbG9uaSkKCSAgICAgbmV3IGNvbXBhdGlibGUgKHNwbGl0
dGluZyBzdWdnZXN0ZWQgYnkgQWxleGFuZHJlIEJlbGxvbmkpCgkgICAgIG5lZWRlZCBkdWUgdG8g
ZGlmZmVyZW50IHJ0Yy1iYXNlL3NpemUgc2VlICM3Cgl2Mi40IHNpbXBsaWZpY2F0aW9ucyAoRGVm
aW5lLXJlcy1tYWNyb3MpCgkgICAgIGFkZCBtdDYzMjMgcnRjK3B3cmMKCXYyLjUgYWRkIHBvd2Vy
b2ZmLWRyaXZlciAobm8gY2hhbmdlKQoJdjIuNiBNQUlOVEFJTkVSUyAobm8gY2hhbmdlKQoJdjIu
NyBEVFMtQ2hhbmdlcyAobm8gY2hhbmdlKQoKCkZyYW5rIFd1bmRlcmxpY2ggKDEpOgogIGR0LWJp
bmRpbmdzOiBtZmQ6IG1lZGlhdGVrOiBtdDYzOTc6IGNoYW5nZSB0byByZWxhdGl2ZSBwYXRocwoK
Sm9zZWYgRnJpZWRsICgxMik6CiAgZHQtYmluZGluZ3M6IG1mZDogbWVkaWF0ZWs6IHVwZGF0ZSBy
dGMgdG8gaW5jbHVkZSBtdDYzMjMKICBkdC1iaW5kaW5nczogbWZkOiBtZWRpYXRlazogYWRkIG10
NjMyMyBwb3dlci1jb250cm9sbGVyCiAgZHQtYmluZGluZ3M6IHJ0YzogbWVkaWF0ZWs6IGFkZCBt
aXNzaW5nIG10NjM5NyBydGMKICBydGM6IG10NjM5NzogbW92ZSBzb21lIGNvbW1vbiBkZWZpbml0
aW9ucyBpbnRvIHJ0Yy5oCiAgbWZkOiBtdDYzOTc6IGFkZCBtdXRleCBpbmNsdWRlCiAgcnRjOiBt
dDYzOTc6IGltcHJvdmVtZW50cyBvZiBydGMgZHJpdmVyCiAgbWZkOiBtdDYzMjM6IHNvbWUgaW1w
cm92ZW1lbnRzIG9mIG10NjM5Ny1jb3JlCiAgcnRjOiBtdDYzOTc6IGFkZCBjb21wYXRpYmxlIGZv
ciBtdDYzMjMKICBtZmQ6IG10NjMyMzogYWRkIG10NjMyMyBydGMrcHdyYwogIHBvd2VyOiByZXNl
dDogYWRkIGRyaXZlciBmb3IgbXQ2MzIzIHBvd2Vyb2ZmCiAgTUFJTlRBSU5FUlM6IGFkZCBNZWRp
YXRlayBzaHV0ZG93biBkcml2ZXJzCiAgYXJtOiBkdHM6IG10NjMyMzogYWRkIGtleXMsIHBvd2Vy
LWNvbnRyb2xsZXIsIHJ0YyBhbmQgY29kZWMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
bXQ2Mzk3LnR4dCAgICAgICAgfCAgMjAgKysrLQogLi4uL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L210
NjMyMy1wb3dlcm9mZi50eHQgIHwgIDIwICsrKysKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0
Yy9ydGMtbXQ2Mzk3LnR4dCAgICB8ICAyOSArKysrKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsrCiBhcmNoL2FybS9ib290L2R0cy9tdDYzMjMu
ZHRzaSAgICAgICAgICAgICAgICAgfCAgMjcgKysrKysKIGRyaXZlcnMvbWZkL210NjM5Ny1jb3Jl
LmMgICAgICAgICAgICAgICAgICAgICB8ICAzOCArKysrKy0tCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0
L0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMTAgKysKIGRyaXZlcnMvcG93ZXIvcmVzZXQv
TWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0L210
NjMyMy1wb3dlcm9mZi5jICAgICAgICAgfCAgOTcgKysrKysrKysrKysrKysrKwogZHJpdmVycy9y
dGMvcnRjLW10NjM5Ny5jICAgICAgICAgICAgICAgICAgICAgIHwgMTA3ICsrKystLS0tLS0tLS0t
LS0tLQogaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L2NvcmUuaCAgICAgICAgICAgICAgIHwgICAy
ICsKIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCAgICAgICAgICAgICAgICB8ICA3MSAr
KysrKysrKysrKysKIDEyIGZpbGVzIGNoYW5nZWQsIDMyNyBpbnNlcnRpb25zKCspLCAxMDIgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcudHh0CiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYuYwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaAoKLS0gCjIu
MTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
