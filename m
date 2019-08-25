Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DA39C4AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 17:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CCMNX0i1GZM7F9HVS2MQLh0y7q2FvtY326tTp+wwmp4=; b=aHvmLlQc+kYzKy
	N0fDZa6ZcHutFEvkIeZR+Msnkyg9MWZ1HbHKdekNdyTfWp/CkygrNWEwKdkd/+6w7d5aayU+FDAfR
	uF1hYiBBC4Mbfw0nyXxD7G60VErkGzHfd4f2aDbfclEHVCepLDOckq2eaEUJf5uPnRw7oDTZ6wPoc
	LETStzz7+mc0riTJs5w2pvDCa4GO00qUZ432nTp5jdYNvEsvBXf180wcZ76B5svQFRNg0DLWzQQjm
	Y6EvvB4OWH52mAXyNsrb5Q0Nixs2p6yMblA8VpvSQoYcjyO8mTCxbg/zfPtTtBSTg5yJvPoptQ+4y
	FGzZDHxPJdmom7RfOh8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1uWJ-00007H-J1; Sun, 25 Aug 2019 15:33:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uW7-00006W-I0
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 15:33:22 +0000
Received: from X250.getinternet.no (cm-84.211.118.175.getinternet.no
 [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3B4206DD;
 Sun, 25 Aug 2019 15:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566747198;
 bh=qpTNZzkbvAe12/Ld76DOOHATL+xYj9asbfa2A1ZSrTE=;
 h=From:To:Cc:Subject:Date:From;
 b=XSg0/t7ga3SdqQ47EN43ncTtGzQfGQI6j2T9q/EO6rxOdOrroOI08kStT4QPy/RxQ
 0YZc0nPz12C9xH9B/7pu4sNWIu4vA3BYFTmyoLeS6Iv6/+lpSss+boTamzA8poqfpa
 3MnCO8LTX2GCvG4IkbsuIs0N5KMm/u8OqrozUj80=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/7] i.MX drivers update for 5.4
Date: Sun, 25 Aug 2019 17:32:31 +0200
Message-Id: <20190825153237.28829-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_083319_613675_A92BE0FF 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA1ZjllODMyYzEzNzA3NTA0NWQxNWNk
Njg5OWFiMDUwNWNmYjJjYTRiOgoKICBMaW51cyA1LjMtcmMxICgyMDE5LTA3LTIxIDE0OjA1OjM4
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtZHJpdmVycy01LjQKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA5
NjhjNmY0YjNjMjFlOWZhZTliNDljYzkxMjE0YTAxYjQ4Mjc2MjVkOgoKICBzb2M6IGlteDogZ3Bj
djI6IFByaW50IHRoZSBjb3JyZWN0IGVycm9yIGNvZGUgKDIwMTktMDgtMjQgMjI6NDE6MDggKzAy
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCmkuTVggZHJpdmVycyB1cGRhdGUgZm9yIDUuNDoKIC0gQSBzZXJpZXMgZnJv
bSBBbnNvbiBIdWFuZyB0byBhZGQgVUlEIHN1cHBvcnQgZm9yIGkuTVg4IFNvQyBhbmQgU0NVCiAg
IGRyaXZlcnMuCiAtIEEgc2VyaWVzIGZyb20gRGFuaWVsIEJhbHV0YSB0byBhZGQgRFNQIElQQyBk
cml2ZXIgZm9yIGNvbW11bmljYXRpb24KICAgYmV0d2VlbiBob3N0IEFQIChMaW51eCkgYW5kIHRo
ZSBmaXJtd2FyZSBydW5uaW5nIG9uIERTUCBlbWJlZGRlZCBpbgogICBpLk1YOCBTb0NzLgogLSBB
IHNtYWxsIGZpeCBmb3IgR1BDdjIgZXJyb3IgY29kZSBwcmludGluZy4KIC0gU3dpdGNoIGZyb20g
bW9kdWxlX3BsYXRmb3JtX2RyaXZlcl9wcm9iZSgpIHRvIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIo
KQogICBmb3IgaW14LXdlaW0gZHJpdmVyLCBhcyB3ZSBuZWVkIHRoZSBkcml2ZXIgdG8gcHJvYmUg
YWdhaW4gd2hlbiBkZXZpY2UKICAgaXMgcHJlc2VudCBsYXRlci4KIC0gQWRkIG9wdGlvbmFsIGJ1
cnN0IGNsb2NrIG1vZGUgc3VwcG9ydCBmb3IgaW14LXdlaW0gZHJpdmVyLgoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBbnNv
biBIdWFuZyAoMyk6CiAgICAgIHNvYzogaW14ODogQWRkIGkuTVg4TVEgVUlEKHVuaXF1ZSBpZGVu
dGlmaWVyKSBzdXBwb3J0CiAgICAgIHNvYzogaW14ODogQWRkIGkuTVg4TU0gVUlEKHVuaXF1ZSBp
ZGVudGlmaWVyKSBzdXBwb3J0CiAgICAgIHNvYzogaW14LXNjdTogQWRkIFNvQyBVSUQodW5pcXVl
IGlkZW50aWZpZXIpIHN1cHBvcnQKCkRhbmllbCBCYWx1dGEgKDQpOgogICAgICBmaXJtd2FyZTog
aW14OiBzY3UtcGQ6IFJlbmFtZSBtdSBQRCByYW5nZSB0byBtdV9hCiAgICAgIGZpcm13YXJlOiBp
bXg6IHNjdS1wZDogQWRkIG11MTMgYiBzaWRlIFBEIHJhbmdlCiAgICAgIGZpcm13YXJlOiBpbXg6
IHNjdS1wZDogQWRkIElSUVNUUl9EU1AgUEQgcmFuZ2UKICAgICAgZmlybXdhcmU6IGlteDogQWRk
IERTUCBJUEMgcHJvdG9jb2wgaW50ZXJmYWNlCgpHdWlkbyBHw7xudGhlciAoMSk6CiAgICAgIHNv
YzogaW14OiBncGN2MjogUHJpbnQgdGhlIGNvcnJlY3QgZXJyb3IgY29kZQoKU2FzY2hhIEhhdWVy
ICgxKToKICAgICAgYnVzOiBpbXgtd2VpbTogdXNlIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIoKQoK
U3ZlbiBWYW4gQXNicm9lY2sgKDEpOgogICAgICBidXM6IGlteC13ZWltOiBvcHRpb25hbGx5IGVu
YWJsZSBidXJzdCBjbG9jayBtb2RlCgogZHJpdmVycy9idXMvaW14LXdlaW0uYyAgICAgICAgICAg
fCAgMjQgKysrKystCiBkcml2ZXJzL2Zpcm13YXJlL2lteC9LY29uZmlnICAgICB8ICAxMSArKysK
IGRyaXZlcnMvZmlybXdhcmUvaW14L01ha2VmaWxlICAgIHwgICAxICsKIGRyaXZlcnMvZmlybXdh
cmUvaW14L2lteC1kc3AuYyAgIHwgMTU1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9maXJtd2FyZS9pbXgvc2N1LXBkLmMgICAgfCAgIDQgKy0KIGRyaXZl
cnMvc29jL2lteC9ncGN2Mi5jICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL3NvYy9pbXgvc29j
LWlteC1zY3UuYyAgICB8ICAzOSArKysrKysrKysrCiBkcml2ZXJzL3NvYy9pbXgvc29jLWlteDgu
YyAgICAgICB8ICA0NSArKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvZmlybXdhcmUvaW14L2Rz
cC5oIHwgIDY3ICsrKysrKysrKysrKysrKysrCiA5IGZpbGVzIGNoYW5nZWQsIDM0MiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZmlybXdh
cmUvaW14L2lteC1kc3AuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZmlybXdh
cmUvaW14L2RzcC5oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
