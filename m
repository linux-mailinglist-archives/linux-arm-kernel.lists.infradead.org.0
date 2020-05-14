Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492A71D3C0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkCV6NGPCV80pzW+bUR7FvJJTmymvofF6KcBLuKfgTQ=; b=LIbJIyWQs08EXQ
	sEF4akW8b15RyIwHX04uMH3xJUSpkeVkuhank7ojv/tYJeTtuQxUSrGrLlhFeBB/vsWc3LeE7MnVF
	3L0WLwDoBWUwrTjKTANmITTd5aIygb9OpidB4QWtlZy/wJ/UN56KWwCtmFy8dib10NMlzRXERv/kC
	mPCSPVfqwCi0PYvwcK14/1uBkT55tmxbDtnHJWeRMUITK9tnmTUd7Hv3RoIj/LtDzEPFNibRAc2ia
	dRzgSTnBrkbABY82ArQ4bz1edw5m4ITAqNGV4bDQWSomGHvIYlvokaZm0Rp7+w/G7vlyLGj9p+UB8
	xfOKdEjykwEhjuJyTXZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJDS-0008AX-0r; Thu, 14 May 2020 19:08:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJCp-0007kX-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:07:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200514190741euoutp0197220430267aab16d1268d0ae0155c39~O_prXV5Xo1498914989euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 19:07:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200514190741euoutp0197220430267aab16d1268d0ae0155c39~O_prXV5Xo1498914989euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589483261;
 bh=ZtfxDhdLs90OyvVegf5gSIpg3nb7fV8VW4Z3SaViPnA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L72k8lV60AbOjZg4Ks2+xX2iK3uN69F1iHAeMmo4D7spNYxMf2Blvth3ZPDEEneU9
 il3Jyq0CqykA+cqzRud5bB9/6A4Sjrw+MdE4NgD1koZYJt30BBbe54oGaI5EUBhQxh
 omjPKPB4HL462umdcropg/8mf4yx1V6zd30p3i9s=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200514190740eucas1p1b78f50aa2a8c350a702be990ef03efe9~O_pqww51q0232902329eucas1p1_;
 Thu, 14 May 2020 19:07:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 7B.D4.61286.CF69DBE5; Thu, 14
 May 2020 20:07:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200514190740eucas1p293129b2ef3ba706652a9327e55db9649~O_pqCM4Hi0297902979eucas1p21;
 Thu, 14 May 2020 19:07:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514190740eusmtrp1551cbba1be4f614ee676bbff1259ef18~O_pqBgBsy2577025770eusmtrp1o;
 Thu, 14 May 2020 19:07:40 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-df-5ebd96fc26b3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 16.BE.07950.BF69DBE5; Thu, 14
 May 2020 20:07:39 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200514190739eusmtip2b58bea1e9cfb3ef1c0fcca3c010eee29~O_pp2e-ro1760217602eusmtip2F;
 Thu, 14 May 2020 19:07:39 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Florian Fainelli
 <f.fainelli@gmail.com>, Markus Elfring <elfring@users.sourceforge.net>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 2/2] hwrng: exynos - Set the quality value
Date: Thu, 14 May 2020 21:07:34 +0200
Message-Id: <20200514190734.32746-3-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514190734.32746-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUzMcRjf934v9+vW1a+L9ayMuZVN81Jj7RstjM1vtuRPY+Lwk+htd73Q
 H6S63lC5K9UVWoXW2+XkKJGu00mrNiEqFHkpFIWUMt39zvjveZ7P2/NsD0PIEml3JiwyhldG
 KsLltIQ0tk13rZw9fyfEJz13JZ7TtInxtQI9hWvO3idxd8ZVAs+MmcU4uUxP49Oji3D2m48E
 7u6uE+PnpgqEDW+eUvjVy2kR7mkspnFB910RLtEOU7jEmIXw28LrNB6rGkbY8iCD2OjK/ZrR
 IE73qpPmGnQvxFyZoZnmjPe8OENlBs01X6gWc9fLT3JZ9ZWIyxqpQ5y+/gnJJT1Mo7hJw+Id
 0l2SgIN8eFgcr1wduE9y+MWcGUVni4/1F78jE1ESnYkcGGDXgrr0McpEEkbGViD4NN5LCs03
 BKcbau3IJIIecy76K7lUmUYJwFUEX/Jb7M17BHM1jTYWzW6C7MsPbMACVk2B9msOaQUINh7U
 Q8OUtXZl10FWVxNhrUnWC1L6p21bSdn10P7rnliIWwJFpzpscwc2AHo/zIgEjgu0Fw7bPJ1Z
 b6hO6rX7L4HkG0WENRhYMwMX6lNFgtEWaHh00X6DK4xa6u0Bi6BDe2ZezMzXJ0Gr8RO0ZxAY
 i3+SAmc9DHTN0FYOwS4HfeNqYbwJqt5PIUHqBM8+uwgrOIHGmE8IYymkp8oEtifUZjfZDd3h
 7GgFykFy3X/H6P47QPcvqwQRlciNj1VFhPIq30g+fpVKEaGKjQxddSAqwoDm/7Ljt2XiFvr+
 aL8JsQySO0p98u6EyChFnOp4hAkBQ8gXSLfrb4fIpAcVxxN4ZdReZWw4rzIhD4aUu0nXlI7s
 kbGhihj+KM9H88q/qIhxcE9EwZOd5tkpr7Cg+Md1Hpszdo43D0b1LNNYAtt5Z9D7L9uWs9Zv
 oC8xendVJ11WcMvtytyU709uzdIUU9sh+cSJwSnLVkf906C76f2SchftkVOORRvaXFo6/d3F
 VI5f4GsiaDJP09Qz1OrWd7M/LGH6a57aM3xFq1PCj4Ux5xZPvA6Wk6rDCl9vQqlS/AGqd5uO
 kwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42I5/e/4Pd3f0/bGGWxotbL4O+kYu8XGGetZ
 Ldb2HmWxON+5nNni17sj7BbNi9ezWXS/krHof/ya2eL8+Q3sFjcPrWC02PT4GqvF/Xs/mSwu
 75rDZjHj/D4miwWTn7BaLNjWx2jxdOZmNot3q58wWhw/0cnsIOzx+9ckRo9Z98+yeeycdZfd
 Y/Gm/Wwe2w6oemxa1cnmsX/uGnaPzUvqPfq2rGL06Hu5gdFj/ZarLB5Np9pZPT5vkgvgjdKz
 KcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLuPv3CGNB
 P3vF7TnPWBoYm9i6GDk5JARMJOavamftYuTiEBJYyijxbMlvpi5GDqCElMTKuekQNcISf651
 gdULCTxllHh8Rw/EZhNwlOhfegKsV0RgMqvEmz2tTCAJZoFyidaHT1hBbGEBK4m+c3uYQWwW
 AVWJlts/wQbxClhLnPx9gB1igbzE7MbTYHFOARuJ6y9+MUEss5a482UuK0S9oMTJmU9YQG5j
 FlCXWD9PCCTML6AlsabpOgvEWnmJ5q2zmScwCs1C0jELoWMWkqoFjMyrGEVSS4tz03OLjfSK
 E3OLS/PS9ZLzczcxAhPDtmM/t+xg7HoXfIhRgINRiYfXYOreOCHWxLLiytxDjBIczEoivH7r
 d8cJ8aYkVlalFuXHF5XmpBYfYjQFenMis5Rocj4waeWVxBuaGppbWBqaG5sbm1koifN2CByM
 ERJITyxJzU5NLUgtgulj4uCUamA0yDu9I/q3DtOHdw8nizxJWCC3YXNlQ9jxECu9IxZMR7PU
 wkNarYL+CZcUfwh94Ln33O/Px68LfFt2+JmU3W7O2buN3nktPq+yNi0v89Ldl2fey14OX+xV
 2uDQ8iUz+tyjjqyMRxHXZQ22zelcGTJX6P3RSIY/5+07Dz2UvbhDcn3GHiGlOw/UlFiKMxIN
 tZiLihMBTXD5ViIDAAA=
X-CMS-MailID: 20200514190740eucas1p293129b2ef3ba706652a9327e55db9649
X-Msg-Generator: CA
X-RootMTR: 20200514190740eucas1p293129b2ef3ba706652a9327e55db9649
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200514190740eucas1p293129b2ef3ba706652a9327e55db9649
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200514190740eucas1p293129b2ef3ba706652a9327e55db9649@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_120743_912550_04875261 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhbHVlIGhhcyBiZWVuIGVzdGltYWRlZCBieSBvYnRhaW5pZyAxMDI0IGNodW5rcyBvZiBk
YXRhIDEyOCBieXRlcwooMTAyNCBiaXRzKSBlYWNoIGZyb20gdGhlIGdlbmVyYXRvciBhbmQgZmlu
ZGluZyBjaHVuayB3aXRoIG1pbmltYWwKZW50cm9weSB1c2luZyB0aGUgZW50KDEpIHRvb2wuIFRo
ZSB2YWx1ZSB3YXMgNi4zMzI5MzcgYml0cyBvZiBlbnRyb3B5CmluIGVhY2ggOCBiaXRzIG9mIGRh
dGEuCgpTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1bmcu
Y29tPgotLS0KIGRyaXZlcnMvY2hhci9od19yYW5kb20vZXh5bm9zLXRybmcuYyB8IDEgKwogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2h3
X3JhbmRvbS9leHlub3MtdHJuZy5jIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9leHlub3MtdHJu
Zy5jCmluZGV4IDhlMWZlM2Y4ZGQyZC4uZmY2NzM5MjcyYmY1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2NoYXIvaHdfcmFuZG9tL2V4eW5vcy10cm5nLmMKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9leHlub3MtdHJuZy5jCkBAIC0xMjMsNiArMTIzLDcgQEAgc3RhdGljIGludCBleHlub3NfdHJu
Z19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXRybmctPnJuZy5pbml0ID0g
ZXh5bm9zX3RybmdfaW5pdDsKIAl0cm5nLT5ybmcucmVhZCA9IGV4eW5vc190cm5nX2RvX3JlYWQ7
CiAJdHJuZy0+cm5nLnByaXYgPSAodW5zaWduZWQgbG9uZykgdHJuZzsKKwl0cm5nLT5ybmcucXVh
bGl0eSA9IDgwMDsKIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHRybmcpOwogCXRybmct
PmRldiA9ICZwZGV2LT5kZXY7Ci0tIAoyLjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
