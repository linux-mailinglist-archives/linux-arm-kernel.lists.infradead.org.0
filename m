Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480D3B7C64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOrdbFFm3tQzi7LX7Zru1Je0YRDPjXlKe/VGRZpY0og=; b=Lo6apqDmilo+IM
	BOMEENVRXporbyley3wHL6g7AFBtAsKEc87FvqmtDVEZh8KU+QtugwWWlM7exKvEVLQwNHyV+p87o
	D1TED+Jsy+3V66tBuiJsTbeLAE3iC1+GAhdEW+D1MnwkZhyIDJExC5Pe4sgG2TISy9gtap0lpNxjz
	s0GoItC41oPQJ5uH0SYWxdaY7jjgBmIlP0w352BW/s+/yiXllDOq5jF0wG0NHv5/1gvkaMIhm/4It
	KBGx2jEcVbqULFaulZ3Jr8xtaLEGiTs5iuD+/09hprSjsOOMMFAkpNfvhNYpI9FIJ30/R2yvjVqjS
	CTkQmJG+XGbQZcYjVNmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxNH-0007bU-F5; Thu, 19 Sep 2019 14:25:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLE-0004Y9-4j
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142326euoutp0298c1718505da1f6233fddcaabc91413c~F3PjrIbZV1700217002euoutp02n
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919142326euoutp0298c1718505da1f6233fddcaabc91413c~F3PjrIbZV1700217002euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903006;
 bh=w2UfJ6ezBPlUEZnplzVKt++ooGfyIuCYzPhz55Bgqb0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tgbbcrlhxtRFkdG8veEb8ocMwbP2wIqzsBboy9IE5XYSkyRQxIRFeGFWWyLZUqKRZ
 q5Nuti83QYSo0TlI6F+G6TIuhDVLnVwfUBbTvLcv+FXsn5JzxrdCJG8AxF+tXeUSFI
 Ih0Vi53TPTDnrHiLyLReaczlb+ix/xkUptPu7bt0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142326eucas1p29743d0d0f6a4c44888d4446079565359~F3PjExPt63079930799eucas1p27;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F8.0C.04469.D5F838D5; Thu, 19
 Sep 2019 15:23:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142325eucas1p28102446c22b1e1c61aae0bad46d079b0~F3PiUCWQt3080630806eucas1p2g;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142325eusmtrp1bb5ff0307cc675ca3d309dbb76a680b1~F3PiFV8J80555105551eusmtrp1X;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-0b-5d838f5d6501
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 02.1F.04166.D5F838D5; Thu, 19
 Sep 2019 15:23:25 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142324eusmtip1e21b74ae9efc6b6226bd53e23436627c~F3PhTa9XB3039930399eusmtip1f;
 Thu, 19 Sep 2019 14:23:24 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 05/11] interconnect: Export of_icc_get_from_provider()
Date: Thu, 19 Sep 2019 16:22:30 +0200
Message-Id: <20190919142236.4071-6-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRTu3f3YVdq8TsGTZtZAwiAtKHjVsASxawQF/soQnXmZ6aa2m2VG
 pC6tNE0cmWl+YB8uP1KXio2UmqNRVsMyDVpNKImUlPwqwSK3a+W/5znnPOd5zsvLEAoH5c8c
 zzzJ6zJVGiXtSfY+XXq1PfGqPnHHmCMCW572SLGzvgjhruoOCo/Nf6Fwg/UVhUcWZmh8vd9E
 40pnBYnt9k4pNn74TmHTp1EKvzHfpPFcmRXhavuABLdbP0jx+wIjjasNX+l93pyp5TLNOUYf
 0Zyz1CbhHtw+z3VN90m4J9OPJFx5dwvi5kybDjMJnntSec3xU7wuLCrZM62muwdlv2Vz25rL
 UT6qk5cghgF2F9xzRJUgT0bBGhG8MA4TIplHUD44vkrmECyOmFeIh1vhbH0uERvNCGxVw9J/
 koIftcg1RbPRUHlt3N3wZa0IDI0zpIsQ7G0JlNfaCZe7D3sIioZYl4Bkg+HhVCnpKstYDBOz
 saJbELR2PnY7e7DhMD/QQLqwjPWGZzc+uzGxMqPvqXVHBfYyA7OWGUoUx8DP9iZaxD4waeuW
 ingjDBmukCIWYOKhkxLF+QhMd62rd0bCoG2YcgUi2BDoMIeJDxYNvdYTIpTDu2/eYgQ5VPZe
 J8SyDC4VK0SoBPMNubgOoLB1dHU1Bw77BbICbalZc0vNmltq/rs2IqIF+fE5glbNCzsz+dOh
 gkor5GSqQ49laU1o5c8N/bbN9qGF1ykWxDJIuV62+bQ+UUGpTglntBYEDKH0ld3cXZiokKWq
 zuTxuqwkXY6GFywogCGVfrKz68aPKli16iSfwfPZvO5vV8J4+OejhPqYoKr4til1lj5w8deR
 gNoD4xFeDRqNXn7nYkfEwabevVvzvOq45NL7+7UhG5LTiwOJsbmPZulkZPCtcykFztSlGHVj
 n59huQxK+pWFfd3C6wLjvE9n0sCypv9lRrrOYI07IO2KzY2Xx315nrbYun15aqQ5PabsbpX2
 7UR4lZIU0lQ7txE6QfUHZYrZam8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7qx/c2xBuuOsFkcOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL2PWlq2MBVcFKtYs72NsYJzL18XIySEhYCJxf/Uppi5GLg4hgaWMElNu
 z2GBSEhIfFx/gxXCFpb4c62LDcQWEvjEKNE2LwXEZhNwlJg09QE7SLOIwClGia3Lz7GBOMwC
 G5gklj99CdYtLOAr0fj6ENhUFgFViZ2vu4FsDg5eAQuJp5/cIBbIS6zecIAZxOYUsJT4sm8+
 C8QyC4m5j+cygti8AoISJ2c+AWtlFlCXWD9PCCTMDNTavHU28wRGwVlIqmYhVM1CUrWAkXkV
 o0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYARvO/Zz8w7GSxuDDzEKcDAq8fAqlDfHCrEmlhVX
 5h5ilOBgVhLhnWPaFCvEm5JYWZValB9fVJqTWnyI0RTos4nMUqLJ+cDkklcSb2hqaG5haWhu
 bG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVHo6zWBT5+fnuw03ml2wv9pf+fVGVcL
 tvHY8zwrEpP81CfDcTNS7NOVVO63Gn8LHlbJOMh825Sy60m8hMacwp/qhqfmzWD48tbrmPpL
 m7fJX16qu2UKCMr/U43646nY63OVS//Uq4e6HXIKB+0cFhyVfL9B7YNL02HH5y80q9iDC6c6
 fVjc8leJpTgj0VCLuag4EQBcdGda9gIAAA==
X-CMS-MailID: 20190919142325eucas1p28102446c22b1e1c61aae0bad46d079b0
X-Msg-Generator: CA
X-RootMTR: 20190919142325eucas1p28102446c22b1e1c61aae0bad46d079b0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142325eucas1p28102446c22b1e1c61aae0bad46d079b0
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142325eucas1p28102446c22b1e1c61aae0bad46d079b0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072328_372710_E5409BA1 
X-CRM114-Status: GOOD (  13.27  )
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

RnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CgpUaGlz
IHBhdGNoIG1ha2VzIHRoZSBhYm92ZSBmdW5jdGlvbiBwdWJsaWMgKGZvciB1c2UgaW4gZXh5bm9z
LWJ1cyBkZXZmcmVxCmRyaXZlcikuCgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dz
a2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMgICAg
ICAgICAgIHwgMyArKy0KIGluY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXByb3ZpZGVyLmggfCA2
ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMgYi9kcml2ZXJzL2ludGVy
Y29ubmVjdC9jb3JlLmMKaW5kZXggN2I5NzEyMjhkZjM4Li45NTg1MDcwMGUzNjcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYworKysgYi9kcml2ZXJzL2ludGVyY29ubmVj
dC9jb3JlLmMKQEAgLTI3OSw3ICsyNzksNyBAQCBFWFBPUlRfU1lNQk9MX0dQTChvZl9pY2NfeGxh
dGVfb25lY2VsbCk7CiAgKiBSZXR1cm5zIGEgdmFsaWQgcG9pbnRlciB0byBzdHJ1Y3QgaWNjX25v
ZGUgb24gc3VjY2VzcyBvciBFUlJfUFRSKCkKICAqIG9uIGZhaWx1cmUuCiAgKi8KLXN0YXRpYyBz
dHJ1Y3QgaWNjX25vZGUgKm9mX2ljY19nZXRfZnJvbV9wcm92aWRlcihzdHJ1Y3Qgb2ZfcGhhbmRs
ZV9hcmdzICpzcGVjKQorc3RydWN0IGljY19ub2RlICpvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIo
c3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3BlYykKIHsKIAlzdHJ1Y3QgaWNjX25vZGUgKm5vZGUg
PSBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwogCXN0cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVy
OwpAQCAtMjk4LDYgKzI5OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaWNjX25vZGUgKm9mX2ljY19nZXRf
ZnJvbV9wcm92aWRlcihzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcGVjKQogCiAJcmV0dXJuIG5v
ZGU7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIpOwogCiAv
KioKICAqIG9mX2ljY19nZXQoKSAtIGdldCBhIHBhdGggaGFuZGxlIGZyb20gYSBEVCBub2RlIGJh
c2VkIG9uIG5hbWUKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXByb3Zp
ZGVyLmggYi9pbmNsdWRlL2xpbnV4L2ludGVyY29ubmVjdC1wcm92aWRlci5oCmluZGV4IGIxNmY5
ZWZmYTU1NS4uMDcwZTQxMTU2NGUxIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2ludGVyY29u
bmVjdC1wcm92aWRlci5oCisrKyBiL2luY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXByb3ZpZGVy
LmgKQEAgLTEwMCw2ICsxMDAsNyBAQCB2b2lkIGljY19ub2RlX2FkZChzdHJ1Y3QgaWNjX25vZGUg
Km5vZGUsIHN0cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyKTsKIHZvaWQgaWNjX25vZGVfZGVs
KHN0cnVjdCBpY2Nfbm9kZSAqbm9kZSk7CiBpbnQgaWNjX3Byb3ZpZGVyX2FkZChzdHJ1Y3QgaWNj
X3Byb3ZpZGVyICpwcm92aWRlcik7CiBpbnQgaWNjX3Byb3ZpZGVyX2RlbChzdHJ1Y3QgaWNjX3By
b3ZpZGVyICpwcm92aWRlcik7CitzdHJ1Y3QgaWNjX25vZGUgKm9mX2ljY19nZXRfZnJvbV9wcm92
aWRlcihzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcGVjKTsKIAogI2Vsc2UKIApAQCAtMTQwLDYg
KzE0MSwxMSBAQCBzdGF0aWMgaW5saW5lIGludCBpY2NfcHJvdmlkZXJfZGVsKHN0cnVjdCBpY2Nf
cHJvdmlkZXIgKnByb3ZpZGVyKQogCXJldHVybiAtRU5PVFNVUFA7CiB9CiAKK3N0cnVjdCBpY2Nf
bm9kZSAqb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNw
ZWMpCit7CisJcmV0dXJuIEVSUl9QVFIoLUVOT1RTVVBQKTsKK30KKwogI2VuZGlmIC8qIENPTkZJ
R19JTlRFUkNPTk5FQ1QgKi8KIAogI2VuZGlmIC8qIF9fTElOVVhfSU5URVJDT05ORUNUX1BST1ZJ
REVSX0ggKi8KLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
