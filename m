Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A491DDE4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2BxHn4jfuH20MA6r2ceblvTbc07hY7vG0r1flmu5su4=; b=R53uK39+1NfyH2
	XdHtZQKVkFQNW6aTv/bYUEOSDLQpcyxL+CpB/S2DrMRF+aSWWvXCONICbZM1H5RjcHi2oGsT8r8uL
	anblWCH/fco/7IezWhFxGvWoUaqchoMNYSh8wNnf6eNbJfvyfykUUKyT2uovuKxEUbNydDBiFvB8O
	wTYKiCZF5vh26S+f/EZesFqzTKxulXFRvOVfH1OYhumQFz3owKs/LgdK5SBMTLQZr0sHHvw/y5whh
	Ly7C3Jb1elZIi9tHkJJcZW2WYPBQe+J630XQ2qxt1goC+9Ba1ly2Sn6ODZsCgoMzv31fR4/VPudCa
	O5Vx3JG174UJWVltY8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyfY-0000jt-0k; Fri, 22 May 2020 03:48:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyfM-0000hX-Fb; Fri, 22 May 2020 03:48:13 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3F11374CB98CDB456CAC;
 Fri, 22 May 2020 11:48:01 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Fri, 22 May 2020
 11:47:53 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <kvalo@codeaurora.org>, <davem@davemloft.net>, <kuba@kernel.org>,
 <matthias.bgg@gmail.com>, <shayne.chen@mediatek.com>,
 <chih-min.chen@mediatek.com>, <yf.luo@mediatek.com>,
 <yiwei.chung@mediatek.com>
Subject: [PATCH -next] mt76: mt7915: Fix build error
Date: Fri, 22 May 2020 11:45:33 +0800
Message-ID: <20200522034533.61716-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_204812_684050_0070759A 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC9maXJtd2FyZS5oOjY6MCwKICAg
ICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3
OTE1L21jdS5jOjQ6CkluIGZ1bmN0aW9uIOKAmF9fbXQ3OTE1X21jdV9tc2dfc2VuZOKAmSwKICAg
IGlubGluZWQgZnJvbSDigJhtdDc5MTVfbWN1X3NlbmRfbWVzc2FnZeKAmSBhdCBkcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9tY3UuYzozNzA6NjoKLi9pbmNsdWRlL2xp
bnV4L2NvbXBpbGVyLmg6Mzk2OjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fz
c2VydF81NDXigJkgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEJVSUxEX0JVR19PTiBm
YWlsZWQ6IGNtZCA9PSBNQ1VfRVhUX0NNRF9FRlVTRV9BQ0NFU1MgJiYgbWN1X3R4ZC0+c2V0X3F1
ZXJ5ICE9IE1DVV9RX1FVRVJZCiAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywg
X19jb21waWxldGltZV9hc3NlcnRfLCBfX0NPVU5URVJfXykKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCi4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM3Nzo0OiBub3Rl
OiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZCiAgICBw
cmVmaXggIyMgc3VmZml4KCk7ICAgIFwKICAgIF5+fn5+fgouL2luY2x1ZGUvbGludXgvY29tcGls
ZXIuaDozOTY6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmF9jb21waWxldGltZV9h
c3NlcnTigJkKICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0
aW1lX2Fzc2VydF8sIF9fQ09VTlRFUl9fKQogIF5+fn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRl
L2xpbnV4L2J1aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCY
Y29tcGlsZXRpbWVfYXNzZXJ04oCZCiAjZGVmaW5lIEJVSUxEX0JVR19PTl9NU0coY29uZCwgbXNn
KSBjb21waWxldGltZV9hc3NlcnQoIShjb25kKSwgbXNnKQogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Ci4vaW5jbHVkZS9saW51eC9idWlsZF9i
dWcuaDo1MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQlVJTERfQlVHX09OX01T
R+KAmQogIEJVSUxEX0JVR19PTl9NU0coY29uZGl0aW9uLCAiQlVJTERfQlVHX09OIGZhaWxlZDog
IiAjY29uZGl0aW9uKQogIF5+fn5+fn5+fn5+fn5+fn4KZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVk
aWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmM6MjgwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNy
byDigJhCVUlMRF9CVUdfT07igJkKICBCVUlMRF9CVUdfT04oY21kID09IE1DVV9FWFRfQ01EX0VG
VVNFX0FDQ0VTUyAmJgogIF5+fn5+fn5+fn5+fgoKQlVJTERfQlVHX09OIGlzIG1lYW5pbmdsZXNz
IGhlcmUsIGNoYW5nIGl0IHRvIFdBUk5fT04uCgpGaXhlczogZTU3Yjc5MDE0NjlmICgibXQ3Njog
YWRkIG1hYzgwMjExIGRyaXZlciBmb3IgTVQ3OTE1IFBDSWUtYmFzZWQgY2hpcHNldHMiKQpTaWdu
ZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVy
cy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmMgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvbWN1LmMgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9tY3UuYwppbmRleCBmMDBhZDJiNjY3
NjEuLjk5ZWVlYTQyNDc4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0
ZWsvbXQ3Ni9tdDc5MTUvbWN1LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsv
bXQ3Ni9tdDc5MTUvbWN1LmMKQEAgLTI3Nyw4ICsyNzcsOCBAQCBzdGF0aWMgaW50IF9fbXQ3OTE1
X21jdV9tc2dfc2VuZChzdHJ1Y3QgbXQ3OTE1X2RldiAqZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LAogCX0KIAogCW1jdV90eGQtPnMyZF9pbmRleCA9IE1DVV9TMkRfSDJOOwotCUJVSUxEX0JVR19P
TihjbWQgPT0gTUNVX0VYVF9DTURfRUZVU0VfQUNDRVNTICYmCi0JCSAgICAgbWN1X3R4ZC0+c2V0
X3F1ZXJ5ICE9IE1DVV9RX1FVRVJZKTsKKwlXQVJOX09OKGNtZCA9PSBNQ1VfRVhUX0NNRF9FRlVT
RV9BQ0NFU1MgJiYKKwkJbWN1X3R4ZC0+c2V0X3F1ZXJ5ICE9IE1DVV9RX1FVRVJZKTsKIAogZXhp
dDoKIAlpZiAod2FpdF9zZXEpCi0tIAoyLjE3LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
