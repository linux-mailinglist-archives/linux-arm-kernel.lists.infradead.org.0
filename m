Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB40AB592
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=TnkQOrpoqhuTO+Ek8PceiQ+l+FoAhFVWUEMbAnEA7fc=; b=JK
	2EJbcjnGze/0mKXw73R6GyoinsmehCDBrb7CnPJR/7RCHX3K0EwH5p5hbqmTXOdyKH01ppsoMd0a9
	eM2gZZcTDLrNGwI4fywtjaMyl5VTx3VKYfyn3TgVUvt8LIeLDMS9EJ5UVDJ1cpLUHBlV5HsvbqMHA
	NLnIToLB/MEOR/WLPEHJNEfFVH3OTySlLoQOuJ5gD0e84eNxdIBe3e3e0fSThRwvzmGd1mY/EgXCL
	2VbzOgsOYIqS34uTFVMDtEAD8Mtvpf08ABvDMl4uaEK/jgBdOFdbK+id9K+PFZPPhohaqTSmlrkfb
	LLf4g/zQIXUjj+YAw+So9Reqy3Zrsyug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BG6-0005v9-Mf; Fri, 06 Sep 2019 10:14:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BFr-0005t5-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:14:13 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906101406euoutp0112821d13c4308d63382fe73f3a534fb2~B0dJT6YsQ0929309293euoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:14:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190906101406euoutp0112821d13c4308d63382fe73f3a534fb2~B0dJT6YsQ0929309293euoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567764846;
 bh=Kzrq6TtMniLqfkpCssxFYyHeVXo+wZF34M5omxU8qLc=;
 h=From:To:Cc:Subject:Date:References:From;
 b=g7i3e1QwSYKHAd7ru/54j9tKHbKNAHbDG8uE/G5ImyUUfgLzQ5f4/LdPm96cT3cw2
 3ooXXmcSOOu+JsdsVsh/fLhGcU9f7S/JYKQ0hs1ajTM0LWrGNHJUpjfkI8n23IDzjI
 kn4CgSidcyZNQkfyLyWQpBDAtYkSVcgNCUGAFvMI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190906101405eucas1p25daaa4fd16991d3d21ea009e93e31cff~B0dIkFNVc0427904279eucas1p2E;
 Fri,  6 Sep 2019 10:14:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1E.C3.04309.D61327D5; Fri,  6
 Sep 2019 11:14:05 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101404eucas1p1d11e26276bfdacb7748f1391e29f45d0~B0dHpX-eF0273402734eucas1p1q;
 Fri,  6 Sep 2019 10:14:04 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190906101404eusmtrp1a7e86bafb12b2904aa43d0fcd6cf6fe5~B0dHa4cwR1272412724eusmtrp1Y;
 Fri,  6 Sep 2019 10:14:04 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-96-5d72316d7fb1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.9E.04166.C61327D5; Fri,  6
 Sep 2019 11:14:04 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101403eusmtip129df3b1b4a9abaffb33ce8897f21dab8~B0dGjgp4j3023530235eusmtip10;
 Fri,  6 Sep 2019 10:14:03 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Exynos5 DMC minor fixes
Date: Fri,  6 Sep 2019 12:13:41 +0200
Message-Id: <20190906101344.3535-1-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUhUURjtzpv35imNPMfQzyWlgTYp04i4mEhF1PsRYdGPMiSnfKnkjDZP
 zY0aBXPJPcu0NKVMcXccxSVb1DJwGU1zK8M0JkhTYiYpjcjxTfXvfOc753yHy6UJWTnpRIeq
 Ijm1ShEmp6zFLa9+6ncrvdQBniuJjrjxbj2Jx02fSfygZ5DE2XPzBNbrGyR4IGlBgqc0Llg7
 N0bikfb7FDZm9iB8V/9UhGt7piW4fHxYhN8lVlI4ubNHgrsXUki8/HoWHbRla0pqENtWNC1h
 tVVpFNv06Dr7YvGJiM3SVSHWqHX1k/hb+wRxYaHRnHqPb6B1iCl3iIgwUDFjpZ0iDeol05EV
 Dcw+aC+botKRNS1jKhFUF+dZBhOCGzkjhDAYEfwY0In+WgbHV0lhUYHgV9mC+J9l8r1xTUXT
 FOMBrVVXzIZNzEMEy93+ZkwwLSLI/O5iltgxu8CUFWemxcxW0KQkITOWMr4w1NRPCbfcoLrh
 +XoJYOokUNr8kjJ7gTkCZXVugsYOvvTqJAJ2gb5bGWIB86DJLEMCToC57GKL5gB09w6T5hiC
 2Qn17XsE+hDcLkq2pNvAxFdbobAN5LUUEAIthdQbMkG9A3QZQ5YHsYeKmjuWcBZWs2fXy8uY
 AHiVuYhykGvR/1ulCFUhBy6KVwZz/F4Vd9WDVyj5KFWwx8VwpRatfZ6+372mVtT+60IXYmgk
 3yhlTBEBMlIRzccquxDQhHyTtL5xjZIGKWLjOHX4eXVUGMd3IWdaLHeQxm+YOSdjghWR3GWO
 i+DUf7ci2spJg7Rk4dF8x1pIqT6uKkhYKrmnf+v4xl55aeXQJdd7ncS30bQY6qb7B/JY82i/
 3/R0LhvXllrpc9jq2ZLIoNv8MeHxdkNFk8xqmxbPn5zYr9scWN7tOXy4Mb7j1EFja26hcwyD
 O06XnzVEGk5kOBVeS/XLyZ/cMuOt+lR8xs3bMa5aLuZDFF7uhJpX/AGHLXmpOAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPLMWRmVeSWpSXmKPExsVy+t/xu7o5hkWxBpMPylhsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW9xqkLHY9Pgaq8XlXXPYLD73HmG0mHF+H5PF2iN32S2W
 Xr/IZHG7cQWbReveI+wWh9+0s1p8O/GI0UHQY828NYweO2fdZffYtKqTzWPzknqPg+/2MHn0
 bVnF6PF5k1wAe5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZ
 apG+XYJexpeJF5gLnrFVXFuwl6mB8ThrFyMnh4SAicS567+BbC4OIYGljBJ/Hp5ggkiISUza
 t50dwhaW+HOtiw2i6BOjRNetxUAdHBxsAnoSO1YVgsRFBJYzShxb9ZYZxGEWOMIk0b9rHliR
 sICOxJe+KpBBLAKqEg3tTYwgNq+AncSFzWfYIBbIS6zecIB5AiPPAkaGVYwiqaXFuem5xYZ6
 xYm5xaV56XrJ+bmbGIGBv+3Yz807GC9tDD7EKMDBqMTDK/ClIFaINbGsuDL3EKMEB7OSCO/6
 jUAh3pTEyqrUovz4otKc1OJDjKZAyycyS4km5wOjMq8k3tDU0NzC0tDc2NzYzEJJnLdD4GCM
 kEB6YklqdmpqQWoRTB8TB6dUAyO/EF/JUa7vT6yfP5yqlB+nx8R091O4yYEJb40eVLQ8WuL0
 4MiSmiCLi4F+Tvcex309V/zwdtly0ZRrF/g2hE/Pj57ULbnukK818+lVxrMmJwn/litNDb+Z
 XaEiMtPpeX2nd0bzRsvqB1oKxv8Ddu923NJ66uNHNcvYx4/yvh4+Xjx9icze/QZKLMUZiYZa
 zEXFiQDL1ZfikgIAAA==
X-CMS-MailID: 20190906101404eucas1p1d11e26276bfdacb7748f1391e29f45d0
X-Msg-Generator: CA
X-RootMTR: 20190906101404eucas1p1d11e26276bfdacb7748f1391e29f45d0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101404eucas1p1d11e26276bfdacb7748f1391e29f45d0
References: <CGME20190906101404eucas1p1d11e26276bfdacb7748f1391e29f45d0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031411_820492_080752BC 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a follow up patch set for the Exynos5 Dynamic Memory Controller
driver v13 [1]. The patches are based on Krzysztof's 'for-next' branch [2].
There are a few minor fixes captured during static analysis and a new
binding for 'samsung,K3QF2F20DB' LPDDR3 memory.

Regards,
Lukasz Luba

[1] https://lkml.org/lkml/2019/8/21/283
[2] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-next

Lukasz Luba (3):
  memory: Exynos5422: minor fixes in DMC
  ARM: dts: exynos: fix too long line in memory device
  dt-bindings: ddr: Add bindings for Samsung LPDDR3 memories

 .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi |  3 +-
 drivers/memory/samsung/exynos5422-dmc.c       |  4 +--
 3 files changed, 31 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
