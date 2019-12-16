Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71431202DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=njfcS9GPGYUf9K53hifZ1uUOS6WAz5WSaCIZe8StMUE=; b=bbnY/HRa2Xvj2y
	LBkam0eBPXFvJy49tb7Csj8dFDZzognzN67W3hLvm8TTpfzKxen/KojpPJNm2EcVJDlFWhQeq4gZ8
	WctQ8SHx22r8nD+upz3MrvHxBd5dVAN4+QQ34nCRGzTrcZgc1/JRRKFJkjVU4yWTahKUWkvwQzDPl
	GFTBymlioyI9HG7Wjty4PgokL86PUmWkY8rOfDoyjtxiknB4xCm2t1yO0pJmE2lc/jHQTFNeFmYmS
	sMgYVzW8fIUmbbEqEzx7Kl+9a7J2SYncevprdpRQ2PMdmnzE9hdt5ItadzzGHEWRjXhzDmA52coPz
	KEQHC3QV/U8f+NGxoH3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignvV-00064T-5J; Mon, 16 Dec 2019 10:48:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignvH-00063E-7u
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:48:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191216104817euoutp01f6f6887c8159af0fc991ce0f26459587~g1E0f71kU1684116841euoutp01c
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:48:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191216104817euoutp01f6f6887c8159af0fc991ce0f26459587~g1E0f71kU1684116841euoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576493297;
 bh=O6pcI0nl3cOacuyyeqkh+QDKkG1plk0wyzWw1uJR2cE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=g5VB92M6Z/Gb0NzDoxraG1SidA2yRFf6Z13SC4rK9w/JX8I/lJkw+1R9n7dGDNrjt
 pZkek2PjXcTrpwA56TCD9tKGMggwkHKZQ43RqO+CdMY+EJRi0o8car0nfgJMgOKwaB
 UlFJ9mb35RFQvSheB4N81/i0JDToq35rtR+9lCbg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191216104817eucas1p13ae3217a6d97b3a7d1cab1c2fe4cb125~g1E0Qi9FP2735027350eucas1p1S;
 Mon, 16 Dec 2019 10:48:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 51.A3.60679.0F067FD5; Mon, 16
 Dec 2019 10:48:16 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216~g1Ez4YgmL1561015610eucas1p19;
 Mon, 16 Dec 2019 10:48:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216104816eusmtrp11c9a18d77c49ef7645a8040290858ebc~g1Ez3laSb1051110511eusmtrp1f;
 Mon, 16 Dec 2019 10:48:16 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-86-5df760f096b7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 79.EF.08375.0F067FD5; Mon, 16
 Dec 2019 10:48:16 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191216104815eusmtip167d0578b820b91814462f43866d8600d~g1EzJV3692559025590eusmtip1H;
 Mon, 16 Dec 2019 10:48:15 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] PM / devfreq: exynos-bus: Reduce the numer of goto
 statements and remove unused headers
Date: Mon, 16 Dec 2019 11:47:48 +0100
Message-Id: <20191216104748.18877-1-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djP87ofEr7HGixaZGNxf14ro8XGGetZ
 La5/ec5qMen+BBaL/sevmS3On9/AbnG26Q27xabH11gtLu+aw2bxufcIo8WM8/uYLNYeuctu
 cbtxBZvFjMkv2Rz4PDat6mTz2Lyk3qNvyypGj8+b5AJYorhsUlJzMstSi/TtErgyvrXnFJxU
 rti48QhjA+MmmS5GTg4JAROJAzf2s4LYQgIrGCUuPFPuYuQCsr8wSnz/95QRwvnMKLHgzDZ2
 mI7l35pYIRLLGSW6W1qY4Vp6H99jBKliE3CUmDT1AViHiEAro8TMJnUQm1lgGpPExt0OILaw
 QK7Eg57FTCA2i4CqxIHbc1lAbF4BS4lZM6ayQWyTl1i94QAzRFxQ4uTMJywQc+QlmrfOBlss
 IbCNXeJnazsLRIOLxKRlL6CahSVeHd8CdbaMxOnJPVA1xRJPd95nhWhuYJTYtOwIM0TCWuLw
 8YtACQ6gDZoS63fpQ4QdJbb1dICFJQT4JG68FYS4gU9i0rbpzBBhXomONiEIU0li10w+iEYJ
 iabV16Bme0jc3zcPGtKxEme2vGeewKgwC8ljs5A8NgvhhAWMzKsYxVNLi3PTU4uN8lLL9YoT
 c4tL89L1kvNzNzECE9Tpf8e/7GDc9SfpEKMAB6MSD69D9rdYIdbEsuLK3EOMEhzMSiK8OxS+
 xwrxpiRWVqUW5ccXleakFh9ilOZgURLnNV70MlZIID2xJDU7NbUgtQgmy8TBKdXAGG5tIFFh
 f0RSJOK/x/U4C7fYTXy71sgH9i87N1cl/vr6pf4Tj/wO1tnxaZPBm4IFXyeqsxn93d3zamvr
 9raV8583Jp5wX6WeeVgt12W5EWd+wbqJfcvttMPFU1i9dq7SiF39PHQnx8/nd5122fKz1dwx
 n9/0UPecWbeIu7N1W6dv0bfmpt97lViKMxINtZiLihMBYDVeFkwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t/xu7ofEr7HGqw9rWhxf14ro8XGGetZ
 La5/ec5qMen+BBaL/sevmS3On9/AbnG26Q27xabH11gtLu+aw2bxufcIo8WM8/uYLNYeuctu
 cbtxBZvFjMkv2Rz4PDat6mTz2Lyk3qNvyypGj8+b5AJYovRsivJLS1IVMvKLS2yVog0tjPQM
 LS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyvrXnFJxUrti48QhjA+MmmS5GTg4JAROJ
 5d+aWLsYuTiEBJYySsz/fY8RIiEh8XH9DVYIW1jiz7UuNoiiT4wSn44fACtiE3CUmDT1ATtI
 QkSgk1Gia/M5JhCHWWARk0TDxydMIFXCAtkSh74dYgGxWQRUJQ7cngtm8wpYSsyaMZUNYoW8
 xOoNB5gh4oISJ2c+AarhABqkLrF+nhBImBmopHnrbOYJjPyzkFTNQqiahaRqASPzKkaR1NLi
 3PTcYkO94sTc4tK8dL3k/NxNjMBo2nbs5+YdjJc2Bh9iFOBgVOLhdcj+FivEmlhWXJl7iFGC
 g1lJhHeHwvdYId6UxMqq1KL8+KLSnNTiQ4ymQC9MZJYSTc4HRnpeSbyhqaG5haWhubG5sZmF
 kjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGllyW4if8za/PhBYvMzMLOSy1Lk9pL0tCh+mm
 D8/+26qrn+T5fDUp4KQmW7F0/J4JjXNnaOa2LZvEcfvTu187lI0CtQ9YGZfFz7wYcsAlXKn8
 ggTL3oIeGUGj/OS5HB95dWddndkmdaA871vx1K+nQ4/MrFo6VcHvmbC+qhePlfMf9y6RY3eU
 WIozEg21mIuKEwGyNPL6vAIAAA==
X-CMS-MailID: 20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216
X-Msg-Generator: CA
X-RootMTR: 20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216
References: <CGME20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_024819_490621_13E9C519 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBpbXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xs
b3dpbmcgY29uc3RydWN0OgoKICAgIGlmIChjb25kKQogICAgICAgIGdvdG8gcGFzc2l2ZTsKICAg
IGZvbygpOwogICAgZ290byBvdXQ7CnBhc3NpdmU6CiAgICBiYXIoKTsKb3V0OgoKaW50byB0aGlz
OgoKICAgIGlmIChjb25kKQogICAgICAgIGJhcigpOwogICAgZWxzZQogICAgICAgIGZvbygpOwoK
YXMgd2VsbCBhcyBlbGltaW5hdGluZyBhIGZldyBtb3JlIGdvdG8gc3RhdGVtZW50cyAocmVsYXRl
ZCB0byByZXR1cm4KcGF0aHMpLgoKTW9yZW92ZXIsIHRoaXMgcGF0Y2ggcmVtb3ZlcyB1bnVzZWQg
aGVhZGVyIGZpbGUgaW5jbHVkZXMgYW5kIGFkZHMgYSBtaXNzaW5nCmluY2x1ZGUgPGxpbnV4L29m
Lmg+LgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29t
PgotLS0KIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCA1NCArKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAz
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5j
IGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwppbmRleCAxOWQ5ZjlmOGNlZDIuLjdmNTkx
N2Q1OTA3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYworKysgYi9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCkBAIC0xNSwxMSArMTUsMTAgQEAKICNpbmNsdWRl
IDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxs
aW51eC9tb2R1bGUuaD4KLSNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KKyNpbmNsdWRlIDxs
aW51eC9vZi5oPgogI2luY2x1ZGUgPGxpbnV4L3BtX29wcC5oPgogI2luY2x1ZGUgPGxpbnV4L3Bs
YXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgot
I2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KIAogI2RlZmluZSBERUZBVUxUX1NBVFVSQVRJT05fUkFU
SU8JNDAKIApAQCAtMzAxLDEwICszMDAsOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmls
ZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19i
dXNfZXhpdDsKIAogCW9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKm9u
ZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIW9uZGVtYW5kX2RhdGEpIHsKLQkJcmV0
ID0gLUVOT01FTTsKLQkJZ290byBlcnI7Ci0JfQorCWlmICghb25kZW1hbmRfZGF0YSkKKwkJcmV0
dXJuIC1FTk9NRU07CisKIAlvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwogCW9uZGVt
YW5kX2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1OwogCkBAIC0zMTQsMTUgKzMxMiwxNCBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMs
CiAJCQkJCQlvbmRlbWFuZF9kYXRhKTsKIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKIAkJ
ZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlXG4iKTsKLQkJcmV0ID0g
UFRSX0VSUihidXMtPmRldmZyZXEpOwotCQlnb3RvIGVycjsKKwkJcmV0dXJuIFBUUl9FUlIoYnVz
LT5kZXZmcmVxKTsKIAl9CiAKIAkvKiBSZWdpc3RlciBvcHBfbm90aWZpZXIgdG8gY2F0Y2ggdGhl
IGNoYW5nZSBvZiBPUFAgICovCiAJcmV0ID0gZGV2bV9kZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3Rp
ZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVyXG4iKTsKLQkJZ290byBlcnI7CisJCXJl
dHVybiByZXQ7CiAJfQogCiAJLyoKQEAgLTMzMiwxNyArMzI5LDE2IEBAIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlyZXQgPSBleHlu
b3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Ci0JCWdvdG8gZXJy
OworCQlyZXR1cm4gcmV0OwogCX0KIAogCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7
CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRv
IGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Ci0JCWdvdG8gZXJyOworCQlyZXR1cm4gcmV0Owog
CX0KIAotZXJyOgotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLApAQCAt
MzUxLDcgKzM0Nyw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2
ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAogCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2
OwogCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwogCXN0cnVjdCBk
ZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKLQlpbnQgcmV0ID0gMDsKIAogCS8qIEluaXRpYWxpemUg
dGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXNzaXZlIGRldmljZSAq
LwogCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0OwpAQCAtMzU5LDE2ICszNTQs
MTMgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBl
eHlub3NfYnVzICpidXMsCiAKIAkvKiBHZXQgdGhlIGluc3RhbmNlIG9mIHBhcmVudCBkZXZmcmVx
IGRldmljZSAqLwogCXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFu
ZGxlKGRldiwgMCk7Ci0JaWYgKElTX0VSUihwYXJlbnRfZGV2ZnJlcSkpIHsKLQkJcmV0ID0gLUVQ
Uk9CRV9ERUZFUjsKLQkJZ290byBlcnI7Ci0JfQorCWlmIChJU19FUlIocGFyZW50X2RldmZyZXEp
KQorCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKIAogCXBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFwYXNzaXZl
X2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJZ290byBlcnI7Ci0JfQorCWlmICghcGFzc2l2
ZV9kYXRhKQorCQlyZXR1cm4gLUVOT01FTTsKKwogCXBhc3NpdmVfZGF0YS0+cGFyZW50ID0gcGFy
ZW50X2RldmZyZXE7CiAKIAkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0
aCBwYXNzaXZlIGdvdmVybm9yICovCkBAIC0zNzcsMTIgKzM2OSwxMCBAQCBzdGF0aWMgaW50IGV4
eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKIAlp
ZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKIAkJZGV2X2VycihkZXYsCiAJCQkiZmFpbGVkIHRv
IGFkZCBkZXZmcmVxIGRldiB3aXRoIHBhc3NpdmUgZ292ZXJub3JcbiIpOwotCQlyZXQgPSBQVFJf
RVJSKGJ1cy0+ZGV2ZnJlcSk7Ci0JCWdvdG8gZXJyOworCQlyZXR1cm4gUFRSX0VSUihidXMtPmRl
dmZyZXEpOwogCX0KIAotZXJyOgotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRp
YyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQpAQCAt
NDI3LDE5ICs0MTcsMTMgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWdvdG8gZXJyX3JlZzsKIAogCWlmIChwYXNzaXZlKQotCQln
b3RvIHBhc3NpdmU7Ci0KLQlyZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChidXMsIHByb2Zp
bGUpOwotCWlmIChyZXQgPCAwKQotCQlnb3RvIGVycjsKKwkJcmV0ID0gZXh5bm9zX2J1c19wcm9m
aWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOworCWVsc2UKKwkJcmV0ID0gZXh5bm9zX2J1
c19wcm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKIAotCWdvdG8gb3V0OwotcGFzc2l2ZToKLQly
ZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7CiAJaWYg
KHJldCA8IDApCiAJCWdvdG8gZXJyOwogCi1vdXQ6CiAJbWF4X3N0YXRlID0gYnVzLT5kZXZmcmVx
LT5wcm9maWxlLT5tYXhfc3RhdGU7CiAJbWluX2ZyZXEgPSAoYnVzLT5kZXZmcmVxLT5wcm9maWxl
LT5mcmVxX3RhYmxlWzBdIC8gMTAwMCk7CiAJbWF4X2ZyZXEgPSAoYnVzLT5kZXZmcmVxLT5wcm9m
aWxlLT5mcmVxX3RhYmxlW21heF9zdGF0ZSAtIDFdIC8gMTAwMCk7Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
