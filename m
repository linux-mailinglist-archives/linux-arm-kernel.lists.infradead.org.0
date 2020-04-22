Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD971B35DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 06:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IqWYOe2AHhnArZYrj6uyBEY01Ty+XUqd3YGOw6rFItw=; b=KZ+vEu2s7GkoW+
	CiNGl18z0weeRVi/diNvn2nJgKswHkwd6AkQjZwuXLp4vMyelJaaaL7EIOBdPLWCi5HsQ0tlGVgzO
	hZSCFdsk0y+iZX66jdt7OgicKAcm0ZRYWloyPFxRhrB8OyqBkBg0688KfaBcbBVI5U95nnf0lG3/6
	Kpq/5m8SVA6iiDASY5rMYMhoqpS5JKUw1gHE9EC9w5cgn4uHyfCa6PGG7Ytwib6Q+0KAYtxzbs3Bm
	huNiLJM0JbpumFbgjJVHotumboAXBRtZU8RP5MliKBga6+CVoNTjfiw85+vK6sshQRC4LUx7uMtIP
	VAiEgPq+OeR+Zzfap5Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR6Yy-0000mn-Hl; Wed, 22 Apr 2020 04:00:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR6Ym-0000lc-7d
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 04:00:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 86FFA58046D;
 Wed, 22 Apr 2020 00:00:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 22 Apr 2020 00:00:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding; s=fm2; bh=NGhpjRaVKhvDj8NJZcE5WLuEq1
 CNGnmve/laehgEwX4=; b=B8+Om/cERAJzqqSD/dkvjzXMAGZb1DhcwnfESTrNOP
 CRV2gFEXTkK1cMoziqFgjIq0iGbyicb4lXnoBlzi04YmL0BrkzcyuXsdDiHADt7P
 wo9hQBeahsMIxZGLPaJydswh11yaBxZE2nA0WwPBimU21JtGnud9Fxbzt+ydJSJt
 Tt30wPAn/NEl0mnsnlnUyxSW4uc2/Bv3g5wTUZhhZPXqRrLEXkuzSLlhvIvLFHfR
 QOAXSwipzqUV3cnwyC+MmKZw8gTuHG3XMojx3M2ZpngrVU573GD5pgpyGhufwNED
 77U8Axy6MtneVod4B2R5phRISgxLqcsdCwfoXLzbZl1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=NGhpjR
 aVKhvDj8NJZcE5WLuEq1CNGnmve/laehgEwX4=; b=fSiy5rqDHNA3ycHI+1ZqJ/
 pT9NNV85dzLzo9HV0cXKr6b8m7Xr6/SSBpheGQRl7fA2OfvKWJy+fqCAs9lyfcFS
 AN4B8+Ru5xLe5VyK9s9pHCWyalllHKY4//H5LQxrTdzXe9kNC77Kfromd4Ckh/LS
 2saMLN1J+wTh984/BI3R4DMYJJf6WnnMxIx+B4+l2fWeIElBAozT0OzKi6ZSGcuM
 7mLCpfvmdztHTkuCc1wFVpB8WPgS6iAfxyls2qzplTOyYarKhgkHJcTpCzwPkWRK
 nYTqvxMDVNth8UeXZT3bl0i9i+nE+q7RDLfB9RQnyGSqE3ufL42Z36KpXMkpICBg
 ==
X-ME-Sender: <xms:WsGfXqGX_M0RQvr7pOxgpIBrH6Z7SZcUBp2EVHQ8RFIQptrzL-aBzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:WsGfXgXTWFEZF7yZxo43sFpt7mrJyKD8_xg5O-VmC-Ie3SwnNOsE5w>
 <xmx:WsGfXlAecWoKoBHEEx6XCaVpS2onHarBEczGZjH3xLiZs0hQLi6wiQ>
 <xmx:WsGfXp0L5BmC1OyMuOIzppbsFna3mIjMFej7wclpQCxQfE6p9hNgig>
 <xmx:W8GfXhs2Qf3ZIDWqqsY2NEcAtNCudKR9pSDuuAN_bYjqIa_ITXkKRQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC8803065CBF;
 Wed, 22 Apr 2020 00:00:25 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] media: cedrus: Program output format during each run
Date: Tue, 21 Apr 2020 23:04:09 -0500
Message-Id: <20200422040410.6251-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_210028_412891_C94009A8 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJldmlvdXNseSwgdGhlIG91dHB1dCBmb3JtYXQgd2FzIHByb2dyYW1tZWQgYXMgcGFydCBvZiB0
aGUgaW9jdGwoKQpoYW5kbGVyLiBIb3dldmVyLCB0aGlzIGhhcyB0d28gcHJvYmxlbXM6CgogIDEp
IElmIHRoZXJlIGFyZSBtdWx0aXBsZSBhY3RpdmUgc3RyZWFtcyB3aXRoIGRpZmZlcmVudCBvdXRw
dXQKICAgICBmb3JtYXRzLCB0aGUgaGFyZHdhcmUgd2lsbCB1c2Ugd2hpY2hldmVyIGZvcm1hdCB3
YXMgc2V0IGxhc3QKICAgICBmb3IgYm90aCBzdHJlYW1zLiBTaW1pbGFyeSwgYW4gaW9jdGwoKSBk
b25lIGluIGFuIGluYWN0aXZlCiAgICAgY29udGV4dCB3aWxsIHdyb25nbHkgYWZmZWN0IG90aGVy
IGFjdGl2ZSBjb250ZXh0cy4KICAyKSBUaGUgcmVnaXN0ZXJzIGFyZSB3cml0dGVuIHdoaWxlIHRo
ZSBkZXZpY2UgaXMgbm90IGFjdGl2ZWx5CiAgICAgc3RyZWFtaW5nLiBUbyBlbmFibGUgcnVudGlt
ZSBQTSB0aWVkIHRvIHRoZSBzdHJlYW1pbmcgc3RhdGUsCiAgICAgYWxsIGhhcmR3YXJlIGFjY2Vz
cyBuZWVkcyB0byBiZSBtb3ZlZCBpbnNpZGUgY2VkcnVzX2RldmljZV9ydW4oKS4KClRoZSBjYWxs
IHRvIGNlZHJ1c19kc3RfZm9ybWF0X3NldCgpIGlzIG5vdyBwbGFjZWQganVzdCBiZWZvcmUgdGhl
CmNvZGVjLXNwZWNpZmljIGNhbGxiYWNrIHRoYXQgcHJvZ3JhbXMgdGhlIGhhcmR3YXJlLgoKRml4
ZXM6IDUwZTc2MTUxNmYyYiAoIm1lZGlhOiBwbGF0Zm9ybTogQWRkIENlZHJ1cyBWUFUgZGVjb2Rl
ciBkcml2ZXIiKQpTdWdnZXN0ZWQtYnk6IEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNrcmFiZWNA
Z21haWwuY29tPgpTdWdnZXN0ZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtv
d3NraUBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogU2FtdWVsIEhvbGxhbmQgPHNhbXVlbEBz
aG9sbGFuZC5vcmc+Ci0tLQoKdjI6IGFkZGVkIHBhdGNoCgotLS0KIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAyICsrCiBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jIHwgMyAtLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfZGVjLmMKaW5kZXggNGEyZmMzM2ExZDc5Li41OGM0
OGU0ZmRmZTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2RlYy5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2RlYy5jCkBAIC03NCw2ICs3NCw4IEBAIHZvaWQgY2VkcnVzX2RldmljZV9ydW4odm9pZCAq
cHJpdikKIAogCXY0bDJfbTJtX2J1Zl9jb3B5X21ldGFkYXRhKHJ1bi5zcmMsIHJ1bi5kc3QsIHRy
dWUpOwogCisJY2VkcnVzX2RzdF9mb3JtYXRfc2V0KGRldiwgJmN0eC0+ZHN0X2ZtdCk7CisKIAlk
ZXYtPmRlY19vcHNbY3R4LT5jdXJyZW50X2NvZGVjXS0+c2V0dXAoY3R4LCAmcnVuKTsKIAogCS8q
IENvbXBsZXRlIHJlcXVlc3QocykgY29udHJvbHMgaWYgbmVlZGVkLiAqLwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKaW5kZXggMTVjZjFm
MTAyMjFiLi5lZDNmNTExZjA2NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1
bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYwpAQCAtMjczLDcgKzI3Myw2IEBAIHN0YXRpYyBpbnQg
Y2VkcnVzX3NfZm10X3ZpZF9jYXAoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCiAJCQkJ
c3RydWN0IHY0bDJfZm9ybWF0ICpmKQogewogCXN0cnVjdCBjZWRydXNfY3R4ICpjdHggPSBjZWRy
dXNfZmlsZTJjdHgoZmlsZSk7Ci0Jc3RydWN0IGNlZHJ1c19kZXYgKmRldiA9IGN0eC0+ZGV2Owog
CXN0cnVjdCB2YjJfcXVldWUgKnZxOwogCWludCByZXQ7CiAKQEAgLTI4Nyw4ICsyODYsNiBAQCBz
dGF0aWMgaW50IGNlZHJ1c19zX2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpw
cml2LAogCiAJY3R4LT5kc3RfZm10ID0gZi0+Zm10LnBpeDsKIAotCWNlZHJ1c19kc3RfZm9ybWF0
X3NldChkZXYsICZjdHgtPmRzdF9mbXQpOwotCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjQuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
