Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C24A127AA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:03:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ypB1Fk3mzs+OcLm8c84zqk/I6szGudoN+M+NV5Z/0k=; b=h3vf1Pa0aCcxE+
	49PD1Wb16iPi8zPJWWciOX4Mb6lOwgYsdyP6Df7HlZk/sueVCfa/n/eGnMMj1zhlntht4KYQZT20x
	slYuYv42sSuYVdC43KZbZ26hCD+Jo0/LpU63g4CYiBHCL3qzs9i+j5SV90hAXotZoAQu6FNcmBud0
	SxVRWJKGQw+Ii7AYinhu+E3k0Cabntd8i8L0BEGLq+aPSzDNZdAEIkqOkH8UIX5VQ63JJUnVaGnzR
	v58H2vVKU8VWPt13HdOShJhB/Xqx0fdqb8x9Kewb8+uUR1pE/FcErCbUtSPU0Rx8ojhocPImILt4A
	jB2+HHVbk7wyz6Guf7gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH0d-000724-DQ; Fri, 20 Dec 2019 12:03:55 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGyb-0005Ms-AW
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191220120147euoutp024b743b86a9762dce8776ff709fa9c740~iEqJGZUaK0140101401euoutp02K
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 12:01:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191220120147euoutp024b743b86a9762dce8776ff709fa9c740~iEqJGZUaK0140101401euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576843307;
 bh=Vp2pX2yxmoezR5VR1GvMMaSos7A2m/IoE56NLCnWKMY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d9/8X4p4CmFv+Tv4uDeYqkHMn0ZK9x0y3eySn+jSjrgmX0mf88yytJxcamUZyNWPQ
 k80AOcqYGEZJQnKzq97twWZzD2vXy6wV8Nk7jw5qtYwIbCBO/cgF4EpyjEyrCvEF/y
 Uqsfo4YCbrU1LEOIqE+rWBAK0FfB58BxmtpAnK8A=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191220120147eucas1p1b2a0121aa707c8134bfaa16d35454ae3~iEqIlHHLV2488424884eucas1p15;
 Fri, 20 Dec 2019 12:01:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 08.3E.60698.B28BCFD5; Fri, 20
 Dec 2019 12:01:47 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7~iEqIUKKKm2914729147eucas1p23;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220120146eusmtrp20e541263f3651a59e5c31138416cf359~iEqITjJN82149221492eusmtrp24;
 Fri, 20 Dec 2019 12:01:46 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-50-5dfcb82bfc1d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A8.87.08375.A28BCFD5; Fri, 20
 Dec 2019 12:01:46 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120146eusmtip28e4c90497745c6fe92f36c1c6485b24a~iEqHhkEs02950829508eusmtip2R;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v3 7/7] drm: exynos: mixer: Add interconnect support
Date: Fri, 20 Dec 2019 12:56:53 +0100
Message-Id: <20191220115653.6487-8-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220115653.6487-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH+e0+dpUm1xV46KWNhB6UiUU/K0Sp8FIQFQlNGDnrtqRtxm6a
 FZElmpXKVDK1UJNI2RrqKlMribUyKx3UfMC02YvQHlZqMpPM613lf5/z+H7POXAYQumm5jMp
 xqO8yajVq+hAsvGJz7VqZdOkZo3jLoW9FdkIN5TWUbhn9COFK52dFHaPDdP48gM7jYu8ZhK7
 XPVyXNv/ncL2d90UftVylcYj+U6ES12tMmxz9sux50wtjUuLB+lYlrNbztNcX/d9mvNebJNx
 t66f5hq+Nsm4gtsWxI3YF++UJwZuOsDrU9J5U0RMUuAhX+kn6kjh0owXLQPyTORedAEFMMCu
 haq8KvoCCmSUbC0CS9cgIQWjCBwT7f5gBMG17Gfyv5LcjlFKZCVbg8BmVv9TlDwaJ8QCzcZB
 0aUBuViYxzoRFFcNk2JAsHUy+OapmJHPZTl42uWjRSbZcOjpHUAiK1gM3x9Wy6RxoWCtfzjj
 GsBGQ2/XS0LqCYb2svekyMR0T9adK4TUPyaHfFeCxFsg9/5jUuK5MNR223/CQphqrvT7C/Ch
 2UuJywGbicB+w+k32gh9nRPTyzHTA5ZDXUuElI6Dz64GSkwDGwS9X4KlFYKgqPEyIaUVkJuj
 lFAFLWVBkhDgrLXb781Bta1AbkZLymfdUj7rlvL/Y6sQYUEhfJpg0PFClJE/tlrQGoQ0o271
 /lSDHU3/2vPfbWNNqHUy2YFYBqnmKGIP/tIoKW26cNzgQMAQqnkKT65Po1Qc0B4/wZtS95nS
 9LzgQAsYUhWiiKoe1ChZnfYof5jnj/Cmv1UZEzA/E9WGb9uxbKs6rIC0xB+cWv9unVtnTldz
 yT+ZN9GOvZoFm5OjdM1pkcvuxWZeq1+zYbstsiRc6PnU0Tiwxb5e88PafrJ4uFDvzjsZfe41
 kZFAdpFDZdV7YpJ29X+d3H1TnXPibfhQ/sbU0MTxvhq7z2vSWeui48mSxoxTWTwf5rmrIoVD
 2sgVhEnQ/gF6ItAIZwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNIsWRmVeSWpSXmKPExsVy+t/xe7paO/7EGmzaZ2Bxf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQyfs54zVowUaXizK4H7A2MV2S7GDk5JARMJDrOfmHtYuTiEBJYyijx6uZbRoiEhMTH9TdY
 IWxhiT/Xutggij4xSnxeuIwFJMEm4CgxaeoDdpCEiMApRomty8+BVTEL7GaSWDlnP1iVsICH
 xImrP9lAbBYBVYnrNx6AreAVsJD4eGARE8QKeYnVGw4wg9icApYSN65eArOFgGp2fu5jgqgX
 lDg58wnQTA6gBeoS6+cJgYSZgVqbt85mnsAoOAtJ1SyEqllIqhYwMq9iFEktLc5Nzy021CtO
 zC0uzUvXS87P3cQIjNhtx35u3sF4aWPwIUYBDkYlHt6Xyb9jhVgTy4orcw8xSnAwK4nw3u74
 GSvEm5JYWZValB9fVJqTWnyI0RTotYnMUqLJ+cBkklcSb2hqaG5haWhubG5sZqEkztshcDBG
 SCA9sSQ1OzW1ILUIpo+Jg1OqgdG6b5tdm4RQYu0bBk2rPH5u33LfL0c+vt4+/YwHo8WqR4K1
 05U0wyysvhwJf65y+ZlLSVUZx42vL7Zv/rerRErjb5jwz0VTT1U9dGtv9T82uSclgGVKQXjP
 /1LGiVkLehmOsnnNVmHzL7hzdP51Th4DLsV0xwV5Ff9d5S3TzE48uTpBiPP4aiWW4oxEQy3m
 ouJEACpmbZnuAgAA
X-CMS-MailID: 20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7
X-Msg-Generator: CA
X-RootMTR: 20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040149_575395_4AB65CD7 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKVGhpcyBw
YXRjaCBhZGRzIGludGVyY29ubmVjdCBzdXBwb3J0IHRvIGV4eW5vcy1taXhlci4gVGhlIG1peGVy
IHdvcmtzCnRoZSBzYW1lIGFzIGJlZm9yZSB3aGVuIENPTkZJR19JTlRFUkNPTk5FQ1QgaXMgJ24n
LgoKQ28tZGV2ZWxvcGVkLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+
ClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgfCA3MSArKysrKysrKysr
KysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCA1IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21p
eGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jCmluZGV4IDZjZmRi
OTVmZWYyZi4uYTdlNzI0MGEwNTVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9z
L2V4eW5vc19taXhlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVy
LmMKQEAgLTEzLDYgKzEzLDcgQEAKICNpbmNsdWRlIDxsaW51eC9jb21wb25lbnQuaD4KICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgogI2luY2x1ZGUgPGxpbnV4L2kyYy5oPgorI2luY2x1ZGUgPGxp
bnV4L2ludGVyY29ubmVjdC5oPgogI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgogI2luY2x1
ZGUgPGxpbnV4L2lycS5oPgogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgpAQCAtOTcsNiArOTgs
NyBAQCBzdHJ1Y3QgbWl4ZXJfY29udGV4dCB7CiAJc3RydWN0IGV4eW5vc19kcm1fY3J0YwkqY3J0
YzsKIAlzdHJ1Y3QgZXh5bm9zX2RybV9wbGFuZQlwbGFuZXNbTUlYRVJfV0lOX05SXTsKIAl1bnNp
Z25lZCBsb25nCQlmbGFnczsKKwlzdHJ1Y3QgaWNjX3BhdGgJCSpzb2NfcGF0aDsKIAogCWludAkJ
CWlycTsKIAl2b2lkIF9faW9tZW0JCSptaXhlcl9yZWdzOwpAQCAtOTMxLDYgKzkzMyw0MCBAQCBz
dGF0aWMgdm9pZCBtaXhlcl9kaXNhYmxlX3ZibGFuayhzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpj
cnRjKQogCW1peGVyX3JlZ193cml0ZW1hc2sobWl4ZXJfY3R4LCBNWFJfSU5UX0VOLCAwLCBNWFJf
SU5UX0VOX1ZTWU5DKTsKIH0KIAorc3RhdGljIHZvaWQgbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lk
dGgoc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykKK3sKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqbW9kZSA9ICZjcnRjLT5iYXNlLnN0YXRlLT5hZGp1c3RlZF9tb2RlOworCXN0cnVjdCBt
aXhlcl9jb250ZXh0ICpjdHggPSBjcnRjLT5jdHg7CisJdW5zaWduZWQgbG9uZyBidywgYmFuZHdp
ZHRoID0gMDsKKwlpbnQgaSwgaiwgc3ViOworCisJaWYgKCFjdHgtPnNvY19wYXRoKQorCQlyZXR1
cm47CisKKwlmb3IgKGkgPSAwOyBpIDwgTUlYRVJfV0lOX05SOyBpKyspIHsKKwkJc3RydWN0IGRy
bV9wbGFuZSAqcGxhbmUgPSAmY3R4LT5wbGFuZXNbaV0uYmFzZTsKKwkJY29uc3Qgc3RydWN0IGRy
bV9mb3JtYXRfaW5mbyAqZm9ybWF0OworCisJCWlmIChwbGFuZS0+c3RhdGUgJiYgcGxhbmUtPnN0
YXRlLT5jcnRjICYmIHBsYW5lLT5zdGF0ZS0+ZmIpIHsKKwkJCWZvcm1hdCA9IHBsYW5lLT5zdGF0
ZS0+ZmItPmZvcm1hdDsKKwkJCWJ3ID0gbW9kZS0+aGRpc3BsYXkgKiBtb2RlLT52ZGlzcGxheSAq
CisJCQkJCQkJZHJtX21vZGVfdnJlZnJlc2gobW9kZSk7CisJCQlpZiAobW9kZS0+ZmxhZ3MgJiBE
Uk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKKwkJCQlidyAvPSAyOworCQkJZm9yIChqID0gMDsgaiA8
IGZvcm1hdC0+bnVtX3BsYW5lczsgaisrKSB7CisJCQkJc3ViID0gaiA/IChmb3JtYXQtPnZzdWIg
KiBmb3JtYXQtPmhzdWIpIDogMTsKKwkJCQliYW5kd2lkdGggKz0gZm9ybWF0LT5jcHBbal0gKiBi
dyAvIHN1YjsKKwkJCX0KKwkJfQorCX0KKworCS8qIGFkZCAyMCUgc2FmZXR5IG1hcmdpbiAqLwor
CWJhbmR3aWR0aCA9IGJhbmR3aWR0aCAvIDQgKiA1OworCisJZGV2X2RiZyhjdHgtPmRldiwgImV4
eW5vcy1taXhlcjogc2FmZSBiYW5kd2lkdGggJWxkIEJwc1xuIiwgYmFuZHdpZHRoKTsKKwlpY2Nf
c2V0X2J3KGN0eC0+c29jX3BhdGgsIEJwc190b19pY2MoYmFuZHdpZHRoKSwgMCk7Cit9CisKIHN0
YXRpYyB2b2lkIG1peGVyX2F0b21pY19iZWdpbihzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRj
KQogewogCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBjcnRjLT5jdHg7CkBAIC05ODIsNiAr
MTAxOCw3IEBAIHN0YXRpYyB2b2lkIG1peGVyX2F0b21pY19mbHVzaChzdHJ1Y3QgZXh5bm9zX2Ry
bV9jcnRjICpjcnRjKQogCWlmICghdGVzdF9iaXQoTVhSX0JJVF9QT1dFUkVELCAmbWl4ZXJfY3R4
LT5mbGFncykpCiAJCXJldHVybjsKIAorCW1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKGNydGMp
OwogCW1peGVyX2VuYWJsZV9zeW5jKG1peGVyX2N0eCk7CiAJZXh5bm9zX2NydGNfaGFuZGxlX2V2
ZW50KGNydGMpOwogfQpAQCAtMTAyOSw2ICsxMDY2LDcgQEAgc3RhdGljIHZvaWQgbWl4ZXJfZGlz
YWJsZShzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQogCWZvciAoaSA9IDA7IGkgPCBNSVhF
Ul9XSU5fTlI7IGkrKykKIAkJbWl4ZXJfZGlzYWJsZV9wbGFuZShjcnRjLCAmY3R4LT5wbGFuZXNb
aV0pOwogCisJbWl4ZXJfc2V0X21lbW9yeV9iYW5kd2lkdGgoY3J0Yyk7CiAJZXh5bm9zX2RybV9w
aXBlX2Nsa19lbmFibGUoY3J0YywgZmFsc2UpOwogCiAJcG1fcnVudGltZV9wdXQoY3R4LT5kZXYp
OwpAQCAtMTIyMCwxMiArMTI1OCwyMiBAQCBzdGF0aWMgaW50IG1peGVyX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsK
IAljb25zdCBzdHJ1Y3QgbWl4ZXJfZHJ2X2RhdGEgKmRydjsKIAlzdHJ1Y3QgbWl4ZXJfY29udGV4
dCAqY3R4OworCXN0cnVjdCBpY2NfcGF0aCAqcGF0aDsKIAlpbnQgcmV0OwogCisJLyoKKwkgKiBS
ZXR1cm5zIE5VTEwgaWYgQ09ORklHX0lOVEVSQ09OTkVDVCBpcyBkaXNhYmxlZC4KKwkgKiBNYXkg
cmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUikuCisJICovCisJcGF0aCA9IG9mX2ljY19nZXQo
ZGV2LCBOVUxMKTsKKwlpZiAoSVNfRVJSKHBhdGgpKQorCQlyZXR1cm4gUFRSX0VSUihwYXRoKTsK
KwogCWN0eCA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2YoKmN0eCksIEdGUF9LRVJO
RUwpOwogCWlmICghY3R4KSB7CiAJCURSTV9ERVZfRVJST1IoZGV2LCAiZmFpbGVkIHRvIGFsbG9j
IG1peGVyIGNvbnRleHQuXG4iKTsKLQkJcmV0dXJuIC1FTk9NRU07CisJCXJldCA9IC1FTk9NRU07
CisJCWdvdG8gZXJyOwogCX0KIAogCWRydiA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYp
OwpAQCAtMTIzMyw2ICsxMjgxLDcgQEAgc3RhdGljIGludCBtaXhlcl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCWN0eC0+cGRldiA9IHBkZXY7CiAJY3R4LT5kZXYgPSBkZXY7
CiAJY3R4LT5teHJfdmVyID0gZHJ2LT52ZXJzaW9uOworCWN0eC0+c29jX3BhdGggPSBwYXRoOwog
CiAJaWYgKGRydi0+aXNfdnBfZW5hYmxlZCkKIAkJX19zZXRfYml0KE1YUl9CSVRfVlBfRU5BQkxF
RCwgJmN0eC0+ZmxhZ3MpOwpAQCAtMTI0MiwxNyArMTI5MSwyOSBAQCBzdGF0aWMgaW50IG1peGVy
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcGxhdGZvcm1fc2V0X2RydmRh
dGEocGRldiwgY3R4KTsKIAogCXJldCA9IGNvbXBvbmVudF9hZGQoJnBkZXYtPmRldiwgJm1peGVy
X2NvbXBvbmVudF9vcHMpOwotCWlmICghcmV0KQotCQlwbV9ydW50aW1lX2VuYWJsZShkZXYpOwor
CWlmIChyZXQgPCAwKQorCQlnb3RvIGVycjsKKworCXBtX3J1bnRpbWVfZW5hYmxlKGRldik7CisK
KwlyZXR1cm4gMDsKKworZXJyOgorCWljY19wdXQocGF0aCk7CiAKIAlyZXR1cm4gcmV0OwogfQog
CiBzdGF0aWMgaW50IG1peGVyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
ewotCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKKwlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGRldi0+ZGV2OworCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKKworCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOworCisJY29tcG9uZW50X2RlbChk
ZXYsICZtaXhlcl9jb21wb25lbnRfb3BzKTsKIAotCWNvbXBvbmVudF9kZWwoJnBkZXYtPmRldiwg
Jm1peGVyX2NvbXBvbmVudF9vcHMpOworCWljY19wdXQoY3R4LT5zb2NfcGF0aCk7CiAKIAlyZXR1
cm4gMDsKIH0KLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
