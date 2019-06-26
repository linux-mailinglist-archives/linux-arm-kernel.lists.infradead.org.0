Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09EE56B6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sw1J4ZjGKQO32VIzd0Ria6CQV1YwyMQ2zhPFgsO/sLc=; b=KrcdGz4oeuIVxD
	wEtCiHEayAb1d2QnK8BemPHa/fyRSJTicZsst7kCxqOFP3wIpbrJsCd+vor7dmVn2yF0LxinvwMY6
	XshNd1WStR09pH7dYfHn9qSerR62NwiVnRfoMR+eUsI8GfDEKrtMcRZka2c75U9xWfnYAhJL1RuyU
	+tEFwrdq8QjYjtu3HynEqhpc54ZdHS9JwTFUG9rAWrT6BH0S7hsLvo7aEnG0tguPomr/iOqV3BJwE
	vsUtKCkV2nWb6HTmtWgW0tQDuBnDIlBkhIQ7VdKgj70ZwRcdD5WE3yzETK7/KkDD3g2QRQtAB7whx
	dChkOBZ1HHddrY2Heyzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8SE-00079J-JA; Wed, 26 Jun 2019 13:59:18 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Ry-00076C-AN
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:59:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190626135852euoutp01e0e822bffd13be59fd1b53cd039cde5a~rxE10z2yA2339423394euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 13:58:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190626135852euoutp01e0e822bffd13be59fd1b53cd039cde5a~rxE10z2yA2339423394euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561557532;
 bh=BT3zIcGmvUV+ueH1TilZMhs4g/vfOTc1I+ZwJJdTOdI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=P9Eghto3c5GHdQbSZgR9ytQs7pme55qEmeJAKtmXwNgYcF2wQqa0Wt+ZeDDifpIn/
 PMnj2zWFzkM9zgas7G07f/EN/6CyF3fW8ZSoqpQe6pm5hJ1ZXjZsKF1po7AKXw5zZ8
 Inj9Ti1Iv8Lvo/O2mxF1eybn0wNYhMWDGt4YbUsA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190626135851eucas1p16099d70110d216a9de1c227f02331451~rxE04uHpe0568305683eucas1p1S;
 Wed, 26 Jun 2019 13:58:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E9.95.04298.B1A731D5; Wed, 26
 Jun 2019 14:58:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190626135850eucas1p11ee7d7e5e2ae50e8245e2f6366d365eb~rxEz7Lnl-0630806308eucas1p1K;
 Wed, 26 Jun 2019 13:58:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190626135850eusmtrp145647492546fa5341906e8062e54e818~rxEzs0GTO0282502825eusmtrp1U;
 Wed, 26 Jun 2019 13:58:50 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-cf-5d137a1bb4a6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2A.11.04140.A1A731D5; Wed, 26
 Jun 2019 14:58:50 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190626135849eusmtip228f6bdc30e55bd68f74a4eccc4642b46~rxEzAIVz31436614366eusmtip2c;
 Wed, 26 Jun 2019 13:58:49 +0000 (GMT)
Subject: Re: [PATCH v4 4/5] Documentation: devicetree: add PPMU events
 description
To: cwchoi00@gmail.com
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
Date: Wed, 26 Jun 2019 15:58:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUhUURjFu/OWeUpj1xnTLw2NifbStj8utlBSMlS0WFAUam/yoaKONi8r
 LVDbTNHMCq1pUaN1chknLbUMHS0T0bGC9sUaKTI1cSyyRXLmGfnf77vfOfeeA5ejlK8Zby5a
 t0vQ6/hYNetK33owaJ3jk6wKnXsl35uUny5jyLOBTwz5eH8WKWhsY0iO7QtFrFaTnLQe6JYT
 s+0pQ57UnGOJPbsRkdPWezJS0vhGTi4/eyQjr9KuseRwbaOcNHSnM+T7ww9ombum+EIx0lQb
 3sg1ZmMGq7l5KUVzrMKINHaz73p2q+viCCE2eregD1i63TWq50+dLGGA3Ztbb5KnojtMJnLh
 AC+EoUOHqEzkyinxNQT9v0tZx0KJBxDcaF8lsR2BqXLuP0PH3c+MZLiK4E7HIC0NPQj6Svtk
 DpUKb4Ihs8XJHtgTbud1IoeIws0UtPZahgeOY7E/VBl3OjQKHAynKrNpB9N4Chiyjji94/EW
 GKg2I0njDs1nOp0aF7wBrCU2Z1IKe8HLzgKZxH5wsPKssw7gNA7qGq6zUuwVUGgvG2EVdDVV
 yCWeCC0ns2iJRUjNLkIS7wdbzvkRzSJoaHrEODJTeAaU1QQ4EPByaL44TkI3eN7jLiVwgxO3
 8inpWAFHjyilO6ZDRVa7TGJPuFqcJz+O1IZRvQyjuhhGdTH8f7YQ0UbkJSSKcZGCOE8n7PEX
 +TgxURfpvyM+zoyG/1zLUFN/Ffr2WGtBmEPqsYpUP2WokuF3i0lxFgQcpfZQXOZxqFIRwScl
 C/r4cH1irCBakA9Hq70U+8Z0bFPiSH6XECMICYL+31bGuXinosDt8zMrMtJKs2bnvzVqTJ1r
 UP66fb6DVU+ntq7cr4oJ1MVmBM7qnRT0YvI227gfubJLN4vLN4fgr7kxpv4qe1iKtvadqpv8
 pMu/1acH9/yZkHmuYP3q81AUNmYa3xX/vrXLeLessDvCnhK+MehXSV/C2gXaqUtCErTJ2rbk
 tjAcrqbFKH7eTEov8n8BL6Fkn28DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7pSVcKxBg9eSFpsnLGe1eL6l+es
 Fs+OalvMP3KO1aL/8Wtmi/PnN7BbnG16w26x6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUefVtWMXp8
 3iQXwBalZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5eg
 l/H27wGmgi9sFRMPbmBvYNzN2sXIySEhYCLxYM9LMFtIYCmjxK93ARBxMYlJ+7azQ9jCEn+u
 dbF1MXIB1bxmlLi6fzcbSEJYIETi36ZDTCC2CFDD9mlPGEGKmAVOMktc2nKdEaJjApPE3T2v
 gBwODjYBPYkdqwpBGngF3CSmbO1lAbFZBFQlZvW0gQ0SFYiQmL2rgQWiRlDi5MwnYDanQKDE
 +bWPwRYzC5hJzNv8kBnCFpe49WQ+E4QtL9G8dTbzBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJL
 i3PTc4uN9IoTc4tL89L1kvNzNzEC43vbsZ9bdjB2vQs+xCjAwajEw9sgLxQrxJpYVlyZe4hR
 goNZSYR3aaJArBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA1NPXkm8oamhuYWlobmxubGZ
 hZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxk1nDFxeB1o/narb89rXXuR9yaboM88Zskw4
 rK4su7yzgntiO/sKs6dL9q5V/PHt1MXU2vuerlmXxec6LDtv9/t1Z5LqXd3UaQkXN7CfEFay
 ncTu5a5/3bjxdPH8r6m/cs4yTvGZ1S+9f+mhCAFfSd4i09SLhy+9YAyIb3mfUuj46QKLys/l
 HUosxRmJhlrMRcWJAKM4h7sFAwAA
X-CMS-MailID: 20190626135850eucas1p11ee7d7e5e2ae50e8245e2f6366d365eb
X-Msg-Generator: CA
X-RootMTR: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
References: <CGME20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5@eucas1p2.samsung.com>
 <20190605091236.24263-1-l.luba@partner.samsung.com>
 <20190605091236.24263-5-l.luba@partner.samsung.com>
 <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_065902_504702_0E2B0C70 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree <devicetree@vger.kernel.org>,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 kgene@kernel.org, b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, krzk@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDYvMjYvMTkgMTA6MjMgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSBMdWthc3osCj4gCj4gMjAxOeuFhCA27JuUIDXsnbwgKOyImCkgMTg6MTQsIEx1a2FzeiBMdWJh
IDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbSAKPiA8bWFpbHRvOmwubHViYUBwYXJ0bmVyLnNh
bXN1bmcuY29tPj7ri5jsnbQg7J6R7ISxOgo+IAo+ICAgICBFeHRlbmQgdGhlIGRvY3VtZW5hdGlv
biBieSBldmVudHMgZGVzY3JpcHRpb24gd2l0aCBuZXcgJ2V2ZW50LWRhdGEtdHlwZScKPiAgICAg
ZmllbGQuIEFkZCBleGFtcGxlIGhvdyB0aGUgZXZlbnQgbWlnaHQgYmUgZGVmaW5lZCBpbiBEVC4K
PiAKPiAgICAgU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1
bmcuY29tCj4gICAgIDxtYWlsdG86bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Pgo+ICAgICBT
aWduZWQtb2ZmLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbQo+ICAgICA8
bWFpbHRvOmN3MDAuY2hvaUBzYW1zdW5nLmNvbT4+Cj4gICAgIC0tLQo+ICAgICAgwqAuLi4vYmlu
ZGluZ3MvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS50eHTCoCDCoCB8IDI2ICsrKysrKysrKysr
KysrKysrLS0KPiAgICAgIMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gCj4gCj4gCj4gQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNh
bXN1bmcuY29tIAoKVGhhbmsgeW91IGZvciB0aGUgQUNLcyBmb3IgdGhpcyBhIDIvNSBwYXRjaC4K
RG8geW91IHRoaW5rIHRoZSB2NCBjb3VsZCBiZSBtZXJnZWQgbm93PwoKUmVnYXJkcywKTHVrYXN6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
