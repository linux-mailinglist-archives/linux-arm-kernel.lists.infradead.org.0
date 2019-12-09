Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9382116B7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4azK0zBfYpgPEjuQbw+DVdtzYNkuT6WEr3KEli+R7Y=; b=Th0gmMCbSsV0kC
	WPwTz73Pdgj1c4Ors/z65nIfT+r2Cdu+QhJJCt8pBU8w0/CDI+3hc+sHGW0ZWcJzUljkxpHwvapUz
	wyq6xIt1HIq8krSLFNRhUk6LhiGkexBlPRB4w2ZLD35QgjXwGZnCfrG7L0R0mkBJMfVOEQq+y8CnR
	W4r7Jii9fjoLPxGbvUu4/VFan/G+Tf+a5cTLnjWlfS73CKwd/k0XRytuq9ASqvCr1gHVzm1hay8zI
	Oey/KipuRvT3agw6pbrpXKH0SP/Ow9IwyNpGGFdzF88TBfdVAIYvKOEELoaVVBGgJnUvVkBL3FQU3
	fjlNQWNp2oJpxFZPpLEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGdX-0003xI-MH; Mon, 09 Dec 2019 10:51:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGce-0003Fe-DQ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:50:38 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191209105035euoutp026882a4b28f9822bc76f13360289de116~erl08pko03015230152euoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 10:50:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191209105035euoutp026882a4b28f9822bc76f13360289de116~erl08pko03015230152euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575888635;
 bh=Ja3gxgbWiIno/jQbE71t1xooMh1ElJexvm3uTQFKFYc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rGRnQ+Nb6s/Co/D7UnNQSntRcKIKCK9TnER9jju2tVmDAqW6GjLrqduOfiCjwAAxn
 r48RUacudmSlFOv+eD4BONjENT5m4PI5AQ67hxtFkYQbxobPYhWtsXuDXxzdDjnTRR
 3jr8CUNOfs7jrJdXpQqnkr2WHSIbCpLS0tLxNXUk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191209105034eucas1p2ee909cef6b7239aa10fb33712f87b19e~erl0uA_SW1399213992eucas1p2N;
 Mon,  9 Dec 2019 10:50:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AE.34.60698.AF62EED5; Mon,  9
 Dec 2019 10:50:34 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2~erl0O_90z1387713877eucas1p2u;
 Mon,  9 Dec 2019 10:50:34 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191209105034eusmtrp1674e6c1a4c4875d11f1bf7f66b9aab5b~erl0OQCyX2135321353eusmtrp1g;
 Mon,  9 Dec 2019 10:50:34 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-8b-5dee26fadb03
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 73.D6.08375.AF62EED5; Mon,  9
 Dec 2019 10:50:34 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105033eusmtip143f04464169d159795fb3db34fe9e493~erlzZqZz53014230142eusmtip1M;
 Mon,  9 Dec 2019 10:50:33 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v3 4/4] devfreq: exynos-bus: Clean up code
Date: Mon,  9 Dec 2019 11:49:02 +0100
Message-Id: <20191209104902.11904-5-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209104902.11904-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUYRTlm/fezFMae46CV4vMIY0WtbAfXxqV5Y+BCvJXlGiN+XIkN+a5
 pGVuKOWWjphLIeKI2pioo4kLSOqU2SCTSC6IaWpuqamjoRKW47Py37n3nHPvPR8fTUj0lB0d
 FBrBKkPlwVKhOdn4fsPgvOm06Huq6+tJPFqcgnBdQQ2FB1anKawazSZxyUoBhZ9NfCewwVAr
 wj1J8yJcObJMYe1EP4X7Wl4KsTFTh3CBoU2Aq3UjIjycWCnEBbmzwouMTKt5KpTVl8XL6hab
 BLKsBg2SGbWHrlO3zM8FsMFBUazS9fwdc8Wcvp4Kzzr6QJWupRLQJ/s0ZEYDcwYMSw2CNGRO
 S5hKBI2bKRRfrCIoLtbsMkYErXnzZBqidywZOWK+X4Egt38c/XMM5Nci01wh4wmqvDGRibBm
 UhD0GoYIU0EwHwUwk5pEmVRWjDvMbHwmTZhkHMHYObaDxcxZWPzxWshfaA9VtW8JEzbb1i+X
 94h4jSV0F07u6IltTfKbFzsLgJkVgW7og4A3e8HvicxdbAVzXQ0iHh8EfW4GyWMOvjWPUrw5
 AYG2XEfwhAd0dvVSptAEcwxqWlz5tidol9Z338ICBhcs+RssQNWYT/BtMTxJlfBQCi2FFrwR
 IKmqf3e2DArV78hs5FC0J0zRnjBF/9eWIEKDbNhILiSQ5dxC2WgXTh7CRYYGutwNC9Gi7S+m
 3+paa0Jtv/w7EEMj6T7xYfcFXwklj+JiQjoQ0ITUWlyWM+crEQfIY2JZZdhtZWQwy3WgAzQp
 tRG7lc76SphAeQR7n2XDWeVfVkCb2SWgmBOzV9b3O9k+OjLVuuXtfIOITnX3613UxE6qjNZ+
 rgrv58ZL431SSbXPtZ816vStDrJCrVgJUG5MSscX1prTp+Orki3dL+commeuOiQ+NN6L+3Kh
 D7cPPSaH2wem/buDWrkM9ZTXNDi3F8/orVs9fDZtV9WvkGPAzdLBOJ1BSnIK+enjhJKT/wG0
 xutGXgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsVy+t/xu7q/1N7FGmz/yW9xf14ro8XGGetZ
 La5/ec5qMen+BBaLBZ9msFr0P37NbHH+/AZ2i7NNb9gtVtz9yGqx6fE1VovLu+awWXzuPcJo
 MeP8PiaLtUfuslvcblzBZjFj8ks2BwGPTas62Tw2L6n32PhuB5NH35ZVjB6fN8kFsEbp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZbw6vZm1oE+9
 YlL3JtYGxgvyXYwcHBICJhI9E3m7GLk4hASWMko0bPnN1sXICRSXkPi4/gYrhC0s8edaFxtE
 0SdGiUVbvjOCJNgEHCUmTX3ADpIQEehklFi/bDoTiMMscINJomnLOxaQKmEBK4kXP6+C2SwC
 qhKfDz8As3kFLCXevV8DtU5eYvWGA8wgNidQ/cdlZ9lBbCGgmrkLV0PVC0qcnPmEBeRsZgF1
 ifXzhEDCzECtzVtnM09gFJyFpGoWQtUsJFULGJlXMYqklhbnpucWG+oVJ+YWl+al6yXn525i
 BMbmtmM/N+9gvLQx+BCjAAejEg9vhc3bWCHWxLLiytxDjBIczEoivEsmvooV4k1JrKxKLcqP
 LyrNSS0+xGgK9NpEZinR5Hxg2sgriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBa
 BNPHxMEp1cDoyXbx5a3PjC+WM26sC9/yver75HdTZU41W77UVREq659xY2rmp1uBwuefmKd4
 vG1K6L/WuHqCe7WrDpNg0dUdFbuWbKoI6+sOvHXoumpxwJkltpfD4yyE5y/pnM7uwWZesu71
 uq+Mq0//fxLeOeuWg66K/q9bZx7/+/N101mOu9obptU7yjLvVmIpzkg01GIuKk4EAEuOt0Dj
 AgAA
X-CMS-MailID: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
X-Msg-Generator: CA
X-RootMTR: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2
References: <20191209104902.11904-1-a.swigon@samsung.com>
 <CGME20191209105034eucas1p277be9a40363fec76b4241d28e71e40d2@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025036_586538_8B6109B6 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIG1pbm9yIGltcHJvdmVtZW50cyB0byB0aGUgZXh5bm9zLWJ1cyBkcml2
ZXIsIGluY2x1ZGluZwpjbGVhbmluZyB1cCBoZWFkZXIgaW5jbHVkZXMsIHZhcmlhYmxlcywgYW5k
IHJldHVybiBwYXRocy4KClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBz
YW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNTYgKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0
aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKaW5kZXggMGI1NTdkZjYz
NjY2Li4zZWI2YTA0MzI4NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmMKKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwpAQCAtMTUsMTEgKzE1LDEwIEBA
CiAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+CiAj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Ci0jaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cisj
aW5jbHVkZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KICNpbmNsdWRl
IDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29u
c3VtZXIuaD4KLSNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAKICNkZWZpbmUgREVGQVVMVF9TQVRV
UkFUSU9OX1JBVElPCTQwCiAKQEAgLTE3OCw3ICsxNzcsNyBAQCBzdGF0aWMgaW50IGV4eW5vc19i
dXNfcGFyZW50X3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCiAJc3RydWN0IGRldmlj
ZSAqZGV2ID0gYnVzLT5kZXY7CiAJc3RydWN0IG9wcF90YWJsZSAqb3BwX3RhYmxlOwogCWNvbnN0
IGNoYXIgKnZkZCA9ICJ2ZGQiOwotCWludCBpLCByZXQsIGNvdW50LCBzaXplOworCWludCBpLCBy
ZXQsIGNvdW50OwogCiAJb3BwX3RhYmxlID0gZGV2X3BtX29wcF9zZXRfcmVndWxhdG9ycyhkZXYs
ICZ2ZGQsIDEpOwogCWlmIChJU19FUlIob3BwX3RhYmxlKSkgewpAQCAtMjAxLDggKzIwMCw3IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2Rl
ICpucCwKIAl9CiAJYnVzLT5lZGV2X2NvdW50ID0gY291bnQ7CiAKLQlzaXplID0gc2l6ZW9mKCpi
dXMtPmVkZXYpICogY291bnQ7Ci0JYnVzLT5lZGV2ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZSwg
R0ZQX0tFUk5FTCk7CisJYnVzLT5lZGV2ID0gZGV2bV9rY2FsbG9jKGRldiwgY291bnQsIHNpemVv
ZigqYnVzLT5lZGV2KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFidXMtPmVkZXYpIHsKIAkJcmV0ID0g
LUVOT01FTTsKIAkJZ290byBlcnJfcmVndWxhdG9yOwpAQCAtMzAxLDEwICsyOTksOSBAQCBzdGF0
aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJ
cHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKIAogCW9uZGVtYW5kX2RhdGEgPSBkZXZt
X2t6YWxsb2MoZGV2LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKLQlpZiAo
IW9uZGVtYW5kX2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJZ290byBlcnI7Ci0JfQorCWlm
ICghb25kZW1hbmRfZGF0YSkKKwkJcmV0dXJuIC1FTk9NRU07CisKIAlvbmRlbWFuZF9kYXRhLT51
cHRocmVzaG9sZCA9IDQwOwogCW9uZGVtYW5kX2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1Owog
CkBAIC0zMTQsMTUgKzMxMSwxNCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0
KHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAJCQkJCQlvbmRlbWFuZF9kYXRhKTsKIAlpZiAoSVNf
RVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZy
ZXEgZGV2aWNlXG4iKTsKLQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwotCQlnb3RvIGVy
cjsKKwkJcmV0dXJuIFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKIAl9CiAKIAkvKiBSZWdpc3RlciBv
cHBfbm90aWZpZXIgdG8gY2F0Y2ggdGhlIGNoYW5nZSBvZiBPUFAgICovCiAJcmV0ID0gZGV2bV9k
ZXZmcmVxX3JlZ2lzdGVyX29wcF9ub3RpZmllcihkZXYsIGJ1cy0+ZGV2ZnJlcSk7CiAJaWYgKHJl
dCA8IDApIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVy
XG4iKTsKLQkJZ290byBlcnI7CisJCXJldHVybiByZXQ7CiAJfQogCiAJLyoKQEAgLTMzMiwxNyAr
MzI4LDE2IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5v
c19idXMgKmJ1cywKIAlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7CiAJaWYgKHJl
dCA8IDApIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZlbnQg
ZGV2aWNlc1xuIik7Ci0JCWdvdG8gZXJyOworCQlyZXR1cm4gcmV0OwogCX0KIAogCXJldCA9IGV4
eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gc2V0IGV2ZW50IHRvIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Ci0JCWdv
dG8gZXJyOworCQlyZXR1cm4gcmV0OwogCX0KIAotZXJyOgotCXJldHVybiByZXQ7CisJcmV0dXJu
IDA7CiB9CiAKIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1
Y3QgZXh5bm9zX2J1cyAqYnVzLApAQCAtMzUxLDcgKzM0Niw2IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAogCXN0cnVj
dCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2OwogCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAq
cGFzc2l2ZV9kYXRhOwogCXN0cnVjdCBkZXZmcmVxICpwYXJlbnRfZGV2ZnJlcTsKLQlpbnQgcmV0
ID0gMDsKIAogCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBk
YXRhIGZvciBwYXNzaXZlIGRldmljZSAqLwogCXByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNf
dGFyZ2V0OwpAQCAtMzU5LDMwICszNTMsMjYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2Zp
bGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCiAKIAkvKiBHZXQgdGhlIGlu
c3RhbmNlIG9mIHBhcmVudCBkZXZmcmVxIGRldmljZSAqLwogCXBhcmVudF9kZXZmcmVxID0gZGV2
ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Ci0JaWYgKElTX0VSUihwYXJlbnRf
ZGV2ZnJlcSkpIHsKLQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsKLQkJZ290byBlcnI7Ci0JfQorCWlm
IChJU19FUlIocGFyZW50X2RldmZyZXEpKQorCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKIAogCXBh
c3NpdmVfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQ
X0tFUk5FTCk7Ci0JaWYgKCFwYXNzaXZlX2RhdGEpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJZ290
byBlcnI7Ci0JfQorCWlmICghcGFzc2l2ZV9kYXRhKQorCQlyZXR1cm4gLUVOT01FTTsKKwogCXBh
c3NpdmVfZGF0YS0+cGFyZW50ID0gcGFyZW50X2RldmZyZXE7CiAKIAkvKiBBZGQgZGV2ZnJlcSBk
ZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCi0JYnVzLT5kZXZm
cmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVRX0dPVl9Q
QVNTSVZFLAorCWJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJv
ZmlsZSwKKwkJCQkJCURFVkZSRVFfR09WX1BBU1NJVkUsCiAJCQkJCQlwYXNzaXZlX2RhdGEpOwog
CWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewogCQlkZXZfZXJyKGRldiwKIAkJCSJmYWlsZWQg
dG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2ZSBnb3Zlcm5vclxuIik7Ci0JCXJldCA9IFBU
Ul9FUlIoYnVzLT5kZXZmcmVxKTsKLQkJZ290byBlcnI7CisJCXJldHVybiBQVFJfRVJSKGJ1cy0+
ZGV2ZnJlcSk7CiAJfQogCi1lcnI6Ci0JcmV0dXJuIHJldDsKKwlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCkBA
IC00MDAsMTggKzM5MCwxOCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0JYnVzID0gZGV2
bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqYnVzKSwgR0ZQX0tFUk5FTCk7CisJYnVzID0g
ZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIWJ1cykK
IAkJcmV0dXJuIC1FTk9NRU07CiAJbXV0ZXhfaW5pdCgmYnVzLT5sb2NrKTsKLQlidXMtPmRldiA9
ICZwZGV2LT5kZXY7CisJYnVzLT5kZXYgPSBkZXY7CiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRl
diwgYnVzKTsKIAogCXByb2ZpbGUgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnByb2ZpbGUp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIXByb2ZpbGUpCiAJCXJldHVybiAtRU5PTUVNOwogCi0Jbm9k
ZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOworCW5vZGUg
PSBvZl9wYXJzZV9waGFuZGxlKG5wLCAiZGV2ZnJlcSIsIDApOwogCWlmIChub2RlKSB7CiAJCW9m
X25vZGVfcHV0KG5vZGUpOwogCQlwYXNzaXZlID0gdHJ1ZTsKLS0gCjIuMTcuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
