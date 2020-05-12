Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050551CF14C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saBw9XZOgDQzwyGp3HNVuEkqpMpnTwzD7npyIHopK/E=; b=D/1nGoB8dWfkAn
	si+Z0cN6PH/uHm2oCcrYh5K3hTGCmj/80ePpZtyjh3zIR5Yd8w5aAaxx+6bqVAW3xfHTYm24lnNlV
	x8NBMNJhTxpG1fUvXOwTS0Zd/0QfFqsPJds1uDevyjtWvwwRZseSqHk2pGWSDhYx3dT8kHzUgqNRM
	zMz9jWMXCAu1GzthD6zwLHZLG0RNsRKICCogsBLDgXZlEYQRS2i67SlOKNRZOUlwVr9SUaEGmhH4v
	BpIzHO3PIuNQjd9ou/peozx6zhLvPStR62dTXLgwFKkjYWNtOVPNkJ/B6FzYdNvlsdxurnE1ZvD93
	+XJBoHkDEqDu+CmdMjRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR0m-0003Hp-9B; Tue, 12 May 2020 09:15:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQqf-0004rJ-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:05:22 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090505euoutp02f917147b91f5413ea49868d60398abcf~OPI_Wt5lG0539905399euoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090505euoutp02f917147b91f5413ea49868d60398abcf~OPI_Wt5lG0539905399euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274305;
 bh=AhzmXRfuAXH1r/E+rpzhyc8oI1f4R3agyOC87Kh6/r8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=m5uDa4RYh7X+8F1CywD2nCIs18DDTSNbHC7TCjDRVYiFkZqu6IQe8zu9IQtf8wSeH
 VqlJa365kO+V+Y3ezrRzpOqNCxz1yjzJOvpak/61gANdlHy42GfggGbG2/SSq7iLi0
 u9W2xg3BEm5vtjEiNe01+W9nmaScMnzr2aXTLY10=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090505eucas1p20a660e61f27d8ae9889b1a1eeba5f897~OPI_BjmSS1504115041eucas1p23;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 20.2C.60698.1C66ABE5; Tue, 12
 May 2020 10:05:05 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090505eucas1p20fdb2ff84bf04f85ba28ae14e6bd5f8c~OPI9mQpuy1504515045eucas1p2R;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090505eusmtrp203ec1cd226791e437020f232645dd228~OPI9lhoHW0721407214eusmtrp22;
 Tue, 12 May 2020 09:05:05 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-5b-5eba66c1f51b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F3.F5.08375.0C66ABE5; Tue, 12
 May 2020 10:05:05 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090504eusmtip17a2387bb0530d831d1e6bcd0dc503194~OPI84EYTJ1442114421eusmtip1p;
 Tue, 12 May 2020 09:05:04 +0000 (GMT)
Subject: Re: [PATCH v3 02/25] drm: core: fix common struct sg_table related
 issues
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <df31517c-f3e2-8c57-b353-ff90745038f1@samsung.com>
Date: Tue, 12 May 2020 11:05:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200508071609.GA31690@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTURzu3JfX0ZXr1HawULg9oPKZEpeMKJK6EIhB9UeUtfTmJLfmrpoW
 lWQvl0Uapq5SK7Oymfiaj2rlqK1laZmYZqhLIzSlhzkparXtavnf9/t+33e+8x0OiUrHcH8y
 SZXKa1TyZIaQYAbzj47g1r0tcWG91QHs2XYrwtYUVePsH0MeynZNfibY23eeIGzZwyj2e5cN
 YWuHunH2dctlgr36tQFjT+ZU4Gzrl2GcrR/Lw9dSnL5ED7gH9jKMq63MIbhG+yDOlVg3cwNn
 LAhXV36U63MModyFnpuAu9ebRXDn6isBV9d2iJuoDYiltktWJ/DJSem8JnTNbomi4hShthIZ
 V2yDeBaowrXAk4R0JJw4fotwYSl9C8Bmh68WSJz4O4C/35hxcZgAsOzpgFNFuh1f8pUifxPA
 18YTqDh8BtB0owpxHeVDb4ENnRY39qUZ+GH0BXCJULobhYYRC+ZaEHQ41I5r3dkUvQbWWLrd
 PEYvhsc6y1EX9qN3wrbrdUDUeENr8bBb40kHwanGq24vSgfC7IZLqIhl8O1wKeIKg3QBCTvM
 FYRYNBpO5Y8AEfvAUUu9h4gXwD/NM4ZsAG3tVR7ikOssd6xo2hEF37X/dD8ASi+F1S2hIr0O
 OnLHpt/FC/aMe4uX8IL5hkJUpCl4+qRUVC+BOsvdf7GtLzvR84DRzaqmm1VHN6uO7n9uGcAq
 gYxPE5SJvBCh4g+ECHKlkKZKDInfr6wFzj/Y5rBMNgHjrz0mQJOAmUudXtEcJ8Xl6UKm0gQg
 iTK+1PEkJ0UlyDMP8pr9uzRpybxgAvNJjJFREddGdkrpRHkqv4/n1bxmZouQnv5ZoJwQ1mr3
 3R592Peyq6mhf5WtYEfMV/XzOHV4WP9K/fKBSZXD9Cn2xkUfRbAxOjInzvA+hevZVBpol2wt
 9tfPHS/8oVzvuSRyYUZ/RorC98i8edne92WMOTRig9IPibF9i/84fIVfdNg+Z4zaqK8gJh+F
 PJ+yG9lnOxDjNtnjoFcMJijk4ctQjSD/C/zubuh/AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsVy+t/xu7oH03bFGXw9xmjRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLhx60sFm2dy1gtDn54wmqx
 5c1EVgdejzXz1jB67P22gMVj06pONo/t3x6wesw7Gehxv/s4k8fmJfUet/89ZvaYfGM5o8fu
 mw1sHn1bVjF6bD5d7fF5k1wAb5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGp
 kr6dTUpqTmZZapG+XYJexrJ2toKTbBVzHz5gbWBcy9rFyMEhIWAi8WFSbhcjF4eQwFJGiePH
 JzB2MXICxWUkTk5rYIWwhSX+XOtigyh6yyix6cd+sCJhgRCJrZeOM4HYIgJKEk9fnWUEKWIW
 uMEs8W1zLztEx0lmiecXToJ1sAkYSnS9BRnFycErYCex8fg1FhCbRUBVounSEmYQW1QgVmL1
 tVZGiBpBiZMzn4DVcAroSHzfvhCsl1nATGLe5ofMELa8RPPW2VC2uMStJ/OZJjAKzULSPgtJ
 yywkLbOQtCxgZFnFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGPnbjv3cvIPx0sbgQ4wCHIxK
 PLwdRjvjhFgTy4orcw8xSnAwK4nwtmQChXhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmJTy
 SuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwVuW5PkxnUZo/me+z
 4a8XNRIqwYUdcVfbKyPUinX2ThUP+jFXVuUyi1pNyOL3TuHd5w8vnRvXVHRC86Udp8120S+2
 HrOO7e+JmcngnGH5b6df1qJg97ii568F5vv2yF2XNTi77FddTsAblacKn1knb5sa/HZm4Z/5
 e5nyll7anlNQKmobf6JHiaU4I9FQi7moOBEAk0k3RhIDAAA=
X-CMS-MailID: 20200512090505eucas1p20fdb2ff84bf04f85ba28ae14e6bd5f8c
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
 <20200505110950.GA19067@lst.de>
 <b887c355-14db-ad37-0e93-733ff2249967@samsung.com>
 <20200508071609.GA31690@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020514_230675_8B4BC79B 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKT24gMDguMDUuMjAyMCAwOToxNiwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gRnJpLCBNYXkgMDgsIDIwMjAgYXQgMDk6MTI6MTNBTSArMDIwMCwgTWFyZWsgU3p5
cHJvd3NraSB3cm90ZToKPj4gVGhlbiB3ZSB3b3VsZCBqdXN0IG5lZWQgb25lIG1vcmUgaGVscGVy
IHRvIGNvbnN0cnVjdCBzY2F0dGVybGlzdCwgYXMgdGhlCj4+IGFib3ZlIHR3byBhcmUgcmVhZC1v
bmx5IGRvbid0IGFsbG93IHRvIG1vZGlmeSBzY2F0dGVybGlzdDoKPj4KPj4gI2RlZmluZSBmb3Jf
ZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFwKPj4gICDCoMKgwqDCoMKgwqAgZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm9yaWdf
bmVudHMsIGkpCj4+Cj4+IFdpdGggdGhlIGFib3ZlIDMgaGVscGVycyB3ZSBjYW4gcHJvYmFibHkg
Z2V0IHJpZCBvZiBhbGwgaW5zdGFuY2VzIG9mCj4+IHNnX3RhYmxlLT57bmVudHMsb3JpZ19uZW50
c30gZnJvbSB0aGUgRFJNIGNvZGUuIEkgd2lsbCBwcmVwYXJlIHBhdGNoZXMgc29vbi4KPiBTb3Vu
ZHMgZ3JlYXQsIHRoYW5rcyEKCkl0IHR1cm5lZCBvdXQgdGhhdCB0aGUgNHRoIGhlbHBlciAoZm9y
X2VhY2hfc2d0YWJsZV9kbWFfc2cpIHdhcyBuZWVkZWQgCmFzIHNvbWUgZHJpdmVycyBtYWtlcyB1
c2Ugb2YgdGhlIGxhcmdlciB0aGFuIHRoZSBQQUdFX1NJWkUgdW5pdCBmb3IgRE1BIAptYXBwZWQg
cGFnZXMuCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFIm
RCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
