Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E99D9AD07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlz+Hn2GnNf6AXWT+1xWIrDKr8jIotAFvvTq6AjBCFs=; b=oC2aWvGHEcRwmS
	Vas1KbZ8b+1u8UHV+tJlFjWzsiBi/w6OEzaeD+8EP0WULM8hZoclgTW+x3mFLBq+T5SWHVqY6qSbX
	Uq+JSICRTV9RMSNrxE942XSAipaIDEZJmEVgBskXRTRF7qlsfMppaeTNIavM6EOomT0fCWEtAmCII
	n//wfQU+u0NNgoPC8agpW8ug/ra4yxy5wXjJ6IYxKv8JOex7vLAnMC+Xg2mZ8iKoHsaaGAP+SX9kG
	jTAXjVRoXflIBkI7F/l6oqeNmzhf9AtNXev5S9QJ1MMqK36LCyHIZ6pZzvdIPtN7TpSlntGc9hd5Y
	o6P0fd2IO04Sg3zADGKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16in-0006JO-BS; Fri, 23 Aug 2019 10:23:05 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16ia-0006Is-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:22:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190823102248euoutp02a5a21fa2c830f8f6d6ba636eba420e5d~9hivqJx561111811118euoutp02g;
 Fri, 23 Aug 2019 10:22:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190823102248euoutp02a5a21fa2c830f8f6d6ba636eba420e5d~9hivqJx561111811118euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566555768;
 bh=z9XZ2A62tyztr5HnPVLdeo7/XMB6WFaWLXcHY42Qnfg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lkGH8pYyUx7WIBZOx6HzoUybx2oG6Kelr7JFRIg1nrOO1994fzD7eGjdpVL9TblyN
 dkyyPAxsazh/kwW/0gU8SM11F+66Uv83KggFfFzvTQNTOXIkqku1qyMQVGLajoMN5S
 shrn3a4aV33XqqgcgIoSrbYv2t/yuVWIx/X27l+4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190823102248eucas1p23fbfdf9ce74b3b95f265f2d998241190~9hivImyF-0395403954eucas1p2c;
 Fri, 23 Aug 2019 10:22:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 69.EF.04374.77EBF5D5; Fri, 23
 Aug 2019 11:22:47 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190823102246eucas1p1da04b0b59ae81f1fb8dafa801dadf073~9hiuCcful2624926249eucas1p1_;
 Fri, 23 Aug 2019 10:22:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190823102246eusmtrp1e4c713001b4d3cfb0560212019d255a0~9hitu4sA03092930929eusmtrp1Z;
 Fri, 23 Aug 2019 10:22:46 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-63-5d5fbe77cfbf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 55.FC.04166.67EBF5D5; Fri, 23
 Aug 2019 11:22:46 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190823102244eusmtip13ec3fa4acad298eb81acadb9fb8d76cb~9hir0n7gq0066000660eusmtip1z;
 Fri, 23 Aug 2019 10:22:44 +0000 (GMT)
Subject: Re: [PATCH v2 5/7] media: use the BIT() macro
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Linux Media Mailing
 List <linux-media@vger.kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <59cf5c76-2bbb-6cdd-4a3a-12af0faf1238@samsung.com>
Date: Fri, 23 Aug 2019 12:22:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d6c04bf604084af63fec603b4afbd72c648e0394.1566553525.git.mchehab+samsung@kernel.org>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0xbZRTd997X917JOr91m9ygyZJOjJJsOGf00ynBRM2bf7lk0cWFzYe8
 sGW0QB8/nIsBiwjtgHVjWnlOwgaJQOa6lh/WbekSyCwwbEEDWUJgxJIt3WiLCOimGbZ9W+S/
 c8+999xzkiuwxgkuQzhiKZOtFqnIxKXh/p/vB7dX+g/lvdDufZZ2DT3E1OGZ5+nfd1yYztfl
 05WTtZheHX3A05p2N0fHW6Yxba51cPSe9wxDv1DPY3oyfI+li5MnEA2FLvG04awN0V9sCRH7
 qQ6eesOTOtpwqU9H+yIxhn4T8jPUvqRydGx8GNP4op2hvpHzLI1F9tPIrU6WXg27E3K9Kwzt
 8X7F0vuXW3HuVjFy7XdGvLkwwYsz/kEs/qRO8+K39S06saczSzw91ciK3m47J8aCQV5sHd4r
 XvvuAi/2dFSJf8zP8aI61sOLjTUxToz7J7j3tnyY9nqBXHSkQrZm53yUdtimutiSuO6TiWYf
 qkaz2IH0ApCXYLpjinGgNMFIOhHMjUxyWrGEYLn5Iq8VfyJwBlrR45XeunN8EhvJ9wiabhdo
 OIogOF+VxJvIy9D/16ouiTeTEhiLt6VOsGRcDxdGHzDJBkd2QuP1poSoIBhIDoTq9iVpTDLh
 Sps/NbKF7IfF2cGUjoFshOGWuZRtPZEgEHKmPLAkHWxLXToNb4Ufo2fZ5C0gbj10zPzAaKbf
 guj1GU7Dm+BuoJfX8NNwo7kBaws1CBquTPFa4URwK9D2KPJuGAyM65JOWfI8uC9na/SbMNQe
 TNFANsDN6EbNxAY43e9iNdoA9V8ateln4J9u1yM7GXBibhU7kUldE01dE0ddE0f9/24bwt0o
 XS5XzIWysssiV+5QJLNSbinc8XGx2YsSz37jYWDZh/z/5g8gIiDTesOQ42CeUSdVKMfMAwgE
 1rTZUHEqQRkKpGOfytbiQ9byIlkZQE8J2JRuOL5u9oCRFEpl8lFZLpGtj7uMoM+oRkOBvBdf
 zd1WjBfeyIlEb5d17So9cyC8rvbg+8Y9pR9k1xf2r7TcNfFVNpfPsz4/YvdMx0bDK9vT327y
 ZL2Sk5kpyFPvuEK5v7ll6ntin3vv187qsufedd65+GSlumz2+X71VCsRy/Fzn/VJ3NHP2xdd
 e7JW47t7F8jSyDZS2vWaCSuHpZ1ZrFWR/gPq/W8F6AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUwTdxjH87u73hWyJmeB8Asmai4SDZnV460PzHVmieYSk/n6B8ExVvDS
 GmlLeqWZSxYJSqCdKAgLcipi1UxkGdiCK4NVBuF1SBFDlQhqxGXrYFSJYbKgrqVZwn+fPM/z
 +T55kkdJqv9UJCmPmW2i1awv4uhY6rd3gzPb7L78vB31v6yH5qF3FDhvzzPw5o96CuYrCmDp
 XDkF3aP/MnDqWisN9xtmKKgtd9Iw564j4LTsouDc7BwJi4FvEfj9bQycuVSG4F5ZOMRRc50B
 92xAAWfaOhTQEVwg4ILfR4DjtUzD+P1hCkKLDgK8Iy4SFoI5EHx6k4Tu2dZwXPsSAR73dyQs
 /9xI7dooBO8+J4RHLycZ4YmvjxI65RlGuFjZoBA8N1OE84+rSMF9y0ELC2NjjNA4fEC4e/kH
 RvBcPym8mn/BCPK4hxGqTi3QQsg3Se9PyNXstFpKbOImo0Wyfcwd4SFVw2eBJjU9S8OnafOy
 UzO47bqdR8WiY3bRul33pcZYJteTxSHFV5O1XlSKnlFOFKPEbDpur7jKOFGsUs3eQDhY3kM7
 kTLcSMJXTnPRmTi8EnDS0Zk5hJfkgVU5js3Ed/55r4hwPFuMf3R9vxpEsg9j8FPZQ0WNIMJT
 i0OrBs3yuKr/LIpsULE67K84HClTbDLuavIREU5gc3CfV0YRVrHr8HDDi1U1htXjQX81E2GS
 3YJXGifIKCfistfNiihvxD/9fYmsRmp5jS6vUeQ1irxGaULULRQvlkgmg0niNZLeJJWYDZpC
 i8mNwl92Z2DZ40UTtw/1IlaJuA9UQ84v8tQKvV06YepFWEly8Sp7TbikOqo/8bVoteRbS4pE
 qRdlhI+rIZMSCi3hnzXb8vkMXgtZvDZNm5YJXKKqkv31czVr0NvE46JYLFr/9whlTFIputKj
 Xk4+OV1XFGoZNEwkV7pKc7W17uc9Hx3nU1z1LfvrXk3bjHuXDu/xXMaZZ/unHug27MnP/qQq
 q3W9WiMfWan4/cPRTHNn2taWvzY4dN0Xqjd/tiuRaBoLrQt09bx9f6BgJHfEWNC1++Ijbl92
 jveblzsMgZbGbQcX/fbmsb43n3KUZNTzKaRV0v8HoTBJlHsDAAA=
X-CMS-MailID: 20190823102246eucas1p1da04b0b59ae81f1fb8dafa801dadf073
X-Msg-Generator: CA
X-RootMTR: 20190823094759epcas2p49a6bd2b5a8ada11cac762a67606d2b24
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190823094759epcas2p49a6bd2b5a8ada11cac762a67606d2b24
References: <20190823000829.GN5027@pendragon.ideasonboard.com>
 <CGME20190823094759epcas2p49a6bd2b5a8ada11cac762a67606d2b24@epcas2p4.samsung.com>
 <d6c04bf604084af63fec603b4afbd72c648e0394.1566553525.git.mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_032253_186952_DD93FEB9 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Richard Fontana <rfontana@redhat.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Bluecherry Maintainers <maintainers@bluecherrydvr.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Andrey Utkin <andrey.utkin@corp.bluecherry.net>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Ismael Luceno <ismael@iodev.co.uk>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Benoit Parrot <bparrot@ti.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Anton Sviridenko <anton@corp.bluecherry.net>,
 Allison Randal <allison@lohutok.net>, Andy Walls <awalls@md.metrocast.net>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-renesas-soc@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/23/19 11:47, Mauro Carvalho Chehab wrote:
> There are lots of places where we're doing 1 << 31. That's bad,
> as, depending on the architecture, this has an undefined behavior.
> 
> The BIT() macro is already prepared to handle this, so, let's
> just switch all "1 << number" macros by BIT(number) at the header files
> with has 1 << 31.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

> v2: 
>   As suggested by Laurent:
>      - Don't touch multi-bit masks
>      - remove explicit casts

For:
  drivers/media/platform/exynos4-is/fimc-lite-reg.h
  drivers/media/platform/exynos4-is/fimc-reg.h
  drivers/media/platform/s3c-camif/camif-regs.h

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
