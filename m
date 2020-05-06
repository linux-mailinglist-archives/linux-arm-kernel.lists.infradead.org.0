Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C41C715D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/46CW35nVDNGsNVi0zrRenNnn2xV86G3g4xuqAohgI=; b=jeppv1FZG2ZOP2
	L4OBKUUaTUEF1Pm9fAluap0zlCQ7WAigNbkFsBgQPQmQ0O5KHPeKDGL1DhsyVRdPS1DvhPqzBxZPL
	TSLGmvwXRzwbZMZcQuwCDWBTV+InyZiFxuX6xAp6dsgrSSENg2yxkpTsrLiVZAGRt1ARvQpMAP7cv
	HXn5n3gG6tF1MACLYmzRnDr5LtBvxMJanarCjSaBzB144/JpbyJ6RnVOnR9L9lF88aUJWLocTQjk/
	0I7oo1CCbJfpi8UFTd88rR47wPI/igbMT6PtL9EwuHOzLsFj/eyvpDXRIU+toH3eu79H4OA16mPMl
	vEAj/IjzgFNdSFbwM1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJkc-0002r8-8h; Wed, 06 May 2020 13:06:14 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJkS-0002qH-PK
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:06:07 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200506130601epoutp04163c3c78aed1c0640b2c8177866b6258~Mcjnm7QGR1407814078epoutp04Q
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 13:06:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200506130601epoutp04163c3c78aed1c0640b2c8177866b6258~Mcjnm7QGR1407814078epoutp04Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588770361;
 bh=REp5cMAB/X+MaeXe6tEHjuJoP5GbS74ogwgiAXj7E9U=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=g8gfqBz/nbCf58wVIk1LxSh58cg1gOSFDAvvHs4zeTods8Sq4DrHxBfioQNRG3YjD
 vJBbmSg1433ZNSiiGA0RDCnjyDOcaLVCkoAPL/AYzNqg0tR4fhj/pTSZ9EwMmdzWUn
 wsKFD+zAfgMwcBojtarPHyixgerou3Jt+5KVhslI=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200506130601epcas2p40ca1fb93bfb5ae459906e6d8478720f9~McjnLXtU_0139801398epcas2p43;
 Wed,  6 May 2020 13:06:01 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.187]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49HH062kFHzMqYkZ; Wed,  6 May
 2020 13:05:58 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 46.10.04647.636B2BE5; Wed,  6 May 2020 22:05:58 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506130557epcas2p2816ed596f34dd10405e748e1fcd12ebe~McjjgQBdh2082720827epcas2p2b;
 Wed,  6 May 2020 13:05:57 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200506130557epsmtrp2f90465e95893ece2bdff5919744dea36~McjjcR9B41737917379epsmtrp2H;
 Wed,  6 May 2020 13:05:57 +0000 (GMT)
X-AuditID: b6c32a48-88dff70000001227-be-5eb2b636b0c7
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0D.81.18461.436B2BE5; Wed,  6 May 2020 22:05:56 +0900 (KST)
Received: from KORCO008850 (unknown [12.36.185.49]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200506130556epsmtip22f1bdb82c78c22d15ee7aff33ca275ad~McjjLUrlw3177131771epsmtip2B;
 Wed,  6 May 2020 13:05:56 +0000 (GMT)
From: =?utf-8?Q?=EC=B5=9C=EB=8F=99=ED=98=81/DONGHYEOK_CHOE?=
 <d7271.choe@samsung.com>
To: "'Will Deacon'" <will@kernel.org>
In-Reply-To: <20200506125315.GH8043@willie-the-truck>
Subject: RE: Reqeust export symbol for API in arch/arm64/*
Date: Wed, 6 May 2020 22:05:56 +0900
Message-ID: <000001d623a7$14bc6590$3e3530b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHWb/N1gTRzZGonrGREO3YTptpglQFi3uW7ArVbMHuoeau0sA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+Ty7HK0TX2vVq3/IOBmkYW2rs46WEhU1SGoVGHSZHdxBzd3Y
 2Sqji5SVltkFU5op2sVCxGyJWFGtGSwrM4yuVJZd6YZpWesC7Xgm+d+P932e732f7/tIQlWv
 iCPz7G7eZeestCJG1tqeyCQbWn1mbVPHeLbk+W05+3YwRLA7rnYT7PeHvUrW9+qBnL138ZiC
 LXrKsCf8/cq5pLHW5zH6GkoUxvMntxvLWhqQccAXb5Kvss7J5TkL79Lw9myHJc+ek0YvXpE1
 P4sxaHXJuhR2Fq2xczY+jV6QYUpemGcNL0JrNnBWT7hk4gSBnp4+x+XwuHlNrkNwp9G802J1
 6nTOaQJnEzz2nGnZDluqTqvVM2HlOmtu4bu+KOcjalPNn0+yQlRJ7UXRJOCZsOt7h3IviiFV
 uA3BnpedSGyocD+CS5X5UmMQwcDvQjTsaL3+Ry41LiO4di4Usb9HEPx2ekilwCuh5/UDhchq
 PBmuhJqRKCJwF4Kij51hB0lGYwaaAzpRMw6nQoU/IBdZhhOgseXaEFM4BToHbyglHgsdR1/L
 RCbwVKiv+0hIG2kg9KZeLh6pxvOgIhgrSdRQVbKbEMcCPkrCqV1FkQQL4MzxqxHvOPgQbFFK
 HAcDXy4rJN4I/aEgkszFCJ7fKo2YZ4D37R4kDiNwIpy9OF1EwJPg+pPIamOguP2vUipTULxb
 JRkToKvsBRqe1Fz9Oeogor0jgnlHBPOOSOD9P6sWyRrQBN4p2HJ4Qe+cOfKtfWjojyYZ25D/
 TkYAYRLRoyl/vc+sknMbhAJbAAFJ0Gpq9M9zZhVl4Qo28y5Hlstj5YUAYsL3foiIG5/tCP94
 uztLx+gNBm0KwzIGPUtPpHyjHq9R4RzOzefzvJN3DfuiyOi4QtRQuzWTSiLjm8qrzd3Ly5fW
 VVlS0mdrlllvN25RtGUc0nj7bK0Fh7V0z9ptyh198fub8snSZysWZ2wasKSePdBsypbdWVS5
 moyf/8v7ON2yJPFu+5RYd3JReuL6818dTT9ia+4fOXFBb5i7r3ereVtXzM3MbvKeSc11mipw
 zU5/kJYJuZwuiXAJ3D/9dj9CuQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphkeLIzCtJLcpLzFFi42LZdlhJXtdk26Y4g1VTrC06751htXj27Sez
 RdP+S8wWX68/YrfY9Pgaq8XlXXPYLFrumFosPvCJ3YHDY8GmUo9NqzrZPDYvqffo27KK0ePz
 JrkA1igum5TUnMyy1CJ9uwSujG89J1gKmrgqzv89xNjA2MfRxcjJISFgIrHtyB/WLkYuDiGB
 3YwSffMvMUIkpCTat8xkgrCFJe63HIEqesYocerOJpYuRg4ONoFQie0nBUBqRARUJfb93MAI
 UsMscJ1RYtbPX4wQDVsYJVZfOMYE0sApYCqx4ZAhSIOwgJXEtAOHWEFsFgEViTVbDoLZvAKW
 Eme/nWCHsAUlTs58wgJiMwtoSzy9+RTOXrbwNTPEcQoSP58uYwUZLyLgJDHtuCREiYjE7M42
 5gmMwrOQTJqFZNIsJJNmIWlZwMiyilEytaA4Nz232LDAMC+1XK84Mbe4NC9dLzk/dxMjOKK0
 NHcwbl/1Qe8QIxMH4yFGCQ5mJRFenh8b44R4UxIrq1KL8uOLSnNSiw8xSnOwKInz3ihcGCck
 kJ5YkpqdmlqQWgSTZeLglGpgYv/uZJy3x1dxY4TlIfuUPRX67N8iJ/nd+Dqrv/2wxRaVw0sP
 VWT6rtOf8oXX6PSeZ9q+wjPnpkgZ9ol6BL9bM295zIJHJ1TcD0xxORsaap0ipdPwVNPukGeX
 97svWsbsu+PWKbYlXmbgvrtirnf20ff7M6cvblm2Wf3zG6+b8dv+1PZUqp0487VySr6lp5a2
 TW34JkH/aQbPPe/xv432dtO6s+lLnub51Bl7bcotX5T+vc1hWBskouJV4O1YsmTb9Q1HJ8/c
 kWZ1er9L3I0kAeEdaexHRR7mJD4JTaj0UXz99aetg9v1h5dnyTmktuXvTktcuUW/noGx80Ol
 8hZfz51PH/w+sShkTm7LIituJZbijERDLeai4kQAxdBsDBcDAAA=
X-CMS-MailID: 20200506130557epcas2p2816ed596f34dd10405e748e1fcd12ebe
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506124645epcas2p25a8efbe59fa20194e19d642227dd47ae
References: <CGME20200506124645epcas2p25a8efbe59fa20194e19d642227dd47ae@epcas2p2.samsung.com>
 <00bc01d623a4$669d1e70$33d75b50$@samsung.com>
 <20200506125315.GH8043@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_060605_261630_40FC3373 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: changki.kim@samsung.com, linux-kernel@vger.kernel.org,
 youngmin.nam@samsung.com, hosung0.kim@samsung.com, hajun.sung@samsung.com,
 gregkh@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBXaWxsIERlYWNvbiA8d2lsbEBr
ZXJuZWwub3JnPgo+IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDYsIDIwMjAgOTo1MyBQTQo+IFRvOiDv
v73Wte+/ve+/ve+/vS9ET05HSFlFT0sgQ0hPRSA8ZDcyNzEuY2hvZUBzYW1zdW5nLmNvbT4NCj4g
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsNCj4gaG9zdW5nMC5raW1Ac2Ftc3VuZy5jb207IGNoYW5na2kua2ltQHNh
bXN1bmcuY29tOyBoYWp1bi5zdW5nQHNhbXN1bmcuY29tOw0KPiBncmVna2hAZ29vZ2xlLmNvbTsg
eW91bmdtaW4ubmFtQHNhbXN1bmcuY29tDQo+IFN1YmplY3Q6IFJlOiBSZXFldXN0IGV4cG9ydCBz
eW1ib2wgZm9yIEFQSSBpbiBhcmNoL2FybTY0LyoNCj4gDQo+IE9uIFdlZCwgTWF5IDA2LCAyMDIw
IGF0IDA5OjQ2OjQ1UE0gKzA5MDAsICDWtSAgIC9ET05HSFlFT0sgQ0hPRSB3cm90ZToNCj4gPiBJ
IGFtIHNvZnR3YXJlIGVuZ2luZWVyIGluIGNoYXJnZSBvZiBCU1AgKFNhbXN1bmcgU09DIHZlbmRv
cikuDQo+ID4NCj4gPiBSZWNlbnRseSwgR29vZ2xlIGludHJvZHVjZWQgR0tJIGZyb20gQW5kcm9p
ZCBSIHZlcnNpb24uDQo+ID4gV2UgY2Fubm90IHVzZSBtYWlubGluZSBBUEkgd2l0aG91dCAnZXhw
b3J0IHN5bWJvbCcgYnkgdGhlIEdLSSBwb2xpY3kuDQo+ID4gQnV0IHdlIHdhbnQgdG8gbWFrZSBh
biBhcm02NCBzcGVjaWZpYyB2ZW5kb3IgZHJpdmVyIGluIHtrZXJuZWwgc291cmNlDQo+ID4gcm9v
dH0vZHJpdmVycy9zb2Mvc2Ftc3VuZy8qLg0KPiA+DQo+ID4gQ291bGQgeW91IHN1cHBvcnQgdXMg
dG8gdXNlIHRoZSBiZWxvdyBBUElzPw0KPiANCj4gU29ycnksIGJ1dCBhcyBhIGdlbmVyYWwgcnVs
ZSBvZiB0aHVtYiB0aGUga2VybmVsIGRvZXNuJ3QgRVhQT1JUIHN5bWJvbHMNCj4gdGhhdCBhcmUg
bm90IHVzZWQgYnkgaW4tdHJlZSBtb2R1bGVzLiBZb3UnbGwgbmVlZCB0byBzdWJtaXQgeW91ciBk
cml2ZXJzDQo+IGFsb25nIHdpdGggdGhlIHBhdGNoZXMgZG9pbmcgdGhlIGV4cG9ydHMgaWYgdGhl
eSBhcmUgdG8gYmUgY29uc2lkZXJlZCBmb3INCj4gaW5jbHVzaW9uLg0KPiANCj4gVGhhbmtzLA0K
PiANCj4gV2lsbA0KDQpUaGFuayB5b3UgZm9yIHlvdXIgcXVpY2sgcmVzcG9uc2UuDQpJJ2xsIHRy
eS4NCg0KVGhhbmtzDQoNCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
