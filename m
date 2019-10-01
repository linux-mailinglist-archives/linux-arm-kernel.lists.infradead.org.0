Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2839C3A0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGAy6jkAcRHE3sThjso62PafMUA/eS7YiFTGv4PbpYg=; b=R+hdznPoHlvghk
	tm+m5Luldj3SSw+gWY5zyI5BWGriSixvN/ex7nPfZm/aOmQQn9rlV5oHh1+huX39eJoB5TNiLOeP0
	qQjlYQBk88iWUrswWadPsPDrmmUG/RtcJXD18dm6y4pWtWWtodVORUTCQ9RFsUOV92DWJfYmXP+gx
	ZtvQ7o6WeREbc0ET06QBbLAZKZYXx6M0vqGk+c1aA51qrGpGfZU/3gUOWfp0aJi3/w7T0tjqIQ6fW
	AlVDUJIxWC2RrsENqAbplj1lugduVQZyRW6AVERc0NPTN0W81q9ymrYIv8asKURE/jhcXjSFJYJuU
	qBDPwJoO+fY9nPld5nzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKiR-0001Ua-9a; Tue, 01 Oct 2019 16:09:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKiC-0001Ot-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:09:17 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001160914euoutp0211808e2c9d70d32a06a4a2add5999a25~JkbW0qKOq0403104031euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 16:09:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191001160914euoutp0211808e2c9d70d32a06a4a2add5999a25~JkbW0qKOq0403104031euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569946154;
 bh=0iXMcbO5zbECgDnWNZ06BqtYV9m9VlieFlQ6pOPEbvA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=OzBe6rYt5XCT0stjr5ugyXUZJPiZlu4PWOWyn3H3KQTrSugx2+lS0A+eEYTIg5VnE
 A7/fVyDJMvGQeWkw/5DDRHEUux+iFx2k9O0o0FBH2tUnosJVSI7E0Tdtl/levzNTT6
 qFjO5OGQ/OVeV+aNvEHe7nNkBKbjwQpfsCeAyBLw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191001160914eucas1p278f9a0f55b635d74feeb1c0e4117d6e1~JkbWrWueW2183421834eucas1p2Z;
 Tue,  1 Oct 2019 16:09:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9F.B8.04309.A2A739D5; Tue,  1
 Oct 2019 17:09:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191001160913eucas1p1ce452b9fe9bfa44843438a67a7822a57~JkbV_BVvv2988729887eucas1p1E;
 Tue,  1 Oct 2019 16:09:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191001160913eusmtrp2acb5fb911c2b830ef6a7bb3f1d64291c~JkbV9V3dx1352113521eusmtrp2s;
 Tue,  1 Oct 2019 16:09:13 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-b1-5d937a2a24e6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 27.F6.04166.92A739D5; Tue,  1
 Oct 2019 17:09:13 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191001160913eusmtip28cac83a3c5e49e10aa8353c3e73e9d70~JkbVUfWlO1030610306eusmtip2I;
 Tue,  1 Oct 2019 16:09:13 +0000 (GMT)
Subject: Re: [PATCH v3 RESEND 3/3] ASoC: samsung: Rename Arndale card driver
To: broonie@kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <4baf2a0d-f0b3-579c-365c-2948e7c841c9@samsung.com>
Date: Tue, 1 Oct 2019 18:09:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001123625.19370-3-s.nawrocki@samsung.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO5ftuFp8ztvLkoqxP0U3JehAIkWBEwqkfhSF1ClPGrkpO2rO
 ytRu3tJKa+s0yUuwGl10VmoXrU03TdgUTBSzC0mhIIYbQRSutlPkv+d53ud93+95+RhS5abV
 zHFDHm80cNkamYJ66v7hXb+2qC59U+W8mh0ZdhJsm+URzV7/NCVjRy44EOvztcrZ7yPlBOv4
 PEqzFl83wT7onZSz/rkemh2+GyC2LdW1+stkui5xUq5z2CtkuvY7Z3VmaxDpah7bkc7vWJkm
 P6BIyuCzjxfwxo3JhxVZlzpjcr1Eoc0yKCtB9UQlimAAbwbxRhVViRSMCt9F0DgukhIJILhf
 2y2TiB/B4Plzf2xMuKXegyXdhuChd4AOjVLhWQS3XIqQJwrvgjafKSRH41iYsFaEh5K4gYBp
 ew8ZKshwAlzuq0EhrMTJ4D3vpkKYwloY/CKGZ8bg/TD/0UVLnkgYuDkV9kTgJGjxPwz3kjgO
 ygL3aAmvgo5Za3gZ4PdysHZ8kks5d8JM71tawlEw43n8V4+HYNdtQmo4h6D6+YRcIlcQfPA0
 Ism1FVyeYToUjcRr4NGzjZK8HbpezBHSVZbD2Gyk9IjlcO2pmZRkJZRfVEluLfy0m/+eXQ1V
 U0HqCtKIi6KJi+KIi+KI//c2IsqO4vh8QZ/JC4kG/uQGgdML+YbMDUdz9A7053cNLngCnejZ
 ryNOhBmkWaYs2VOXrqK5AsGkdyJgSE20MunXtXSVMoMzFfHGnEPG/GxecKIVDKWJU55a8vGg
 CmdyefwJns/ljf+qBBOhLkHapgTfrr2NhS9fGXaL0/7U6nXeBkXfvoGhuaPN/c0tZadZ5nXQ
 Uv/tw8KTjOoIxVetUjg43dlfbAnM82VgMDe3p8X7V7pNtU2aN6ljy4bp3ZytYW+pb8vNsVWu
 1LSa4I6lD8aHYgtSrua9e5+Y0hSXmLq62HUs1zZdKjtjHa3VUEIWl7CWNArcb1mudhRZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xe7qaVZNjDfbd0ba4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VouLK74wOXB7bPjc
 xOaxc9Zddo9NqzrZPDYvqfeYPuc/o0ffllWMHp83yQWwR+nZFOWXlqQqZOQXl9gqRRtaGOkZ
 WlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehltO8QLTjHVLF8xmm2BsYpTF2MHBwSAiYS
 U44LdDFycQgJLGWU2PdpNjNEXEpifotSFyMnkCks8edaFxuILSTwmlHi5Z5QkBJhAR+Jjecr
 QcIiAmISt+d0MoOMYRaYyyTR928zC8TMg4wSWx7vYAWpYhMwlOg92scIYvMK2EmcaznGAmKz
 CKhInH42C6xGVCBC4vCOWVA1ghInZz4Bq+EUsJFY/HkdWJxZQF3iz7xLzBC2uETTl5WsELa8
 xPa3c5gnMArNQtI+C0nLLCQts5C0LGBkWcUoklpanJueW2yoV5yYW1yal66XnJ+7iREYqduO
 /dy8g/HSxuBDjAIcjEo8vA1Bk2OFWBPLiitzDzFKcDArifDa/JkUK8SbklhZlVqUH19UmpNa
 fIjRFOi5icxSosn5wCSSVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mD
 U6qBsW05K8v6qpbKXw7Ps/Nr+Q/pJpv+We0ZYLZWS/3xm8mXFkifyJvZK7/F3nxhnV4Qg/os
 j+oZ13Jvb7FRPaV/8ebZXyuXaX4QWnXwgN9ilzzLNU/0/qodCz60WtrA7Fe9ntjXz6mLuquP
 d8R+Fg7M0T26OTyiJFJm1uF8wfdnXDmiLm9bkmfOpMRSnJFoqMVcVJwIANxqanXqAgAA
X-CMS-MailID: 20191001160913eucas1p1ce452b9fe9bfa44843438a67a7822a57
X-Msg-Generator: CA
X-RootMTR: 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628
References: <20191001123625.19370-1-s.nawrocki@samsung.com>
 <CGME20191001123640eucas1p265d38cc9ad2a3103abd63b5d04d18628@eucas1p2.samsung.com>
 <20191001123625.19370-3-s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090916_268429_81983FC5 
X-CRM114-Status: GOOD (  10.46  )
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 14:36, Sylwester Nawrocki wrote:
> Rename arndale_rt5631.c to just arnddale.c as we support other CODECs
> than RT5631.  While at it replace spaces in Kconfig with tabs.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

I forgot to add carry the tag:
 Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
