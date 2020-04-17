Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66101ADF04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrL2apPo7suuwz/PpDLwebk5ephyESD5OWuzgZ5G02Q=; b=MZ0L2HPeGD/5WE
	UWE42whWUJtvn56r3g9eZIkVOZDeFVnZZ1vil/7ovKUf5VHPIhX8uZPzI8DQ//bD+uhbmtkVQaEuj
	nQzCMDrcVdRg8Qsspjsz2bCluZmGcmFVzksNvnVURpcAZXPbtcj0PXaq9d+XOc26utxCIz+AgoVxU
	yeKvm4ZiuZCIWFbDqVDJ3b0CyOJAJ4F/vf5TPcaIj/KYaLM9CflYtajT0Gt7NDYNpAtGz3Y3dg4m1
	xcRbW5RU41+FLTNODG6hLDKmAEEI/ZhmilZNX99/RAdvZ6MVuL/GeWWvNBaVGjawplhAaFs/IunsG
	F4yamVDV7RbmKWq1GSsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRf8-0000j8-6B; Fri, 17 Apr 2020 14:08:10 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRf0-0000i5-Jf
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:08:04 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200417140800euoutp019ab2552842362038fc78ceb41b4aea84~GoJTwaHc11953319533euoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 14:08:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200417140800euoutp019ab2552842362038fc78ceb41b4aea84~GoJTwaHc11953319533euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587132480;
 bh=77Mwf962+FuZGbL9oamghlTb033AywNJjiaPVhTzWic=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=E1TjHNIw+jJZCIUz2uGRg1D5QWWYeAqkyUMsg00jRbwnFXvNM3mzbWy4hwzaLI+v1
 TieuQ7xD5uAK3V3QKH1gHTBeEuGY27ZpDLfZRzaIv4l3QxG1zo4k/Z1qTGeIX97I6z
 ot2aZWa2sTEqsTeI97PLv49Q7g4yn6eNafiERCxU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200417140800eucas1p2b199351b6cd88d4814f3aead42121a54~GoJTovjoC1773817738eucas1p2B;
 Fri, 17 Apr 2020 14:08:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EE.EF.60679.F38B99E5; Fri, 17
 Apr 2020 15:08:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200417140759eucas1p1f228ea1b09d74f433be9bf16a21d6cc6~GoJTT_XRc1490114901eucas1p18;
 Fri, 17 Apr 2020 14:07:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417140759eusmtrp1c6bb1a6f007ff77c6d34622d82eb1849~GoJTTWlMG2228222282eusmtrp1o;
 Fri, 17 Apr 2020 14:07:59 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-e6-5e99b83fcaf6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 23.E0.07950.F38B99E5; Fri, 17
 Apr 2020 15:07:59 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200417140759eusmtip2f1dffef3698a116be9860a2923925a33~GoJS1F7e92969929699eusmtip2b;
 Fri, 17 Apr 2020 14:07:59 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH] video: fbdev: imxfb: ensure balanced regulator usage
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <1dcf1273-ae01-02c6-d9a4-5eef744ab764@samsung.com>
Date: Fri, 17 Apr 2020 16:07:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200323211626.24812-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRjlt3u3XUfTn9PyS0NhUVKUziy4momC2PqnF4GhaV3zouKTXbUM
 JFNKXZIvTFyhouZjxNRl85EIzmo+QIM0wowKBU3wrYTaNK9Xyf/Od75zON+BjyIUXWJnKjYx
 hdUkMvFKiYw0fVwbOh3QXh6hMtUgemR1XkL/Gr1C60s7SNo48UVM9z1bENPa9UaCtrYZSXq6
 1Yn+VlSCAmzUHbrvUrVRnydR/3hqEanf1D5Ut8y1i9QFVpV62eh6VRoq84ti42PTWI2n/x1Z
 zKphTZTcje9bs9aJTJQn1yIbCvBZePe4DmmRjFLgBgQd+SsSYVhBMGttEgnDMoKWxkrJnqW6
 M08sLOoRLI+M7qpmEZiat6S8SoJ9oShHj3jsgC/B1JSB1CKKcsTBsGg4zOsJ3CSChuViktfI
 sT8MvN4S85jEx2BptXSHP4hvwtLPXrGgsYf+8skd3gYHQdZ8DsFjAjvB2GSlSMBukP32BcEH
 AB6QwqOaOSScHQRT7eOkgB1gxtIqFfARGCzJJwWDAYE1d3rX3YagvmRzt/R5GB9al/AVCHwC
 mjo9BToQWhatBE8DtoWvs/bCEbZQbCrbpeWQ+0QhqI9Dc12zZC9W29FIFCKlbl813b46un11
 dP9zqxCpR05sKpcQzXJnEtl7HhyTwKUmRnvcTUowou2fGty0rLSjzr+RZoQppDwgV+WXRyjE
 TBqXnmBGQBFKR3lP8DYlj2LSH7CapNua1HiWMyMXilQ6yb2rf4crcDSTwsaxbDKr2duKKBvn
 THTZxz0su/hPeqS5AqQ9Yf6hCx80w96GQP0k437uZUG8xq7aweHWxlFlSAbX53VjpktsUQR+
 9h4bThkMZC6YeukN3+cZhgmLrq2prkLmU1413BPJpl73u6b65HZq0qzq93Ve0vcs1MYVHpp6
 lRz83iWkoGym0NWO67vYHT4fsqYkuRjG6ySh4Zh/cB4aZk8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsVy+t/xe7r2O2bGGTydom1x5et7NouHV/0t
 Vk3dyWKx6fE1VosTfR9YLbp+rWS2+Lt9E4vFiy3iFrcnTmZ04PTYOesuu8emVZ1sHve7jzN5
 bF5S77Hx3Q4mj/6/Bh6fN8kFsEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZ
 Kunb2aSk5mSWpRbp2yXoZXxd95OpYJ9Axd+mX8wNjJ28XYycHBICJhKLdnWygthCAksZJfom
 x3UxcgDFZSSOry+DKBGW+HOti62LkQuo5DWjRMf/pewgCTYBK4mJ7asYQWxhAU+J58/XsYD0
 igi4SXxcJwlSzyywnkli8qm3jBDzpzNKXH2RAmLzCthJnFrzH2wvi4CqxKevU1lAbFGBCInD
 O2YxQtQISpyc+QQszingItH0vp0ZxGYWUJf4M+8SlC0ucevJfCYIW16ieets5gmMQrOQtM9C
 0jILScssJC0LGFlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBEbktmM/t+xg7HoXfIhRgINR
 iYfXoGdmnBBrYllxZe4hRgkOZiUR3oNuQCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OByaL
 vJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjDFHFavlWTIt80oK
 En83HmuOvVcrt5X7PoN95BXDf7xtD9OX5zcI5D2+lNQj+cn70oGPHLo36u4Fbz+6za284f5a
 sys8YcYB7awR/WdOpbZfODLXMV4rJyc3dk2Im/xj3vr1vS6nXkidz39+w+Tl1ReLC4211le2
 RzVsW9SYkzzxmEHM7gP7lViKMxINtZiLihMBU6EHit4CAAA=
X-CMS-MailID: 20200417140759eucas1p1f228ea1b09d74f433be9bf16a21d6cc6
X-Msg-Generator: CA
X-RootMTR: 20200323211646eucas1p270ab02024c326adba5a50b908ef8ba8a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200323211646eucas1p270ab02024c326adba5a50b908ef8ba8a
References: <CGME20200323211646eucas1p270ab02024c326adba5a50b908ef8ba8a@eucas1p2.samsung.com>
 <20200323211626.24812-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_070802_785391_70BF50D5 
X-CRM114-Status: GOOD (  21.14  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDMvMjMvMjAgMTA6MTYgUE0sIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRoZSBmYmRl
diBmcmFtZXdvcmsgZG9lc24ndCBjYXJlIHRvIGNhbGwgdGhlIC5zZXRfcG93ZXIgY2FsbGJhY2sg
b25seSBvbgo+IGNoYW5nZXMuIFNvIHRoZSBkcml2ZXIgaGFzIHRvIGNhcmUgZm9yIGl0c2VsZiB0
aGF0IHRoZSByZWd1bGF0b3IgZG9lc24ndAo+IGdldCBkaXNhYmxlZCBtb3JlIG9mdGVuIHRoYW4g
ZW5hYmxlZC4KPiAKPiBUaGlzIGZpeGVzIHRoZSByZWd1bGF0b3Igd2FybmluZwo+IAo+IAl1bmJh
bGFuY2VkIGRpc2FibGVzIGZvciBsY2Qgc3VwcGx5Cj4gCj4gd2hpY2ggY2FuIGJlIHRyaWdnZXJl
ZCBieSBkb2luZwo+IAo+IAllY2hvIDQgPiAvc3lzL2NsYXNzL2xjZC9pbXhmYi1sY2QvbGNkX3Bv
d2VyCj4gCj4gdHdpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KClBhdGNoIHF1ZXVlZCBmb3IgdjUuOCwgdGhh
bmtzLgoKQmVzdCByZWdhcmRzLAotLQpCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6ClNhbXN1bmcg
UiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ftc3VuZyBFbGVjdHJvbmljcwoKPiAtLS0KPiAgZHJpdmVy
cy92aWRlby9mYmRldi9pbXhmYi5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMgYi9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2lteGZiLmMKPiBpbmRleCAzNzBiZjI1NTNkNDMuLjg4NGIxNmVmYTdlOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMKPiArKysgYi9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2lteGZiLmMKPiBAQCAtMTcyLDYgKzE3Miw3IEBAIHN0cnVjdCBpbXhmYl9pbmZvIHsKPiAg
CWludAkJCW51bV9tb2RlczsKPiAgCj4gIAlzdHJ1Y3QgcmVndWxhdG9yCSpsY2RfcHdyOwo+ICsJ
aW50CQkJbGNkX3B3cl9lbmFibGVkOwo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2VfaWQgaW14ZmJfZGV2dHlwZVtdID0gewo+IEBAIC04MDEsMTYgKzgwMiwz
MCBAQCBzdGF0aWMgaW50IGlteGZiX2xjZF9nZXRfcG93ZXIoc3RydWN0IGxjZF9kZXZpY2UgKmxj
ZGRldikKPiAgCXJldHVybiBGQl9CTEFOS19VTkJMQU5LOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50
IGlteGZiX3JlZ3VsYXRvcl9zZXQoc3RydWN0IGlteGZiX2luZm8gKmZiaSwgaW50IGVuYWJsZSkK
PiArewo+ICsJaW50IHJldDsKPiArCj4gKwlpZiAoZW5hYmxlID09IGZiaS0+bGNkX3B3cl9lbmFi
bGVkKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWlmIChlbmFibGUpCj4gKwkJcmV0ID0gcmVndWxh
dG9yX2VuYWJsZShmYmktPmxjZF9wd3IpOwo+ICsJZWxzZQo+ICsJCXJldCA9IHJlZ3VsYXRvcl9k
aXNhYmxlKGZiaS0+bGNkX3B3cik7Cj4gKwo+ICsJaWYgKHJldCA9PSAwKQo+ICsJCWZiaS0+bGNk
X3B3cl9lbmFibGVkID0gZW5hYmxlOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gIHN0
YXRpYyBpbnQgaW14ZmJfbGNkX3NldF9wb3dlcihzdHJ1Y3QgbGNkX2RldmljZSAqbGNkZGV2LCBp
bnQgcG93ZXIpCj4gIHsKPiAgCXN0cnVjdCBpbXhmYl9pbmZvICpmYmkgPSBkZXZfZ2V0X2RydmRh
dGEoJmxjZGRldi0+ZGV2KTsKPiAgCj4gLQlpZiAoIUlTX0VSUihmYmktPmxjZF9wd3IpKSB7Cj4g
LQkJaWYgKHBvd2VyID09IEZCX0JMQU5LX1VOQkxBTkspCj4gLQkJCXJldHVybiByZWd1bGF0b3Jf
ZW5hYmxlKGZiaS0+bGNkX3B3cik7Cj4gLQkJZWxzZQo+IC0JCQlyZXR1cm4gcmVndWxhdG9yX2Rp
c2FibGUoZmJpLT5sY2RfcHdyKTsKPiAtCX0KPiArCWlmICghSVNfRVJSKGZiaS0+bGNkX3B3cikp
Cj4gKwkJcmV0dXJuIGlteGZiX3JlZ3VsYXRvcl9zZXQoZmJpLCBwb3dlciA9PSBGQl9CTEFOS19V
TkJMQU5LKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
