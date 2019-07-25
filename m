Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47CF753D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnnxWZhhgul03bc3NjWc82uOlq/FvSTViyCJH1FAO64=; b=VPXdVXFu+GsIs9
	jepHpkA9QxMh47IH97YaZdkloH58ABJ/wjlTUAAwjSBx7Qluw5cCqUTJA+5xTeemixsEESwlShSpM
	ItzHZyodVzV/SBdRKF7ytTqtKQNHw1bRqEFME0qkPCnWXocFmk5Blo2ARTetWsyIQ57tezIRhC2xq
	Uywkgs5ZzH7Iw5Tt7u09I2+dywu9+UvegSxS0LoBLi4mnq0XHNqLENGdTF9o2WITn1urk8UElm0xc
	Zxsvrr+eL9CZ/U85dxOYPNL/xjn4Xo4QebeeBfNgtctvVkNzYZTqFjKOs7fbbEQPdYOPbc7frm3Ba
	2ppucEXIgqEzvvQaTRrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgXe-0001Yg-2O; Thu, 25 Jul 2019 16:24:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgX4-0001X0-Lo
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:23:59 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725162349euoutp020073ef2c399aafa9540efa64c6fb3f2c~0swrAhZn92868328683euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 16:23:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190725162349euoutp020073ef2c399aafa9540efa64c6fb3f2c~0swrAhZn92868328683euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564071829;
 bh=VcdlZyKrQCdgkYUt20ZBw2/TUXd1x62JJBXr6EHpia8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=XvNiJPnR4xylIsj9T2NATRQ2lcH0fM8lr9CVTXhzw4VUMrYhSsiO7IbPuueFrHpU5
 yU0ipTKi81vTWARn2GpTEMpfVE13c1mSWD+N4WZDx10h8htD9dI+9sLMRDHqZtjNrj
 FkifOq9e/gJ4ync6ko/sksv1UPjhChQlQ5oAAIJg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190725162348eucas1p2d04c89a2846f8586af7949b4a13942de~0swqMOc8H1109611096eucas1p2u;
 Thu, 25 Jul 2019 16:23:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CB.B0.04298.497D93D5; Thu, 25
 Jul 2019 17:23:48 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190725162347eucas1p15f983918e07b912c4a00fefd0c2a5d8e~0swpaXOGQ3041930419eucas1p1N;
 Thu, 25 Jul 2019 16:23:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190725162347eusmtrp29900cce149672f61a0bdef0c8a88c966~0swpMPzBg1648516485eusmtrp2B;
 Thu, 25 Jul 2019 16:23:47 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-4a-5d39d7949571
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 04.46.04146.397D93D5; Thu, 25
 Jul 2019 17:23:47 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725162346eusmtip1ad4b284580c6a68ae2f63e50c9027790~0swoSc50i3163931639eusmtip1Z;
 Thu, 25 Jul 2019 16:23:46 +0000 (GMT)
Subject: Re: [PATCH v4 3/5] drivers: devfreq: events: extend events by type
 of counted data
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 myungjoo.ham@samsung.com
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <6ad9882f-10c8-3708-1a06-ee712bb1c66d@partner.samsung.com>
Date: Thu, 25 Jul 2019 18:23:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <15375017-2e82-7df8-344c-a9c41d61331c@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUxNYRz23nPPR62bt9vl/pav7W6+MoWZvcXCmF0zk41NaJx0VtG9ck9F
 MepaoUkWI5eUj3aTS0la5aN2Sx8aUeO2SJSWUkJl+aNyTyfTf8/v+T2/93me7eUodQvtxUUY
 owWTkY/UMa7K4uo/rxZfdPgFL+kdciMPMvJp4hjsoklW1SuapHV8o0hDQwFLXpp7WVLY8Y4m
 TWXXGDKQWoVIRsMzBblX1cqSHMcbBXmfmMuQpKdVLKnsPUWT37XtaA3W267bkL7U0srqC/PO
 MPqHt0/ozxXlIf1A4exAZqfrqlAhMiJWMPkG7HUNz347wkT10EfOfL7OJKA6ZQpy4QAvh/vW
 fFrCapyLYKxek4JcnXgQwdBwJyMPAwjuVA8r/l1YKzJpeWF1XlQUK+ShD4G97SabgjjOEwdD
 8t0VEq/BnQjuljeOX1DYgcBm7kKSiME+UJJ3SHpVhTfAyR/9jISVeC587LYgCU/DO6CpqAzJ
 Gg+ou/JlPLcLXg0D5u/jPIW10PIlSyHjOXDy0VVK8gKcyEFTcRIrx14Pj5+PUjL2hJ6aogl+
 JoyVZk1UEyEh9QaS8THoSMuc0KyEypo3tJSZwgshv8xXptdCdlq7UqIBu0Nzn4ccwR3Siy9T
 Mq2C08lqWb0Ais6+njCaDlbbJfY80lkmFbNMKmOZVMby3zcbKfOQVogRDWGCuNQoHPYReYMY
 Ywzz2XfQUIicP65+tOZXCRpqDLEjzCGdm+q11S9YTfOxYpzBjoCjdBrVoxInpQrl4+IF08E9
 pphIQbSjGZxSp1UdnfJplxqH8dHCAUGIEkz/tgrOxSsBKWILzP7mW6eGDLVNbcs0tqRA//m6
 dZqYn2h3+dX4oEOVLr3Lkrqzm895b2mclfBk3sUdiVvdlrQmB9pyRjxSL3uHdH5e2B6/sV67
 6OuwNkAZdDx4/3Kv0Nqv6ezmvRdyjHxqzpQX27dtCijwTY7a3t96b2pG5gfU3jUYKJTW7Eyx
 x+qUYji/1JsyifxfdPWf8m0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsVy+t/xu7qTr1vGGnS3iFpsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs2ide8RdovDb9pZLb6deMToIOCxZt4aRo+ds+6ye2xa1cnmsXlJvUffllWMHp83yQWw
 RenZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehlLLj6
 l63gFWtF58N5bA2MJ1m6GDk5JARMJJYfmMvaxcjFISSwlFFi85XfTBAJMYlJ+7azQ9jCEn+u
 dbFBFL1mlJj+YikzSEJYIFai6dJlsG4RgaeMEmt/NoJVMQtcZ5Q4O3EG1NzdTBJN02YDLeTg
 YBPQk9ixqhCkm1fATaL5w3s2EJtFQFXi3stZjCC2qECERF/bbDaIGkGJkzOfgN3KKWAv8bnp
 HVgNs4CZxLzND5khbHGJW0/mM0HY8hLNW2czT2AUmoWkfRaSlllIWmYhaVnAyLKKUSS1tDg3
 PbfYUK84Mbe4NC9dLzk/dxMjMLa3Hfu5eQfjpY3BhxgFOBiVeHgvLLeMFWJNLCuuzD3EKMHB
 rCTCu3UHUIg3JbGyKrUoP76oNCe1+BCjKdBzE5mlRJPzgWknryTe0NTQ3MLS0NzY3NjMQkmc
 t0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY9eTWw+lP0oWdmaYvVpSceM3+y2O6M+LLNbJptz8
 4HXJ5oVg+7MzhSHLheIO/OCUtxAtyt/aoyf02slkKzP3Ac+LNZ/irJ5uf7pV+7Fam/6d858M
 sjbtstzQffKQ3cmHGZOKFzPM2fOz+2/J3ivSN3xrDmbGTDb+5FYUkShluOnc4tNuld83rVJi
 Kc5INNRiLipOBAC0EGq+AwMAAA==
X-CMS-MailID: 20190725162347eucas1p15f983918e07b912c4a00fefd0c2a5d8e
X-Msg-Generator: CA
X-RootMTR: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a@eucas1p2.samsung.com>
 <20190605091236.24263-4-l.luba@partner.samsung.com>
 <37af143f-a585-a28a-a36f-2ed25c5b6d3b@partner.samsung.com>
 <15375017-2e82-7df8-344c-a9c41d61331c@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092355_639807_BE484F1C 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDcvMjQvMTkgMTI6MjQgUE0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSBMdWthc3osCj4gCj4gT24gMTkuIDcuIDI0LiDsmKTtm4QgNzoxNSwgTHVrYXN6IEx1YmEgd3Jv
dGU6Cj4+IEhpIENoYW53b28sCj4+Cj4+IENvdWxkIHlvdSBoYXZlIGEgbG9vayBhIHRoaXMgcGF0
Y2gsIHBsZWFzZT8KPj4gVGhpcyBwYXRjaCBoYXMgYmVlbiByZXdyaXR0ZW4gYWNjb3JpZmluZyB0
byB5b3VyIHN1Z2dlc3Rpb24uCj4+IEtyenlzenRvZiB0cmllZCB0byBhcHBseSA1LzUgRFQgcGF0
Y2ggb24gaGlzIGN1cnJlbnQgYnJhbmNoLAo+PiBidXQgaXQgaXMgbWlzc2luZyBlYXJsaWVyIHN0
dWZmLgo+PiBUaGUgb3RoZXIgcGF0Y2hlcyBoYXZlIG5lZWRlZCBBQ0tzIHNvIGNvdWxkIGdvIHRo
cm91Z2ggZGV2ZnJlcSB0cmVlCj4+IHByb2JhYmx5LCBidXQgdGhpcyBvbmUgbGVmdC4KPiAKPiBT
b3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkuIEl0IGxvb2tzIGdvb2QgdG8gbWUuCj4gCj4gQWNrZWQt
Ynk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgpUaGFuayB5b3UgZm9yIHRo
ZSBBQ0suCgpNeXVuZ0pvbyBjb3VsZCB5b3UgdGFrZSB0aGUgcGF0Y2hlcyAoYXBhcnQgZnJvbSA1
LzUgd2hpY2ggd2lsbCBiZSBpbgpLcnp5c3p0b2YncyB0cmVlIHByb2JhYmx5KSB0aHJvdWdoIGRl
dmZyZXEgdHJlZSwgcGxlYXNlPwoKUmVnYXJkcywKTHVrYXN6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
