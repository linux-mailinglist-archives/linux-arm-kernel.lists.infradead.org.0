Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2C61E83CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6eLBgAfDl3MRsDBVkcZDvUI0m7VU0eg01nMWQvortc=; b=NKNJQx8TDkaTup
	M2YxmlhUO1qmi8TKESmcoxGlu70qmXPmV2t4+89GZRX4WLgGx3GnG44T/0HZsBvjgpn2j94ejkWJf
	xai16kDgnR2ZiuBzVpWwDUp5HOypM2xqRip8FVQKg5XdPS4aMEuzyzQUY247WbuXgZGNpWfTTKXIk
	1hTkoWKwCi1alVIWw+zeurrNJfjtDjlE0VXEUVM4MTagzsd8UtrLAKBMQcn9FLAAGZNsq93XX62FU
	jGzEO7YkpOsQC+67ibcm+ogDyrifQmdaw+49ZJttLZP84CZR2n/ViZ6aM8j8lSrBz2MNX/l2Vxqq+
	XwNa3mtWIGUUrrRHdyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehxw-00064C-NT; Fri, 29 May 2020 16:34:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehvs-0004dm-9x
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:32:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200529163230euoutp02d2a299bea42ba5c3d0c76e4c9212becb~TjNd8fQNA1718417184euoutp02H
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 16:32:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200529163230euoutp02d2a299bea42ba5c3d0c76e4c9212becb~TjNd8fQNA1718417184euoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590769950;
 bh=ZA0i9eHHG5iu5/RTCzNyz3w0SkS4Fkzs8grCQaAd27k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AMP42dGdaoNciWAvezQNZhZOqLlFNpf5q4Q569M4OGLHmaxhtUMmSOutb1G4hXmpv
 5Pfki1rRO4k3rcAx1GHx7PtvCjoBrZWHQX1jrwqPuc0jk7PqAiaTs/kH/Lp7itYluV
 iu//CxdVlUvZHWUkuztdl6cFMTxqYiRtOvppEx0k=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200529163230eucas1p17a7d2b6bfadc0e04b85afd2e276ad790~TjNdseh5o2226622266eucas1p1I;
 Fri, 29 May 2020 16:32:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2D.5D.61286.E1931DE5; Fri, 29
 May 2020 17:32:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde~TjNdXTWjd2862228622eucas1p2a;
 Fri, 29 May 2020 16:32:29 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200529163229eusmtrp1babf093f6914f71910758ef451f0ee69~TjNdRHHOa2579525795eusmtrp1L;
 Fri, 29 May 2020 16:32:29 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-5f-5ed1391e0a89
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 75.25.07950.D1931DE5; Fri, 29
 May 2020 17:32:29 +0100 (BST)
Received: from AMDC3061.digital.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163228eusmtip1d835c6b590f59bad320b4e50b49b9452~TjNcgtTCT1280712807eusmtip1F;
 Fri, 29 May 2020 16:32:28 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
Subject: [RFC PATCH v5 6/6] drm: exynos: mixer: Add interconnect support
Date: Fri, 29 May 2020 18:32:00 +0200
Message-Id: <20200529163200.18031-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529163200.18031-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djPc7pylhfjDFo+cFrcn9fKaLFxxnpW
 i+tfnrNaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xabH11gtLu+aw2Yx4/w+Jou1R+6yW9xuXMFm
 cfhNO6vFjMkv2Rz4PDat6mTzuHNtD5vH/e7jTB6bl9R79G1ZxejxeZNcAFsUl01Kak5mWWqR
 vl0CV8alyc/YCq5qVjQf/MTUwDhdqYuRk0NCwERi0Y/VLF2MXBxCAisYJfbPWccE4XxhlHi9
 ZBcLSJWQwGdGiacbrWE6Dl3eygxRtJxR4kD7VEaIIqCOtwtTQWw2AUOJ3qN9YHERAReJtqfz
 wFYwC+xhktg3+x2Qw8EhLOAh0TmzCKSGRUBVYsamJnaQMK+AtcSRTSoQu+QlVm84wAxicwrY
 SHT/mQFm8woISpyc+QTsNmagmuats8HukRC4xS5x+ccyRohmF4ltXavYIWxhiVfHt0DZMhKn
 J/ewQDQ0M0r07L7NDuFMYJS4f3wBVLe1xJ1zv9hALmIW0JRYv0sfIuwocbm/lxUkLCHAJ3Hj
 rSDEEXwSk7ZNZ4YI80p0tAlBVKtI/F41nQnClpLofvKfBcL2kOhqnsQ0gVFxFpJ3ZiF5ZxbC
 3gWMzKsYxVNLi3PTU4sN81LL9YoTc4tL89L1kvNzNzEC09bpf8c/7WD8einpEKMAB6MSD2+F
 1sU4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9ilOZgURLnNV70MlZIID2x
 JDU7NbUgtQgmy8TBKdXA6L7Z93jrct4em9nPGsU2xH+/0XV4obhHc/T7g/+Lp52aFtgrYHp0
 j89XlZZ/NeE7k9coT9D48e2UpoFP4Wb+rdMSI9cvVMqwvl7GfyXLbm7sfoWipNnr5v902fBV
 rpnhi+isgrCr6fZ6YYZCPydNKM8LbU3j5da+k8FhvXi1/Qv/HZ9O7V+yV4mlOCPRUIu5qDgR
 ADHSCiFXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsVy+t/xu7qylhfjDC6t17W4P6+V0WLjjPWs
 Fte/PGe1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2i02Pr7FaXN41h81ixvl9TBZrj9xlt7jduILN
 4vCbdlaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n36NuyitHj8ya5ALYoPZui/NKSVIWM
 /OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYxLk5+xFVzVrGg++Imp
 gXG6UhcjJ4eEgInEoctbmbsYuTiEBJYyShxdfYmti5EDKCElMb8FqkZY4s+1LjaImk+MEmtv
 rmMHSbAJGEr0Hu1jBLFFBDwkTrWuZQUpYhY4wSTxpHcj2CBhoETnzCKQGhYBVYkZm5rYQcK8
 AtYSRzapQMyXl1i94QAziM0pYCPR/WcGmC0EVNL2eBYriM0rIChxcuYTFpBWZgF1ifXzhEDC
 zECtzVtnM09gFJyFpGoWQtUsJFULGJlXMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbitmM/
 t+xg7HoXfIhRgINRiYf3gs7FOCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYf
 YjQF+mwis5Rocj4wTeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCU
 amDcsVOXaZrktxOqfqeLzit1By/pVl2XZemprlJnvaXPUdXLd2nzBbHiU5lFNswfe8MNt52J
 a4mTPqI4aVs6y8fjvnxMXZNuz5j8wqO6W2h5pe9fuxUWKx5qBSrkzUyIUG/Q/nj/p7mSxuo6
 NnOp6vX/W70Wdrpo3UvJmPMh6JjOsf53G6RNKpVYijMSDbWYi4oTAYOAGL/bAgAA
X-CMS-MailID: 20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde
X-Msg-Generator: CA
X-RootMTR: 20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163229eucas1p2ee6394f184e5eba12599559f8a621fde@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_093232_549940_39477E03 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKVGhpcyBw
YXRjaCBhZGRzIGludGVyY29ubmVjdCBzdXBwb3J0IHRvIGV4eW5vcy1taXhlci4gVGhlIG1peGVy
IHdvcmtzCnRoZSBzYW1lIGFzIGJlZm9yZSB3aGVuIENPTkZJR19JTlRFUkNPTk5FQ1QgaXMgJ24n
LgoKRm9yIHByb3BlciBvcGVyYXRpb24gb2YgdGhlIHZpZGVvIG1peGVyIGJsb2NrIHdlIG5lZWQg
dG8gZW5zdXJlIHRoZQppbnRlcmNvbm5lY3QgYnVzc2VzIGxpa2UgRE1DIG9yIExFRlRCVVMgcHJv
dmlkZSBlbm91Z2ggYmFuZHdpZHRoIHNvCmFzIHRvIGF2b2lkIERNQSBidWZmZXIgdW5kZXJydW5z
IGluIHRoZSBtaXhlciBibG9jay4gaS5lIHdlIG5lZWQgdG8KcHJldmVudCB0aG9zZSBidXNzZXMg
ZnJvbSBvcGVyYXRpbmcgaW4gbG93IHBlcmZvbWFuY2UgT1BQcyB3aGVuCnRoZSBtaXhlciBpcyBy
dW5uaW5nLgpJbiB0aGlzIHBhdGNoIHRoZSBidXMgYmFuZHdpZHRoIHJlcXVlc3QgaXMgZG9uZSB0
aHJvdWdoIHRoZSBpbnRlcmNvbm5lY3QKQVBJLCB0aGUgYmFuZGl3aWR0aCB2YWx1ZSBpcyBjYWxj
dWxhdGVkIGZyb20gc2VsZWN0ZWQgRFJNIG1vZGUsIGkuZS4KdmlkZW8gcGxhbmUgd2lkdGgsIGhl
aWdodCwgcmVmcmVzaCByYXRlIGFuZCBwaXhlbCBmb3JtYXQuCgpDby1kZXZlbG9wZWQtYnk6IEFy
dHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFyZWsg
U3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpbcy5uYXdyb2NraTogcmVuYW1l
ZCBzb2NfcGF0aCB2YXJpYWJsZSB0byBpY2NfcGF0aCwgZWRpdGVkIGNvbW1pdCBkZXNjLl0KU2ln
bmVkLW9mZi1ieTogU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPgot
LS0KQ2hhbmdlcyBmb3IgdjU6CiAtIHJlbmFtZWQgc29jX3BhdGggdmFyaWFibGUgdG8gaWNjX3Bh
dGgKLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jIHwgNzMgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX21peGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5j
CmluZGV4IDIxYjcyNmIuLmJkYWU2ODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX21peGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4
ZXIuYwpAQCAtMTMsNiArMTMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVudC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvaTJjLmg+CisjaW5jbHVkZSA8
bGludXgvaW50ZXJjb25uZWN0Lmg+CiAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAjaW5j
bHVkZSA8bGludXgvaXJxLmg+CiAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+CkBAIC05OCw2ICs5
OSw3IEBAIHN0cnVjdCBtaXhlcl9jb250ZXh0IHsKIAlzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjCSpj
cnRjOwogCXN0cnVjdCBleHlub3NfZHJtX3BsYW5lCXBsYW5lc1tNSVhFUl9XSU5fTlJdOwogCXVu
c2lnbmVkIGxvbmcJCWZsYWdzOworCXN0cnVjdCBpY2NfcGF0aAkJKmljY19wYXRoOwogCiAJaW50
CQkJaXJxOwogCXZvaWQgX19pb21lbQkJKm1peGVyX3JlZ3M7CkBAIC05MzQsNiArOTM2LDQyIEBA
IHN0YXRpYyB2b2lkIG1peGVyX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBleHlub3NfZHJtX2NydGMg
KmNydGMpCiAJbWl4ZXJfcmVnX3dyaXRlbWFzayhtaXhlcl9jdHgsIE1YUl9JTlRfRU4sIDAsIE1Y
Ul9JTlRfRU5fVlNZTkMpOwogfQogCitzdGF0aWMgdm9pZCBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3
aWR0aChzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpjcnRjKQoreworCXN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICptb2RlID0gJmNydGMtPmJhc2Uuc3RhdGUtPmFkanVzdGVkX21vZGU7CisJc3RydWN0
IG1peGVyX2NvbnRleHQgKmN0eCA9IGNydGMtPmN0eDsKKwl1bnNpZ25lZCBsb25nIGJ3LCBiYW5k
d2lkdGggPSAwOworCXUzMiBhdmdfYncsIHBlYWtfYnc7CisJaW50IGksIGosIHN1YjsKKworCWlm
ICghY3R4LT5pY2NfcGF0aCkKKwkJcmV0dXJuOworCisJZm9yIChpID0gMDsgaSA8IE1JWEVSX1dJ
Tl9OUjsgaSsrKSB7CisJCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gJmN0eC0+cGxhbmVzW2ld
LmJhc2U7CisJCWNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKmZvcm1hdDsKKworCQlpZiAo
cGxhbmUtPnN0YXRlICYmIHBsYW5lLT5zdGF0ZS0+Y3J0YyAmJiBwbGFuZS0+c3RhdGUtPmZiKSB7
CisJCQlmb3JtYXQgPSBwbGFuZS0+c3RhdGUtPmZiLT5mb3JtYXQ7CisJCQlidyA9IG1vZGUtPmhk
aXNwbGF5ICogbW9kZS0+dmRpc3BsYXkgKgorCQkJCQkJCWRybV9tb2RlX3ZyZWZyZXNoKG1vZGUp
OworCQkJaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpCisJCQkJYncg
Lz0gMjsKKwkJCWZvciAoaiA9IDA7IGogPCBmb3JtYXQtPm51bV9wbGFuZXM7IGorKykgeworCQkJ
CXN1YiA9IGogPyAoZm9ybWF0LT52c3ViICogZm9ybWF0LT5oc3ViKSA6IDE7CisJCQkJYmFuZHdp
ZHRoICs9IGZvcm1hdC0+Y3BwW2pdICogYncgLyBzdWI7CisJCQl9CisJCX0KKwl9CisKKwkvKiBh
ZGQgMjAlIHNhZmV0eSBtYXJnaW4gKi8KKwliYW5kd2lkdGggPSBiYW5kd2lkdGggLyA0ICogNTsK
KwlkZXZfZGJnKGN0eC0+ZGV2LCAiZXh5bm9zLW1peGVyOiBzYWZlIGJhbmR3aWR0aCAlbGQgQnBz
XG4iLCBiYW5kd2lkdGgpOworCisJYXZnX2J3ID0gcGVha19idyA9IEJwc190b19pY2MoYmFuZHdp
ZHRoKTsKKwlpY2Nfc2V0X2J3KGN0eC0+aWNjX3BhdGgsIGF2Z19idywgcGVha19idyk7Cit9CisK
IHN0YXRpYyB2b2lkIG1peGVyX2F0b21pY19iZWdpbihzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICpj
cnRjKQogewogCXN0cnVjdCBtaXhlcl9jb250ZXh0ICpjdHggPSBjcnRjLT5jdHg7CkBAIC05ODUs
NiArMTAyMyw3IEBAIHN0YXRpYyB2b2lkIG1peGVyX2F0b21pY19mbHVzaChzdHJ1Y3QgZXh5bm9z
X2RybV9jcnRjICpjcnRjKQogCWlmICghdGVzdF9iaXQoTVhSX0JJVF9QT1dFUkVELCAmbWl4ZXJf
Y3R4LT5mbGFncykpCiAJCXJldHVybjsKIAorCW1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKGNy
dGMpOwogCW1peGVyX2VuYWJsZV9zeW5jKG1peGVyX2N0eCk7CiAJZXh5bm9zX2NydGNfaGFuZGxl
X2V2ZW50KGNydGMpOwogfQpAQCAtMTAzMiw2ICsxMDcxLDcgQEAgc3RhdGljIHZvaWQgbWl4ZXJf
YXRvbWljX2Rpc2FibGUoc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykKIAlmb3IgKGkgPSAw
OyBpIDwgTUlYRVJfV0lOX05SOyBpKyspCiAJCW1peGVyX2Rpc2FibGVfcGxhbmUoY3J0YywgJmN0
eC0+cGxhbmVzW2ldKTsKIAorCW1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKGNydGMpOwogCWV4
eW5vc19kcm1fcGlwZV9jbGtfZW5hYmxlKGNydGMsIGZhbHNlKTsKIAogCXBtX3J1bnRpbWVfcHV0
KGN0eC0+ZGV2KTsKQEAgLTEyMjMsMTIgKzEyNjMsMjIgQEAgc3RhdGljIGludCBtaXhlcl9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7CiAJY29uc3Qgc3RydWN0IG1peGVyX2Rydl9kYXRhICpkcnY7CiAJc3RydWN0IG1p
eGVyX2NvbnRleHQgKmN0eDsKKwlzdHJ1Y3QgaWNjX3BhdGggKnBhdGg7CiAJaW50IHJldDsKIAor
CS8qCisJICogUmV0dXJucyBOVUxMIGlmIENPTkZJR19JTlRFUkNPTk5FQ1QgaXMgZGlzYWJsZWQu
CisJICogTWF5IHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpLgorCSAqLworCXBhdGggPSBv
Zl9pY2NfZ2V0KGRldiwgTlVMTCk7CisJaWYgKElTX0VSUihwYXRoKSkKKwkJcmV0dXJuIFBUUl9F
UlIocGF0aCk7CisKIAljdHggPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpjdHgp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWN0eCkgewogCQlEUk1fREVWX0VSUk9SKGRldiwgImZhaWxl
ZCB0byBhbGxvYyBtaXhlciBjb250ZXh0LlxuIik7Ci0JCXJldHVybiAtRU5PTUVNOworCQlyZXQg
PSAtRU5PTUVNOworCQlnb3RvIGVycjsKIAl9CiAKIAlkcnYgPSBvZl9kZXZpY2VfZ2V0X21hdGNo
X2RhdGEoZGV2KTsKQEAgLTEyMzYsNiArMTI4Niw3IEBAIHN0YXRpYyBpbnQgbWl4ZXJfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAljdHgtPnBkZXYgPSBwZGV2OwogCWN0eC0+
ZGV2ID0gZGV2OwogCWN0eC0+bXhyX3ZlciA9IGRydi0+dmVyc2lvbjsKKwljdHgtPmljY19wYXRo
ID0gcGF0aDsKIAogCWlmIChkcnYtPmlzX3ZwX2VuYWJsZWQpCiAJCV9fc2V0X2JpdChNWFJfQklU
X1ZQX0VOQUJMRUQsICZjdHgtPmZsYWdzKTsKQEAgLTEyNDUsMTcgKzEyOTYsMjkgQEAgc3RhdGlj
IGludCBtaXhlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXBsYXRmb3Jt
X3NldF9kcnZkYXRhKHBkZXYsIGN0eCk7CiAKIAlyZXQgPSBjb21wb25lbnRfYWRkKCZwZGV2LT5k
ZXYsICZtaXhlcl9jb21wb25lbnRfb3BzKTsKLQlpZiAoIXJldCkKLQkJcG1fcnVudGltZV9lbmFi
bGUoZGV2KTsKKwlpZiAocmV0IDwgMCkKKwkJZ290byBlcnI7CisKKwlwbV9ydW50aW1lX2VuYWJs
ZShkZXYpOworCisJcmV0dXJuIDA7CisKK2VycjoKKwlpY2NfcHV0KHBhdGgpOwogCiAJcmV0dXJu
IHJldDsKIH0KIAogc3RhdGljIGludCBtaXhlcl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIHsKLQlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7CisJc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBkZXYtPmRldjsKKwlzdHJ1Y3QgbWl4ZXJfY29udGV4dCAqY3R4ID0gZGV2
X2dldF9kcnZkYXRhKGRldik7CisKKwlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKKworCWNvbXBv
bmVudF9kZWwoZGV2LCAmbWl4ZXJfY29tcG9uZW50X29wcyk7CiAKLQljb21wb25lbnRfZGVsKCZw
ZGV2LT5kZXYsICZtaXhlcl9jb21wb25lbnRfb3BzKTsKKwlpY2NfcHV0KGN0eC0+aWNjX3BhdGgp
OwogCiAJcmV0dXJuIDA7CiB9Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
