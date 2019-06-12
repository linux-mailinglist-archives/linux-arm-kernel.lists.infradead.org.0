Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE2141D70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKds5OTslLSg36uhRy7FEE+kAxn+BbHT4VIoS+zqKPk=; b=b0uCeav3HpzHwD
	y8ZN/74KRftjiM6HxFHTTRQxuDGJttD20trjMZ5FwVABSCt8AbughH4hRAONlRaoIB5G9qD4Qkiqo
	CLwVol4UVHfNQVOZ/pw5LVfsO/8/B4/CeW+IY8zLj/QBzEzJiyQwVA+Fl1LffNuPyqcYveHs+/jfC
	oWGbpkiNwLM9zsnCHZFfrIxo/83Q01HPCLYjsUP77yAL7QiZyLPiW7ByTu5TlcSKypY6W2x1MXPcR
	k5aNGiFbzMydIRttYiMJtDrJnfT4cjqo5C3lEEMGh7uiMYUDpnSrNbeJd333V+xcZexMIBsqc6eUJ
	DsY8neiEtkyXX/xzFv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxWj-0003OA-51; Wed, 12 Jun 2019 07:18:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxWN-0003Mu-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:18:16 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190612071807euoutp01af6df3f9a190718c6e00f4693359aac9~nYk8KiNWa2875828758euoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:18:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190612071807euoutp01af6df3f9a190718c6e00f4693359aac9~nYk8KiNWa2875828758euoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560323887;
 bh=Ib2hOUBwsOQPwhivWkswJDbQOGHqTT29bt2JNeyXdfM=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=MIIdtvuaP9oxdVbZEg1DbiOmlpKuRvd/xM99a1KFJ0RDPrkp7PNIQooNFTNS4i7C1
 n6OdoU4ny4H9GKh47xgPRq1FSUWmcDTv5qk2FlNi61vFMBAG6TyEmEfAgV0MCHDVwn
 uXV30KwKlzxFfiZ1R7mHxO6OBLyO9wpFJpKAlGPk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190612071806eucas1p24457744ce55feb071aaada8e3fa3c118~nYk7cTv962271322713eucas1p2p;
 Wed, 12 Jun 2019 07:18:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C1.5A.04377.E27A00D5; Wed, 12
 Jun 2019 08:18:06 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190612071806eucas1p29bbe929b1df18938ce355e9f63320ce1~nYk6x4tin1127011270eucas1p24;
 Wed, 12 Jun 2019 07:18:06 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190612071805eusmtrp2dd48ceed9f5cd27bd15669b50836115e~nYk6iy9VE2761027610eusmtrp2i;
 Wed, 12 Jun 2019 07:18:05 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-8b-5d00a72e2f49
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 8D.9A.04146.D27A00D5; Wed, 12
 Jun 2019 08:18:05 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190612071805eusmtip2609a10c68b1a6cffa2e792a4a0929d3f~nYk54NAEO1398613986eusmtip2W;
 Wed, 12 Jun 2019 07:18:05 +0000 (GMT)
Subject: Re: [PATCH v1 0/2] dw-mipi-dsi: add power on & off optional phy ops
 and update stm
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner
 <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>, Nickey Yang
 <nickey.yang@rock-chips.com>, Philippe Cornu <philippe.cornu@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou
 <vincent.abriou@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <8fad125a-54f2-7cca-fa01-5d7098930d62@samsung.com>
Date: Wed, 12 Jun 2019 09:18:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUiTYRzHfXwPX0ez12ntV1rhosAoTRF66KKi4wUhCvpDKrOVL54z2zyy
 /lC6nHaQGppzmYRDEY+aTptkXtg61JJy2eVM14FhUh61atnmu8j/Pr/v8/0dX3gYQmKnFjNx
 SSm8MkmeKKNFZON9W++aoAq3yLU9fUvwpd6H7vi29THCpzse0XimMY/Az6fGHTT8mcI5eeUe
 WD9ipvCzZi2Nc81WCpfaayis+/UF4aGznyhcaTMg3N3fRuLsnHP0FpZrmS4jOaPmrQdXoi6m
 uDfmuzTXND1EcZYLJneuvjyTKy/spzm7ppXkmsylBNd+L4R7/6OF4Cb0S/eI94s2RvOJcWm8
 MnjzYVHst4/PqORx+kT267ceWaiGykWeDLBhUPFh0MEiRsJWIhjuN9BCMYlg9OsAKRQTCL5l
 dxL/WuxjtYTwUIFA+1Lnco0huHOt21EwjA8bCbrhWd2X1VLQrv0+u5BmA8Fe/5J2spjdDO3P
 G2ankuwK6DI+QU5ewEbApFGPBI83PCy2kk72ZHeCfnhidg7BLoMzhhJCYCm8st5wdy4D9joD
 Ay9KXem2w6OmQg+BfWDU1OBif5gxOhucnAmWyrOE0KxGYLhldOXcAJ2mPsqZhnBcXdccLMhb
 YWzERjhlYL1gYMxbuMEL8huLXLIY1OclgjsALD0G10Ap6J5O0YKFg4sWvysoQDMnpGZOMM2c
 YJr/J5QhsgpJ+VSVIoZXhSbx6UEquUKVmhQTdPSYQo8cn/LxH9PkHdT8+0gHYhkkmyduK5o5
 KKHkaaoMRQcChpD5ikMT3CIl4mh5xkleeSxKmZrIqzqQH0PKpOJTbkMHJGyMPIVP4PlkXvnv
 1Z3xXJyF8goUmdSVtbZ3y8fTjTGHyifUpl0Gm7++ZGbo3pRuNw6vjl/t+6BWWxUbrFjYik2d
 p+n11ZlRihUZWdGcOu7m4ekuS11d2M/iqU2B1vH7V2ukg10RqwoX7d0RWlBRG2+XmG0jvn3q
 jKZBN+m28PmGtJ8Hy9ZdLiLyNQPHE1a27pORqlh5yCpCqZL/BTswG1+QAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplleLIzCtJLcpLzFFi42I5/e/4PV3d5QyxBn9ea1v0njvJZLHxyWlG
 i6ZDp9gs/m+byGxx5et7IOvRa1aLzolL2C02Pb7GanF51xw2i65rT1gt5v1dy2qx9Pc7RosH
 LS9YLVb83MpocebqARaL9s5WNgcBj73fFrB47Jx1l91jdsdMVo871/aweWz/9oDV4373cSaP
 zUvqPZZMu8rm8XfWfhaP7dfmMXsc3Gfo8fTHXmaPz5vkAnij9GyK8ktLUhUy8otLbJWiDS2M
 9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DI+Pb/MWvCeraL99l32Bsa1rF2MnBwS
 AiYSf9+uY+5i5OIQEljKKLH4zHIWiIS4xO75b5khbGGJP9e62CCKXjNKdFxpBOrm4BAWiJVY
 +ogFJC4isIBVou1qLyNE0UxGibcnHoN1swloSvzdfJMNxOYVsJM4eGULWJxFQFXi6M7zjCC2
 qECExOxdDSwQNYISJ2c+AbM5BdwkNj36DHYqs4C6xJ95l5ghbHmJ5q2zoWxxiVtP5jNNYBSc
 haR9FpKWWUhaZiFpWcDIsopRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMwCWw79nPzDsZLG4MP
 MQpwMCrx8B6Y/j9GiDWxrLgy9xCjBAezkgivUTZDrBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJL
 iSbnAxNUXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRs4VXmUz
 Tgu8fNGyLfboae8wq7AHl+12LPa/v6haM+naCulNs00PWGpznzN9s2md8ManpyNaanXNbANU
 9N+yZGo8vBv1+bqvoDx3q5t/biVLSJzCP+Nu1mkS+WqFKybYCjalZrqb7xDvEP2l/TQ8vPLa
 7bm3J3g2bWs0DGc5eCJ0dnUz59ZOJZbijERDLeai4kQARRSawBgDAAA=
X-CMS-MailID: 20190612071806eucas1p29bbe929b1df18938ce355e9f63320ce1
X-Msg-Generator: CA
X-RootMTR: 20190527102219epcas2p20eaad1cb2849841d8b0c3dbc8d0b2e99
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190527102219epcas2p20eaad1cb2849841d8b0c3dbc8d0b2e99
References: <CGME20190527102219epcas2p20eaad1cb2849841d8b0c3dbc8d0b2e99@epcas2p2.samsung.com>
 <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_001812_911997_6BEFF71E 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcuMDUuMjAxOSAxMjoyMSwgWWFubmljayBGZXJ0csOpIHdyb3RlOgo+IFRoZXNlIHBhdGNo
ZXMgZml4IGEgYnVnIGNvbmNlcm5pbmcgYW4gYWNjZXNzIGlzc3VlIHRvIGRpc3BsYXkgY29udHJv
bGVyIChsdGRjKQo+IHJlZ2lzdGVycy4KPiBJZiB0aGUgcGh5c2ljYWwgbGF5ZXIgb2YgdGhlIERT
SSBpcyBzdGFydGVkIHRvbyBlYXJseSB0aGVuIHRoZSBmaWZvIERTSSBhcmUgZnVsbAo+IHZlcnkg
cXVpY2tseSB3aGljaCBpbXBsaWVzIGx0ZGMgcmVnaXN0ZXIncyBhY2Nlc3MgaGFuZyB1cC4gVG8g
YXZvaWQgdGhpcwo+IHByb2JsZW0sIGl0IGlzIG5lY2Vzc2FyeSB0byBzdGFydCB0aGUgRFNJIHBo
eXNpY2FsIGxheWVyIG9ubHkgd2hlbiB0aGUgYnJpZGdlCj4gaXMgZW5hYmxlLgo+Cj4gWWFubmlj
ayBGZXJ0csOpICgyKToKPiAgIGRybS9icmlkZ2Uvc3lub3BzeXM6IGRzaTogYWRkIHBvd2VyIG9u
L29mZiBvcHRpb25hbCBwaHkgb3BzCj4gICBkcm0vc3RtOiBkc2k6IGFkZCBwb3dlciBvbi9vZmYg
cGh5IG9wcwo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2ku
YyB8ICA4ICsrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMg
ICAgICAgICB8IDIxICsrKysrKysrKysrKysrKysrKysrLQo+ICBpbmNsdWRlL2RybS9icmlkZ2Uv
ZHdfbWlwaV9kc2kuaCAgICAgICAgICAgICAgfCAgMiArKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDMw
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IC0tCj4gMi43LjQKPgo+Cj4KUXVldWVk
IGJvdGggcGF0Y2hlcyB0byBkcm0tbWlzYy1uZXh0LgoKLS0KUmVnYXJkcwpBbmRyemVqCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
