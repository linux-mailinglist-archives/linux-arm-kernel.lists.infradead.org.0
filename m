Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104A713FCB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SEhiZU5pIC4cBH0hdn8kmY1QHB1fGrx++DKXZ7Z/KJ4=; b=KXD04jpX+EF+I0
	FyXeWwA0zNOrgg0Ragz7J18bzGJ0hPdFnm4DJevoCvrXTy6iONAUTw3HxJNLYvUefERZiSru2Ay3Z
	vwosk6TXRYLxvXAwQEKR0qgmrufNcr2tqaipfkhFmBPba7e8hePoLmJxhB8VXx9xtBDLXBwlsFcQN
	NLKEZcUa5yDSjvK8fWMJebkjA4N+5pYe4z4LF47GLxF5VU3VsT6qf7Kg7AL0m3B6Mj4a5YVlvbOwv
	b2csdTcJH/DyGYXD31y91/Vif3pGema8ldjUnHtmaouOL48crFvF7d1Tn65Pev8u1pJTaotLyIkk7
	rQoG+tObzXzg99tDtuJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEDr-0007Io-M4; Thu, 16 Jan 2020 23:06:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEDi-0007IH-35
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:06:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 915602072E;
 Thu, 16 Jan 2020 23:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579215993;
 bh=ONN7nMJJHcufc7hpG1pxKmQRwmvV/8yFyLpT1jNePYE=;
 h=Subject:To:Cc:From:Date:From;
 b=uvGk06fXkFxo8Eq6e61a79hfgAAq5LHCFW+1aekXs+Je1Nr7l915gvuiaqSQ9R8Vx
 yvAAAzQHFkZUPLhfqjsC1Xh4G49Gvzx1pNuDMr/igYBZnQ/xiQWKsljsXhq9e9GjOD
 fi4gKuF3lbW+iZ4n1/uZP9Lf9Z2Q2GKsGJcEnyEI=
Subject: Patch "spi: pxa2xx: Set controller->max_transfer_size in dma mode"
 has been added to the 5.4-stable tree
To: 20191017064426.30814-1-daniel.vetter@ffwll.ch, andriy.shevchenko@intel.com,
 broonie@kernel.org, daniel.vetter@ffwll.ch, daniel@zonque.org,
 gregkh@linuxfoundation.org, haojian.zhuang@gmail.com,
 linux-arm-kernel@lists.infradead.org, noralf@tronnes.org,
 robert.jarzmik@free.fr, sam@ravnborg.org
From: <gregkh@linuxfoundation.org>
Date: Fri, 17 Jan 2020 00:04:45 +0100
Message-ID: <157921588531236@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_150634_175044_C4EFD213 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ClRoaXMgaXMgYSBub3RlIHRvIGxldCB5b3Uga25vdyB0aGF0IEkndmUganVzdCBhZGRlZCB0aGUg
cGF0Y2ggdGl0bGVkCgogICAgc3BpOiBweGEyeHg6IFNldCBjb250cm9sbGVyLT5tYXhfdHJhbnNm
ZXJfc2l6ZSBpbiBkbWEgbW9kZQoKdG8gdGhlIDUuNC1zdGFibGUgdHJlZSB3aGljaCBjYW4gYmUg
Zm91bmQgYXQ6CiAgICBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZ2l0Lz9wPWxpbnV4L2tlcm5lbC9n
aXQvc3RhYmxlL3N0YWJsZS1xdWV1ZS5naXQ7YT1zdW1tYXJ5CgpUaGUgZmlsZW5hbWUgb2YgdGhl
IHBhdGNoIGlzOgogICAgIHNwaS1weGEyeHgtc2V0LWNvbnRyb2xsZXItbWF4X3RyYW5zZmVyX3Np
emUtaW4tZG1hLW1vZGUucGF0Y2gKYW5kIGl0IGNhbiBiZSBmb3VuZCBpbiB0aGUgcXVldWUtNS40
IHN1YmRpcmVjdG9yeS4KCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZlZWxzIGl0IHNob3VsZCBu
b3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLApwbGVhc2UgbGV0IDxzdGFibGVAdmdlci5r
ZXJuZWwub3JnPiBrbm93IGFib3V0IGl0LgoKCkZyb20gYjI2NjJhMTY0ZjlkYzQ4ZGE4ODIyZTU2
NjAwNjg2ZDYzOTA1NjI4MiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KRGF0ZTogVGh1LCAxNyBPY3QgMjAxOSAwODo0
NDoyNiArMDIwMApTdWJqZWN0OiBzcGk6IHB4YTJ4eDogU2V0IGNvbnRyb2xsZXItPm1heF90cmFu
c2Zlcl9zaXplIGluIGRtYSBtb2RlCk1JTUUtVmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTogdGV4
dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0CgpG
cm9tOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKY29tbWl0IGIyNjYy
YTE2NGY5ZGM0OGRhODgyMmU1NjYwMDY4NmQ2MzkwNTYyODIgdXBzdHJlYW0uCgpJbiBETUEgbW9k
ZSB3ZSBoYXZlIGEgbWF4aW11bSB0cmFuc2ZlciBzaXplLCBwYXN0IHRoYXQgdGhlIGRyaXZlcgpm
YWxscyBiYWNrIHRvIFBJTyAoc2VlIHRoZSBjaGVjayBhdCB0aGUgdG9wIG9mIHB4YTJ4eF9zcGlf
dHJhbnNmZXJfb25lKS4KRmFsbGluZyBiYWNrIHRvIFBJTyBmb3IgYmlnIHRyYW5zZmVycyBkZWZl
YXRzIHRoZSBwb2ludCBvZiBhIGRtYSBlbmdpbmUsCmhlbmNlIHNldCB0aGUgbWF4IHRyYW5zZmVy
IHNpemUgdG8gaW5mb3JtIHNwaSBjbGllbnRzIHRoYXQgdGhleSBuZWVkCnRvIGRvIHNvbWV0aGlu
ZyBzbWFydGVyLgoKVGhpcyB3YXMgdW5jb3ZlcmVkIGJ5IHRoZSBkcm1fbWlwaV9kYmkgc3BpIHBh
bmVsIGNvZGUsIHdoaWNoIGRvZXMKbGFyZ2Ugc3BpIHRyYW5zZmVycywgYnV0IHN0b3BwZWQgc3Bs
aXR0aW5nIHRoZW0gYWZ0ZXI6Cgpjb21taXQgZTE0MzM2NGI0YzE3NzRmNjhlOTIzYTVhMGJiMGZj
YTI4YWMyNTg4OApBdXRob3I6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpE
YXRlOiAgIEZyaSBKdWwgMTkgMTc6NTk6MTAgMjAxOSArMDIwMAoKICAgIGRybS90aW55ZHJtOiBS
ZW1vdmUgdGlueWRybV9zcGlfbWF4X3RyYW5zZmVyX3NpemUoKQoKQWZ0ZXIgdGhpcyBjb21taXQg
dGhlIGNvZGUgcmVsaWVkIG9uIHRoZSBzcGkgY29yZSB0byBzcGxpdCB0cmFuc2ZlcnMKaW50byBt
YXggZG1hLWFibGUgYmxvY2tzLCB3aGljaCBhbHNvIHBhcGVyZWQgb3ZlciB0aGUgUElPIGZhbGxi
YWNrIGlzc3VlLgoKRml4IHRoaXMgYnkgc2V0dGluZyB0aGUgb3ZlcmFsbCBtYXggdHJhbnNmZXIg
c2l6ZSB0byB0aGUgRE1BIGxpbWl0LApidXQgb25seSB3aGVuIHRoZSBjb250cm9sbGVyIHJ1bnMg
aW4gRE1BIG1vZGUuCgpGaXhlczogZTE0MzM2NGI0YzE3ICgiZHJtL3Rpbnlkcm06IFJlbW92ZSB0
aW55ZHJtX3NwaV9tYXhfdHJhbnNmZXJfc2l6ZSgpIikKQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJh
dm5ib3JnLm9yZz4KQ2M6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpDYzog
QW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BpbnRlbC5jb20+ClJlcG9ydGVkLWFu
ZC10ZXN0ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AaW50ZWwuY29t
PgpDYzogRGFuaWVsIE1hY2sgPGRhbmllbEB6b25xdWUub3JnPgpDYzogSGFvamlhbiBaaHVhbmcg
PGhhb2ppYW4uemh1YW5nQGdtYWlsLmNvbT4KQ2M6IFJvYmVydCBKYXJ6bWlrIDxyb2JlcnQuamFy
em1pa0BmcmVlLmZyPgpDYzogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgpDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1zcGlAdmdlci5rZXJu
ZWwub3JnClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+Ckxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAxOTEwMTcwNjQ0MjYuMzA4MTQt
MS1kYW5pZWwudmV0dGVyQGZmd2xsLmNoClNpZ25lZC1vZmYtYnk6IE1hcmsgQnJvd24gPGJyb29u
aWVAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4KCi0tLQogZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jIHwgICAg
NyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgotLS0gYS9kcml2ZXJz
L3NwaS9zcGktcHhhMnh4LmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCkBAIC0xNjEy
LDYgKzE2MTIsMTEgQEAgc3RhdGljIGludCBweGEyeHhfc3BpX2Z3X3RyYW5zbGF0ZV9jcyhzdAog
CXJldHVybiBjczsKIH0KIAorc3RhdGljIHNpemVfdCBweGEyeHhfc3BpX21heF9kbWFfdHJhbnNm
ZXJfc2l6ZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQoreworCXJldHVybiBNQVhfRE1BX0xFTjsK
K30KKwogc3RhdGljIGludCBweGEyeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKQEAgLTE3MTcsNiAr
MTcyMiw4IEBAIHN0YXRpYyBpbnQgcHhhMnh4X3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGYKIAkJfSBl
bHNlIHsKIAkJCWNvbnRyb2xsZXItPmNhbl9kbWEgPSBweGEyeHhfc3BpX2Nhbl9kbWE7CiAJCQlj
b250cm9sbGVyLT5tYXhfZG1hX2xlbiA9IE1BWF9ETUFfTEVOOworCQkJY29udHJvbGxlci0+bWF4
X3RyYW5zZmVyX3NpemUgPQorCQkJCXB4YTJ4eF9zcGlfbWF4X2RtYV90cmFuc2Zlcl9zaXplOwog
CQl9CiAJfQogCgoKUGF0Y2hlcyBjdXJyZW50bHkgaW4gc3RhYmxlLXF1ZXVlIHdoaWNoIG1pZ2h0
IGJlIGZyb20gZGFuaWVsLnZldHRlckBmZndsbC5jaCBhcmUKCnF1ZXVlLTUuNC9yZXZlcnQtZHJt
LXZpcnRpby1zd2l0Y2gtdmlydGlvX2dwdV93YWl0X2lvY3RsLXRvLWdlbS1oZWxwZXIucGF0Y2gK
cXVldWUtNS40L3NwaS1weGEyeHgtc2V0LWNvbnRyb2xsZXItbWF4X3RyYW5zZmVyX3NpemUtaW4t
ZG1hLW1vZGUucGF0Y2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
