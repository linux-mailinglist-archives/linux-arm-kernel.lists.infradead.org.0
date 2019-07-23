Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5157182C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDGk7iuG+QQiaX98ILmKGVaVwYtezxEpkyP6x/uV0JU=; b=ffNw+VXjGBMFf4
	Tg9osOhdsOXwZxODLyEDeI/ZRvSgbWJAvENQDzveTVM4HMKtMg0RKzPcK51CbNcZLcR3tOLmE+yq5
	aJp0rHo0jrBNW9uqNsYwzUphYW9UnSORO7VsGab9mKIcNBWH+Sd5C4gQB+t0d9eDRweD7jASxlmNA
	6FErs0J38GMoeECMVq45U+Hv3lvkDEyY1iE8vBv+hZHMyYSvWknBduXby4EPpHGuarZ0hIGNa1/31
	9dEihlySWQutBWTwrD1ekk59t1HWeCFmXqsBJxCARvxoSAz6kvks5pF4sKDdi8B4OcuYtz36Y55WX
	fT+7vsE5AnxVztYsg+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptpF-00041n-5v; Tue, 23 Jul 2019 12:23:25 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmR-0001my-JT
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:36 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122028euoutp0138561e43621cca3b576b6625e550ee9b~0CJoOyOPw2875428754euoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190723122028euoutp0138561e43621cca3b576b6625e550ee9b~0CJoOyOPw2875428754euoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884428;
 bh=xYHVjPEnK2SWP+r3hWe6spsBX3CeKCFK+Qz1Ihn5wCc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UaVI1mOA+sPLf1x+tBVZqOIsO0hdEUIxRoLjdlxJAecyTZrERi9tsQomF32JhLFNu
 4l1zkq3ZQVT9sMC222pC2VhV6f47Tnw3pa0n+bdvjqQclo/XKRKy2RgXTbWmE0D65v
 2PciSDB308POH+dP6UM+9BY1TSHl/zL8dO40xeLI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122028eucas1p13eee0cf56f89df64afa3d2ce3ff472ae~0CJn56LWQ0096400964eucas1p1T;
 Tue, 23 Jul 2019 12:20:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 58.75.04325.B8BF63D5; Tue, 23
 Jul 2019 13:20:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190723122027eucas1p124f44370a63b16dcb765585761d661a3~0CJnOVHTg0311803118eucas1p1H;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122027eusmtrp1e5dec855e09799ace7a70bf659773740~0CJnDXiFz2543625436eusmtrp1B;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-aa-5d36fb8b99fa
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id DD.41.04146.A8BF63D5; Tue, 23
 Jul 2019 13:20:26 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122026eusmtip2d645baf0e12dafb33d7dc0bd57036851~0CJmQ0Lac1668716687eusmtip2-;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 07/11] icc: Relax condition in apply_constraints()
Date: Tue, 23 Jul 2019 14:20:12 +0200
Message-Id: <20190723122016.30279-8-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3euWqvjpviUUTQwSPASlh0wIu3C6ZtGQWRSKw9L1Ck7arcP
 rXt5w7SL6ciBYjYn6przkkqtpZjVikILC60p2WLZmq1CjZxnXb79/s/7/J8bL43JnhHL6HR1
 Lq9RKzMVZCBu6f1pjyycjkuN+WGMYa29rRTbUtFEsENTHwi22vaUYF9+myTZ690mki0bKcVZ
 u72ZYk2OQYJ90akjWU+xDbEV9h4J22h7S7HDp+pJtqL8I7l5CWcyXCK5N4NdJDdS2Cfh7tSe
 5O5/7pJwJWYD4jymFUnU3sCNaXxmej6vid50IPBwjX2MyLHSRy3Xxikt8pIFKIAGZh10m92S
 AhRIy5h6BCVtLkIUUwg83k+UKDwIXG01WAGi5y2tZk6M30LwteUW+dfR7B4ifHVJZgcUXW6f
 LxXM2BCU6ydxn8AYw5z4bkG+LDmzHWqfOCU+xplw0HcYKR9LmQSoGnZh4oQroaH53jwHMIlQ
 8PACKeYEQf+NMdzH2FzOmdYqzNcAGDcFj5ra/Oat8EZr97McnH1mSuTlMFBehIsswHjHCCGa
 tQhMdTa/IR4e9D0nfEtjzBpo6owWwwnQaHRT4i0WwytXkDjDYiizXPefSAoXz8tEjAD9dIpo
 BDjdMOivzUGV0YiVolWV/y1T+d8ylf/a6hFmQKF8npCl4oVYNX8kSlBmCXlqVdSh7CwTmvtn
 A7/6vrWjnpmDVsTQSLFI2ty1PlVGKPOFY1lWBDSmCJYma+NSZdI05bHjvCZ7vyYvkxesKIzG
 FaHSEwtGU2SMSpnLZ/B8Dq/58yqhA5ZpUdjFL7t6k89uoc5FjMa76RutqqkJw+4Qb+RE+OoN
 T/eUPdfZEp0rk0ardy6N3invn0msdlwZGt501QlbQurinLfpBwtXpb03JRYvj62/rTNKC2cz
 MrMJecfNhKKMfe+8NR8evw3L0HtSX6/4Or1NuZbHZx1PvLqJu9uxydLvVyYcClw4rFwbgWkE
 5W+53JN5YwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xe7pdv81iDd6ctbA4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexuLz
 T1gLDnFUbJv2lL2B8RtbFyMHh4SAicTWLR5djJwcQgJLGSXezQkEsSUEJCQ+rr/BCmELS/y5
 1gVUzgVU84lRYurp14wgCTYBT4meiTtYQRIiAqcYJbYuPwdWxSywiVHi7vGJ7CBVwgJuEkvO
 vmICsVkEVCUW7FwDFucVcJSYffstM8QKeYnVGw6A2ZwCThJdR9vZIE5ylNi2HWIbr4CgxMmZ
 T1hArmYWUJdYP08IJMwM1Nq8dTbzBEbBWUiqZiFUzUJStYCReRWjSGppcW56brGhXnFibnFp
 Xrpecn7uJkZgjG479nPzDsZLG4MPMQpwMCrx8G7YYxorxJpYVlyZe4hRgoNZSYQ3sMEsVog3
 JbGyKrUoP76oNCe1+BCjKdBrE5mlRJPzgekjryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpi
 SWp2ampBahFMHxMHp1QDo4dnYqTYIYeDK76yqeUHr0kSYdAN1zhyIHDJqiydlUoHD9t/7pR5
 xbRBIHRdDs/a+NKZP4WfinkEp5k8MprIyGjjl2mucuHnU4bdthnTr//wNaoSL/P9Mbs78dCl
 3cbyn03r5Xi4Tv1qkMk2/xvna7V6WeW7f/19S+qUqqx6dRTsHjEFumcrsRRnJBpqMRcVJwIA
 IsA9K+cCAAA=
X-CMS-MailID: 20190723122027eucas1p124f44370a63b16dcb765585761d661a3
X-Msg-Generator: CA
X-RootMTR: 20190723122027eucas1p124f44370a63b16dcb765585761d661a3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122027eucas1p124f44370a63b16dcb765585761d661a3
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122027eucas1p124f44370a63b16dcb765585761d661a3@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052031_768971_8F3D9875 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGV4eW5vcy1idXMgZGV2ZnJlcSBkcml2ZXIgaXMgZXh0ZW5kZWQgd2l0aCBpbnRlcmNvbm5l
Y3QgZnVuY3Rpb25hbGl0eQpieSBhIHN1YnNlcXVlbnQgcGF0Y2guIFRoaXMgcGF0Y2ggcmVtb3Zl
cyBhIGNoZWNrIGZyb20gdGhlIGludGVyY29ubmVjdApmcmFtZXdvcmsgdGhhdCBwcmV2ZW50cyBp
bnRlcmNvbm5lY3QgZnJvbSB3b3JraW5nIG9uIGV4eW5vcy1idXMsIGluIHdoaWNoCmV2ZXJ5IGJ1
cyBpcyBhIHNlcGFyYXRlIGludGVyY29ubmVjdCBwcm92aWRlci4KClNpZ25lZC1vZmYtYnk6IEFy
dHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMv
aW50ZXJjb25uZWN0L2NvcmUuYyB8IDcgKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2ludGVyY29ubmVj
dC9jb3JlLmMgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMKaW5kZXggMjU1NmZkNmQxODYz
Li5iYjU1NTY1ZDE5MGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwor
KysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMKQEAgLTIxOSwxMSArMjE5LDggQEAgc3Rh
dGljIGludCBhcHBseV9jb25zdHJhaW50cyhzdHJ1Y3QgaWNjX3BhdGggKnBhdGgpCiAJZm9yIChp
ID0gMDsgaSA8IHBhdGgtPm51bV9ub2RlczsgaSsrKSB7CiAJCW5leHQgPSBwYXRoLT5yZXFzW2ld
Lm5vZGU7CiAKLQkJLyoKLQkJICogQm90aCBlbmRwb2ludHMgc2hvdWxkIGJlIHZhbGlkIG1hc3Rl
ci1zbGF2ZSBwYWlycyBvZiB0aGUKLQkJICogc2FtZSBpbnRlcmNvbm5lY3QgcHJvdmlkZXIgdGhh
dCB3aWxsIGJlIGNvbmZpZ3VyZWQuCi0JCSAqLwotCQlpZiAoIXByZXYgfHwgbmV4dC0+cHJvdmlk
ZXIgIT0gcHJldi0+cHJvdmlkZXIpIHsKKwkJLyogYm90aCBlbmRwb2ludHMgc2hvdWxkIGJlIHZh
bGlkIG1hc3Rlci1zbGF2ZSBwYWlycyAqLworCQlpZiAoIXByZXYpIHsKIAkJCXByZXYgPSBuZXh0
OwogCQkJY29udGludWU7CiAJCX0KLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
