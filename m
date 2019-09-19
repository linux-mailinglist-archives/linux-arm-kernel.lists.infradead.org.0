Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2360B7C6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVT3R07Q0OOGTUeuhHq3krASaubqXmSg1HxrNWocxCs=; b=AOzf798uRkH4jb
	fDPbII/2nuhQnK0TtG2v04YwBnySmZqNA7HsO67Ko3AhgchBNoOUBTJi/kjiHl7IK2gzLKtI2tC/t
	p9OH09bORkPKDfbUdkQGlcsx5M0al91we+c9lsyiUIYz3u25oeW178GXxEqxaypX4FCkRuGBmAfKB
	1LBBbLEfjiol1PAMqlBlKeV3WfbIXPcj/Oewvo0QJiMFV3y9ybM3WqWL4ZK9B4zD9hJsyb1t/Jelk
	Aq3lCAL2kM5NRwXF4o90zTF+zargvQUei0BaHGqw7dlsFOQJp9lqg7/0XYnaxnL4r5l3f2+fiKmJO
	lSjghn/iqagd0ICL/d9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxNn-00084D-3d; Thu, 19 Sep 2019 14:26:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLG-0004aY-30
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142328euoutp0299ec9158c86f72bbd3551d17f145bdf0~F3Plic3Zo1740117401euoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919142328euoutp0299ec9158c86f72bbd3551d17f145bdf0~F3Plic3Zo1740117401euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903008;
 bh=+PvoXwVxpcTid0j87bA2tcY3zWf42daZc3R0G6YTUlc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O0nxRAO4tUYx/UWqvgBfue3TX0tKH1+XYs+SbuQaVSwJrmVLxETapr3zaXoKXXP9X
 Bf9ijyrcTjBNT8x+2W7LJuYzF/5iltC/BpqqVcxxpynER6OD8gWOT6UiaZqERSIkFd
 O+FDZUCBswhEpUviySQlD7VhJAjmxDaqGvz3ZjME=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142328eucas1p242dc467060e42704b69ed7f086bbb466~F3Pk2708H3081730817eucas1p2s;
 Thu, 19 Sep 2019 14:23:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 51.69.04374.F5F838D5; Thu, 19
 Sep 2019 15:23:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142327eucas1p183470eede07b50c1e3acda58f2af1eba~F3PkEGT6Y0295602956eucas1p1S;
 Thu, 19 Sep 2019 14:23:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142326eusmtrp164d5d419c24ac75e6ccfb6e7a3e4ca01~F3Pju1HxD0555105551eusmtrp1b;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-06-5d838f5f5030
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 53.1F.04166.E5F838D5; Thu, 19
 Sep 2019 15:23:26 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142326eusmtip10794ddcef50859ab7030e7943910eeb3~F3Pi4fy-a3274232742eusmtip1p;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 07/11] interconnect: Relax condition in
 apply_constraints()
Date: Thu, 19 Sep 2019 16:22:32 +0200
Message-Id: <20190919142236.4071-8-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUyMcRzA/Z63e665PHeX9V2Muo2NTcnrzxjCeOav2vpLwqlnV9Od3KMS
 f0iJIsnd0vWily1JadzpLC055zgvy7myQqUMM2+hLpt3XU/ov8/35fP7fr/bjyVVz+gQNtmw
 VzAatCkaJoC6cvurZ8H2kznxC4c8kdh52y7DA5W5CFstF2nc43tN4yrXAxo/Gv3I4JJrNgab
 Booo7PFckuH6/s80tr3opnFXawWDR064ELZ42gnc5OqX4d5D9Qy2mN8wa5W8rSGf4fu62xh+
 4Lib4C/XHuStQy0Ef2OojeALmxsQP2KbFc1uCViVKKQkpwvGiNU7ApLqb5ynU7+y+6y9ZUQW
 qpMdQ3IWuCXgrLlF+1nF1SMY/Bx9DAWMsQ9BfrdFJgUjCNoch+m/Rof1PS0VziG4l/uE/Kc0
 F3dS/i6GiwJT8eC4HsS5EJirP1L+gORqCSgs94wpLKvmYqEmP9gvUNwcyM/zIj8rOAxeexOS
 xs2GxksO0s9ybgX42qsoqUcJd0tfjjM51pNjLx/fArhcFn58v0NI8gZwvGsnJVbDW3fzxNUz
 4b65gJJYhFdXB2hJzkJgq3NNCCvhpttL+xcluXlwsTVCSkfBBdt5wp8GLhAef1BKOwSC6UoJ
 KaUVkHdEJaEGWksDJREgu7F74m0eOiz9ZBEKK5t0TNmkY8r+j61GZAMKFtJEvU4QFxuEjHBR
 qxfTDLrwhN16Gxr7dfd/uUdbUPuPnU7EsUgzVRGakROvorXpYqbeiYAlNUGKiqXZ8SpFojZz
 v2Dcvd2YliKITjSDpTTBigNTBuNUnE67V9glCKmC8W+VYOUhWWhbUtSydHVP7KKCCkdcj9Pj
 mu9+WLLpi3IOzptuT35auk4p937riswo3Dh8pjchFhc8PGka/mmN7pC99a5PnNnsDPUlx5r3
 NM1K/9ZoCdUXdyxWBS2/HvpcPe3U3K47dZ8qz3pqj8adztL9Nses6TwaY9hSvLnPsFUpP7To
 Z1hd0BENJSZpI+eTRlH7ByHvRX9xAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7px/c2xBi/mG1scOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL2PFwZWsBT85KjbensXUwLiMvYuRk0NCwETi7MY3rF2MXBxCAksZJe48
 PcIMkZCQ+Lj+BiuELSzx51oXG0TRJ0aJv3famUASbAKOEpOmPmAHSYgInGKU2Lr8HFgVs8AG
 JonlT1+CtQsLBEkcv3sezGYRUJXo7LjICGLzClhIXNy6lhFihbzE6g0HwFZzClhKfNk3nwXE
 FgKqmft4LlS9oMTJmU+A4hxAC9Ql1s8TAgkzA7U2b53NPIFRcBaSqlkIVbOQVC1gZF7FKJJa
 WpybnltsqFecmFtcmpeul5yfu4kRGMXbjv3cvIPx0sbgQ4wCHIxKPLwK5c2xQqyJZcWVuYcY
 JTiYlUR455g2xQrxpiRWVqUW5ccXleakFh9iNAV6bSKzlGhyPjDB5JXEG5oamltYGpobmxub
 WSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJwpV9W1y7wkYfp8hfiW078fvuljPDbRZ8W+
 +W1T2wJ6r/Iuz3DieZfOe/CN8xomk8DDF2Z6JLUf4T9dcVn/j5Aa65GVl/+JLl+1J2WvnPTp
 e8vOH331T31yReisO2n77MwOh+ZHPeBmT3LVeZPkc35bjf0pJ8bfUawtN83X9fn4Mtl853vq
 X6fEUpyRaKjFXFScCADxKStz+AIAAA==
X-CMS-MailID: 20190919142327eucas1p183470eede07b50c1e3acda58f2af1eba
X-Msg-Generator: CA
X-RootMTR: 20190919142327eucas1p183470eede07b50c1e3acda58f2af1eba
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142327eucas1p183470eede07b50c1e3acda58f2af1eba
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142327eucas1p183470eede07b50c1e3acda58f2af1eba@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072330_415379_FCBD7A32 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CgpUaGUg
ZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlciBpcyBleHRlbmRlZCB3aXRoIGludGVyY29ubmVjdCBm
dW5jdGlvbmFsaXR5CmJ5IGEgc3Vic2VxdWVudCBwYXRjaC4gVGhpcyBwYXRjaCByZW1vdmVzIGEg
Y2hlY2sgZnJvbSB0aGUgaW50ZXJjb25uZWN0CmZyYW1ld29yayB0aGF0IHByZXZlbnRzIGludGVy
Y29ubmVjdCBmcm9tIHdvcmtpbmcgb24gZXh5bm9zLWJ1cywgaW4gd2hpY2gKZXZlcnkgYnVzIGlz
IGEgc2VwYXJhdGUgaW50ZXJjb25uZWN0IHByb3ZpZGVyLgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIg
xZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy9pbnRl
cmNvbm5lY3QvY29yZS5jIHwgNyArKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2Nv
cmUuYyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwppbmRleCBmMzU3YzNhNzg4NTguLmU4
MjQzNjY1ZDViYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCisrKyBi
L2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwpAQCAtMjI0LDExICsyMjQsOCBAQCBzdGF0aWMg
aW50IGFwcGx5X2NvbnN0cmFpbnRzKHN0cnVjdCBpY2NfcGF0aCAqcGF0aCkKIAlmb3IgKGkgPSAw
OyBpIDwgcGF0aC0+bnVtX25vZGVzOyBpKyspIHsKIAkJbmV4dCA9IHBhdGgtPnJlcXNbaV0ubm9k
ZTsKIAotCQkvKgotCQkgKiBCb3RoIGVuZHBvaW50cyBzaG91bGQgYmUgdmFsaWQgbWFzdGVyLXNs
YXZlIHBhaXJzIG9mIHRoZQotCQkgKiBzYW1lIGludGVyY29ubmVjdCBwcm92aWRlciB0aGF0IHdp
bGwgYmUgY29uZmlndXJlZC4KLQkJICovCi0JCWlmICghcHJldiB8fCBuZXh0LT5wcm92aWRlciAh
PSBwcmV2LT5wcm92aWRlcikgeworCQkvKiBib3RoIGVuZHBvaW50cyBzaG91bGQgYmUgdmFsaWQg
bWFzdGVyLXNsYXZlIHBhaXJzICovCisJCWlmICghcHJldikgewogCQkJcHJldiA9IG5leHQ7CiAJ
CQljb250aW51ZTsKIAkJfQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
