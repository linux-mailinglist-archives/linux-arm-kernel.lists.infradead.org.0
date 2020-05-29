Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA241E83BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Ppe1QqTHxydMXurTsQLZwYUcbNm0zCnvJOZ5G2JE0oI=; b=Z7pF0erfIYMAT6
	GGneO8PrsYDQVtbEIWZPCnwEv0O1kAgCeeF1+QVYqlIQkjys101u3Etn2vwjKcRdvIIsRXAknu2pH
	1Qm5g45McosvcgwWM/jxCDYYHG6v4LR8VXMkNLjzH0PNZHyp+hehFgL5FEYXRlgLEFUcdMDAOByJ8
	Q6NmN1+JY7AsmiK/d+V79oMcq52USbCI2M+yhKwROhdNgDb4TLRUOkwvPJfGwAq/3muIpMx5NgLvC
	muv+M561X19FGXlEwGtIRHpL5wyHZCdKeGLps/psethR11IdLsO2yeZp1l4EUGlOA4mgX+m9kHcTi
	YXokbbgID/1RaSX7JRlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehvp-0004Rw-2k; Fri, 29 May 2020 16:32:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehvc-0004R1-Pv
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:32:19 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200529163214euoutp01e1cf3b96dbade2c9eeb5f013148dd3ea~TjNOsLGiS0993009930euoutp01t
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 16:32:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200529163214euoutp01e1cf3b96dbade2c9eeb5f013148dd3ea~TjNOsLGiS0993009930euoutp01t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590769934;
 bh=YyI0aJs2AZdI75R6HWboaN2GUTmcD7CBWGH8ghELHas=;
 h=From:To:Cc:Subject:Date:References:From;
 b=bc/TCs0zAPZbRoZkupJAenH6UOQwigTqDM7QEWBOk9/r6K0+e78znEc/MtW78m26M
 hLwHy9efr5Ae6gVA2+qbL+9ynXtik2RaLJJZ+4ijMV3QxVAKC75fNKUUofsdPczhUX
 eRP4yOvD1PDeycz7OrqIn7bie8HpwfbrMNPM5un8=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200529163213eucas1p1b8c6693a4bb092751d1e6fb77f194bd1~TjNOa8_ZL2234422344eucas1p10;
 Fri, 29 May 2020 16:32:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F4.5D.61286.D0931DE5; Fri, 29
 May 2020 17:32:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b~TjNN7Y92e2234422344eucas1p1z;
 Fri, 29 May 2020 16:32:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200529163213eusmtrp10505a206e392450cf0ba7d1479952ac5~TjNN4_PvY2579525795eusmtrp1G;
 Fri, 29 May 2020 16:32:13 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-40-5ed1390d9e0e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2F.15.07950.D0931DE5; Fri, 29
 May 2020 17:32:13 +0100 (BST)
Received: from AMDC3061.digital.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163212eusmtip198897ccc0e621058c177a4cac704732e~TjNNGw9Ub1044210442eusmtip1-;
 Fri, 29 May 2020 16:32:12 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
Subject: [RFC PATCH v5 0/6] Exynos: Simple QoS for exynos-bus using
 interconnect
Date: Fri, 29 May 2020 18:31:54 +0200
Message-Id: <20200529163200.18031-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju2zk7Oy6nx6Pii0rJsB8JeSl/nNAiL9SQfkTgoEBr6WGaOmVH
 TaPSmKl5v/zQXInoIrWLtpyUeYmlTvOet0JrQlYYXqhpYUHmPFb+e97neZ+P53n5SIzuFbqS
 sapkVq1SxEsJMd7auz5yQHJ4LNK3tPggY66+gZjHlU1CZnr1s5CZWFshmIoOPcGUmUtwZmSk
 WcToP0wJmfG22wRTOdIpYB52vxMxM9frCeblYo6QqSxfII7ZyfSNNwnZ7FQ7ITPnmwSyJ7oM
 WVFLI5JZ9HtOEWfFgdFsfGwqq/Y5el4cY7TMYUkaz7SxwWkiEy255yEbEih/MJmHBXlITNJU
 PYKu8pXtYRWBpniD4AcLgspHCygPkVsWncXJ6qapewi0DbH/DGWT+cgqEJQfFPYUbWEnKhSy
 P1bj1iWMahdAp3YZtwqO1GnoKcoRWDFO7YPBwvUtXkIFQHdfD87n2wv3m19gPO8A/bfmt3hs
 k9cYtJj1UaBeieCu7o6QN4TC27UH29gRvphaRDx2h4HyApw3aBAUPJ8R8UMJArOpBvFbATA7
 /JOw9sSo/dDU5sPTQdA1YxTx9e3gzZIDH8IOylorMJ6WQG42zW97wq/GCgGPXSF/fmO7iwy+
 lw4L+MtFwNCURVSCPKp2VKvaUa3qf4YahDUiFzaFS1CynJ+KveTNKRK4FJXSOyoxQY82f9fA
 b9O3p2jt9QUjokgktZWkeY1F0kJFKpeeYERAYlInSfDQQCQtiVakX2bViefUKfEsZ0RuJC51
 kRyqXYigKaUimY1j2SRW/VcVkDaumchj3EmZ7JHOgYN8QL4QN+1gn5E5GVIbsDj3Psw5JDDY
 f9lW3kS3kCp6LaohfOVIVtZGb6kwK8q+oDUxOGduNOiMnfjENXV1RF1HbVFxXSomDwWD9lmO
 Upn+NTV31+4sl+VRZ8NK2HHDvOHTyavaIFtRv07+46LmyoSvuC/cTYpzMQo/L0zNKf4AoSzS
 jlkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsVy+t/xu7q8lhfjDKav5ra4P6+V0WLjjPWs
 Fte/PGe1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2i02Pr7FaXN41h81ixvl9TBZrj9xlt7jduILN
 4vCbdlaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n36NuyitHj8ya5ALYoPZui/NKSVIWM
 /OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYxDnx8wFzSrVFw8c52t
 gfGtTBcjB4eEgInEks8iXYxcHEICSxklDp0/zQgRl5KY36LUxcgJZApL/LnWxQZR84lRYte5
 NawgCTYBQ4neo32MILaIgIfEqda1rCBFzAInmCSe9G5kA0kICwRILGj6wgRiswioSpzp/ckC
 YvMKWEscOXGUBWKDvMTqDQeYIeKCEidnPmEBOYJZQF1i/TwhkDAzUEnz1tnMExj5ZyGpmoVQ
 NQtJ1QJG5lWMIqmlxbnpucVGesWJucWleel6yfm5mxiB0bXt2M8tOxi73gUfYhTgYFTi4b2g
 czFOiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYFemMgsJZqcD4z8vJJ4
 Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjNMZp81vOtNY/fzHyVfb
 Oysux6jtuCwzb35IuqOGpcmqtUH2IQJrPM3KvqXncq3cNO2jOdeuHe5+D/tbbes1Dn53u1+5
 n219t42mctvV7azJDfIKB7qdZ2Quf5380G6eTKr9pqLV6rYeP/4EZf3YlXn/8vz4Lyu2bZ7z
 +0/ihV1C2RsePjVL7VViKc5INNRiLipOBAAiaeStxAIAAA==
X-CMS-MailID: 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b
X-Msg-Generator: CA
X-RootMTR: 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b
References: <CGME20200529163213eucas1p1ac148f9238214ac84f3d0cc199c4398b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_093217_153308_C9D16447 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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

VGhpcyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdCBBUEkgc3VwcG9ydCBmb3IgdGhlIEV4eW5v
cyBTb0MgInNhbXN1bmcsCmV4eW5vcy1idXMiIGNvbXBhdGlibGUgZGV2aWNlcywgd2hpY2ggYWxy
ZWFkeSBoYXZlIHRoZWlyIGNvcnJlc3BvbmRpbmcgCmV4eW5vcy1idXMgZHJpdmVyIGluIHRoZSBk
ZXZmcmVxIHN1YnN5c3RlbS4gIENvbXBsZW1lbnRpbmcgdGhlIGRldmZyZXEgZHJpdmVyIAp3aXRo
IGFuIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IGFsbG93cyB0byBlbnN1cmUgdGhlIFFvUyBy
ZXF1aXJlbWVudHMgCm9mIGRldmljZXMgYWNjZXNzaW5nIHRoZSBzeXN0ZW0gbWVtb3J5IChlLmcu
IHZpZGVvIHByb2Nlc3NpbmcgZGV2aWNlcykgCmFyZSBmdWxmaWxsZWQgYW5kIHRvIGF2b2lkIGlz
c3VlcyBsaWtlIHRoZSBvbmUgZGlzY3Vzc2VkIGluIHRocmVhZCBbMV0uCgpUaGlzIHBhdGNoIHNl
cmllcyBkZXBlbmRzIG9uIDMgcGF0Y2hlcyBmcm9tIEFydHVyIGZvciB0aGUgaW50ZXJjb25uZWN0
IEFQSSAKWzJdLCB3aGljaCBpbnRyb2R1Y2UgZm9sbG93aW5nIGNoYW5nZXM6CgogLSBleHBvcnRp
bmcgb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkgdG8gYXZvaWQgaGFyZCBjb2RpbmcgZXZlcnkg
Z3JhcGggCiAgIGVkZ2UgaW4gdGhlIERUIG9yIGRyaXZlciBzb3VyY2UsCiAtIHJlbGF4aW5nIHRo
ZSByZXF1aXJlbWVudCBvbiAjaW50ZXJjb25uZWN0LWNlbGxzLCBzbyB0aGVyZSBpcyBubyBuZWVk
IAogICB0byBwcm92aWRlIGR1bW15IG5vZGUgSURzIGluIHRoZSBEVCwgCiAtIGFkZGluZyBuZXcg
ZmllbGQgaW4gc3RydWN0IGljY19wcm92aWRlciB0byBleHBsaWNpdGx5IGFsbG93IGNvbmZpZ3Vy
aW5nIAogICBub2RlIHBhaXJzIGZyb20gdHdvIGRpZmZlcmVudCBwcm92aWRlcnMuCgpUaGlzIHNl
cmllcyBhZGRzIGltcGxlbWVudGF0aW9uIG9mIGludGVyY29ubmVjdCBwcm92aWRlciBwZXIgZWFj
aCAic2Ftc3VuZywKZXh5bm9zLWJ1cyIgY29tcGF0aWJsZSBEVCBub2RlLCB3aXRoIG9uZSBpbnRl
cmNvbm5lY3Qgbm9kZSBwZXIgcHJvdmlkZXIuClRoZSBpbnRlcmNvbm5lY3QgY29kZSB3aGljaCB3
YXMgcHJldmlvdXNseSBhZGRlZCBhcyBhIHBhcnQgb2YgdGhlIGRldmZyZXEKZHJpdmVyIGhhcyBi
ZWVuIGNvbnZlcnRlZCB0byBhIHNlcGFyYXRlIHBsYXRmb3JtIGRyaXZlci4gIEluIHRoZSBkZXZm
cmVxIAphIGNvcnJlc3BvbmRpbmcgdmlydHVhbCBjaGlsZCBwbGF0Zm9ybSBkZXZpY2UgaXMgcmVn
aXN0ZXJlZC4gIEludGVncmF0aW9uIApvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnJhbWV3
b3JrcyBpcyBhY2hpZXZlZCB0aHJvdWdoIHRoZSBQTSBRb1MgQVBJLgoKQSBzYW1wbGUgaW50ZXJj
b25uZWN0IGNvbnN1bWVyIGZvciBleHlub3MtbWl4ZXIgaXMgYWRkZWQgaW4gcGF0Y2hlcyA1LzYs
IAo2LzYsIGl0IGlzIGN1cnJlbnRseSBhZGRlZCBvbmx5IGZvciBleHlub3M0NDEyIGFuZCBhbGxv
d3MgdG8gYWRkcmVzcyB0aGUgCm1peGVyIERNQSB1bmRlcnJ1biBlcnJvciBpc3N1ZXMgWzFdLgoK
VGhlIHNlcmllcyBoYXMgYmVlbiB0ZXN0ZWQgb24gT2Ryb2lkIFUzIGJvYXJkLiBJdCBpcyBiYXNl
ZCBvbiBpY2MtbmV4dCAKYnJhbmNoIHdpdGggZGV2ZnJlcS1uZXh0IGJyYW5jaCBtZXJnZWQgYW5k
IHBhdGNoZXMgWzJdIGFwcGxpZWQuCgotLQpSZWdhcmRzLApTeWx3ZXN0ZXIKCi0tCkNoYW5nZXMg
c2luY2UgdjMgWzNdICh2NCBza2lwcGVkIHRvIGFsaWduIHdpdGggcGF0Y2hzZXQgWzFdKSwgZGV0
YWlsZWQgCmNoYW5nZXMgYXJlIGxpc3RlZCBhdCBlYWNoIHBhdGNoOgogLSBjb252ZXJzaW9uIHRv
IGEgc2VwYXJhdGUgaW50ZXJjb25uZWN0IChwbGF0Zm9ybSkgZHJpdmVyLAogLSBhbiB1cGRhdGUg
b2YgdGhlIERUIGJpbmRpbmcgZG9jdW1lbnRpbmcgbmV3IG9wdGlvbmFsIHByb3BlcnRpZXM6CiAg
ICNpbnRlcmNvbm5lY3QtY2VsbHMsIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVudCBpbiAic2Ft
c3VuZyxleHlub3MtYnVzIgogICBub2RlcywKIC0gbmV3IERUIHByb3BlcnRpZXMgYWRkZWQgdG8g
dGhlIFNvQywgcmF0aGVyIHRoYW4gdG8gdGhlIGJvYXJkIHNwZWNpZmljIAogICBmaWxlcy4KCkNo
YW5nZXMgc2luY2UgdjIgWzVdOgogLSBVc2UgaWNjX3N0ZF9hZ2dyZWdhdGUoKS4KIC0gSW1wbGVt
ZW50IGEgZGlmZmVyZW50IG1vZGlmaWNhdGlvbiBvZiBhcHBseV9jb25zdHJhaW50cygpIGluCiAg
IGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAocGF0Y2ggMDMpLgogLSBVc2UgJ2V4eW5vcyxp
bnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIGluIHRoZSBEVCBpbnN0ZWFkIG9mCiAgICdkZXZmcmVx
Jy8ncGFyZW50JywgZGVwZW5kaW5nIG9uIHRoZSBidXMuCiAtIFJlYmFzZSBvbiBEVCBwYXRjaGVz
IHRoYXQgZGVwcmVjYXRlIHRoZSAnZGV2ZnJlcScgRFQgcHJvcGVydHkuCiAtIEltcHJvdmUgZXJy
b3IgaGFuZGxpbmcsIGluY2x1ZGluZyBmcmVlaW5nIGdlbmVyYXRlZCBJRHMgb24gZmFpbHVyZS4K
IC0gUmVtb3ZlIGV4eW5vc19idXNfaWNjX2Nvbm5lY3QoKSBhbmQgYWRkIGV4eW5vc19idXNfaWNj
X2dldF9wYXJlbnQoKS4KCkNoYW5nZXMgc2luY2UgdjEgWzRdOgogLSBSZWJhc2Ugb24gY291cGxl
ZCByZWd1bGF0b3JzIHBhdGNoZXMuCiAtIFVzZSBkZXZfcG1fcW9zXyooKSBBUEkgaW5zdGVhZCBv
ZiBvdmVycmlkaW5nIGZyZXF1ZW5jeSBpbgogICBleHlub3NfYnVzX3RhcmdldCgpLgogLSBVc2Ug
SURSIGZvciBub2RlIElEIGFsbG9jYXRpb24uCiAtIFJldmVyc2Ugb3JkZXIgb2YgbXVsdGlwbGlj
YXRpb24gYW5kIGRpdmlzaW9uIGluCiAgIG1peGVyX3NldF9tZW1vcnlfYmFuZHdpZHRoKCkgKHBh
dGNoIDA3KSB0byBhdm9pZCBpbnRlZ2VyIG92ZXJmbG93LgoKClJlZmVyZW5jZXM6ClsxXSBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODYxNzU3LyAob3JpZ2luYWwgaXNzdWUp
ClsyXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1zYW1zdW5nLXNvYy9tc2c3
MDAxNC5odG1sClszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wbS8yMDE5MTIyMDEx
NTY1My42NDg3LTEtYS5zd2lnb25Ac2Ftc3VuZy5jb20KWzRdIGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvY292ZXIvMTEwNTQ0MTcvICh2MSBvZiB0aGlzIFJGQykKWzVdIGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTExNTI1OTUvICh2MiBvZiB0aGlzIFJGQykKCgpBcnR1
ciDFmndpZ2/FhCAoMSk6CiAgQVJNOiBkdHM6IGV4eW5vczogQWRkIGludGVyY29ubmVjdHMgdG8g
RXh5bm9zNDQxMiBtaXhlcgoKTWFyZWsgU3p5cHJvd3NraSAoMSk6CiAgZHJtOiBleHlub3M6IG1p
eGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKClN5bHdlc3RlciBOYXdyb2NraSAoNCk6CiAg
ZHQtYmluZGluZ3M6IGV4eW5vcy1idXM6IEFkZCBkb2N1bWVudGF0aW9uIGZvciBpbnRlcmNvbm5l
Y3QgcHJvcGVydGllcwogIGludGVyY29ubmVjdDogQWRkIGdlbmVyaWMgaW50ZXJjb25uZWN0IGRy
aXZlciBmb3IgRXh5bm9zIFNvQ3MKICBQTSAvIGRldmZyZXE6IGV4eW5vcy1idXM6IEFkZCByZWdp
c3RyYXRpb24gb2YgaW50ZXJjb25uZWN0IGNoaWxkCiAgICBkZXZpY2UKICBBUk06IGR0czogZXh5
bm9zOiBBZGQgaW50ZXJjb25uZWN0IHByb3BlcnRpZXMgdG8gRXh5bm9zNDQxMiBidXMgbm9kZXMK
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0ICAgICB8ICAx
NSArLQogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAgICAgICAg
fCAgIDYgKwogZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMTcgKysKIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgICAgICAg
ICAgICAgIHwgIDczICsrKysrKystCiBkcml2ZXJzL2ludGVyY29ubmVjdC9LY29uZmlnICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2ludGVyY29ubmVjdC9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3Mv
S2NvbmZpZyAgICAgICAgICAgICAgICB8ICAgNiArCiBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlu
b3MvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgNCArCiBkcml2ZXJzL2ludGVyY29ubmVjdC9l
eHlub3MvZXh5bm9zLmMgICAgICAgICAgICAgICB8IDE4NSArKysrKysrKysrKysrKysrKysrKysK
IDkgZmlsZXMgY2hhbmdlZCwgMzAxIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL0tjb25maWcKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvTWFrZWZpbGUKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvZXh5bm9zLmMKCi0tIAoy
LjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
