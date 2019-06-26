Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D2C56BBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tATMzghku8R+9HjgnIGtv8mI8gvwTywgHTPvUvZ3NUI=; b=QQhV+5Xy8PKzXi
	n1d+6HqogXm0s2dKBDl+FmpahepsNDIL3zqoiI1YQOPstMAKnxMld7eb1ChEaQLeb9ghQKG2NKCWY
	2EEr0/2GdwbeVS6gmUnyTp4mI+OlrpR6gkZZJGuRBm/oWTY3TZoKv3p/rtynGU3cN7evQ1OKSufYc
	LTGdAIU0qqpC6fflaZHfEg3KSPe8Ur7ulUP06Q9387u9HRG26r7Jpc9i8FJoOfKb5VOiYQ19J+2Vc
	n/ZWRZJefhw/V39VMeyicwpxUsX4wUkxqqTDAZ/9QgLed7odfu2N0NPrkuSxDAzJHs12yl8znvLBE
	o5b3nbZ6oPlCLYcDw9KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8kz-0007nv-VZ; Wed, 26 Jun 2019 14:18:41 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8jv-0007DP-As
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:17:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190626141725euoutp0170d336a1d76f716b455ec8e899b585fc~rxVCTxyhl0350403504euoutp01j
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 14:17:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190626141725euoutp0170d336a1d76f716b455ec8e899b585fc~rxVCTxyhl0350403504euoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561558645;
 bh=Lb5vMIMA4+2oGP1PTQxIWYQ2bA+QyEgleS8n+1L6J3M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WxVQz+BomuWZLShZRQdbbK7fjmkd6TOfzAa394ssdp3aSqd04s85A6AtMx8+d0HDX
 i0FJRpGreSI9ySXFELtQ/gKImlRGwyq7hoMoMjv/VwnXOk7JUnTIzRg4lZ5YfB8A7U
 WCHCwtOvx0a08zN14EfqD/nBQeTrjk9kDOM+ceLg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190626141724eucas1p1ae2024c243dd959b702afd7cb1a15023~rxVBk9Omm1371213712eucas1p1w;
 Wed, 26 Jun 2019 14:17:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 1F.C8.04298.47E731D5; Wed, 26
 Jun 2019 15:17:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190626141723eucas1p2a3cd561e822e6caaeffcc6d004b37a69~rxVAupGD00710607106eucas1p2b;
 Wed, 26 Jun 2019 14:17:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190626141723eusmtrp16dbe68df7311179a8bfa2398b05bf084~rxVAgZ4NY1521615216eusmtrp1d;
 Wed, 26 Jun 2019 14:17:23 +0000 (GMT)
X-AuditID: cbfec7f2-3615e9c0000010ca-f4-5d137e748db2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 56.B3.04140.37E731D5; Wed, 26
 Jun 2019 15:17:23 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190626141722eusmtip1cfd37b7173ad3b0c2168b9ff59529ebe~rxU-gYMh_2787727877eusmtip1I;
 Wed, 26 Jun 2019 14:17:22 +0000 (GMT)
Subject: Re: [PATCH v4 4/5] Documentation: devicetree: add PPMU events
 description
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <776f58c2-a05c-8fa8-c7f5-458dc17926f6@partner.samsung.com>
Date: Wed, 26 Jun 2019 16:17:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3YuOw5nx6O2FwuFQXQjyy70dSGSLizxjy5SUUgtO6ily3bU
 tCSnppl5w7BsdjMSLyy0NaUJmcypqdm0IkuxTE2lnJSuQui6HSP/+73v+7zf+zzwMQT3lvJl
 ojRxvFajjlbSMrKuZdq2PO6cV9jKyZyF+H5xNYV7HKMUHmlehm9Zn1E4f+gTgW22GinuTBuX
 YuPQKwq/qL9O46lcK8LFtgYJvmftl+Kynm4J7kutoHHGI6sUN41foPC3J4Noi6fKcNOAVGZ9
 v1RlrLpIqx7cTVHlmaqQasrot4s+KNt0jI+OSuC1KzYfkUXW9Jup2BFZ4kfLG1qHmphs5MYA
 uwbqDdMoG8kYjq1AcMHQIRELB4IWw/uZyRSCklfd9L+V5vNWShyUI3g8OUCIhR1B9Y965FR5
 saHwy2iRONmbXQI9P7+7NgjWRsKXWgeZjRiGZgPgYdUpp0bO7oAaXaNLT7ILofbziNTJPuwB
 cJiNSNR4Qtu1YdLJbuxuyBp74GKCVUDv8C2JyP6QXlviMgRsKgM/MzMI0fY2sJsaSZG94GOr
 SSryAui4nDPTF0CXW4pEToah/Bszmo3Q1NpNOT0Tf8NU169wIrBB0HZnroge8NruKTrwgMK6
 q4TYlkNWJie+sRhMOV0SkedBueGKtAAp9bNy6Wdl0c/Kov9/9jYiq5CCjxdiInghUMOfDhDU
 MUK8JiIg/GSMEf39dR2/Wicfoq/Pj1oQyyClu1znz4VxlDpBSIqxIGAIpbe8TM2GcfJj6qQz
 vPbkYW18NC9Y0HyGVCrkZ+cMHOLYCHUcf4LnY3ntv6mEcfPVIWXD2KbgecnBhS+7So+r9oyb
 x4JMvsWZqZubxvuKGg+tG+U0u+p+r1X4mRN7d9pWL98fv6/PRoeG7B22by/pbAtoX5V06ar7
 1slFA4MbwhQTlaUtqTfblO2JBWlF97ZVXLyenB7Chad8rUybfpT1xr7+6R5yw5pIhzZi4l3s
 qbwPPkVKUohUBy4ltIL6DzamK/lxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsVy+t/xu7rFdcKxBr8naVlsnLGe1eL6l+es
 Fs+OalvMP3KO1aL/8Wtmi/PnN7BbnG16w26x6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUefVtWMXp8
 3iQXwBalZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5eg
 l7Hh7k7WgmdcFa8O3WRrYDzM0cXIySEhYCJxtOUIaxcjF4eQwFJGiSsne9khEmISk/Zth7KF
 Jf5c62KDKHrNKNF/aT0zSEJYIETi36ZDTCC2iICmxPW/38EmMQucZ5FYdPY+O0THFGaJSxu3
 MHYxcnCwCehJ7FhVCNLAK+AmsaHhAFgzi4CqxNYPz8C2iQpESMze1cACUSMocXLmEzCbUyBQ
 ouPFZjCbWcBMYt7mh8wQtrjErSfzmSBseYnmrbOZJzAKzULSPgtJyywkLbOQtCxgZFnFKJJa
 WpybnltspFecmFtcmpeul5yfu4kRGOHbjv3csoOx613wIUYBDkYlHt4GeaFYIdbEsuLK3EOM
 EhzMSiK8SxMFYoV4UxIrq1KL8uOLSnNSiw8xmgI9N5FZSjQ5H5h88kriDU0NzS0sDc2NzY3N
 LJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MJbGffUSmT21j0Mozf0rW76msZP171/Lizxn
 7Lg22eCkhX/8xX37Tq8XOx5XVybyMbE8TfryrgqvjjM/CuYyCa3Plj0U7bvsgvsksa4wkffd
 hyfuzDuksq5ubZd6DwvDowtFL1m7G1i5jr7nbjJ7eHhz5667vMUlv26b7G/4vSX9jFLBp22V
 u5RYijMSDbWYi4oTAdJz0PoGAwAA
X-CMS-MailID: 20190626141723eucas1p2a3cd561e822e6caaeffcc6d004b37a69
X-Msg-Generator: CA
X-RootMTR: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
References: <CGME20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5@eucas1p2.samsung.com>
 <20190605091236.24263-1-l.luba@partner.samsung.com>
 <20190605091236.24263-5-l.luba@partner.samsung.com>
 <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
 <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
 <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071735_597722_BD39F25B 
X-CRM114-Status: GOOD (  15.27  )
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
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 kgene@kernel.org, linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, kyungmin.park@samsung.com,
 robh+dt@kernel.org, cwchoi00@gmail.com, s.nawrocki@samsung.com,
 myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gNi8yNi8xOSA0OjAzIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIFdlZCwgMjYgSnVuIDIwMTkgYXQgMTU6NTgsIEx1a2FzeiBMdWJhIDxsLmx1YmFA
cGFydG5lci5zYW1zdW5nLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIENoYW53b28sCj4+Cj4+IE9uIDYv
MjYvMTkgMTA6MjMgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4+IEhpIEx1a2FzeiwKPj4+Cj4+
PiAyMDE564WEIDbsm5QgNeydvCAo7IiYKSAxODoxNCwgTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0
bmVyLnNhbXN1bmcuY29tCj4+PiA8bWFpbHRvOmwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPj7r
i5jsnbQg7J6R7ISxOgo+Pj4KPj4+ICAgICAgRXh0ZW5kIHRoZSBkb2N1bWVuYXRpb24gYnkgZXZl
bnRzIGRlc2NyaXB0aW9uIHdpdGggbmV3ICdldmVudC1kYXRhLXR5cGUnCj4+PiAgICAgIGZpZWxk
LiBBZGQgZXhhbXBsZSBob3cgdGhlIGV2ZW50IG1pZ2h0IGJlIGRlZmluZWQgaW4gRFQuCj4+Pgo+
Pj4gICAgICBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bC5sdWJhQHBhcnRuZXIuc2Ftc3Vu
Zy5jb20KPj4+ICAgICAgPG1haWx0bzpsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4+Cj4+PiAg
ICAgIFNpZ25lZC1vZmYtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tCj4+
PiAgICAgIDxtYWlsdG86Y3cwMC5jaG9pQHNhbXN1bmcuY29tPj4KPj4+ICAgICAgLS0tCj4+PiAg
ICAgICAgLi4uL2JpbmRpbmdzL2RldmZyZXEvZXZlbnQvZXh5bm9zLXBwbXUudHh0ICAgIHwgMjYg
KysrKysrKysrKysrKysrKystLQo+Pj4gICAgICAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+Cj4+Pgo+Pj4gQWNrZWQtYnk6IENoYW53b28g
Q2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tCj4+Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIEFDS3Mg
Zm9yIHRoaXMgYSAyLzUgcGF0Y2guCj4+IERvIHlvdSB0aGluayB0aGUgdjQgY291bGQgYmUgbWVy
Z2VkIG5vdz8KPiAKPiBJIHRoaW5rIHlvdSBoYXZlIGFsbCBuZWNlc3NhcnkgYWNrcy4gSSBjYW4g
dGFrZSB0aGUgRFRTIHBhdGNoICg1LzUpCj4gYWx0aG91Z2ggcHJvYmFibHkgZm9yIG5leHQgbWVy
Z2Ugd2luZG93IGFzIEkganVzdCBzZW50IG9uZS4KVGhlcmUgd2FzIG9uZSBwYXRjaCAzLzUKaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNi81LzIxNQp3aGljaCB3YXMgd2FpdGluZyBBQ0sgb3Ig
SSBtaXNzZWQgdGhlIGVtYWlsIHNvbWVob3cuCgpSZWdhcmRzLApMdWthc3oKCj4gCj4gQmVzdCBy
ZWdhcmRzLAo+IEtyenlzenRvZgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
