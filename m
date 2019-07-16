Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B176A697
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGnbUBph8Rouah1B1Qvo8LAbg62o/PjSGO9QI3kmIN0=; b=mS/4sJkAkJi5md
	k8hGESDbPIxHsmr+SUjP/c1fWmKV9R70lVwelINuiIUa6cOrW+omWnjUBqCFtNUH8BIJXxpaDutxp
	b+J6hhU2X1ytLCNma0+0msZkXrtFbw6V3pDAIQx8oPwwczaqSQgdGrm3mlkcgQPF+Hgc9dh9aFBN9
	TnGOr/Z2x7HwcWewRXat9lFUC9F/QOxXyDY+s/3K4UTnehhrKIF4dC7KV3GQhljp+cYIhCIMPSIfI
	2w8RgSAcKRDEKHS+Ol79Bsrb2SZbkbPAgiZ5/6pLiXPCLYB1o2NI2E5P2xPjWUPRBfECI7z6Ivg4l
	7CTk4s698wl0hrKF/hqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKkH-0000oD-JP; Tue, 16 Jul 2019 10:31:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKjf-0000b4-B2
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:31:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190716103101euoutp029e123320898f1b1081b779ab5dff3541~x3JERBazH0595605956euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 10:31:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190716103101euoutp029e123320898f1b1081b779ab5dff3541~x3JERBazH0595605956euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563273061;
 bh=bZZxZCyhxAVzmhSXV960m/wLED7nviTr1nkJGmytIj4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YbVCKtcL04AWRY+XP+wuGqGwxrC+m9ZulNENobhhD3N45jdiWkJ3gd9utAcmm5Z+o
 DW12J2UxA2u4wcuKIT2ykG33CDyqly406VwCw19YfWSWL/d0JPS7MiCOlPlIEeEzJx
 K9Cg+/eGVRlRk987fFauh4IltDhZcon+F/HYm6gM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190716103100eucas1p1fcb43b18b58217c7c91a3b4488ffc20b~x3JDsgA-90955209552eucas1p17;
 Tue, 16 Jul 2019 10:31:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 82.9B.04325.467AD2D5; Tue, 16
 Jul 2019 11:31:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190716103059eucas1p2149817c499508faaa13e0f7c0872ca69~x3JC1QQVU1338713387eucas1p2F;
 Tue, 16 Jul 2019 10:30:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190716103059eusmtrp13fc92bd699a23773714f623dfb2ab27d~x3JCm47gD0523505235eusmtrp1O;
 Tue, 16 Jul 2019 10:30:59 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-e6-5d2da764d71a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.F5.04146.367AD2D5; Tue, 16
 Jul 2019 11:30:59 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190716103058eusmtip22a164f096ec4b1a1d8f06d1752a43ec1~x3JB6Kcqn0340503405eusmtip2l;
 Tue, 16 Jul 2019 10:30:58 +0000 (GMT)
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: add initial data for coupled
 regulators for Exynos5422/5800
To: Krzysztof Kozlowski <krzk@kernel.org>, Kamil Konieczny
 <k.konieczny@partner.samsung.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <0d31e847-b490-2c0f-abf8-db37b881cb6d@samsung.com>
Date: Tue, 16 Jul 2019 12:30:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPd6a5aLf1CEhx9m7khPQOwruSuA22efkJb41BsaWXjM3A@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTURzu3NfuVpPrXHiwKBplT7Uo6PQkIepC/VH0TyRLp142y03ZTXuT
 2stMe+0Pa2iKmY+puaZsZjZpDZfIGpEteyppD3IqYVLDWm27Sv73fb/f953vfIdD47LPZAyd
 oTvC6XWqTAUlIaxdfk9cem2ccrXJJ0evfnwhUYXzGYmu2P8CdHVwGEcej1mE3AU+EbIMekn0
 or2MQuMlToBueuwYanK+F6G7r55j6G1+HYV8v9wYOv/IKUIB730CtQx0Udsi2cbbjYC1mC5R
 bEv1GfbxaAfGXmk1AdbVZ8PYccuCPaIDks3pXGZGLqdP2Joi0djtEdnF9LFPTh/IA/1UERDT
 kFkHe4z1RBGQ0DKmDsDJD28ogfwA0NDmwAUyDuCvKj82bXnpbp5a1AKYX2zBBDISVF22kyFV
 FHMYmu648RCWMwfh2M+CsANnHAQ8d+5qOJ1iNsLrF00ghKXMVlg+MBo2E8wS6OutIkJ4LrMf
 9neZSUETCbtvDYXnYmYv7H74LhyAM9HwzVAFJuCF0DZSFg6DTAkNL3obg2F0kGyHJVZCqBAF
 v7laRQKeD3sMxYSgvwfgn8KvU2YbgLWGwNQ7bYJPXM/J0EE4sxw2tycI40RYd6cUE86PgH0j
 kcIdIuANaykujKWw8IJMUMdCc42Zmo4telCPXwMK44xmxhltjDPaGP/nVgLCBKK5HF6r5vi1
 Ou5oPK/S8jk6dXxaltYCgr+vJ+CaaAP236kOwNBAMUf6tGOVUkaqcvnjWgeANK6QS7dMrFTK
 pOmq4yc4fVayPieT4x1gHk0ooqUnZw0kyRi16gh3mOOyOf30FqPFMXnAwXLcbr/sVLV27Ofp
 RAOxKD9Do7nWluTHkquV9IvRQ5V89wTfOdlJ1Yv9FexrLT78ZSeWm5K3uGlDwd1DN84HrJJN
 fcMfNGuPci37FOvfly+7V5PdMLs5dleqpYafd5agq/TfvQt09h0f1UxD0ue0yaUxco5o6LUu
 S7T1jykIXqNaswLX86p/ZNOK63kDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsVy+t/xe7rJy3VjDdYfkLK4/uU5q8X8I+dY
 Lfr2/We06H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs3izY+zTBate4+wW/y7tpHFYvODY2wOgh5r5q1h9Ni0qpPNY/OSeo+D7/YwefRtWcXo
 cfzGdiaPz5vkAtij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMy
 y1KL9O0S9DL27eMr6OGoeHrkDWMD4322LkZODgkBE4mrZ9czdzFycQgJLGWUeLANxOEASshI
 HF9fBlEjLPHnWhcbRM1rRokvZ/cwgSSEBbIlVi0+ywxiiwjESXxvXMcKUsQscIRF4tWT61Ad
 M5gkfj5/AraOTcBKYmL7KkYQm1fATmLug3esIDaLgKrEmyuLWEBsUYEIiTPvV7BA1AhKnJz5
 BMzmFAiUOLn7Dtg2ZgF1iT/zLkHZ4hK3nsxngrDlJba/ncM8gVFoFpL2WUhaZiFpmYWkZQEj
 yypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAWN927OfmHYyXNgYfYhTgYFTi4T2xRydWiDWx
 rLgy9xCjBAezkgiv7VftWCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OB6ahvJJ4Q1NDcwtL
 Q3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjM3LRdJEm1Z+OGnjfeY2Yw7zs+5l
 8wwPf5gk0i5Ze+SyxHlXgcYDx4oYPCz+iomvibC8sOeKk8f2qW9eXrm+rEd3lv2J3edYmbY+
 2+fZN8/o3a2OVCkLH1PtpdOP6a2+9PLPzVjTk47eN+8b7ZD6vKhq2yvuDa4ZTzlfpVbWvNJt
 2/dKWOb4mttKLMUZiYZazEXFiQD5QKtXCwMAAA==
X-CMS-MailID: 20190716103059eucas1p2149817c499508faaa13e0f7c0872ca69
X-Msg-Generator: CA
X-RootMTR: 20190715120432eucas1p1b32d72d239420b861bf8596d4e8a053d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120432eucas1p1b32d72d239420b861bf8596d4e8a053d
References: <CGME20190715120432eucas1p1b32d72d239420b861bf8596d4e8a053d@eucas1p1.samsung.com>
 <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <20190715120416.3561-4-k.konieczny@partner.samsung.com>
 <CAJKOXPd6a5aLf1CEhx9m7khPQOwruSuA22efkJb41BsaWXjM3A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_033103_602471_C40CE500 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <vireshk@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/16/19 11:22 AM, Krzysztof Kozlowski wrote:
> On Mon, 15 Jul 2019 at 14:04, Kamil Konieczny
> <k.konieczny@partner.samsung.com> wrote:
>>
>> Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
>> bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
>> be in 300mV range.
>>
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> 
> This one was previously from Marek, now it is from you. Any changes here?

Hmmm, it seems that "From:" tag somehow got lost in v2 compared to v1?

Also the note about adding patch description (which was the only update to
original Marek's patch IIRC) should be added, something like:

...
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
[k.konieczny: add missing patch description]
Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
