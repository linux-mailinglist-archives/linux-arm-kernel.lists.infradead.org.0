Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13F31BAE58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=W8ANoGukp5a/IvdNDEsVshToYXbPGW1xOQ99Qn3R8J8=; b=Kl5A0LwR02CFGJ
	v81R9I7WpRWd0KVuVtwwf1VEVUpdGyAxua5qFgaNhqPLxHGqrA2VKN9pLi+npXCCyQE1CgzkWsqx+
	qBnLUnOCR8zGeEBeSS1iuTFg5SRxlXc7TOf8/xEfdf5iSeiammX8fQ886avDGpE78mYetwFv4LtY/
	KKWJ6vXirWApfVJSg7c2dNTwB4r5x/t+Xph9SPzzTeQO3rNvP+48q2AJKd1kzKOck0UlaQFnBA8Rw
	4uymme+kYJIbFNEwWL4Me1uJHaN6J6uzNV5fCd9FGw8INLNiMQKOq5tgAOLoRuDdtgMvWx9iTfQtI
	HQyg3LjnoNcyb3pWbNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9hL-00083x-4F; Mon, 27 Apr 2020 19:45:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9gM-0004pu-RF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:44:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200427194444euoutp0298f2ede271fa642ab53aabd5202baebb~JxMK2R1iC0979109791euoutp02O
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 19:44:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200427194444euoutp0298f2ede271fa642ab53aabd5202baebb~JxMK2R1iC0979109791euoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588016684;
 bh=h+iVOU8eSyi+BChuEyQmR7w1F5LIOdlV7W42Fs3FR64=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ouFa9eIe/+YgBTcRaIN42JradHtxUv+/4I/0OjRCnoGSptZyxS1hpk/4QNlgrpSmG
 GsGwz5umxCX3fInOzM6YvW8Qzy4SfKwPp3duz/XP+68FUT6rqVflzH2pPzhFZoWCds
 f3ESn7dArAMevEbp/031LMp63LvdUIVOWMzrazOE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200427194443eucas1p19cbb8c98dbab47ded399d58f987169a5~JxMJ5J2iY3217732177eucas1p1y;
 Mon, 27 Apr 2020 19:44:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1F.41.60679.B2637AE5; Mon, 27
 Apr 2020 20:44:43 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200427194441eucas1p1ee45077c24da8188b22c7c8f7536f31f~JxMIraGFb3215132151eucas1p1j;
 Mon, 27 Apr 2020 19:44:41 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200427194441eusmtrp2bb5783295d28f97ad365e40b7e8f13fb~JxMIq7sdE0145101451eusmtrp2Y;
 Mon, 27 Apr 2020 19:44:41 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-60-5ea7362b96fd
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 42.68.07950.92637AE5; Mon, 27
 Apr 2020 20:44:41 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200427194441eusmtip28c6fff74e75c1f97790a908a988d435a~JxMIdW5mD0746107461eusmtip20;
 Mon, 27 Apr 2020 19:44:41 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: decompressor: increase tag size
Date: Mon, 27 Apr 2020 21:44:39 +0200
Message-Id: <20200427194439.15453-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKIsWRmVeSWpSXmKPExsWy7djP87raZsvjDLbeYba4eWgFo8Wmx9dY
 HZg8Ni+p9+jbsooxgCmKyyYlNSezLLVI3y6BK+PmjQb2gmdsFX/W7WJrYLzC2sXIwSEhYCLx
 815wFyMXh5DACkaJ7vaJ7BDOF0aJeb8es0I4nxklftz4zdLFyAnW8bhxGlTVckaJjfffQFU9
 Z5R4d/0LI0gVm4CjRP/SE6wgtoiAhsSUrsfsIDazgL3ExFn/2UBsYQFTiZ7mX2A2i4CqxOOF
 b8FsXgFria4pS9kgtslLzG48DRUXlDg58wnYFfwCWhJrmq6zQMyUl2jeOpsZ5AgJgdtsEk+u
 PGSHaHaRmPLhHyOELSzx6vgWqLiMxP+d85kgAVAvMXmSGURvD6PEtjk/oN60lrhzDuQ4DqAF
 mhLrd+lDhB0lvi/ZCNXKJ3HjrSDECXwSk7ZNZ4YI80p0tAlBVKtIrOvfAzVQSqL31QqoYzwk
 bm7+yjqBUXEWksdmIXlmFsLeBYzMqxjFU0uLc9NTi43yUsv1ihNzi0vz0vWS83M3MQITw+l/
 x7/sYNz1J+kQowAHoxIP74P9y+KEWBPLiitzDzFKcDArifA+ygAK8aYkVlalFuXHF5XmpBYf
 YpTmYFES5zVe9DJWSCA9sSQ1OzW1ILUIJsvEwSnVwGib5G4TqPhh/aLXYTcvaTY517kbahYd
 8yy73l5+K+RJ6gmFnU9cHGqYEiTd/khYum+S5N59Nq6b583N62yb47b+D905L0D83OF8PcZH
 wefn+wjNPmRlqv4pU/BJ5j7NopxVtaLqontrxaSkLn14nxydrjPpeOGLjSvzXks5btG8/fG6
 e8yXW0osxRmJhlrMRcWJAF4A9cUIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHLMWRmVeSWpSXmKPExsVy+t/xe7qaZsvjDJad1rW4eWgFo8Wmx9dY
 HZg8Ni+p9+jbsooxgClKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYl
 NSezLLVI3y5BL+PmjQb2gmdsFX/W7WJrYLzC2sXIySEhYCLxuHEaexcjF4eQwFJGif2Tmxm7
 GDmAElISK+emQ9QIS/y51sUGUfOUUeLgo43MIAk2AUeJ/qUnwAaJCGhITOl6zA5iMwvYS0yc
 9Z8NxBYWMJXoaf4FZrMIqEo8XvgWzOYVsJbomrKUDWKBvMTsxtNQcUGJkzOfsIDcwCygLrF+
 nhBImF9AS2JN03UWiPHyEs1bZzNPYBSYhaRjFkLHLCRVCxiZVzGKpJYW56bnFhvpFSfmFpfm
 pesl5+duYgSG9bZjP7fsYOx6F3yIUYCDUYmH98H+ZXFCrIllxZW5hxglOJiVRHgfZQCFeFMS
 K6tSi/Lji0pzUosPMZoCvTORWUo0OR8Yc3kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tS
 s1NTC1KLYPqYODilGhj1LJSbGPctcVn+KrbD78aXd70i55haaifMPiVje1d0T+rFy6LMfgKu
 s9xl7j4p4EmMZHsRHTFt9Q+x0/v/pJkGXak4EpS2cmKDW7l628Pb5945Tpn6JUVlzecFXfuz
 DoUvsNwjeE0/PrKiPcbikN1vXd6Y2skev3Ltts05P1X7scmS5xOYrmQqsRRnJBpqMRcVJwIA
 6NV4cYECAAA=
X-CMS-MailID: 20200427194441eucas1p1ee45077c24da8188b22c7c8f7536f31f
X-Msg-Generator: CA
X-RootMTR: 20200427194441eucas1p1ee45077c24da8188b22c7c8f7536f31f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200427194441eucas1p1ee45077c24da8188b22c7c8f7536f31f
References: <CGME20200427194441eucas1p1ee45077c24da8188b22c7c8f7536f31f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124447_211765_5AAF1AD7 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHNpemUgZmllbGQgb2YgdGhlIHRhZyBoZWFkZXIgc3RydWN0dXJlIGlzIHN1cHBvc2VkIHRv
IGJlIHNldCB0byB0aGUKc2l6ZSBvZiBhIHRhZyBzdHJ1Y3R1cmUgaW5jbHVkaW5nIHRoZSBoZWFk
ZXIuCgpGaXhlczogYzc3MjU2ODc4OGI1ZjAgKCJBUk06IGFkZCBhZGRpdGlvbmFsIHRhYmxlIHRv
IGNvbXByZXNzZWQga2VybmVsIikKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5z
dGVsbWFjaEBzYW1zdW5nLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvdm1saW51
eC5sZHMuUyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC92bWxpbnV4Lmxkcy5T
IGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKaW5kZXggYjI0N2YzOTlk
ZTcxLi5mODJiNTk2MmQ5N2UgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC92
bWxpbnV4Lmxkcy5TCisrKyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC92bWxpbnV4Lmxkcy5T
CkBAIC00Miw3ICs0Miw3IEBAIFNFQ1RJT05TCiAgIH0KICAgLnRhYmxlIDogQUxJR04oNCkgewog
ICAgIF90YWJsZV9zdGFydCA9IC47Ci0gICAgTE9ORyhaSU1BR0VfTUFHSUMoMikpCisgICAgTE9O
RyhaSU1BR0VfTUFHSUMoNCkpCiAgICAgTE9ORyhaSU1BR0VfTUFHSUMoMHg1YTUzNGM0YikpCiAg
ICAgTE9ORyhaSU1BR0VfTUFHSUMoX19waWdneV9zaXplX2FkZHIgLSBfc3RhcnQpKQogICAgIExP
TkcoWklNQUdFX01BR0lDKF9rZXJuZWxfYnNzX3NpemUpKQotLSAKMi4yNS4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
